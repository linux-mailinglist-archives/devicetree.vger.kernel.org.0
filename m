Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A938E42ED9F
	for <lists+devicetree@lfdr.de>; Fri, 15 Oct 2021 11:27:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237349AbhJOJ3h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Oct 2021 05:29:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236645AbhJOJ3d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Oct 2021 05:29:33 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FC69C061570
        for <devicetree@vger.kernel.org>; Fri, 15 Oct 2021 02:27:27 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 5so5659401edw.7
        for <devicetree@vger.kernel.org>; Fri, 15 Oct 2021 02:27:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20210112.gappssmtp.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jqcUpdGkPlLCSTn8tOP34V+Kz/Zhk4bMhTOT82uEivE=;
        b=godJCkEv5ZKTN1Jch1qRe/oy1BiwOSYOzQHeO11hViPuOEngpPKz1doHT3Y04ZB5HL
         su0SiD83VAUMOpPDr77PzRMYXGMiybbUPkKtKIFTAM00PjKXkJ7Ch16xLqO6XOqO57BN
         d8N1Ys7uBHVwu5LEOLM4jh8BPCxmf0vKGK/CaDjNUiGO2XsOil4AVBjWjuy070SVfKkC
         +c2wK7TkwUEAQNAlIodpU+sKtXT0i84L4u80gxN75JPRbWYArVIGY2DL5/M2iO4ukqhs
         Z0G63GMMYebE+ALYDapILXxXZ5tWDgc+QIQZDc2nbBaPZ/4eonoIJyVzWsgnyQgr4RZT
         mIwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=jqcUpdGkPlLCSTn8tOP34V+Kz/Zhk4bMhTOT82uEivE=;
        b=7jyXFPGrfv6RkPxmdAzP3fBfiR7MDy9ZXBoR5Boq7ny9s7WKzjv/6952lS4FOL3zon
         Wf3feZScX8LwkUwdO4rmH+0SICCIeHORIIXD5ktFf7fG7SjqJQR8Jwy7zqRqIr7eRsDk
         d434Y/cN+Ojz+brjQ8I5mrE805S57n1jDv9LvpKk0A48rJwQGFlSPcigXkqcrKBi08As
         jmYwvtg1NV6arJmd0R4xr7qLGqBjkpVFM0k2DXS7jZmS/ToC7LunQctN4sgd87XjBF56
         aLA+kwvH58PrQXZ/rIkdz4MwYP/GWXNo3dW4bXwmE1iN1le9X+PTG4AXafeXNs+FotWQ
         FXuQ==
X-Gm-Message-State: AOAM533Rc7yZxC7LhR74SKZqlbccRq9tje9gkqiKvoaXwdmxaeDqNKFK
        rMy7hZS20cbvJyuMjMdYpt6MVg==
X-Google-Smtp-Source: ABdhPJwdmDklhD3pxxbqu9f2G/CNKriBF1c71usHNKjHgYAwNh5+pG2jeLZotWlI7WoAnEtp8a6PCg==
X-Received: by 2002:a05:6402:268f:: with SMTP id w15mr16920947edd.13.1634290044445;
        Fri, 15 Oct 2021 02:27:24 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6:f666:9af6:3fed:e53b])
        by smtp.gmail.com with ESMTPSA id a1sm4195840edu.43.2021.10.15.02.27.24
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 15 Oct 2021 02:27:24 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com
Cc:     Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
        Srinivas Neeli <srinivas.neeli@xilinx.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-gpio@vger.kernel.org
Subject: [PATCH] dt-bindings: gpio: zynq: Describe gpio-line-names
Date:   Fri, 15 Oct 2021 11:27:23 +0200
Message-Id: <4b9db94cdd8ca106feee53f76fab2a23721f7d2a.1634290039.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Number of lines depends on compatible string from 58 to 174.
That's why it is checked based on it.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 .../devicetree/bindings/gpio/gpio-zynq.yaml   | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpio/gpio-zynq.yaml b/Documentation/devicetree/bindings/gpio/gpio-zynq.yaml
index da95b951c23e..29c27eadbac8 100644
--- a/Documentation/devicetree/bindings/gpio/gpio-zynq.yaml
+++ b/Documentation/devicetree/bindings/gpio/gpio-zynq.yaml
@@ -28,6 +28,11 @@ properties:
 
   gpio-controller: true
 
+  gpio-line-names:
+    description: strings describing the names of each gpio line
+    minItems: 58
+    maxItems: 174
+
   interrupt-controller: true
 
   "#interrupt-cells":
@@ -39,6 +44,51 @@ properties:
   power-domains:
     maxItems: 1
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          enum:
+            - xlnx,zynqmp-gpio-1.0
+    then:
+      properties:
+        gpio-line-names:
+          minItems: 174
+          maxItems: 174
+
+  - if:
+      properties:
+        compatible:
+          enum:
+            - xlnx,zynq-gpio-1.0
+    then:
+      properties:
+        gpio-line-names:
+          minItems: 118
+          maxItems: 118
+
+  - if:
+      properties:
+        compatible:
+          enum:
+            - xlnx,versal-gpio-1.0
+    then:
+      properties:
+        gpio-line-names:
+          minItems: 58
+          maxItems: 58
+
+  - if:
+      properties:
+        compatible:
+          enum:
+            - xlnx,pmc-gpio-1.0
+    then:
+      properties:
+        gpio-line-names:
+          minItems: 116
+          maxItems: 116
+
 required:
   - compatible
   - reg
-- 
2.33.1

