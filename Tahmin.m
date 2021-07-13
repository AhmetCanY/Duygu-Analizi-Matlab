function labelsNew = Tahmin(gelen)
a=load("egitimDuyguAnaliz.mat")
 reportsNew = [gelen];
% reportsNew = [ ...
%     "berbat bir filmdi kesinlikle gitmeyin.Böyle iğrenç bir film görmedim."
%     "güzel bir film ama biraz sıkıcı. Ne iyi ne kötü diyebiliriz. "
%     "aşırı güzel bir filmdi.Kesinlikle tavsiye ederim.Herkesin izlemesi lazım."];
documentsNew = preprocessText(reportsNew);
XNew = doc2sequence(a.enc,documentsNew,'Length',a.sequenceLength);
labelsNew = classify(a.net,XNew)

end








