Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E29D94A3E76
	for <lists+devicetree@lfdr.de>; Mon, 31 Jan 2022 09:09:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243737AbiAaIJJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jan 2022 03:09:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242353AbiAaIJG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jan 2022 03:09:06 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5F51C06173B
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 00:09:05 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id f22-20020a1c1f16000000b003525bf08b1eso4387176wmf.0
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 00:09:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jGYF3pbw01XqjiiSW32sevD0apLMvUfMvdKL2Bcj/k8=;
        b=JFGHp0YQp3Rgy5f+zViTTGyeENCxz6NzmcXxWaDXUYapSJVcZTZckMMM67RtFhoX1e
         KhPrcI9Aho3ufBQwefRQQcsSqAeIYLTbZ9U+Cb+tkiZIUPc92y0/BX7SGkLXsXVRIrlf
         ZNWsVFQUH21ib8wy4+eeCVBeZlhl/xxWGzr58mdpBIGsaez/6ikqM0jkG7yFNLpqNfy5
         E2MaYt83Ep+IJ/e+7WwBAbin4GmG+K6U0LcQYfd2dHwt0t6dubHSqvi8Qf0JDEsLCPL2
         UUvykSoMk5oszhOe5uC3rz0coPqk5SBrVEVv73FJpwNcKt6EdfkLHoTkeeRYKbCgDbDQ
         486A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jGYF3pbw01XqjiiSW32sevD0apLMvUfMvdKL2Bcj/k8=;
        b=zWFYS7UaGC6y4o69rUi5s++dnQ83O4wi/Q3E1ig6Lrh06UCBVkNhMxzuh5MRNFnW1+
         4ExXf7bWZn/pg9BmRrCKbYcuqrvLFOS5+IBDgEsaboDqVhCHhpTNbLb72AGYoAFVTZe3
         E3JDXmiGra8ts7QdxpHrTDMkt9nvFggySjdkRzfXCHlrd9IU9j88rsoiBERZw0YIVtRC
         xzPUXEdIu9SRJBfzGwzjeGRiTKUoLYyXg6kh/cvmKOabdsJaJ7jyunTqPLcjyCgOTf4q
         XjYCp+x+RLNIiKHxp1aN85NItKULM8oXc4ZplycX+vm+HZmCjo15DhlRB6rApg+w7d8o
         8l/g==
X-Gm-Message-State: AOAM530un+HoIj0ESl/3X7aDC8uRJQ1KkjlFrMDD7LZomvvz3NBD1WQL
        DqYBX9U+j3xtJ2qO0xRpmnQ/Jw==
X-Google-Smtp-Source: ABdhPJwFgwJSsT6nbgtuR53NdNa+vE/ZtKlTCkZ5BtezvM8OIfeMxhM3bWBO65XrV0Z/IsgK7fxb4Q==
X-Received: by 2002:a05:600c:3b9c:: with SMTP id n28mr25437325wms.128.1643616544178;
        Mon, 31 Jan 2022 00:09:04 -0800 (PST)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id m12sm12978806wrp.61.2022.01.31.00.09.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jan 2022 00:09:03 -0800 (PST)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     linus.walleij@linaro.org, miquel.raynal@bootlin.com,
        richard@nod.at, robh+dt@kernel.org, vigneshr@ti.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v2] dt-bindings: mtd: drop mtd/cortina,gemini-flash.txt
Date:   Mon, 31 Jan 2022 08:08:58 +0000
Message-Id: <20220131080858.1777518-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Drop mtd/cortina,gemini-flash.txt since it is nearly already handled by
Documentation/devicetree/bindings/mtd/mtd-physmap.yaml.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
Change since v1:
- fixed typo on syscon

 .../bindings/mtd/cortina,gemini-flash.txt     | 24 -------------------
 .../devicetree/bindings/mtd/mtd-physmap.yaml  | 18 +++++++++++++-
 2 files changed, 17 insertions(+), 25 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mtd/cortina,gemini-flash.txt

diff --git a/Documentation/devicetree/bindings/mtd/cortina,gemini-flash.txt b/Documentation/devicetree/bindings/mtd/cortina,gemini-flash.txt
deleted file mode 100644
index efa5b2aba829..000000000000
--- a/Documentation/devicetree/bindings/mtd/cortina,gemini-flash.txt
+++ /dev/null
@@ -1,24 +0,0 @@
-Flash device on Cortina Systems Gemini SoC
-
-This flash is regular CFI compatible (Intel or AMD extended) flash chips with
-some special bits that can be controlled by the machine's system controller.
-
-Required properties:
-- compatible : must be "cortina,gemini-flash", "cfi-flash";
-- reg : memory address for the flash chip
-- syscon : must be a phandle to the system controller
-- bank-width : width in bytes of flash interface, should be <2>
-
-For the rest of the properties, see mtd-physmap.yaml.
-
-The device tree may optionally contain sub-nodes describing partitions of the
-address space. See partition.txt for more detail.
-
-Example:
-
-flash@30000000 {
-	compatible = "cortina,gemini-flash", "cfi-flash";
-	reg = <0x30000000 0x01000000>;
-	syscon = <&syscon>;
-	bank-width = <2>;
-};
diff --git a/Documentation/devicetree/bindings/mtd/mtd-physmap.yaml b/Documentation/devicetree/bindings/mtd/mtd-physmap.yaml
index f827984936f6..82eb4e0f453b 100644
--- a/Documentation/devicetree/bindings/mtd/mtd-physmap.yaml
+++ b/Documentation/devicetree/bindings/mtd/mtd-physmap.yaml
@@ -44,7 +44,9 @@ properties:
               - numonyx,js28f128
               - sst,sst39vf320
               - xlnx,xps-mch-emc-2.00.a
-          - const: cfi-flash
+          - enum:
+              - cfi-flash
+              - jedec-flash
       - items:
           - enum:
               - cypress,cy7c1019dv33-10zsxi
@@ -127,6 +129,20 @@ required:
   - compatible
   - reg
 
+if:
+  properties:
+    compatible:
+      contains:
+        const: cortina,gemini-flash
+then:
+  properties:
+    syscon:
+      $ref: /schemas/types.yaml#/definitions/phandle
+      description:
+        Phandle to the syscon controller
+  required:
+    - syscon
+
 # FIXME: A parent bus may define timing properties
 additionalProperties: true
 
-- 
2.34.1

