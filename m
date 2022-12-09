Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E598064830B
	for <lists+devicetree@lfdr.de>; Fri,  9 Dec 2022 14:54:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229876AbiLINyQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Dec 2022 08:54:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229850AbiLINyM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Dec 2022 08:54:12 -0500
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EE7F75090
        for <devicetree@vger.kernel.org>; Fri,  9 Dec 2022 05:54:11 -0800 (PST)
Received: by mail-ed1-x536.google.com with SMTP id v8so3188069edi.3
        for <devicetree@vger.kernel.org>; Fri, 09 Dec 2022 05:54:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jfZOlKGR+/P2su4394g9InmLBjuJ6p9eVWFIlDxziAA=;
        b=RNV2L/Sop5/PdTIx3qI63Fj5ZMWwkTZqMD0vIIGi2IKFImQX4QRFRgqentkk0GXEVp
         v+iCJXqEkCzdgVBpvEdMimpvrep2rdG5Se1dZ4uXrvxWMuuXrLnDEsyV/n3697O/JzhS
         /RQKR1ZOXxOk1ueUykpfMnYpGRDQp7TFZz9KkULrHMGk4tCUxqm9C9N8nQ4anfXPEjz/
         LdpLF62dfOMJiQ+ndxoLMzvAs5FAF5vkdMrFSsSCzTy5g9bL1glKTaO0Do+RKwe1ngk9
         04uB8a60Ipp9chgbWawpL7IkCRLY8D7T3FjmjOvHCt0ZEf0gO76hu745oEF6vKKPPzet
         7fkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jfZOlKGR+/P2su4394g9InmLBjuJ6p9eVWFIlDxziAA=;
        b=ubaBPI0f15q2TKjw7y1Hsc5H9vrl9iRcj6sIMzNlrxVhj2o8hEie6YxzjZTx2HA+vU
         VHJrKdsq2ccNjXyRBMCrYTw2xzi+kFBX2RBRwlde4u9EXAP8K6i48NLY4Zb2BZ3Ctt5e
         5G61Vw9svpFycgW/TE6NSfng1K7woGG0wtgLc6hZUI396pCiv79OadUjss8Q5KN23n0h
         BuXNKsbj00BBzcgk5iivXky4wD8iIRRomU+EKb/bc4SJqsbZLDxQIIJ2v84CqCZ7dNo3
         jtHZ53FXSaavTNi+za3NKu7Tx1hHTGXiIrASmvjkbHFfKrFRBOjw4oC/KiJVF55WzMfl
         09mQ==
X-Gm-Message-State: ANoB5pluHewMUwNWSNMAqeTnTvRLLwbHlCZgB/ZbSRjGyVhy/8C0gPfQ
        e5Rw1Y9p+XKJxoaRLRVoaVy4Mg==
X-Google-Smtp-Source: AA0mqf7bfnAbNrpTqzZUS+sekqhXfLPux6Cr11cOwIbyl2ZNYjOyapiWmfPgwaAP/qK0+K/Ir7hzhQ==
X-Received: by 2002:a05:6402:3897:b0:468:a5fc:8e36 with SMTP id fd23-20020a056402389700b00468a5fc8e36mr5172683edb.20.1670594050043;
        Fri, 09 Dec 2022 05:54:10 -0800 (PST)
Received: from [172.16.240.113] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id k19-20020aa7c393000000b0045b4b67156fsm656371edq.45.2022.12.09.05.54.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Dec 2022 05:54:09 -0800 (PST)
From:   Luca Weiss <luca.weiss@fairphone.com>
Date:   Fri, 09 Dec 2022 14:54:08 +0100
Subject: [PATCH 3/3] arm64: dts: qcom: sm7225-fairphone-fp4: configure flash LED
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20221209-fp4-pm6150l-flash-v1-3-531521eb2a72@fairphone.com>
References: <20221209-fp4-pm6150l-flash-v1-0-531521eb2a72@fairphone.com>
In-Reply-To: <20221209-fp4-pm6150l-flash-v1-0-531521eb2a72@fairphone.com>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Fenglin Wu <quic_fenglinw@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.11.0-dev-64ef0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Configure the pm6150l flash node for the dual flash LEDs found on FP4.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
index c456e9594ea5..fef7d1d02925 100644
--- a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
+++ b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
@@ -7,6 +7,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 #include "sm7225.dtsi"
@@ -367,6 +368,28 @@ &mpss {
 	firmware-name = "qcom/sm7225/fairphone4/modem.mdt";
 };
 
+&pm6150l_flash {
+	status = "okay";
+
+	led-0 {
+		function = LED_FUNCTION_FLASH;
+		color = <LED_COLOR_ID_YELLOW>;
+		led-sources = <1>;
+		led-max-microamp = <180000>;
+		flash-max-microamp = <1000000>;
+		flash-max-timeout-us = <1280000>;
+	};
+
+	led-1 {
+		function = LED_FUNCTION_FLASH;
+		color = <LED_COLOR_ID_WHITE>;
+		led-sources = <2>;
+		led-max-microamp = <180000>;
+		flash-max-microamp = <1000000>;
+		flash-max-timeout-us = <1280000>;
+	};
+};
+
 &pm6150l_wled {
 	status = "okay";
 

-- 
2.38.1
