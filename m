Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BFAD32FDB87
	for <lists+devicetree@lfdr.de>; Wed, 20 Jan 2021 22:26:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732348AbhATU4I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 15:56:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732092AbhATNyC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 08:54:02 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5449CC061369
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 05:45:10 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id j18so2895726wmi.3
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 05:45:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UlBA+jrFoLLefklW/JXu8ZcQb+a+i4EuznUW8mxqVQQ=;
        b=YOWJ/QSfCwPu5AKsDbQTv93fq1IJxtz9qrJuAL3ZE/GO8Z5uCTsjkb3nJeQLb9x1/A
         vJiaj9ifUExUwrM4HIJiZYNcoMueYov11qOmzV0GNyuEdzyHOvA4ubwgkDVXDV69Thut
         Aau1BINo7I15eA5keY3kVx7LQOGVSDensdfdXcAwQ59OeY+oer16BKDT4jlZTSRM2Maf
         1+FC4DXlrd1qHviBsVbIc8uW1rauj5eIX2+3wIfKLHifLz+knAMsiQk9BEfzgDNUG3yj
         JSullwoyLCG9e4pCkLY5lkJI4Y96xS/LAiq+U7c+yQPsGi6hNyZNV/J3NuB0XmU0EYhX
         6ftQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UlBA+jrFoLLefklW/JXu8ZcQb+a+i4EuznUW8mxqVQQ=;
        b=YG55k72dqMT91cBzumlHkCYezufhgRQwUgRPRGMmBf2XIBNOR4gn8gAbTRGe7lImi9
         YwdBJvTtcyziD+0z+qURFHL0/XSNyT03iynvh9tgU4Sms1jsr/CnwS2bT4CEsmsppPdD
         Qbm20sKyO18vQdd+zrOJ4UDaoShnztyM30j+fOrpKY+adBBDWzmCF2KjTYp+Y0uuni8L
         wQF4o5mOYAf1NrMZKrEwSMtHJOLCRVPyC8/K0x6BgwXopo/YYdFeQ8togUmAGNSAI3zL
         iNTsAtT3ROTMAbnuuY9y0Gk7rguvTUdGXSp34Vl/goV0gESNXMhze2wA44dLYidl6g7b
         cSBQ==
X-Gm-Message-State: AOAM531JAcX+gySTOjx2mCVMcrfIum1oM1llFT6nVCbOf12E/2osa+NI
        tBpHUe4Wo9bYsSjWb/6DRMW59g==
X-Google-Smtp-Source: ABdhPJxyuaJ74/nQdJuyAGH8vGzesMdLOtUmQatDRmLixQ7HAUtct0vVX2J1/Aa57UuAPyM3+hQ6SA==
X-Received: by 2002:a1c:740b:: with SMTP id p11mr4520239wmc.34.1611150309125;
        Wed, 20 Jan 2021 05:45:09 -0800 (PST)
Received: from localhost.localdomain ([2a02:2450:102f:d6a:93b3:1f80:ae7b:a5c6])
        by smtp.gmail.com with ESMTPSA id t67sm4224075wmt.28.2021.01.20.05.45.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jan 2021 05:45:08 -0800 (PST)
From:   Robert Foss <robert.foss@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org,
        robert.foss@linaro.org, todor.too@gmail.com, mchehab@kernel.org,
        robh+dt@kernel.org, catalin.marinas@arm.com, will@kernel.org,
        shawnguo@kernel.org, leoyang.li@nxp.com, geert+renesas@glider.be,
        vkoul@kernel.org, Anson.Huang@nxp.com, michael@walle.cc,
        agx@sigxcpu.org, max.oss.09@gmail.com,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        AngeloGioacchino Del Regno <kholk11@gmail.com>,
        Andrey Konovalov <andrey.konovalov@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Tomasz Figa <tfiga@chromium.org>,
        Azam Sadiq Pasha Kapatrala Syed <akapatra@quicinc.com>,
        Sarvesh Sridutt <Sarvesh.Sridutt@smartwirelesscompute.com>,
        Jonathan Marek <jonathan@marek.ca>
Subject: [PATCH v2 22/22] arm64: dts: sdm845-db845c: Enable ov8856 sensor and connect to ISP
Date:   Wed, 20 Jan 2021 14:43:57 +0100
Message-Id: <20210120134357.1522254-22-robert.foss@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210120134357.1522254-1-robert.foss@linaro.org>
References: <20210120134357.1522254-1-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable camss & ov8856 DT nodes.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
index 5842ab65789c..d89286f6aacb 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -1108,6 +1108,21 @@ &cci {
 
 &camss {
 	vdda-supply = <&vreg_l1a_0p875>;
+
+	status = "ok";
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		port@0 {
+			reg = <0>;
+			csiphy0_ep: endpoint {
+				clock-lanes = <1>;
+				data-lanes = <1 2 3 4>;
+				remote-endpoint = <&ov8856_ep>;
+			};
+		};
+	};
 };
 
 &cci_i2c0 {
@@ -1139,7 +1154,7 @@ camera@10 {
 		avdd-supply = <&cam0_avdd_2v8>;
 		dvdd-supply = <&cam0_dvdd_1v2>;
 
-		status = "disable";
+		status = "ok";
 
 		port {
 			ov8856_ep: endpoint {
@@ -1147,7 +1162,7 @@ ov8856_ep: endpoint {
 				link-frequencies = /bits/ 64
 					<360000000 180000000>;
 				data-lanes = <1 2 3 4>;
-//				remote-endpoint = <&csiphy0_ep>;
+				remote-endpoint = <&csiphy0_ep>;
 			};
 		};
 	};
-- 
2.27.0

