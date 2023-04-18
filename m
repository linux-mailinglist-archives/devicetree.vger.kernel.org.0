Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0937E6E5EE4
	for <lists+devicetree@lfdr.de>; Tue, 18 Apr 2023 12:34:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231210AbjDRKeu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Apr 2023 06:34:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230252AbjDRKeq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Apr 2023 06:34:46 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07A57358C
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 03:34:42 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id xd13so37976182ejb.4
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 03:34:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1681814080; x=1684406080;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I7Q1JsgF5Q04kUmYGB7Jt2UNKAI2tCihr6khAmdtiX8=;
        b=E147n00VExPQSNJ++tUlOlM70gBbXjleKxyZ1iWbuwaJeJd18cm+FhcnaOeQs+rqT5
         W8RxMeZuYM2jaMtRVyV/ARsRYb7sWYmNN2OlA5UrHBFqY/lnAlRGOkDw9oe4pcTROOVS
         oABKwfL/Rdn8tYkVCEfQwpbZeeBujR7SBh/8cf/HI7swbEu2jMuxGp5P/ZNkhUXSk8bV
         i67KEKuKBvE3j0ZA+IVt7Hpn7KHSuaZ5utLoL+YewSQcpff93L2i62+MAHUoZ7M2y+M5
         ufDFwDkfh6IlnDNMqp2y20rrkADGOtECr07Vi8l9LcRTkAmIycpNAm6jXrc8qVFJbH7I
         zhxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681814080; x=1684406080;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I7Q1JsgF5Q04kUmYGB7Jt2UNKAI2tCihr6khAmdtiX8=;
        b=JPJIdSExeAmwdPWl6CCM2RiyHndcW/rBUWaK8w1gsRViBcGGN/NuUS/6iCz02aGYPj
         DckcDSF29FBukAcmmCyrpqSgkDupI9bQNQI/QKsIrWeMFhXc3GWG70baYokqc8uf+8o0
         DQLijadsbKn6MBMubRaf0WpUL8HiYnWwKkFIlAEy3fSymXUPDOQQB+Cz2+Z7QJmEBwcZ
         LovFRHIN8DTBQ2PRc553IDOs3lJpUY1EKlSUvMTLZrMoxHxO9PoCSj4OQALEsczNqJML
         Q9ImsWgv3zPCuNRttAJlEa0FVY+nbZ6wR0/E1N/Tx136O/07Aafao3JAHj4y+accPDR4
         /lOA==
X-Gm-Message-State: AAQBX9fWskBKnRYh6M4CkgnHtuUkYD6jhSbK2MsmZ5EDJumP8ldXUNwt
        FnLgGJY/9T1m86g/JuVdAHtN7g==
X-Google-Smtp-Source: AKy350bB9a4FZVMGgxt+ZPo0xrQxGBbC9/uSQs20HG+NZM0U83LT3Rs1hQpE3X0g9z/AJ17E2Nh3sA==
X-Received: by 2002:a17:907:6d11:b0:94f:59aa:8a7c with SMTP id sa17-20020a1709076d1100b0094f59aa8a7cmr7714130ejc.20.1681814080301;
        Tue, 18 Apr 2023 03:34:40 -0700 (PDT)
Received: from fedora.sec.9e.network (ip-095-222-150-251.um34.pools.vodafone-ip.de. [95.222.150.251])
        by smtp.gmail.com with ESMTPSA id a12-20020a170906368c00b0094e8de89111sm7787126ejc.201.2023.04.18.03.34.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Apr 2023 03:34:39 -0700 (PDT)
From:   Patrick Rudolph <patrick.rudolph@9elements.com>
To:     Peter Rosin <peda@axentia.se>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Patrick Rudolph <patrick.rudolph@9elements.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v13 2/4] dt-bindings: i2c: Add Maxim MAX735x/MAX736x variants
Date:   Tue, 18 Apr 2023 12:34:27 +0200
Message-Id: <20230418103430.966278-3-patrick.rudolph@9elements.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230418103430.966278-1-patrick.rudolph@9elements.com>
References: <20230418103430.966278-1-patrick.rudolph@9elements.com>
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

Update the pca954x bindings to add support for the Maxim MAX735x/MAX736x
chips. The functionality will be provided by the existing pca954x driver.

For chips that are powered off by default add a regulator called vdd-supply.

Signed-off-by: Patrick Rudolph <patrick.rudolph@9elements.com>
---
 .../bindings/i2c/i2c-mux-pca954x.yaml         | 22 +++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-mux-pca954x.yaml b/Documentation/devicetree/bindings/i2c/i2c-mux-pca954x.yaml
index e5c1070903ef..6fed6eae9c9b 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-mux-pca954x.yaml
+++ b/Documentation/devicetree/bindings/i2c/i2c-mux-pca954x.yaml
@@ -4,18 +4,29 @@
 $id: http://devicetree.org/schemas/i2c/i2c-mux-pca954x.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: NXP PCA954x I2C bus switch
+title: NXP PCA954x I2C and compatible bus switches
 
 maintainers:
   - Laurent Pinchart <laurent.pinchart@ideasonboard.com>
 
 description:
-  The binding supports NXP PCA954x and PCA984x I2C mux/switch devices.
+  The NXP PCA954x and compatible devices are I2C bus
+  multiplexer/switches that share the same functionality
+  and register layout.
+  The devices usually have 4 or 8 child buses, which are
+  attached to the parent bus by using the SMBus "Send Byte"
+  command.
 
 properties:
   compatible:
     oneOf:
       - enum:
+          - maxim,max7356
+          - maxim,max7357
+          - maxim,max7358
+          - maxim,max7367
+          - maxim,max7368
+          - maxim,max7369
           - nxp,pca9540
           - nxp,pca9542
           - nxp,pca9543
@@ -56,6 +67,9 @@ properties:
     description: if present, overrides i2c-mux-idle-disconnect
     $ref: /schemas/mux/mux-controller.yaml#/properties/idle-state
 
+  vdd-supply:
+    description: A voltage regulator supplying power to the chip.
+
 required:
   - compatible
   - reg
@@ -68,6 +82,8 @@ allOf:
           compatible:
             contains:
               enum:
+                - maxim,max7367
+                - maxim,max7369
                 - nxp,pca9542
                 - nxp,pca9543
                 - nxp,pca9544
@@ -94,6 +110,8 @@ examples:
             #size-cells = <0>;
             reg = <0x74>;
 
+            vdd-supply = <&p3v3>;
+
             interrupt-parent = <&ipic>;
             interrupts = <17 IRQ_TYPE_LEVEL_LOW>;
             interrupt-controller;
-- 
2.39.2

