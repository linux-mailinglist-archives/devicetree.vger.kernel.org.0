Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F01D81B4025
	for <lists+devicetree@lfdr.de>; Wed, 22 Apr 2020 12:44:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730094AbgDVKna (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Apr 2020 06:43:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729619AbgDVKTi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Apr 2020 06:19:38 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E775C03C1A9
        for <devicetree@vger.kernel.org>; Wed, 22 Apr 2020 03:19:35 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id g13so1703963wrb.8
        for <devicetree@vger.kernel.org>; Wed, 22 Apr 2020 03:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5PhIRlfxSd6Xawyu0KJOVJaENTrBMylRV4/RWfRrVd8=;
        b=fQog2JFHadvS9RrhNUQ8NXgdPQM3795g/mlpdl336mApkCejO/gL0OcFOxX3/2PN/P
         GpPKu2N7mnFNBSVAl9Xp/lWjM5TGxtcVffG1VqZ8BoRtN81WAQ8wtyBKO98NSQ6pJgqC
         CpiHAOm6KVVOYAWLE68uhj4Pmewf835akUehm840wphbDXoh25/uZiCot+NenUXr3lWO
         HcAGIWiqCtC0K4H8SBUEAp0zSaNgRiDvB5Qc38OIS9pHCj98Lq8MMZ1RXctVEGbEDbaE
         fL4ywv2N1AKR4tIzgjjR7qLgIpQfWFPEC1VBkbw36K2d3qp/YfcLQaJRpowtxgMCjMSJ
         rK0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5PhIRlfxSd6Xawyu0KJOVJaENTrBMylRV4/RWfRrVd8=;
        b=K1ZOqeRzIQ8IEGuKF1iUB8H1EcSyvFoAsWt6o4uF2HYXcnT+OFgmUSDVdE9HeoiRjX
         odJpfyKmH1rXFa1Jdv0KyalgIGnmQ86ygcbuMVWBPZQvMLZnJtF3xSKHsBv2FbPaCcEy
         5q8MLiKUy0HsBqIIZjEIa61Ox7/7usem2BcAD1xFmTzN/EMCryR1/hLr5KYlIK9UEXdS
         dRLoKBAJDgYlTtOHF/8nZNk5doxmd0okAGhfZszTtZLaENTYF+x8DGuRqedIrtxZEY47
         Q05wz7o+HX6a4h4lYBB4MsMp2gtV8MAtxwpaKIyExD0wTWKnLsB04m1vTXy0KAoAan9t
         vbkQ==
X-Gm-Message-State: AGi0PuY8PTWZm+8s2aDrGbKoCngICNKW9rQp14lLSpZns/aR3LA35HbF
        8rpmvidjzQIXY0BdE0g/3g/PAw==
X-Google-Smtp-Source: APiQypKtnvoqO690NcodPG5Icoc96fbnAS6AsX06nqnlt6p4KLnlpdrwCBcwDHeB2H2N5nbR++xHTw==
X-Received: by 2002:a5d:4381:: with SMTP id i1mr28121319wrq.194.1587550774176;
        Wed, 22 Apr 2020 03:19:34 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id k3sm8483299wru.90.2020.04.22.03.19.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2020 03:19:33 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org
Cc:     agross@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2] arm64: dts: qcom: db820c: fix audio configuration
Date:   Wed, 22 Apr 2020 11:19:22 +0100
Message-Id: <20200422101922.8894-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

After patch f864edff110d ("ASoC: qdsp6: q6routing: remove default routing")
and 9b60441692d9 ("ASoC: qdsp6: q6asm-dai: only enable dais from device tree")
asm dais and routing needs to be properly specified at device tree level.

This patch fixes this.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
Changes since v1:
	- removed invalid direction property

 arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi | 19 ++++++++++++++++++-
 arch/arm64/boot/dts/qcom/msm8996.dtsi        |  2 ++
 2 files changed, 20 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi b/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi
index af87350b5547..6e81db5671c9 100644
--- a/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi
+++ b/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi
@@ -908,10 +908,27 @@
 	status = "okay";
 };
 
+&q6asmdai {
+	dai@0 {
+		reg = <0>;
+	};
+
+	dai@1 {
+		reg = <1>;
+	};
+
+	dai@2 {
+		reg = <2>;
+	};
+};
+
 &sound {
 	compatible = "qcom,apq8096-sndcard";
 	model = "DB820c";
-	audio-routing =	"RX_BIAS", "MCLK";
+	audio-routing =	"RX_BIAS", "MCLK",
+		"MM_DL1",  "MultiMedia1 Playback",
+		"MM_DL2",  "MultiMedia2 Playback",
+		"MultiMedia3 Capture", "MM_UL3";
 
 	mm1-dai-link {
 		link-name = "MultiMedia1";
diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 14827adebd94..98634d5c4440 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -2066,6 +2066,8 @@
 						reg = <APR_SVC_ASM>;
 						q6asmdai: dais {
 							compatible = "qcom,q6asm-dais";
+							#address-cells = <1>;
+							#size-cells = <0>;
 							#sound-dai-cells = <1>;
 							iommus = <&lpass_q6_smmu 1>;
 						};
-- 
2.21.0

