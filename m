Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 21F93761BA1
	for <lists+devicetree@lfdr.de>; Tue, 25 Jul 2023 16:28:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230041AbjGYO2e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jul 2023 10:28:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232873AbjGYO1k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jul 2023 10:27:40 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A44EC3A80
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 07:27:19 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-5222b917e0cso3420263a12.0
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 07:27:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690295226; x=1690900026;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hU8lSjQ6M9yd48ULuSbmUnhhWGLQGOdsfRMZvGDHUYg=;
        b=qtCYt7lSSrdZZ8iQAVofiekLVvwLzUwagNxRSeFzg960F3nJujWU25uL4zNn/svJ43
         KvBY7KqPvhZRA/Og/tInPY0nPEozrpR4/etavmBxkjejRJdO7HuxwMMOl9Mg4/4oJzRu
         izdUVCpDnvIsmGGYfMao9YyEIJ3ftaz9NHcg8tr2zLAZr1inbVBx1QbVZJMQxlaDOwWB
         hEnO4gJABuwF3kouzb8hIaNxEEkpRgcX6H6Gd+5XEVViB0J5ZYaa/hlMS7jEKJfj8tt+
         VizO7MUsM7bAAWLtnFH90JrogdmuG5VoDogTrS4nRbTbWJvAA2tRoXzNxjMDE2aEI1sG
         S/QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690295226; x=1690900026;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hU8lSjQ6M9yd48ULuSbmUnhhWGLQGOdsfRMZvGDHUYg=;
        b=Zyzdk5CpCd2x+kOpBRwedh7U/OiqDFs9E1ZfAGG+NAjKJqy4lpFH/6vrmEIeemcE0c
         9gBwUX82NPCZyaCh/3KTc70AeMpXxhhKp4i4nsWrrD8bKw39Fq0UgMvWyiiPSA3N+rjB
         0pgfUiKAC0vMmlUa2TS5O+wthwKxhFwBu9J6qeSIb8y9ogTdntFvXaIvdT8WEUNr+lu1
         o4uQa00JvT1WjXCzxQDijbt6ZiaSv6doOidMXRIp+yCjJ4wAwNwaAF3wV6wF2hP1ieta
         w6Q5lnMWb2uKwlFBsjCg2fYGUTHYTE4oGdDZRTt5mnHjqCIz/lIFMpcLoqS+a471ATXd
         3zmQ==
X-Gm-Message-State: ABy/qLa/PwcMnEtfeFe2Z5lrL0uHVauGCWDLh8ZiRXVy6M3ZyE2mI6Zl
        dFMa3XpaDXdwiyw+e3KkPEBCww==
X-Google-Smtp-Source: APBJJlHFnc3Sz1DBUjgwnuSooCSHfG5qz85DMBZy79oDPNK7BX03+ekkae7x1UZx4sl9fM+H2KxFXA==
X-Received: by 2002:a17:907:760d:b0:993:e752:1a6a with SMTP id jx13-20020a170907760d00b00993e7521a6amr13195406ejc.21.1690295226116;
        Tue, 25 Jul 2023 07:27:06 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id o22-20020a170906289600b00977c7566ccbsm8201027ejd.164.2023.07.25.07.27.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jul 2023 07:27:05 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: amlogic: meson-g12b-bananapi: switch to enable-gpios
Date:   Tue, 25 Jul 2023 16:27:03 +0200
Message-Id: <20230725142703.157547-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The recommended name for enable GPIOs property in regulator-gpio is
enable-gpios.  This is also required by bindings:

  meson-g12b-bananapi-cm4-cm4io.dtb: regulator-vddio-c: Unevaluated properties are not allowed ('enable-gpio' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4.dtsi
index 97e522921b06..86adc1423385 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4.dtsi
@@ -56,7 +56,7 @@ vddio_c: regulator-vddio-c {
 		regulator-min-microvolt = <1800000>;
 		regulator-max-microvolt = <3300000>;
 
-		enable-gpio = <&gpio_ao GPIOAO_3 GPIO_OPEN_DRAIN>;
+		enable-gpios = <&gpio_ao GPIOAO_3 GPIO_OPEN_DRAIN>;
 		enable-active-high;
 		regulator-always-on;
 
-- 
2.34.1

