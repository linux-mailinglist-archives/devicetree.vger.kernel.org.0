Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BAD7E6C3D77
	for <lists+devicetree@lfdr.de>; Tue, 21 Mar 2023 23:12:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230010AbjCUWMw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Mar 2023 18:12:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229970AbjCUWMv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Mar 2023 18:12:51 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC48C570BB
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 15:12:49 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id y20so21015671lfj.2
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 15:12:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679436768;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EQE/ZY7onSQ8rUTB/nkJV/hU8qnvId3wEP5blVPG6jI=;
        b=Gx8XwMWGypKw4hXhmcWKXP05V9Z81AvNK92dreh4f6kuoaZYZsf3gXsNP7chNNloOE
         Of9TfZUb2HqVwGLyLQuu+HyQ6Uabif260/tlKCNnTljP6goKw6NkSihgiusnn+4X1mdE
         VY8wvpmkwFvitaH6ZECfgZdmLH9lqaz0resI8WGmc/ArjKvQBk1ohP1BIF9gZtFXeki0
         +j8tMxkxD1MaFABGfy3C8JKGEl9dEsKAQOpUlIdm0Cku6z/BcqoyaM/HHkzjkuSeySod
         bjUd/zBh8ojiXD/UtQkmiXUR/UEhKdMtkV0qDVgllaNWL9SomvxP4h0QjAIQ/azoGHb/
         QOfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679436768;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EQE/ZY7onSQ8rUTB/nkJV/hU8qnvId3wEP5blVPG6jI=;
        b=nMeVCOaF7/w1AX60nJ/eIRuyAF4l8rgSHNdV9YsNXczX/jgggLmnZWJxGzIsSZUvHM
         rHye220DqVmdUrphkseHQuciJAHnQ7AjayfZnC4BFQ0YVwWoPivxziaQdDQx/AZMRktH
         yy662/EvYYbhiyKIS2f4Nztrnx1j5xejo5MzkeAnZh2mYAkSj3AK5w/4+g6KKirJy22X
         2DMy0Gw2Ze7VeWovU2i7C0vKnc3pQuQhKg5XejnLj+DDZ5oa7Riu5c79pYQ0nNyESqtc
         2Aph3tyy2yRegx0XnuCJjZmhqwuOGhv7pErMoDk7QkCQ2Dcnuy4eU6ZsWnkUD+3op6L3
         QAEg==
X-Gm-Message-State: AO0yUKX7GA3AYiVaZ0RSHqBOXL8jn6/vcFQrRJ4vZoTRwm5YMCfgOnw+
        RpeRtLP6ZeR89m1UD320sz+WdA==
X-Google-Smtp-Source: AK7set9GQB+oUO08nFChXZ4KqrDMsfaOaQ1Qbd0F7K2rkJG9wOk9KriARJE7DfXlrlKqhbGeBAB7Bw==
X-Received: by 2002:ac2:5939:0:b0:4e8:50e8:b96d with SMTP id v25-20020ac25939000000b004e850e8b96dmr1291425lfi.39.1679436768006;
        Tue, 21 Mar 2023 15:12:48 -0700 (PDT)
Received: from [192.168.1.101] (abym238.neoplus.adsl.tpnet.pl. [83.9.32.238])
        by smtp.gmail.com with ESMTPSA id o15-20020a056512050f00b004e9c983a007sm1220344lfb.289.2023.03.21.15.12.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Mar 2023 15:12:47 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Tue, 21 Mar 2023 23:12:29 +0100
Subject: [PATCH 2/4] arm64: dts: qcom: sm8350-sagami: Add PMIC GLINK
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230321-topic-sagami_dp-v1-2-340c8bce4276@linaro.org>
References: <20230321-topic-sagami_dp-v1-0-340c8bce4276@linaro.org>
In-Reply-To: <20230321-topic-sagami_dp-v1-0-340c8bce4276@linaro.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1679436764; l=2062;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=lp3eRpNyaDm0TqsNi7lANZ1nKsWClV3YhZv72FTFjqk=;
 b=mfS0ghbAWxBp3havLWO2c/RvDRQxgl5dSZJzaTsqb948DP73mtMZPJxnzrjPpDUMIrvQIwQq56i9
 eELx4a/uBGzjbIjCjZKCeo8B158EA4fj0dqjVIOk7sW7CAQqvax5
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Sagami devices, like other 8350s, uses PMIC GLINK for various
functionality around battery, charging, TCPM etc. Enable it.

Worth noting:
My USB mouse is unimpressed when connected to the device via a
non-powered USB-C dock. Microsoft HD-500 dock refuses to estalish a
PD handshake.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 .../boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi   | 60 +++++++++++++++++++++-
 1 file changed, 59 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi b/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
index 89382ad73133..21462b6de686 100644
--- a/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
@@ -89,6 +89,42 @@ key-vol-down {
 		};
 	};
 
+	pmic-glink {
+		compatible = "qcom,sm8350-pmic-glink", "qcom,pmic-glink";
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		connector@0 {
+			compatible = "usb-c-connector";
+			reg = <0>;
+			power-role = "dual";
+			data-role = "dual";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					pmic_glink_dwc3_hs_in: endpoint {
+						remote-endpoint = <&usb_1_dwc3_hs>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					pmic_glink_dwc3_ss_in: endpoint {
+						remote-endpoint = <&usb_1_dwc3_ss>;
+					};
+				};
+			};
+		};
+	};
+
+
 	reserved-memory {
 		cont_splash_mem: memory@e1000000 {
 			reg = <0 0xe1000000 0 0x2300000>;
@@ -904,7 +940,29 @@ &usb_1 {
 };
 
 &usb_1_dwc3 {
-	dr_mode = "peripheral";
+	dr_mode = "otg";
+	usb-role-switch;
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@0 {
+			reg = <0>;
+
+			usb_1_dwc3_hs: endpoint {
+				remote-endpoint = <&pmic_glink_dwc3_hs_in>;
+			};
+		};
+
+		port@1 {
+			reg = <1>;
+
+			usb_1_dwc3_ss: endpoint {
+				remote-endpoint = <&pmic_glink_dwc3_ss_in>;
+			};
+		};
+	};
 };
 
 &usb_1_hsphy {

-- 
2.40.0

