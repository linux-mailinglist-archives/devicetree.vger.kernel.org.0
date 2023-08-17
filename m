Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2ED9F77FAC7
	for <lists+devicetree@lfdr.de>; Thu, 17 Aug 2023 17:31:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245173AbjHQPbZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Aug 2023 11:31:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352676AbjHQPAO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Aug 2023 11:00:14 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 024413591
        for <devicetree@vger.kernel.org>; Thu, 17 Aug 2023 07:59:53 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-99bf8e5ab39so1048878166b.2
        for <devicetree@vger.kernel.org>; Thu, 17 Aug 2023 07:59:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692284385; x=1692889185;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e/n1mPlA3bD3cKDjIc3yPs+tXQOFq+U4vZNdJ+L1Dn4=;
        b=occYa08R7Z8nic08JlcWH5Dp/uUHr/UUyYkQ5rR96hz+WnhSp3hTVSt18E9+OTKYId
         eNIvG3goXUCgEe4LJIg2m0xQEGA7wF/MCbh5/UmYV0peXxZlTHR5p0K69Q+HeCjo1LAd
         0K/xs/epr0cIoixBNOK49GgAIuhUC9UVziTFJARX3rCB5bcKiC/1B62Wf9861kk6ONnl
         EIp2iuSpKMOc3d5oOFvgQ/ptJOsF43Ms1wDwjj6+kaOAAjANAt0EX1HpAHYXvtp4Szie
         FXlusP89ctKEA9XoGdNcH8ZsuclQaAX8nj1rdtbEAUCWMWbZolqNwfDgARTBUUZMldGe
         F8vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692284385; x=1692889185;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e/n1mPlA3bD3cKDjIc3yPs+tXQOFq+U4vZNdJ+L1Dn4=;
        b=eg/9EXi19hFrFUblIi5nkB0jOKZrc5J0uoTBSzeG2AClSI+6Sy05lUgx/MwC+0TFcG
         XIPPgTEilQl18Y3mcqfGmLXo8Hh4W1sXx28jwELyCqf2UEgsgUUuyzd9o589GZOzTSg4
         p5EMc60d0VSS9M9XjDvb6htKUa29++1wjL045o0yu/tgzhDHqkQ6KBaENOd5qQutvTRC
         ALaxJlp0Qk1s8ABc1pr/3JCWWnxgBiupgjo/fdlvXU28YLU2ssIMTV4B6ETHt3GFPDgq
         K7MZM66W0u3iEcUfpGrKw1DLs+5B5iVYuit1iWumrUZDWWDzv7OPkllAV7s9YJ0tcJAP
         jzkg==
X-Gm-Message-State: AOJu0YwW2FnJVgN1CPbUQihtETtyj/xEcP7aoecRMBC+KDaG3zAXpe+M
        H8v1ITFqIgVxqNaGZrufpy5VwA==
X-Google-Smtp-Source: AGHT+IF+0w+BKzzP8jEXAsFRgeM+qRBGveKGDzw5Xwja5f2AaVKGn03Fm1DGa0sPRL3l6q5Js1Wc9Q==
X-Received: by 2002:a17:906:1013:b0:99c:f966:9ea2 with SMTP id 19-20020a170906101300b0099cf9669ea2mr4459381ejm.25.1692284385125;
        Thu, 17 Aug 2023 07:59:45 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id lj9-20020a170906f9c900b00988be3c1d87sm10233557ejb.116.2023.08.17.07.59.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Aug 2023 07:59:44 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH v2 2/4] arm64: dts: qcom: qrb5165-rb5: add onboard USB-C redriver
Date:   Thu, 17 Aug 2023 17:59:38 +0300
Message-Id: <20230817145940.9887-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230817145940.9887-1-dmitry.baryshkov@linaro.org>
References: <20230817145940.9887-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the nb7vpq904m, onboard USB-C redriver / retimer.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 52 +++++++++++++++++++++++-
 1 file changed, 50 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index 303d07f9c6e5..a4f7a9f9c22c 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -610,6 +610,46 @@ lt9611_out: endpoint {
 /* LS-I2C1 */
 &i2c15 {
 	status = "okay";
+
+	typec-mux@1c {
+		compatible = "onnn,nb7vpq904m";
+		reg = <0x1c>;
+
+		vcc-supply = <&vreg_s4a_1p8>;
+
+		retimer-switch;
+		orientation-switch;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				redriver_usb_con_ss: endpoint {
+					remote-endpoint = <&pm8150b_typec_mux_in>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+
+				redriver_phy_con_ss: endpoint {
+					remote-endpoint = <&usb_1_qmpphy_out>;
+					data-lanes = <0 1 2 3>;
+				};
+			};
+
+			port@2 {
+				reg = <2>;
+
+				redriver_usb_con_sbu: endpoint {
+					remote-endpoint = <&pm8150b_typec_sbu_out>;
+				};
+			};
+		};
+	};
 };
 
 &mdss {
@@ -1299,7 +1339,7 @@ &usb_1_qmpphy {
 };
 
 &usb_1_qmpphy_out {
-	remote-endpoint = <&pm8150b_typec_mux_in>;
+	remote-endpoint = <&redriver_phy_con_ss>;
 };
 
 &usb_2 {
@@ -1388,7 +1428,15 @@ pm8150b_role_switch_in: endpoint {
 			port@1 {
 				reg = <1>;
 				pm8150b_typec_mux_in: endpoint {
-					remote-endpoint = <&usb_1_qmpphy_out>;
+					remote-endpoint = <&redriver_usb_con_ss>;
+				};
+			};
+
+			port@2 {
+				reg = <2>;
+
+				pm8150b_typec_sbu_out: endpoint {
+					remote-endpoint = <&redriver_usb_con_sbu>;
 				};
 			};
 		};
-- 
2.39.2

