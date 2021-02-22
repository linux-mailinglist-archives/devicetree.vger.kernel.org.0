Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 464D83218B3
	for <lists+devicetree@lfdr.de>; Mon, 22 Feb 2021 14:29:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231786AbhBVN3K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Feb 2021 08:29:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231846AbhBVN1y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Feb 2021 08:27:54 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2C38C061794
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 05:26:57 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id v1so19064543wrd.6
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 05:26:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qht2WelTwqkDaQzSNfoAbkrAvuNtWrmENyh0P2R4V7c=;
        b=wCcNugEanrPf9ajFXz5ivsL2nfsbqdo3jGcU5OGl15Po0dcfCCH4M1UxlRdDmsCmcT
         /I2diWIS5rK00Ts2uZOoYZj3lVnxfy24hgRJO4d1VIYfrqU290SEDsMLSguf6xstf+2h
         isEhNSITMy/oiYpTWZ9wJsmdCQC3TYQSxwuXR1lkLanl6fBhaJooegGeINu/WwLErDEJ
         +9j+/gpeW0vArM2roNr1yFJWD6Wu9C8iyNTFj3wabKN+qVwOgxZETtn/dFFdLwMeb2VF
         I6AjIa1h0QYzEu0f0N4P7IqPyKuhH/hs25R9lz0pG4Ig6sU026JqLE6bVzZTSfmInYWR
         tdZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qht2WelTwqkDaQzSNfoAbkrAvuNtWrmENyh0P2R4V7c=;
        b=RNmVhVU0NyqTw1T10ViwuarbVLhxmbZ5REMUkie+3LVp+ZFtF/nXh9BS9oSHuK21as
         40mPMSiinYkpB0l/ktzpENUIhGAryNdA97mRkqu+lrtQN/Q1d7PrrNQLgPMjGSjr67bX
         H6mromt+r51hJmfV25bADu27dCn0ZikBeNSplLgnmbpCfwoHD+NXjNP0hA20B3W4oAXA
         Oz0L1AbQsGO3IhziaTWKoiAneXXA5TCrmyzL1UN8FgzKjRWZSh2WFvd5aP2REcBWYL/G
         P2TmCHuH52qoNyK8ZsKosoeDdI8NpMHRYjuHE5S12jDjAWhYfD+QUFjX4saJUDS0paio
         0Log==
X-Gm-Message-State: AOAM530nSZQZjkOlNX0rj1qMqFNEJb06VPVw5nPPLUFPs/kn2BkxReBI
        vVosP0bbPstKpSAqF488nud2nA==
X-Google-Smtp-Source: ABdhPJwfF08im2ERxcqlOl6o3K6eaws9L/SWLmntJT8S7+wU/94imDxW6xmDy6Mx/AgVUrZ9tjUEvA==
X-Received: by 2002:adf:e847:: with SMTP id d7mr19082950wrn.367.1614000416647;
        Mon, 22 Feb 2021 05:26:56 -0800 (PST)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id t7sm3079918wmq.44.2021.02.22.05.26.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Feb 2021 05:26:56 -0800 (PST)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, stanimir.varbanov@linaro.org,
        agross@kernel.org, bjorn.andersson@linaro.org
Cc:     bryan.odonoghue@linaro.org, jonathan@marek.ca,
        dikshita@qti.qualcomm.com
Subject: [PATCH v2 2/3] arm64: dts: qcom: sm8250: Add videocc DT node
Date:   Mon, 22 Feb 2021 13:28:16 +0000
Message-Id: <20210222132817.1807788-3-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210222132817.1807788-1-bryan.odonoghue@linaro.org>
References: <20210222132817.1807788-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Jonathan Marek <jonathan@marek.ca>

This commit adds the videocc DTS node for sm8250.

Signed-off-by: Jonathan Marek <jonathan@marek.ca>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 81eaa2508d5c..3639792411ce 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -13,6 +13,7 @@
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
 #include <dt-bindings/thermal/thermal.h>
+#include <dt-bindings/clock/qcom,videocc-sm8250.h>
 
 / {
 	interrupt-parent = <&intc>;
@@ -1810,6 +1811,19 @@ usb_2_dwc3: dwc3@a800000 {
 			};
 		};
 
+		videocc: clock-controller@abf0000 {
+			compatible = "qcom,sm8250-videocc";
+			reg = <0 0x0abf0000 0 0x10000>;
+			clocks = <&gcc GCC_VIDEO_AHB_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK_A>;
+			mmcx-supply = <&mmcx_reg>;
+			clock-names = "iface", "bi_tcxo", "bi_tcxo_ao";
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		pdc: interrupt-controller@b220000 {
 			compatible = "qcom,sm8250-pdc", "qcom,pdc";
 			reg = <0 0x0b220000 0 0x30000>, <0 0x17c000f0 0 0x60>;
-- 
2.29.2

