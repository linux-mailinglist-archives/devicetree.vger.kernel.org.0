Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE16626E74C
	for <lists+devicetree@lfdr.de>; Thu, 17 Sep 2020 23:23:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726135AbgIQVW7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Sep 2020 17:22:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725858AbgIQVW7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Sep 2020 17:22:59 -0400
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com [IPv6:2a00:1450:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FD4BC06174A
        for <devicetree@vger.kernel.org>; Thu, 17 Sep 2020 14:13:27 -0700 (PDT)
Received: by mail-lf1-x141.google.com with SMTP id z19so3762356lfr.4
        for <devicetree@vger.kernel.org>; Thu, 17 Sep 2020 14:13:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MAoskpdgpwqYFVZy1SWoFP45MNq0LuspN6fWJIM1v0A=;
        b=mnMdWqVqHNSYwmfiDtcie4ATSrHFx25ewoZcUtt80mEmfbjZ8VE4ad7io0EATi9h34
         RDPDTrx/FJJr2VETLCKgqBKvqshxmcDMnkQ4POgfmm9VjUCmkQdx1xNcjogKsHVAX/mU
         PGTceiMMnCclWYthPXhf9e33SVl1UjEDQm6g8nanB8kAIgHB6+DDrYcKCLKTsQgYHK1V
         6iiqH5wFNZ8nM2Q2nSjyVLtAz2g9uNFfMDH+TaPn5CnwQFtfWmCKpCFAPqvSqjLgrw5j
         dHTLWTk/jrHJPE5sHxhsFskmBU+C9JQa3sZgcwPxDO7FVX2Lb0LO3QNHhQMWrD901BoB
         cPtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MAoskpdgpwqYFVZy1SWoFP45MNq0LuspN6fWJIM1v0A=;
        b=Lw5BrKzxLbLc5UXzev5hdfIVq0wrzkgandTBaJOBWgUwR09XX0kmVJ3thm70Q6aD7W
         gnG9gNLpeGyGAr0EPNzaphg0HWUCqmyUwgpWQ3kxBYCTlbQQ0nlXM5mMWNX5F3TNAdat
         nmJFlFRMnHmPDzO35wwVAKR36fHM8OgcLGTl/hGXBlnQSEV6RqVTJm2oRPNbJje5Y1FO
         7i34wRCHquN9KVXz9XLLh5catifXmlz30GwDbaz9dHblSY/0nVThM/l/6TxHQgC8PRlM
         n2cwBWjo8dx44aKi3v932m1Xfs+j2m6uch9cEOYKh37HRtbGPBzRZjKQlvZ6EKmRG36z
         tPJQ==
X-Gm-Message-State: AOAM531tsvrurzlg+VJ9aEx5pPNqdekK6l6kXVIWFvKMHI2oS2LQq4HV
        L0q13cyBHIcpNWt+dOleotGlZQ==
X-Google-Smtp-Source: ABdhPJy/uv5bDEos5SGJ6p0EhHqRHU0QI3bA2SKQg4SqXX8u+0dcJoxWvnm9LDksQ3KY3vabX07S4A==
X-Received: by 2002:a19:8357:: with SMTP id f84mr9067385lfd.406.1600377205906;
        Thu, 17 Sep 2020 14:13:25 -0700 (PDT)
Received: from eriador.lan ([188.162.64.171])
        by smtp.gmail.com with ESMTPSA id h124sm136711lfd.203.2020.09.17.14.13.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2020 14:13:25 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: qcom: enable rtc on qrb5165-rb5 board
Date:   Fri, 18 Sep 2020 00:13:20 +0300
Message-Id: <20200917211321.3295947-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable PMIC's RTC device on RB5 board.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/pm8150.dtsi     | 2 +-
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 4 ++++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/pm8150.dtsi b/arch/arm64/boot/dts/qcom/pm8150.dtsi
index 1b6406927509..a53eccf2b695 100644
--- a/arch/arm64/boot/dts/qcom/pm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8150.dtsi
@@ -97,7 +97,7 @@ die-temp@6 {
 			};
 		};
 
-		rtc@6000 {
+		pm8150_rtc: rtc@6000 {
 			compatible = "qcom,pm8941-rtc";
 			reg = <0x6000>;
 			reg-names = "rtc", "alarm";
diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index 1528a865f1f8..fec31655141c 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -459,6 +459,10 @@ &pm8150l_gpios {
 		"PM3003A_MODE";
 };
 
+&pm8150_rtc {
+	status = "okay";
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };
-- 
2.28.0

