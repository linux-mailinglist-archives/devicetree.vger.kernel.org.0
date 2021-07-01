Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 424683B983E
	for <lists+devicetree@lfdr.de>; Thu,  1 Jul 2021 23:38:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234183AbhGAVkz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jul 2021 17:40:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229934AbhGAVky (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jul 2021 17:40:54 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC1F2C061762
        for <devicetree@vger.kernel.org>; Thu,  1 Jul 2021 14:38:23 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id u20so10413867ljo.12
        for <devicetree@vger.kernel.org>; Thu, 01 Jul 2021 14:38:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QiNn8WEhtCBIq1rsfM6PoISeVVaGraw5Z7kWHh+wx5o=;
        b=JqmwLN2M2erNRkHR+GXtJfvqyKLZCwbSMepixBsR2CIDgF8LoS6jgUdesNvivpmlmq
         HkhlQCEarlKUijpESJEUmIvl0MYHstzrIDlJ63kIb230fuohVlE//5H2osICvaNprZTA
         D0XC/c9ako4ddjeCiyqk3BJ88SY529kbayITCcbhDIC/BQBLjWznrtF+5XIIRpfC150n
         fSvl75+pomMtvRMAsk5y1dYmKYb9UDGpNBptVkYCBigxqWkrejI7kZFWBtgwwm8IgBq3
         wE5x8dKGaO8R4S6sPbVTj6s/D4vS4CIbjMOphhpLq3UjPJ6Xypem7H08cGz3SxCfLSjf
         4ArA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QiNn8WEhtCBIq1rsfM6PoISeVVaGraw5Z7kWHh+wx5o=;
        b=lcJUrYQirEVvr/d+chSw7HFEoInXVaDdhvZPPPprqiYIxuLKudZ/da/IP+ILUU90/r
         ZGFEr5N2kXei5MN5nXoJy6viYs5755ikmJHcjcjgppoHidYqxR8W0CvQri+jX9aGwRgV
         0T1Dbqeq126x6Ps4sB02wuMrZkJwCjTy44Pjj9L1IURkjQ0lCz256avYtPYCvB0ngLm2
         nFllLaeeefJFIgkx+khPKm41IDoz654xtRijliZJ/OslRp5TwIOieerIFeU0RFM4qB17
         WICPTLVdv5DjounBbH3mLzxPTedw43OooNxt/WNWSIBZ2RU/3j7kh/kOHJ/xncqEol5c
         8/7g==
X-Gm-Message-State: AOAM530cQerPMUwNne2VVeY/oycSZX/UhPoGpBVgeV8pLCa8wQ2IFAXh
        N2EwSC+mhB55wkvKJPYOpWIVTw==
X-Google-Smtp-Source: ABdhPJxKSdwxg0SzbXr+B8xUxCSKmlJMTm1pbvTFWn5twYlTEE9rwrRIT9RFDou0o0sZwpudYNqmew==
X-Received: by 2002:a2e:a276:: with SMTP id k22mr1148638ljm.465.1625175501296;
        Thu, 01 Jul 2021 14:38:21 -0700 (PDT)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id b5sm81131lfv.3.2021.07.01.14.38.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jul 2021 14:38:20 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Douglas Anderson <dianders@chromium.org>,
        =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
        devicetree@vger.kernel.org
Subject: [PATCH] drm/panel: Fix up DT bindings for Samsung lms397kf04
Date:   Thu,  1 Jul 2021 23:36:18 +0200
Message-Id: <20210701213618.3818821-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Improve the bindings and make them more usable:

- Pick in spi-cpha and spi-cpol from the SPI node parent,
  this will specify that we are "type 3" in the device tree
  rather than hardcoding it in the operating system.
- Drop the u32 ref from the SPI frequency: comes in from
  the SPI host bindings.
- Make spi-cpha, spi-cpol and port compulsory.
- Update the example with a real-world SPI controller,
  spi-gpio.

Cc: Douglas Anderson <dianders@chromium.org>
Cc: Noralf Trønnes <noralf@tronnes.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../display/panel/samsung,lms397kf04.yaml      | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/samsung,lms397kf04.yaml b/Documentation/devicetree/bindings/display/panel/samsung,lms397kf04.yaml
index 4cb75a5f2e3a..cd62968426fb 100644
--- a/Documentation/devicetree/bindings/display/panel/samsung,lms397kf04.yaml
+++ b/Documentation/devicetree/bindings/display/panel/samsung,lms397kf04.yaml
@@ -33,8 +33,11 @@ properties:
 
   backlight: true
 
+  spi-cpha: true
+
+  spi-cpol: true
+
   spi-max-frequency:
-    $ref: /schemas/types.yaml#/definitions/uint32
     description: inherited as a SPI client node, the datasheet specifies
       maximum 300 ns minimum cycle which gives around 3 MHz max frequency
     maximum: 3000000
@@ -44,6 +47,9 @@ properties:
 required:
   - compatible
   - reg
+  - spi-cpha
+  - spi-cpol
+  - port
 
 additionalProperties: false
 
@@ -52,15 +58,23 @@ examples:
     #include <dt-bindings/gpio/gpio.h>
 
     spi {
+      compatible = "spi-gpio";
+      sck-gpios = <&gpio 0 GPIO_ACTIVE_HIGH>;
+      miso-gpios = <&gpio 1 GPIO_ACTIVE_HIGH>;
+      mosi-gpios = <&gpio 2 GPIO_ACTIVE_HIGH>;
+      cs-gpios = <&gpio 3 GPIO_ACTIVE_HIGH>;
+      num-chipselects = <1>;
       #address-cells = <1>;
       #size-cells = <0>;
       panel@0 {
         compatible = "samsung,lms397kf04";
         spi-max-frequency = <3000000>;
+        spi-cpha;
+        spi-cpol;
         reg = <0>;
         vci-supply = <&lcd_3v0_reg>;
         vccio-supply = <&lcd_1v8_reg>;
-        reset-gpios = <&gpio 1 GPIO_ACTIVE_LOW>;
+        reset-gpios = <&gpio 4 GPIO_ACTIVE_LOW>;
         backlight = <&ktd259>;
 
         port {
-- 
2.31.1

