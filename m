Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 311E16BF9EB
	for <lists+devicetree@lfdr.de>; Sat, 18 Mar 2023 13:19:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229478AbjCRMS7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Mar 2023 08:18:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229916AbjCRMS4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 18 Mar 2023 08:18:56 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32A763D090
        for <devicetree@vger.kernel.org>; Sat, 18 Mar 2023 05:18:49 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id g18so4808454wmk.0
        for <devicetree@vger.kernel.org>; Sat, 18 Mar 2023 05:18:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679141929;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WI0JWAq1Qy9TsaI8cMhQK4FjxjeVaLM5k+fSC4hp/Qw=;
        b=TrV66uIedf+yF19hp/cGovG0zW335l6n/XEgCu0TAd3XmmOawfE2v5VRQCBywmykon
         Ku43GWWsNo72z/kZD1/MZIzKJZHObC3stVPPYUuV6048a7Wp/UmTjYiZzMSa4ExNjE5k
         xSWWVFWm5GwP9Of+YYvMNbpRxT+yC6Ha0vwkiPZ3OhVmqe3zSirAiVgIa44Q2hBmNr94
         Vvoe1cSaP+JQSW0C+nPH2LQnKWVN0rn35MrVKQRzBZOHfUvV/ihGXBWCypHeScH6eZHy
         k9ZHmkj/QuNV82xJLtp+JU+Iv885B4KiSW+Nydn8sGNwPCygrZFFOmRMT5yHLsE7bLDw
         Fw8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679141929;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WI0JWAq1Qy9TsaI8cMhQK4FjxjeVaLM5k+fSC4hp/Qw=;
        b=u8pHi14YlW6itOBxXHg0DNdAwtJf5WA0PRZxwTHL9Zfi4Xw5/TVGk2S8g8VMm4jCAO
         GIunmtQ1/4um5OoYO61Vnj3DOpg0ryKLkbcw9+DxzaxIgvNfOXqPC0tG4CUpxQLpqYXD
         4eQd86gvwfhHgUTLQQlOVPtvh0lsq6Ios5y9o4qfK3veFfqYxDDHnnVsuL09MxEn2UOf
         whwn9SwjQOm2Sh9+xTMJj/XuZhczb1hE52Fqu2Z0XELc+dPkI2+kvUvp8nqLPuvN0T/n
         xVIjsY1mx3LlukF5Ob+vkblih8ABrlMEFq+/ec2ZqbnZDCXfkf5N2zShm+hRZ85xO3NZ
         ZT4A==
X-Gm-Message-State: AO0yUKXC/AuTpCaTidajYexRBysGTzkf1KYrc8msHK2MSgGnGJqMy6YN
        JEtu092MUa16JiDtORjLBet+nvmZ1rxDZu3NbP0=
X-Google-Smtp-Source: AK7set8Dli9SYmFUEc+jzvDBSGXNZzhLikV+Bz3HnfvvnjI+1w2/LdXLsJxkW1WMwq2U4Y8p5/BeBw==
X-Received: by 2002:a05:600c:4fc8:b0:3ed:1f98:670f with SMTP id o8-20020a05600c4fc800b003ed1f98670fmr4001689wmq.20.1679141929484;
        Sat, 18 Mar 2023 05:18:49 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id az40-20020a05600c602800b003e2096da239sm10814997wmb.7.2023.03.18.05.18.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 05:18:48 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     linux@roeck-us.net, heikki.krogerus@linux.intel.com,
        gregkh@linuxfoundation.org, andersson@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     wcheng@codeaurora.org, caleb.connolly@linaro.org,
        bryan.odonoghue@linaro.org, konrad.dybcio@linaro.org,
        subbaram@quicinc.com, jackp@quicinc.com, robertom@qti.qualcomm.com
Subject: [PATCH v4 14/18] arm64: dts: qcom: pm8150b: Add a TCPM description
Date:   Sat, 18 Mar 2023 12:18:24 +0000
Message-Id: <20230318121828.739424-15-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230318121828.739424-1-bryan.odonoghue@linaro.org>
References: <20230318121828.739424-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Type-C port management functionality lives inside of the PMIC block on
pm8150b.

The Type-C port management logic controls orientation detection, vbus/vconn
sense and to send/receive Type-C Power Domain messages.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/pm8150b.dtsi | 70 +++++++++++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pm8150b.dtsi b/arch/arm64/boot/dts/qcom/pm8150b.dtsi
index 66752cc063d60..6db32bdbf5747 100644
--- a/arch/arm64/boot/dts/qcom/pm8150b.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8150b.dtsi
@@ -7,6 +7,8 @@
 #include <dt-bindings/iio/qcom,spmi-vadc.h>
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/spmi/spmi.h>
+#include <dt-bindings/usb/typec/qcom,pmic-typec.h>
+#include <dt-bindings/usb/typec/qcom,pmic-pdphy.h>
 
 / {
 	thermal-zones {
@@ -37,6 +39,14 @@ trip2 {
 			};
 		};
 	};
+
+	tcpm: pm8150b-tcpm {
+		compatible = "qcom,pmic-virt-tcpm";
+		qcom,pmic-typec = <&pm8150b_typec>;
+		qcom,pmic-pdphy = <&pm8150b_pdphy>;
+
+		status = "disabled";
+	};
 };
 
 &spmi_bus {
@@ -59,6 +69,66 @@ pm8150b_vbus: usb-vbus-regulator@1100 {
 			reg = <0x1100>;
 		};
 
+		pm8150b_typec: typec@1500 {
+			compatible = "qcom,pm8150b-typec";
+			reg = <0x1500>;
+			interrupts = <0x2 0x15 PMIC_TYPEC_OR_RID_IRQ
+				      IRQ_TYPE_EDGE_RISING>,
+				     <0x2 0x15 PMIC_TYPEC_VPD_IRQ
+				      IRQ_TYPE_EDGE_BOTH>,
+				     <0x2 0x15 PMIC_TYPEC_CC_STATE_IRQ
+				      IRQ_TYPE_EDGE_RISING>,
+				     <0x2 0x15 PMIC_TYPEC_VCONN_OC_IRQ
+				      IRQ_TYPE_EDGE_BOTH>,
+				     <0x2 0x15 PMIC_TYPEC_VBUS_IRQ
+				      IRQ_TYPE_EDGE_RISING>,
+				     <0x2 0x15 PMIC_TYPEC_ATTACH_DETACH_IRQ
+				      IRQ_TYPE_EDGE_RISING>,
+				     <0x2 0x15 PMIC_TYPEC_LEGACY_CABLE_IRQ
+				      IRQ_TYPE_EDGE_BOTH>,
+				     <0x2 0x15 PMIC_TYPEC_TRY_SNK_SRC_IRQ
+				      IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "or-rid-detect-change",
+					  "vpd-detect",
+					  "cc-state-change",
+					  "vconn-oc",
+					  "vbus-change",
+					  "attach-detach",
+					  "legacy-cable-detect",
+					  "try-snk-src-detect";
+			vdd-vbus-supply = <&pm8150b_vbus>;
+		};
+
+		pm8150b_pdphy: pdphy@1700 {
+			compatible = "qcom,pm8150b-pdphy";
+			reg = <0x1700>;
+			interrupts = <0x2 0x17 PMIC_PDPHY_SIG_TX_IRQ
+				      IRQ_TYPE_EDGE_RISING>,
+				     <0x2 0x17 PMIC_PDPHY_SIG_RX_IRQ
+				      IRQ_TYPE_EDGE_RISING>,
+				     <0x2 0x17 PMIC_PDPHY_MSG_TX_IRQ
+				      IRQ_TYPE_EDGE_RISING>,
+				     <0x2 0x17 PMIC_PDPHY_MSG_RX_IRQ
+				      IRQ_TYPE_EDGE_RISING>,
+				     <0x2 0x17 PMIC_PDPHY_MSG_TX_FAIL_IRQ
+				      IRQ_TYPE_EDGE_RISING>,
+				     <0x2 0x17 PMIC_PDPHY_MSG_TX_DISCARD_IRQ
+				      IRQ_TYPE_EDGE_RISING>,
+				     <0x2 0x17 PMIC_PDPHY_MSG_RX_DISCARD_IRQ
+				      IRQ_TYPE_EDGE_RISING>,
+				     <0x2 0x17 PMIC_PDPHY_FR_SWAP_IRQ
+				      IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "sig-tx",
+					  "sig-rx",
+					  "msg-tx",
+					  "msg-rx",
+					  "msg-tx-failed",
+					  "msg-tx-discarded",
+					  "msg-rx-discarded",
+					  "fr-swap";
+			vdd-phy-supply = <&vreg_l2a_3p1>;
+		};
+
 		pm8150b_temp: temp-alarm@2400 {
 			compatible = "qcom,spmi-temp-alarm";
 			reg = <0x2400>;
-- 
2.39.2

