Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56428756EAB
	for <lists+devicetree@lfdr.de>; Mon, 17 Jul 2023 23:01:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229697AbjGQVBD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jul 2023 17:01:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229619AbjGQVBC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jul 2023 17:01:02 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3043A4
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 14:01:00 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-991ef0b464cso1298439466b.0
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 14:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689627659; x=1692219659;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AnjHreWF4HQ2gd8gLooLMHw770F6qkj0Sftpoev0l60=;
        b=Mx6aiakuHMHpp5y7Z2lsRn4qs1q6mwMOt2DvKCjAAGpWr9X3y0w6NcMDsyggz6xYvs
         E/fhWtYojdu+GexF9HBY7o+YfMNvSQp68xkAezwLpsVueQD/lvqNipteQhz2+fKn6lMy
         qm3jtb9aJf3OknVRW4gLVQjOrvPsKK12kgsZeNtmzqzutmpcoJdI59HFIhLPGLuYNyOa
         VUbprYJsRuZJyzBrQyFq/Hd4dV31bI+hBf9+AHuCpZ5l2z/KfXOCfCsW5uRvbx68zIgu
         2WjQHPGLBOeROn0ir89hqD2qFO16yPmxBsz4J4DTWA08nXN0ogp7csvvyPMOiqGFdB0H
         Z6AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689627659; x=1692219659;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AnjHreWF4HQ2gd8gLooLMHw770F6qkj0Sftpoev0l60=;
        b=hlI7Mt/fbFg4DWsBZKjrmkr8xMiJx9127uXTQ38HQv5Yi1+lwidKNouK1ZRrL7D+bC
         md6Shttm9dcLlo++l+VG504YFxD+AR6HwLcBuwKMpJGaPdJJp2vLQkUHD+/Bxg44ral8
         i4Smc+qxCjm0SiTBnRz5bqcZ4kU9D2wOMupRg1BKZuzseLNQVRrbU1pDBXh/q8AKQrKg
         KoJSAnCb+YnBVnlM8egqS0mocHkQwvNMICIyJB0oDGK7yVGujK13/df1DMUoUwMdhMhk
         KvoIV3qQIHCAyUt+uQ9f9dpEx2F5z4a0ryel/3wxVrqufdvEghQpIFNINj5ldDp7/o+L
         wcGg==
X-Gm-Message-State: ABy/qLbXi25VXAH9mSDNn7hWxWuahwBmwvsEOxpqZc0v/WGIecZ/ehLQ
        o8sKg08WgBN8BpRPRgd2IjCgSg==
X-Google-Smtp-Source: APBJJlGMQK28GVmhsl4/oDUPAmhjGFlLEYUSj3Ugct7yLJzUxWoxWzUOQDQNN5cYhh8FnsOtviRl5g==
X-Received: by 2002:a17:906:9746:b0:98e:3dac:6260 with SMTP id o6-20020a170906974600b0098e3dac6260mr12219537ejy.13.1689627659360;
        Mon, 17 Jul 2023 14:00:59 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id rs14-20020a170907036e00b00987e2f84768sm178392ejb.0.2023.07.17.14.00.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jul 2023 14:00:58 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] arm64: dts: qcom: sc8180x-primus: remove superfluous "input-enable"
Date:   Mon, 17 Jul 2023 23:00:54 +0200
Message-Id: <20230717210055.21979-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Pin configuration property "input-enable" was used with the intention to
disable the output, but this is done by default by Linux drivers.  Since
commit c4a48b0df8bf ("dt-bindings: pinctrl: qcom: tlmm should use
output-disable, not input-enable") the property is not accepted anymore:

  sc8180x-primus.dtb: pinctrl@3100000: hall-int-active-state: 'oneOf' conditional failed, one must be fixed:
    'bias-disable', 'function', 'input-enable', 'pins' do not match any of the regexes: '-pins$', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

That's my favorite commit.
---
 arch/arm64/boot/dts/qcom/sc8180x-primus.dts | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x-primus.dts b/arch/arm64/boot/dts/qcom/sc8180x-primus.dts
index 9b8695b92c48..aaac2da69286 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x-primus.dts
+++ b/arch/arm64/boot/dts/qcom/sc8180x-primus.dts
@@ -580,7 +580,6 @@ hall_int_active_state: hall-int-active-state {
 		pins = "gpio121";
 		function = "gpio";
 
-		input-enable;
 		bias-disable;
 	};
 
@@ -590,7 +589,6 @@ int-n-pins {
 			function = "gpio";
 
 			bias-pull-up;
-			intput-enable;
 		};
 
 		kp-disable-pins {
@@ -639,7 +637,6 @@ tp-int-pins {
 			function = "gpio";
 
 			bias-disable;
-			input-enable;
 		};
 
 		tp-close-n-pins {
@@ -647,7 +644,6 @@ tp-close-n-pins {
 			function = "gpio";
 
 			bias-disable;
-			input-enable;
 		};
 	};
 
@@ -656,7 +652,6 @@ int-n-pins {
 			pins = "gpio122";
 			function = "gpio";
 
-			input-enable;
 			bias-disable;
 		};
 
-- 
2.34.1

