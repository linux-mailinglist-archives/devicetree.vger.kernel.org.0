Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38A36762C79
	for <lists+devicetree@lfdr.de>; Wed, 26 Jul 2023 09:05:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232170AbjGZHE7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jul 2023 03:04:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232176AbjGZHEX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jul 2023 03:04:23 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4F09DD
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 00:02:47 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-99bc02890c1so71385166b.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 00:02:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690354966; x=1690959766;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YecLEf8qZprCEU7ERZ9Wc6P5u7z1nwmeCE8OvgcZdt0=;
        b=x1if1as6W99o+6uXX8NnHX/RMLQ27OspYAaqhE7gnduJ8Sso/MCinYGaz2wiW1O6Xs
         u0MkL+1SOr5L1h03uxgGMksTZ3TkqAg0pSgFkRKAP8CPai9nRNf7yQ5/YTmM/SmDie/W
         X7GPSGAJZ6SZ6uR8kEvU7siFKJdYJfMR1ZQsF8EAhnLUl24I/mB8wtLPmuDO0Czkecom
         ylQlnDKYvKg7iRJwcDO0rRu/EoJ9OQOONPEM+bQflXXdJ/iHO009pKZ+L/sYyt4TB20w
         G0wix0WrIHcqBnsYvp1tmRD3KofOSV6iBwQP2FvY0A/jxXu9a2fOI52BPxyMUMmFPZ27
         hwZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690354966; x=1690959766;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YecLEf8qZprCEU7ERZ9Wc6P5u7z1nwmeCE8OvgcZdt0=;
        b=cO4sK44q9xTFNsZDZfqVJ+2OQ6g/N9qdc5U7DmYhYxdxrQ0keMA0xuvRFC4aGgTodH
         LnLejUGkoxnaVgY6K14EL7Hkmpc082Gd277mgnnFEJYiRhn2ZsmffnbzGMMIcWwyayIB
         xJkvdhYG0UhL9/RcnD1xnVaiaIhNJ/YSEvPIdOrForGAtmRl72jU1t6N4GNwavY+3HzJ
         LWvgM1jbpQ6qsMTuKTtezdEbp4EG5Yi4EF+sWpAMld8Ph09H3v1Gl06YTsuTdqCTW8u9
         zkQIB7SH/OUubSG95o1kyC9DQHBxO8rFUDIQTAC7IZg6Q0NF8hTTZ0+2ZB1i2S/sTHty
         ax9Q==
X-Gm-Message-State: ABy/qLZUIgsW1xliYKS+IpCxCGLOo5hSBKNVS440qciG9AwquZCOlDmC
        WTeWB393IBALxJPQ1rl5iebYeA==
X-Google-Smtp-Source: APBJJlHvdJs2n1j0lsHu5vxNDRHqv8G7d/t6TqS0C9zPnPwi9a+WpMhy76XTDv1NOzIDpeFfDB0pGg==
X-Received: by 2002:a17:906:539a:b0:994:5396:e32c with SMTP id g26-20020a170906539a00b009945396e32cmr880369ejo.3.1690354966393;
        Wed, 26 Jul 2023 00:02:46 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id si2-20020a170906cec200b0099304c10fd3sm9180093ejb.196.2023.07.26.00.02.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jul 2023 00:02:45 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] AMR: dts: renesas: r8a7740-armadillo: switch to enable-gpios
Date:   Wed, 26 Jul 2023 09:02:41 +0200
Message-Id: <20230726070241.103545-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

The recommended name for enable GPIOs property in regulator-gpio is
"enable-gpios".  This is also required by bindings:

  r8a7740-armadillo800eva.dtb: regulator-vccq-sdhi0: Unevaluated properties are not allowed ('enable-gpio' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/renesas/r8a7740-armadillo800eva.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/renesas/r8a7740-armadillo800eva.dts b/arch/arm/boot/dts/renesas/r8a7740-armadillo800eva.dts
index fa09295052c6..d21e00e1f401 100644
--- a/arch/arm/boot/dts/renesas/r8a7740-armadillo800eva.dts
+++ b/arch/arm/boot/dts/renesas/r8a7740-armadillo800eva.dts
@@ -58,7 +58,7 @@ vccq_sdhi0: regulator-vccq-sdhi0 {
 		regulator-max-microvolt = <3300000>;
 		vin-supply = <&vcc_sdhi0>;
 
-		enable-gpio = <&pfc 74 GPIO_ACTIVE_HIGH>;
+		enable-gpios = <&pfc 74 GPIO_ACTIVE_HIGH>;
 		gpios = <&pfc 17 GPIO_ACTIVE_HIGH>;
 		states = <3300000 0>, <1800000 1>;
 
-- 
2.34.1

