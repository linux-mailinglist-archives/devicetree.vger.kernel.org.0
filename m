Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11176702E63
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 15:37:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242121AbjEONhK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 09:37:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241862AbjEONhI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 09:37:08 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9E782708
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 06:37:01 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-3f450815d0bso62605515e9.0
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 06:37:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684157819; x=1686749819;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3aLrbkfYK1T8L/pww+3+UJGfuSXtltlajZdwftVgkQc=;
        b=BnikwaqXfHdIuZS2cIM3Om/ecj6nLAfiOLyEaauLoE4A6R/CXRLwvoJn+JXPkhx/lG
         O/CRhu3bjLTFRqvYSMq2/4yMO1PAzsa19HbWWvnKvl0MJ3agppjqtc16K8JaaCgC+5K2
         Avq5L6zan2cr3EMNBkNMDrRcX/aBlsd/ZbJCqpk7rspDZFfdphu59pu70/lrevRLPmA0
         bGb90myeoure8/AvcT+MXbh+rGt4Y1EQnRD3YYu/Qvz7j1k30TxggQq1UihaQ/d8zKRh
         1g6jdD3yJTjM64QG0UfRKud4TYLIqi8c6y7Qh9tHEHndUqfLyCFt2iGSwlNoesKTEMPs
         PHag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684157819; x=1686749819;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3aLrbkfYK1T8L/pww+3+UJGfuSXtltlajZdwftVgkQc=;
        b=el6gVyvQNoqTb+YDhlMELSHFeI9S2DddIs8+O1mZnaNUiaPOF5BEmsHjdDKKPeXwLP
         6qjGKdU0tHN46nvqlCDe1XMNxHUJHomizI35IJ1rqIxMFDpRZVdgnAH3dOTbN5RXy7UN
         N3rxEGpWgoJdXUYPN3klJi6xiEKK6TgqRUpEQ14xbYfJT0NMmdtU6auqV07yEn3DWqOX
         lJ5mFji1i5aeAvScjmBChQ3n44I+xzBahZUDhc4hunxwc5bQ+PncfZUybb41Hi53D7wc
         H6YkXs46p0GPqK/2JdaD7pIRXZSBjy2ZTcZwK+3Z180uAqHVsKpQ4cmGOxg3FBG4taIl
         5mGg==
X-Gm-Message-State: AC+VfDxriPo1cKQdyHoin5sZJexavkP9oXfJbZ3/ylbIBzUosVKvSa4D
        4cWeNFWEgDIn+gz5iV2EvIwDyQ==
X-Google-Smtp-Source: ACHHUZ7oRl/buvDQZ+RQ5GbsstJk9HNPMo1h33o5zQFneFBK+k3QHszvPczoryrclzRYZrEDhnxfWw==
X-Received: by 2002:a1c:f703:0:b0:3f1:979f:a733 with SMTP id v3-20020a1cf703000000b003f1979fa733mr25294002wmh.31.1684157819440;
        Mon, 15 May 2023 06:36:59 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id o17-20020a5d4091000000b003078a3f3a24sm28856634wrp.114.2023.05.15.06.36.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 May 2023 06:36:59 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     linux@roeck-us.net, heikki.krogerus@linux.intel.com,
        gregkh@linuxfoundation.org, andersson@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        luca.weiss@fairphone.com, lujianhua000@gmail.com,
        linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     konrad.dybcio@linaro.org, caleb.connolly@linaro.org,
        bryan.odonoghue@linaro.org, subbaram@quicinc.com,
        jackp@quicinc.com, robertom@qti.qualcomm.com
Subject: [PATCH v8 11/11] arm64: dts: qcom: qrb5165-rb5: Switch on TCPM orientation-switch for usb_1_qmpphy
Date:   Mon, 15 May 2023 14:36:43 +0100
Message-Id: <20230515133643.3621656-12-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230515133643.3621656-1-bryan.odonoghue@linaro.org>
References: <20230515133643.3621656-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Switch on USB orientation-switching for usb_1_qmp via TCPM. Detecting the
orientation switch is required to get the PHY to reset and bring-up the PHY
with the CC lines set to the appropriate lane.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 11 +++++++++++
 arch/arm64/boot/dts/qcom/sm8250.dtsi     |  1 +
 2 files changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index 580ed63c6fb54..9b314c390e3f8 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -1294,6 +1294,11 @@ &usb_1_qmpphy {
 
 	vdda-phy-supply = <&vreg_l9a_1p2>;
 	vdda-pll-supply = <&vreg_l18a_0p92>;
+	orientation-switch;
+};
+
+&usb_1_qmpphy_typec_mux_in {
+	remote-endpoint = <&pm8150b_typec_mux_out>;
 };
 
 &usb_2 {
@@ -1378,6 +1383,12 @@ pm8150b_role_switch_out: endpoint {
 					remote-endpoint = <&usb_1_dwc3_role_switch_in>;
 				};
 			};
+			port@1 {
+				reg = <1>;
+				pm8150b_typec_mux_out: endpoint {
+					remote-endpoint = <&usb_1_qmpphy_typec_mux_in>;
+				};
+			};
 		};
 	};
 };
diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index b9f55a9ef89f8..f538216f3704f 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -3588,6 +3588,7 @@ ports {
 
 				port@0 {
 					reg = <0>;
+					usb_1_qmpphy_typec_mux_in: endpoint {};
 				};
 
 				port@1 {
-- 
2.39.2

