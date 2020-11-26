Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3B1A2C4CEE
	for <lists+devicetree@lfdr.de>; Thu, 26 Nov 2020 02:56:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731621AbgKZBzC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Nov 2020 20:55:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731378AbgKZBzC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Nov 2020 20:55:02 -0500
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com [IPv6:2607:f8b0:4864:20::d44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E78E5C061A55
        for <devicetree@vger.kernel.org>; Wed, 25 Nov 2020 17:55:01 -0800 (PST)
Received: by mail-io1-xd44.google.com with SMTP id r1so265636iob.13
        for <devicetree@vger.kernel.org>; Wed, 25 Nov 2020 17:55:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GGWnzP3ted/k1YfU1Wv1gmCCa/vZ4JiGXqXyN0Z7WN8=;
        b=g2jLMnqX5N9dFLYoZMYksdj94s+FaPOPKBetHiua6V6i83TbetwVJlm3B+C/ug4mrf
         rC3uO6T0nTSSeZk1kRugYMEFfGpCgMU67/ZbADR92EgXJAduQ8BLdayrI76r41kkruIG
         d1HJtbD9aLod13ic1jKhVu4Dr6Rg+VRFmZhsVRaRTBwbj43sFrl7WU4VbMzGPveSGKO0
         amuQksGJcXn/5VIPBLNita5E7WmHNqrXbD3sVM1b8EHIVOOlqxTZ4dewYTjHrlgR8H7/
         MT0udVwar5r4RPEH15Z+vMEECKAjGmmcP+XqhuuYoC/rr0+d8ao7gqzruLH/wT5H48c/
         Uctw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GGWnzP3ted/k1YfU1Wv1gmCCa/vZ4JiGXqXyN0Z7WN8=;
        b=AAuWZAqN2y3/bYTEpwKMCEjZMRQ0lAiZ0QOFo2r0nir77imksu7FzT0Ew+EN0eEMNP
         6e4xKjaSCBtNNMHgfv3rKO4sNFjk2xFChZHTwxyLBaARJPKK4p/tJCojFNtC8ovx5MK7
         9SmAvBClzIgmOjpIYL+7CCJGifPnZhjw5wTMXRd8/fc0Rvs5H0qltCTqSNPYvod3iLkH
         zkGXV+ZEsnrGRb4oW90Wkf8UYGiStOpe5jxaFXyVx043D4VBLsO62t0bDS4x/IwwFdlz
         Y4ExS/RaXlw9kQUTT0bLvLqDfYEmlm1zugtwfM64HgCyKUSFsQOQT+ucUcGjht/o/rL9
         pasA==
X-Gm-Message-State: AOAM5336Mn5iCOea+9gpbWZjakp6q53BnsYmu3DsVD9GuN4gtO5CADFv
        Rdsd+dytCrAxcCKR8OifkrBung==
X-Google-Smtp-Source: ABdhPJxp8IY0yK40iHL7IHTE7Xq7UnMg3tWMnS5UZVoXIwXRPPyIclWogeFYl8I2fFFOW4jOU8FReQ==
X-Received: by 2002:a5d:91cf:: with SMTP id k15mr679354ior.161.1606355701259;
        Wed, 25 Nov 2020 17:55:01 -0800 (PST)
Received: from beast.localdomain (c-73-185-129-58.hsd1.mn.comcast.net. [73.185.129.58])
        by smtp.gmail.com with ESMTPSA id r17sm1714907ioj.5.2020.11.25.17.55.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Nov 2020 17:55:00 -0800 (PST)
From:   Alex Elder <elder@linaro.org>
To:     bjorn.andersson@linaro.org, agross@kernel.org, robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] arm64: dts: qcom: sc7180: limit IPA iommu streams
Date:   Wed, 25 Nov 2020 19:54:55 -0600
Message-Id: <20201126015457.6557-2-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201126015457.6557-1-elder@linaro.org>
References: <20201126015457.6557-1-elder@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Recently we learned that Android and Windows firmware don't seem to
like using 3 as an iommu mask value for IPA.  A simple fix was to
specify exactly the streams needed explicitly, rather than implying
a range with the mask.  Make the same change for the SC7180 platform.

See also:
  https://lore.kernel.org/linux-arm-msm/20201123052305.157686-1-bjorn.andersson@linaro.org/

Fixes: d82fade846aa8 ("arm64: dts: qcom: sc7180: add IPA information")
Signed-off-by: Alex Elder <elder@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index c0efb101b0d61..eb66aadf360d7 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -1396,7 +1396,8 @@
 		ipa: ipa@1e40000 {
 			compatible = "qcom,sc7180-ipa";
 
-			iommus = <&apps_smmu 0x440 0x3>;
+			iommus = <&apps_smmu 0x440 0x0>,
+				 <&apps_smmu 0x442 0x0>;
 			reg = <0 0x1e40000 0 0x7000>,
 			      <0 0x1e47000 0 0x2000>,
 			      <0 0x1e04000 0 0x2c000>;
-- 
2.20.1

