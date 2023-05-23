Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BBD6D70D4B4
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 09:17:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235445AbjEWHQT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 03:16:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232787AbjEWHQG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 03:16:06 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 541621A4
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 00:15:56 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-3f41d087b3bso70651685e9.0
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 00:15:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684826155; x=1687418155;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gz9PoM6wCMhgq1ipkD8tgzicWFuKELgpP14GeTMAjVQ=;
        b=O1jMtTqZzvNvEkoJbLOy/EHEu0A1KVlLqxZ9F4BuhzSVpAK8g2qnl5VnKWtBR3y/rq
         H3Ikmrobsr1+Qw8eV5dMb6E1OWeCcWn25QAMo1Kp5qVKO3PF63lBkoLgfOVFSZM8kD8r
         aEOIIL6b7w3jxic0PelLwNnMAYXMjOFi8AeQGznVptEt6M11MJuFLyUg//SNSXmQvoDO
         xL39S5eqPvMscKXSTbkmXLQcXaZuDnMLZ12psfGrZqr/GMSdj5M0kgmt9kziPRVGGqAn
         2y0pubtp2INl23Vjnt5q6F9L4jDCAcviiYXbA10A8tfA2YENfgpQWirkXBHFeTNucMwn
         qwHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684826155; x=1687418155;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gz9PoM6wCMhgq1ipkD8tgzicWFuKELgpP14GeTMAjVQ=;
        b=IMrCvqxitF/e8j1lZddPcS3u9aK9itNGS9V0wdyITzxA62Fo3pbHyBUAZyFrq25JK2
         bUUlA8CyMINfn1jMqHq3D3I8yYFpvLoPiFTx/3BC9L7i+9qfP2k6E2AlGZtanB4LZLrk
         Q8dRZO1vfvsXtTKz1Z/32JjkoLtxl9GIUFtEbDBMB8mwx5KIrVX5/nRFW6IfUtWC2Xf9
         BDRvrSmGzac5GK0thmYQE5ioOatIwYkD+24h6G2rr1lO0yw63RjcYxT2cx1GggSiB5KW
         o1D24/8Va5Xq6JhMyAto/5HiEKJ6zzpN7CgCe8N8F1p4z6Bmb8HOTtAuhJ/+bUSGtOzk
         vdBA==
X-Gm-Message-State: AC+VfDxPts+9ec1xQwqYkYxcNA5TGUhSvu0FXvt9hwJAVaOpYGSzy4UB
        yeuM28wjvrujQUkbIVZbb9oK4w==
X-Google-Smtp-Source: ACHHUZ7k647TBZjH5DKD2Dvs12CGQJFK9uKpc9b6KHeAorMyiqQfeouNwpPCCSVww8yjdin44Cx/eQ==
X-Received: by 2002:a1c:ed03:0:b0:3f5:fb98:729e with SMTP id l3-20020a1ced03000000b003f5fb98729emr6498256wmh.22.1684826154932;
        Tue, 23 May 2023 00:15:54 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id x15-20020a5d490f000000b00306299be5a2sm10096239wrq.72.2023.05.23.00.15.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 00:15:54 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Tue, 23 May 2023 09:15:47 +0200
Subject: [PATCH v3 3/6] arm64: dts: qcom: sm8350-hdk: Add QMP & DP to
 SuperSpeed graph
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230503-topic-sm8450-graphics-dp-next-v3-3-6c43d293995f@linaro.org>
References: <20230503-topic-sm8450-graphics-dp-next-v3-0-6c43d293995f@linaro.org>
In-Reply-To: <20230503-topic-sm8450-graphics-dp-next-v3-0-6c43d293995f@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2816;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=JgbdY9bKmOSujT9ezh1sLrV7q5szRUTjWe1DK2Hxnmk=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBkbGgl5FXg8bvmxPpqI7kr43oxiNXb12B5Ma2nljv8
 zZo5SHKJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZGxoJQAKCRB33NvayMhJ0eUkD/
 999VfrJj1AOs+muIT89ENvlUqsgbLk1VHgewSXbIAWyn5ei3/NWvEm5ltRF50Ev1538T65tGF4Y51y
 v0R306K0anywJMBqamnhcmOV2RfB9l4p4DsDXwSV1qHJgF0RiXO/YHKbPV1aJD3vO1+FrjAFMZA06b
 g9R5I5cLiqo+1V5XRCNof85W75T3YSyIrrNcLbd9AQxPmivBaUIhYfLOvHgP42KxSTUnqOpsuzCcNz
 13JGnkY3adwJVqqWgkchXwKjZ08cLanc9c+sF+VqyTWr51nM2mIgU1qTma5h/GlDxroIl5BFSCfu0A
 5Y+9yp21PNjscejf1in13OoWbXJ7WYiTY17wttGIAGVTWOj9LWXebdbJ/gm0mCp6tb0Ifv9NzJpShJ
 M4hs+1AX7aoXuHV5Thdt8BaNqEZRc842qFqkpWi6eCYndBOWD8CyiI6xxbJgP37Qp3G9+WQQhdOMaJ
 Vo0A2Ju/n6Qu+INOTF0/3BdNoFje7bI61qc7Nhz61e/Ut/vt9fwKzHwLxEKAnxipiwv/M+QbwIYa0q
 zw4dfGZB/fhGVg9APmM2c9WF2tG7oxApoMRFzj8gUnCZ/gfcC5WetA8WDdVwMJAhjskVsBv3fpdRSu
 FvTHfOF8rVEq+u9gajFkJbsRzBMaY0xV5Ztt87QxYt7dgSactNQhLSSxGkVA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

With support for the QMP combo phy to react to USB Type-C switch events,
introduce it as the next hop for the SuperSpeed lanes of the Type-C
connector, and connect the output of the DisplayPort controller
to the QMP combo phy.

This allows the TCPM to perform orientation switching of both USB and
DisplayPort signals.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350-hdk.dts | 76 ++++++++++++++++++++++++++++++++-
 1 file changed, 74 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
index 2ee1b121686a..d3788bd72ac3 100644
--- a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
@@ -58,7 +58,15 @@ port@1 {
 					reg = <1>;
 
 					pmic_glink_ss_in: endpoint {
-						remote-endpoint = <&usb_1_dwc3_ss>;
+						remote-endpoint = <&usb_1_qmpphy_out>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					pmic_glink_sbu: endpoint {
+						remote-endpoint = <&fsa4480_sbu_mux>;
 					};
 				};
 			};
@@ -326,6 +334,37 @@ zap-shader {
 	};
 };
 
+&i2c13 {
+	clock-frequency = <100000>;
+
+	status = "okay";
+
+	typec-mux@42 {
+		compatible = "fcs,fsa4480";
+		reg = <0x42>;
+
+		interrupts-extended = <&tlmm 2 IRQ_TYPE_LEVEL_LOW>;
+
+		vcc-supply = <&vreg_bob>;
+		mode-switch;
+		orientation-switch;
+		svid = /bits/ 16 <0xff01>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				fsa4480_sbu_mux: endpoint {
+					remote-endpoint = <&pmic_glink_sbu>;
+				};
+			};
+		};
+	};
+};
+
 &i2c15 {
 	clock-frequency = <400000>;
 	status = "okay";
@@ -370,6 +409,21 @@ &mdss {
 	status = "okay";
 };
 
+&mdss_dp {
+	status = "okay";
+
+	ports {
+		port@1 {
+			reg = <1>;
+
+			mdss_dp0_out: endpoint {
+				data-lanes = <0 1>;
+				remote-endpoint = <&usb_1_qmpphy_dp_in>;
+			};
+		};
+	};
+};
+
 &mdss_mdp {
 	status = "okay";
 };
@@ -416,6 +470,10 @@ &qupv3_id_0 {
 	status = "okay";
 };
 
+&qupv3_id_1 {
+	status = "okay";
+};
+
 &qupv3_id_2 {
 	status = "okay";
 };
@@ -716,7 +774,7 @@ &usb_1_dwc3_hs {
 };
 
 &usb_1_dwc3_ss {
-	remote-endpoint = <&pmic_glink_ss_in>;
+	remote-endpoint = <&usb_1_qmpphy_usb_ss_in>;
 };
 
 &usb_1_hsphy {
@@ -732,6 +790,20 @@ &usb_1_qmpphy {
 
 	vdda-phy-supply = <&vreg_l6b_1p2>;
 	vdda-pll-supply = <&vreg_l1b_0p88>;
+
+	orientation-switch;
+};
+
+&usb_1_qmpphy_dp_in {
+	remote-endpoint = <&mdss_dp0_out>;
+};
+
+&usb_1_qmpphy_out {
+	remote-endpoint = <&pmic_glink_ss_in>;
+};
+
+&usb_1_qmpphy_usb_ss_in {
+	remote-endpoint = <&usb_1_dwc3_ss>;
 };
 
 &usb_2 {

-- 
2.34.1

