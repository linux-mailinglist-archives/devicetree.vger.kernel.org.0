Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 542336F2FD8
	for <lists+devicetree@lfdr.de>; Mon,  1 May 2023 11:18:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232307AbjEAJSA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 May 2023 05:18:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232202AbjEAJQB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 May 2023 05:16:01 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D49118E
        for <devicetree@vger.kernel.org>; Mon,  1 May 2023 02:15:59 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-94f7a7a3351so462947466b.2
        for <devicetree@vger.kernel.org>; Mon, 01 May 2023 02:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1682932558; x=1685524558;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GuNFj/Sv0obKbqv7GFeCeV1CkO9oywslV9siQ5uNg7M=;
        b=G6Ljo2qfAMqmZZW+412uovfauTRrYJvv9XbHOxWasgjrYCdCbrKAxe2jxQEtxJkpDf
         oW7dLiA03YMw2DFnCyuHNrLwOBTRPFFwmkJoPc0tK2mFxsLVc3I9B+65Hco4JiEVd7yR
         wURptg0m9ofJIYbVpf1elrLNYCJG8oRT5CU+q7ZcbweYTJNAUP6iy4KOUaGgQWRn+73p
         EV5/MPs0knGVS2HpSLxLWBLTQOYuMGFP2B3t/k8kbhQ35Y8M5/WxSnrAHKmCa7TDtOa9
         7EmESYC4I21ofK8d4Y07dSXYiAAhCyWZ4TNHTne7uqljTy9Dx+xgIu+EbH/e5iLzUJyl
         xP8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682932558; x=1685524558;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GuNFj/Sv0obKbqv7GFeCeV1CkO9oywslV9siQ5uNg7M=;
        b=M2SmC4e1e6CokQfCU8nMngd41QYf9+UxZYogl/yOZO5QImAvCpQiORR9iMn8m0akot
         6RLLbFHu2nMhgne6EQj4np9cTcGYa9voZg1Nk2qQd36HYXdGvIQeeYZgnWcKLxce3K4y
         gW1iyhvLUbNa/jPfYo/8x+L9aVsMbZbq/inz9m4RURyyFUlwi4y9Hicn17xTwQ9wsRld
         08wvy02VFWE9mrlkJcOjWLMkH4hxefPFU4ouICdoAzNawixYhHhhqGn/eLMtYq+YSa9B
         D746IE2obb8awG/MkJOf/w7/04p+NSN3ZY7CP+N/yN7dcXKbOeykvUK7VqQtSallWOum
         Dsow==
X-Gm-Message-State: AC+VfDxGjMn8tYfwYeWK1Y0oqBGrpBMDkqhAHcX7NevdSy+kbTBa0SOd
        oSZ0ngXZXZv8hecJ7EW56cQLnQ==
X-Google-Smtp-Source: ACHHUZ4IBapUB0VUpbuVU3+Bdvg9ufT5mMVCX0Qt3FnfosKNhfvchoLw6Amt7kC7GCxaY0oZYn33xA==
X-Received: by 2002:a17:907:318e:b0:94f:9acc:65c9 with SMTP id xe14-20020a170907318e00b0094f9acc65c9mr11599423ejb.66.1682932557711;
        Mon, 01 May 2023 02:15:57 -0700 (PDT)
Received: from fedora.. (ip-095-222-150-251.um34.pools.vodafone-ip.de. [95.222.150.251])
        by smtp.gmail.com with ESMTPSA id xa3-20020a170907b9c300b0094e954fd015sm14714266ejc.175.2023.05.01.02.15.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 May 2023 02:15:57 -0700 (PDT)
From:   Patrick Rudolph <patrick.rudolph@9elements.com>
To:     Peter Rosin <peda@axentia.se>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Patrick Rudolph <patrick.rudolph@9elements.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v14 2/4] dt-bindings: i2c: Add Maxim MAX735x/MAX736x variants
Date:   Mon,  1 May 2023 11:15:49 +0200
Message-Id: <20230501091552.847240-3-patrick.rudolph@9elements.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230501091552.847240-1-patrick.rudolph@9elements.com>
References: <20230501091552.847240-1-patrick.rudolph@9elements.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Update the pca954x bindings to add support for the Maxim MAX735x/MAX736x
chips. The functionality will be provided by the existing pca954x driver.

For chips that are powered off by default add a regulator called vdd-supply.

Signed-off-by: Patrick Rudolph <patrick.rudolph@9elements.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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

