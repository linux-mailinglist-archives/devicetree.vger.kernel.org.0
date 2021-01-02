Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 660842E8647
	for <lists+devicetree@lfdr.de>; Sat,  2 Jan 2021 06:00:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725764AbhABFA3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Jan 2021 00:00:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725320AbhABFA3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Jan 2021 00:00:29 -0500
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCB8FC0613C1
        for <devicetree@vger.kernel.org>; Fri,  1 Jan 2021 20:59:48 -0800 (PST)
Received: by mail-pg1-x530.google.com with SMTP id 30so10690571pgr.6
        for <devicetree@vger.kernel.org>; Fri, 01 Jan 2021 20:59:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=BFYpbiKlt73ytsGVJ0Yl3uuSNbmISel5XPTeD4LsY44=;
        b=JKrOsnmi+D5JOrVCaEqv43sPkQr39RHExpnP92UZoomQeffC3ux2GIlMNLwSiTwFgM
         ND+gjCgoIotYMbOnuw7bJ9EUXjKEUn7CuvTbETh/WF/bY5hdKGKCnHT4TcUmdyOafw+D
         rktMpmL8JiRmeTmwB6Y7EPeW2Qckqg/nQ3x78Tsd8fI5w0NPCFcqL5xHx+jFTiA8Dvhy
         U2Syhlsc+7FBx7+WjWro1EqAY509aZzbVTiQsKfF6HeJ0iDc1Y1CO+MAFqt6oPXXHUuT
         reY0cts4tvr0piiaWIQl7Pks36EAztpjaFB83mKu2KiX2nVcHz0y3IrM1xTl5vn2yemT
         GQqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=BFYpbiKlt73ytsGVJ0Yl3uuSNbmISel5XPTeD4LsY44=;
        b=LYzSgjhVRrnVspQ4bZLMzwvdEUTjZ0tP+tjFUBwZuT6++fvWMps1ThbdhmtRFOmlyW
         C45GJ9RwBpy7njoMXJTufG+++ZBS/vUJ7CA4m84wegwUAdbC281GWCuUvACE5C9YLwAu
         rl+OkZ6ea46+QHkzWedc/VBfdVmcbl9cMY8MrRaYuxQXJNjNTUBfJL3KG5yLA3HRWtU9
         CJQmP9IRh1QNalJOeqGNdgaoFjTazpD37n2I5ShayG/ZnMpIP556SKrpfpReqNRy21ri
         mc53EqM1Rd0JQM8di4F2yXfODGxbA3JNgOWupWgawhXLYuX85Az4FrJC2LujBAhq5+vu
         QXbg==
X-Gm-Message-State: AOAM531B1CCTmzeniKYri4OC6QvqZdJ4i9u3aH8jyVc8T+MhceCSngne
        Q//bC6ThyTaHlx2qdzjo/5YLGw==
X-Google-Smtp-Source: ABdhPJyzX5ST/Yt22sDRj/vq3aBz/t5WZzegW8LrCmypRV9niNF/QpFnsCilfT1N1XR7Jaa9FgOjwQ==
X-Received: by 2002:a63:445a:: with SMTP id t26mr62928502pgk.402.1609563587385;
        Fri, 01 Jan 2021 20:59:47 -0800 (PST)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id ds24sm14310977pjb.30.2021.01.01.20.59.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Jan 2021 20:59:46 -0800 (PST)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>
Cc:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH v2] arm64: dts: qcom: c630: keep both touchpad devices enabled
Date:   Sat,  2 Jan 2021 12:59:40 +0800
Message-Id: <20210102045940.26874-1-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Indicated by AML code in ACPI table, the touchpad in-use could be found
on two possible slave addresses on &i2c3, i.e. hid@15 and hid@2c.  And
which one is in-use can be determined by reading another address on the
I2C bus.  Unfortunately, for DT boot, there is currently no support in
firmware to make this check and patch DT accordingly.  This results in
a non-functional touchpad on those C630 devices with hid@2c.

As i2c-hid driver will stop probing the device if there is nothing on
the slave address, we can actually keep both devices enabled in DT, and
i2c-hid driver will only probe the existing one.  The only problem is
that we cannot set up pinctrl in both device nodes, as two devices with
the same pinctrl will cause pin conflict that makes the second device
fail to probe.  Let's move the pinctrl state up to parent node to solve
this problem.  As the pinctrl state of parent node is already defined in
sdm845.dtsi, it ends up with overwriting pinctrl-0 with i2c3_hid_active
state added in there.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
Changes for v2:
- Overwrite pinctrl-0 from sdm845.dtsi with qup_i2c3_default preserved.

 arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
index dcfe66f169f9..7929665aeaee 100644
--- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
+++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
@@ -353,6 +353,8 @@
 &i2c3 {
 	status = "okay";
 	clock-frequency = <400000>;
+	/* Overwrite pinctrl-0 from sdm845.dtsi */
+	pinctrl-0 = <&qup_i2c3_default &i2c3_hid_active>;
 
 	tsel: hid@15 {
 		compatible = "hid-over-i2c";
@@ -360,9 +362,6 @@
 		hid-descr-addr = <0x1>;
 
 		interrupts-extended = <&tlmm 37 IRQ_TYPE_LEVEL_HIGH>;
-
-		pinctrl-names = "default";
-		pinctrl-0 = <&i2c3_hid_active>;
 	};
 
 	tsc2: hid@2c {
@@ -371,11 +370,6 @@
 		hid-descr-addr = <0x20>;
 
 		interrupts-extended = <&tlmm 37 IRQ_TYPE_LEVEL_HIGH>;
-
-		pinctrl-names = "default";
-		pinctrl-0 = <&i2c3_hid_active>;
-
-		status = "disabled";
 	};
 };
 
-- 
2.17.1

