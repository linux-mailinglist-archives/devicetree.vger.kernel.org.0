Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB492704F03
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 15:15:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232376AbjEPNPe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 09:15:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232321AbjEPNPd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 09:15:33 -0400
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41C92A7
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 06:15:32 -0700 (PDT)
Received: by mail-ot1-x333.google.com with SMTP id 46e09a7af769-6ab13ebd75bso603775a34.0
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 06:15:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684242931; x=1686834931;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8M1CkEaQmILboM4aYksgyMh6Zp1q5h2RHHddRmh6ZZ4=;
        b=sqU59nBGdFKWGbL0tH3USun1IB9pDADWybMpY1+sZawAP2zxqsMIJlvolOLn7jd95V
         fOd6YVYk7jdfDJMAj7G6ALXWct4U+vF54zv8LXtL0bHN9b6+oCRJZI6m90wAFr/rUiDQ
         hNdwLyT6IiinB+IdMLpFa8HITW1MKGeswB75fYON+QRyqrsAgwGlx17YbNGtg/befMjJ
         lhNQNjN0AENu+fsFbCZI7+Wo481DDV45t7tNLooCYwM+sdOJ+5BbRca3s9MgDvOh5sSv
         e7psTIozNTjF/m6vkoAfT9bCnrYc9n9CfKXu0Lrv7vyTUfIo7M2KUXzhOsZ/VfDtN50b
         s1tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684242931; x=1686834931;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8M1CkEaQmILboM4aYksgyMh6Zp1q5h2RHHddRmh6ZZ4=;
        b=i07/8IUOby5NfO/qvROjhddxJeTAn2mnn+Nnc04ZNmPd7N9LvTTg2+S4z1tichvHee
         ZhSrTuMhvNIUPZKcc26d30sUOH4ngfWNwHjx3nOgZWRpjyFTv9k/FBa537AhEbQvOIt9
         K0gusYzz6C2FvQVqXqwPx19sE5CtflwL7wokD1jfkQSA4PFEj8hRLg2yB5QtCEEioESN
         T6NtnMmeTIU2V5lGxkTCo7EK79Df5aDkdu/0iGVQMZrKmR3bweDYCMBBCJDEgLNiHFma
         +Al0es8H0rwvmUCyCAQGPQu3/ECgnlJwPUzrLOUhsLX0SaOpFVGpdC1eTslVaMvU9rIB
         dl8Q==
X-Gm-Message-State: AC+VfDxiKZ37hKyCbewQEFmDnuvOKCnxClCSco70CeuAhAui4koJeSL9
        hWHZD7n/As6KqxS0rqobmBq5lVXPJDE++A==
X-Google-Smtp-Source: ACHHUZ58Mkx4TYdA+kCdgy42EyUN7rZ9l9IIUs5P3R8Dj8yBAiQks0QnEHCOz1XNqapoBaFPyZlrJA==
X-Received: by 2002:a05:6830:380d:b0:6a6:2563:2dcb with SMTP id bh13-20020a056830380d00b006a625632dcbmr6489169otb.3.1684242931428;
        Tue, 16 May 2023 06:15:31 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:12fe:baa9:ec21:f64b])
        by smtp.gmail.com with ESMTPSA id l6-20020a4a4346000000b0052a32a952e9sm11833897ooj.48.2023.05.16.06.15.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 06:15:30 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     joel@jms.id.au
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH] ARM: dts: aspeed-bmc-facebook: Replace deprecated spi-gpio properties
Date:   Tue, 16 May 2023 10:15:15 -0300
Message-Id: <20230516131515.580069-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

As stated in Documentation/devicetree/bindings/spi/spi-gpio.yaml,
'gpio-miso', 'gpio-mosi' and 'gpio-sck' are deprecated properties.

Use the recommeded 'miso-gpios', 'mosi-gpios' and 'sck-gpios' instead.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/aspeed-bmc-facebook-bletchley.dts | 6 +++---
 arch/arm/boot/dts/aspeed-bmc-facebook-wedge400.dts  | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed-bmc-facebook-bletchley.dts b/arch/arm/boot/dts/aspeed-bmc-facebook-bletchley.dts
index e899de681f47..005c4f62b4d7 100644
--- a/arch/arm/boot/dts/aspeed-bmc-facebook-bletchley.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-facebook-bletchley.dts
@@ -39,9 +39,9 @@ spi1_gpio: spi1-gpio {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		gpio-sck = <&gpio0 ASPEED_GPIO(Z, 3) GPIO_ACTIVE_HIGH>;
-		gpio-mosi = <&gpio0 ASPEED_GPIO(Z, 4) GPIO_ACTIVE_HIGH>;
-		gpio-miso = <&gpio0 ASPEED_GPIO(Z, 5) GPIO_ACTIVE_HIGH>;
+		sck-gpios = <&gpio0 ASPEED_GPIO(Z, 3) GPIO_ACTIVE_HIGH>;
+		mosi-gpios = <&gpio0 ASPEED_GPIO(Z, 4) GPIO_ACTIVE_HIGH>;
+		miso-gpios = <&gpio0 ASPEED_GPIO(Z, 5) GPIO_ACTIVE_HIGH>;
 		num-chipselects = <1>;
 		cs-gpios = <&gpio0 ASPEED_GPIO(Z, 0) GPIO_ACTIVE_LOW>;
 
diff --git a/arch/arm/boot/dts/aspeed-bmc-facebook-wedge400.dts b/arch/arm/boot/dts/aspeed-bmc-facebook-wedge400.dts
index ed305948386f..7a3f0e81e96f 100644
--- a/arch/arm/boot/dts/aspeed-bmc-facebook-wedge400.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-facebook-wedge400.dts
@@ -74,9 +74,9 @@ spi_gpio: spi {
 		#size-cells = <0>;
 
 		cs-gpios = <&gpio ASPEED_GPIO(R, 2) GPIO_ACTIVE_LOW>;
-		gpio-sck = <&gpio ASPEED_GPIO(R, 3) GPIO_ACTIVE_HIGH>;
-		gpio-mosi = <&gpio ASPEED_GPIO(R, 4) GPIO_ACTIVE_HIGH>;
-		gpio-miso = <&gpio ASPEED_GPIO(R, 5) GPIO_ACTIVE_HIGH>;
+		sck-gpios = <&gpio ASPEED_GPIO(R, 3) GPIO_ACTIVE_HIGH>;
+		mosi-gpios = <&gpio ASPEED_GPIO(R, 4) GPIO_ACTIVE_HIGH>;
+		miso-gpios = <&gpio ASPEED_GPIO(R, 5) GPIO_ACTIVE_HIGH>;
 		num-chipselects = <1>;
 
 		tpmdev@0 {
-- 
2.34.1

