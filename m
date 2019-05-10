Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 486D6197AA
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2019 06:35:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727112AbfEJEes (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 May 2019 00:34:48 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:38101 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727111AbfEJEec (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 May 2019 00:34:32 -0400
Received: by mail-pl1-f195.google.com with SMTP id a59so2205345pla.5
        for <devicetree@vger.kernel.org>; Thu, 09 May 2019 21:34:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=env9uxGf/YDPrGif/zsypWijN3KnRmxh8/WUWaV7Q78=;
        b=gJFQozyCmLkFapzpMYtWgmMIKnFeSmlXAAB8gAHcmU4aMPu874ZBoNT8dE4DLSMqCu
         Cq962ZaYtdy00rzlcyufkbBtBbLBbsgrIHb3BqgltfSIKzJXi4UGq+TDuzkHXC9IRTgb
         uU+gizZdExvTL7G1wGmcciBpgyTULL8Okovt90c4II4jOIOUOPvbOm+DA2vdG0bpz7RQ
         CVT1imO5xr0dIWCu/EsZJPRBtmkscsM4O5cnjyA+LJwGRPrmbT9lyOSVOy1aWjgKip8p
         uoQMG8IsUtdY3eEQFfydA6ytSixZkowVJj2oUEQuMr0E3SoJsBBlclgbW+3E1UL3qdrI
         WD0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=env9uxGf/YDPrGif/zsypWijN3KnRmxh8/WUWaV7Q78=;
        b=hhTLYeZnzWJEeP0M68HK1XIqw5RNYqlfOoU0FHkaIxFFUwEGbp7UIaGYP5iwUko1R9
         YN4OBtIblNbZgdMvN3VzhJ711ee9xXhLqfotb/ldosC/N3sTscOVSVzMTVLBGZiPONZD
         0/aAcziAFVNhCiXGU33MWNnM9DO+Fwuc0hRPkU24WD+VYZdSXRJ13aG4U7XdIccUa46b
         XOQtWrpgLOvdmwT7RMKzUl08CdDN5oJEQ/ldeY9sJ3D/ysiaEjlyzdQLzGV78VEnrUcp
         Ysme/JDLddqK0Jv2a+uTbVSnRKBa6Nani9eEyM504tqTUE87UdC4GYDl++oM5Iypqp7T
         DAcg==
X-Gm-Message-State: APjAAAW+QKpb86RdJxzqcscFR9+oBejLBz6ZkaS3F4hMAG5NBAyatHQb
        4Mtv9FNwv8iW+JxHkGYaTN72kg==
X-Google-Smtp-Source: APXvYqxEtuHSsfNnwSWrni9vnsiFbozVj4Equl1s/fzYi2DGq0pIWP56GFGY0eeDOHbX9sWLdFNVwQ==
X-Received: by 2002:a17:902:56e:: with SMTP id 101mr10360710plf.142.1557462871562;
        Thu, 09 May 2019 21:34:31 -0700 (PDT)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id s17sm4785317pfm.149.2019.05.09.21.34.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 May 2019 21:34:31 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        David Brown <david.brown@linaro.org>
Cc:     Ohad Ben-Cohen <ohad@wizery.com>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 6/8] arm64: dts: qcom: qcs404: Move lpass and q6 into soc
Date:   Thu,  9 May 2019 21:34:19 -0700
Message-Id: <20190510043421.31393-7-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190510043421.31393-1-bjorn.andersson@linaro.org>
References: <20190510043421.31393-1-bjorn.andersson@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Although we don't describe lpass and wcss with all the details needed to
control them in a Trustzone-less environment, move them under soc in
order to tidy up the structure and prepare for describing them fully.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs404.dtsi | 126 ++++++++++++++-------------
 1 file changed, 64 insertions(+), 62 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index 896f95817f23..b213f6acad76 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -82,68 +82,6 @@
 		method = "smc";
 	};
 
-	remoteproc_adsp: remoteproc-adsp {
-		compatible = "qcom,qcs404-adsp-pas";
-
-		interrupts-extended = <&intc GIC_SPI 293 IRQ_TYPE_EDGE_RISING>,
-				      <&adsp_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
-				      <&adsp_smp2p_in 1 IRQ_TYPE_EDGE_RISING>,
-				      <&adsp_smp2p_in 2 IRQ_TYPE_EDGE_RISING>,
-				      <&adsp_smp2p_in 3 IRQ_TYPE_EDGE_RISING>;
-		interrupt-names = "wdog", "fatal", "ready",
-				  "handover", "stop-ack";
-
-		clocks = <&xo_board>;
-		clock-names = "xo";
-
-		memory-region = <&adsp_fw_mem>;
-
-		qcom,smem-states = <&adsp_smp2p_out 0>;
-		qcom,smem-state-names = "stop";
-
-		status = "disabled";
-
-		glink-edge {
-			interrupts = <GIC_SPI 289 IRQ_TYPE_EDGE_RISING>;
-
-			qcom,remote-pid = <2>;
-			mboxes = <&apcs_glb 8>;
-
-			label = "adsp";
-		};
-	};
-
-	remoteproc_wcss: remoteproc-wcss {
-		compatible = "qcom,qcs404-wcss-pas";
-
-		interrupts-extended = <&intc GIC_SPI 153 IRQ_TYPE_EDGE_RISING>,
-				      <&wcss_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
-				      <&wcss_smp2p_in 1 IRQ_TYPE_EDGE_RISING>,
-				      <&wcss_smp2p_in 2 IRQ_TYPE_EDGE_RISING>,
-				      <&wcss_smp2p_in 3 IRQ_TYPE_EDGE_RISING>;
-		interrupt-names = "wdog", "fatal", "ready",
-				  "handover", "stop-ack";
-
-		clocks = <&xo_board>;
-		clock-names = "xo";
-
-		memory-region = <&wlan_fw_mem>;
-
-		qcom,smem-states = <&wcss_smp2p_out 0>;
-		qcom,smem-state-names = "stop";
-
-		status = "disabled";
-
-		glink-edge {
-			interrupts = <GIC_SPI 156 IRQ_TYPE_EDGE_RISING>;
-
-			qcom,remote-pid = <1>;
-			mboxes = <&apcs_glb 16>;
-
-			label = "wcss";
-		};
-	};
-
 	reserved-memory {
 		#address-cells = <2>;
 		#size-cells = <2>;
@@ -458,6 +396,38 @@
 			#interrupt-cells = <4>;
 		};
 
+		remoteproc_wcss: remoteproc@7400000 {
+			compatible = "qcom,qcs404-wcss-pas";
+			reg = <0x07400000 0x4040>;
+
+			interrupts-extended = <&intc GIC_SPI 153 IRQ_TYPE_EDGE_RISING>,
+					      <&wcss_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
+					      <&wcss_smp2p_in 1 IRQ_TYPE_EDGE_RISING>,
+					      <&wcss_smp2p_in 2 IRQ_TYPE_EDGE_RISING>,
+					      <&wcss_smp2p_in 3 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "wdog", "fatal", "ready",
+					  "handover", "stop-ack";
+
+			clocks = <&xo_board>;
+			clock-names = "xo";
+
+			memory-region = <&wlan_fw_mem>;
+
+			qcom,smem-states = <&wcss_smp2p_out 0>;
+			qcom,smem-state-names = "stop";
+
+			status = "disabled";
+
+			glink-edge {
+				interrupts = <GIC_SPI 156 IRQ_TYPE_EDGE_RISING>;
+
+				qcom,remote-pid = <1>;
+				mboxes = <&apcs_glb 16>;
+
+				label = "wcss";
+			};
+		};
+
 		sdcc1: sdcc@7804000 {
 			compatible = "qcom,sdhci-msm-v5";
 			reg = <0x07804000 0x1000>, <0x7805000 0x1000>;
@@ -843,6 +813,38 @@
 				status = "disabled";
 			};
 		};
+
+		remoteproc_adsp: remoteproc@c700000 {
+			compatible = "qcom,qcs404-adsp-pas";
+			reg = <0x0c700000 0x4040>;
+
+			interrupts-extended = <&intc GIC_SPI 293 IRQ_TYPE_EDGE_RISING>,
+					      <&adsp_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
+					      <&adsp_smp2p_in 1 IRQ_TYPE_EDGE_RISING>,
+					      <&adsp_smp2p_in 2 IRQ_TYPE_EDGE_RISING>,
+					      <&adsp_smp2p_in 3 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "wdog", "fatal", "ready",
+					  "handover", "stop-ack";
+
+			clocks = <&xo_board>;
+			clock-names = "xo";
+
+			memory-region = <&adsp_fw_mem>;
+
+			qcom,smem-states = <&adsp_smp2p_out 0>;
+			qcom,smem-state-names = "stop";
+
+			status = "disabled";
+
+			glink-edge {
+				interrupts = <GIC_SPI 289 IRQ_TYPE_EDGE_RISING>;
+
+				qcom,remote-pid = <2>;
+				mboxes = <&apcs_glb 8>;
+
+				label = "adsp";
+			};
+		};
 	};
 
 	timer {
-- 
2.18.0

