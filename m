Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 79ACF748716
	for <lists+devicetree@lfdr.de>; Wed,  5 Jul 2023 16:59:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232874AbjGEO7b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jul 2023 10:59:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232854AbjGEO72 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jul 2023 10:59:28 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87DED19A4
        for <devicetree@vger.kernel.org>; Wed,  5 Jul 2023 07:59:21 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-992ace062f3so816119166b.2
        for <devicetree@vger.kernel.org>; Wed, 05 Jul 2023 07:59:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688569160; x=1691161160;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bzrYblQvo4U+yVZVzZ09uuCNdbfrwwUh58L+13FV0AQ=;
        b=qkZJ75YwZ7L2XV0SL+Lg/nYTIkK4fztyr9q3E5pbPTUk6NlQ9MScnGtS06IcfRjodJ
         +uoyixgEGOKjEiK2YwLV63bvvqGhI5m1yHf/w+1nfwO089n0Er024Mc5YYYNqqig/+3g
         IFGj+GxLRedfy7tgnK4dREL4+WNePCS7mT0BfYJoTutDCA3vo7HoG8Ks7OuJ3EoW5pyc
         OtFg9qWeOW3bNMq4+l2wasXiPaVt49TJDXiqjz/qyNjqM1oyocgVmXLZCAMUpVHT28qI
         h5QDk2cw18OcLiOlhNGOtFpzO6RKDzxX+ZXSYT7ivEnIpUaebh43cBesGPKMy1qkt2EA
         J1nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688569160; x=1691161160;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bzrYblQvo4U+yVZVzZ09uuCNdbfrwwUh58L+13FV0AQ=;
        b=VPHfIujIE27xfkFkR3ktThsR9iYjqngouUHdtzH3+8O5YvkQN8Z9l4VkQxcJ0sTSyH
         mIxRcPZCR7qon5l080Jqh98YGjZlGSeKMbms29fs2yi6gJtm/aaCYLz/SNGwWnktLfwM
         +8wwkv0P1DkhLGLkBfUjEX7UK1Bh+vNP9L0mBhasfKaFu0tJliqH+R+ZGlWI3LOfeRAl
         Y57Dsm0NyS/SgIunK0Kr+a57fer/wCDANsrQevPvIMagtV/4R5Ow6ex55c5F5xKxBXUN
         IuG3CJyd7W1Slj13OoCNEkfoVaEsGXBucOb7GnN+Srs/o+anwQm+qZdcuQ8NBAyH7QY2
         J+HA==
X-Gm-Message-State: ABy/qLbtRGlUPE5a56/8aUlvJXWgEvayqXqKu7ME4UqLDPgqjYxVqcqd
        Orz/Y83YCKzE00401eHMatBQNw==
X-Google-Smtp-Source: APBJJlHv8IwEnKqzO57ft2SwkudLUlOLrVOvOeDRtOkN+tVScR84ZnT3TnXinxoLlqpEdFT2rLbvYw==
X-Received: by 2002:a17:906:4a91:b0:991:d2a8:658a with SMTP id x17-20020a1709064a9100b00991d2a8658amr13784930eju.34.1688569160066;
        Wed, 05 Jul 2023 07:59:20 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id b22-20020a17090636d600b0099293cdbc98sm9419972ejc.145.2023.07.05.07.59.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jul 2023 07:59:19 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] arm64: dts: renesas: add missing space before {
Date:   Wed,  5 Jul 2023 16:59:12 +0200
Message-Id: <20230705145912.293315-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230705145912.293315-1-krzysztof.kozlowski@linaro.org>
References: <20230705145912.293315-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add missing whitespace between node name/label and opening {.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/renesas/gmsl-cameras.dtsi    | 4 ++--
 arch/arm64/boot/dts/renesas/r8a77970-v3msk.dts   | 2 +-
 arch/arm64/boot/dts/renesas/rz-smarc-common.dtsi | 4 ++--
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/gmsl-cameras.dtsi b/arch/arm64/boot/dts/renesas/gmsl-cameras.dtsi
index d45f072f8cdf..e0930d1ba3aa 100644
--- a/arch/arm64/boot/dts/renesas/gmsl-cameras.dtsi
+++ b/arch/arm64/boot/dts/renesas/gmsl-cameras.dtsi
@@ -100,7 +100,7 @@ max9286_in0: endpoint {
 
 #ifdef GMSL_CAMERA_1
 		port@1 {
-			max9286_in1: endpoint{
+			max9286_in1: endpoint {
 				remote-endpoint = <&fakra_con1>;
 			};
 
@@ -233,7 +233,7 @@ max9286_in4: endpoint {
 
 #ifdef GMSL_CAMERA_5
 		port@1 {
-			max9286_in5: endpoint{
+			max9286_in5: endpoint {
 				remote-endpoint = <&fakra_con5>;
 			};
 
diff --git a/arch/arm64/boot/dts/renesas/r8a77970-v3msk.dts b/arch/arm64/boot/dts/renesas/r8a77970-v3msk.dts
index c2b65f8de547..e36999e91af5 100644
--- a/arch/arm64/boot/dts/renesas/r8a77970-v3msk.dts
+++ b/arch/arm64/boot/dts/renesas/r8a77970-v3msk.dts
@@ -145,7 +145,7 @@ &i2c0 {
 	status = "okay";
 	clock-frequency = <400000>;
 
-	hdmi@39{
+	hdmi@39 {
 		compatible = "adi,adv7511w";
 		#sound-dai-cells = <0>;
 		reg = <0x39>;
diff --git a/arch/arm64/boot/dts/renesas/rz-smarc-common.dtsi b/arch/arm64/boot/dts/renesas/rz-smarc-common.dtsi
index 3962d47b3e59..a7594ba3a998 100644
--- a/arch/arm64/boot/dts/renesas/rz-smarc-common.dtsi
+++ b/arch/arm64/boot/dts/renesas/rz-smarc-common.dtsi
@@ -78,11 +78,11 @@ vccq_sdhi1: regulator-vccq-sdhi1 {
 	};
 };
 
-&audio_clk1{
+&audio_clk1 {
 	clock-frequency = <11289600>;
 };
 
-&audio_clk2{
+&audio_clk2 {
 	clock-frequency = <12288000>;
 };
 
-- 
2.34.1

