Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C471F4085F7
	for <lists+devicetree@lfdr.de>; Mon, 13 Sep 2021 10:00:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237855AbhIMIBx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Sep 2021 04:01:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237838AbhIMIBv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Sep 2021 04:01:51 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D74FCC061574
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 01:00:35 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id i7so3052084lfr.13
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 01:00:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ygJ8+TTyO2TV1eqf1wmE9UFoLoL7v5Vtx+glrXFSGyc=;
        b=i2ybDonmhlLSPRvcTL4w7fMCcPKnFTDWuj4crFhpLu3j5C5SCUcqlyaE1SVKnh+iE7
         HOX5P1G4l9j6hFG1NwUcLLKDBi2iiPCA/EqlX90/JnmelnJX/uf374crfwrpfx4Jtr8o
         9PZ9Q6dCrffAZ3rOhD+cCGQ1MS/4qB5Ql73zCkfH0O5kuRphG9NwP4fOaYJT4yQoQIhn
         PG3dPHfj2W29EmItpuv9hRz6/iNyC+oaK4T5QAdzr2OZvL6/R3XVQKDKgW34e9x9SXt7
         EdiYIjBKokD6Lz/T8K6T8Q2CTzLST4qn1vIsadjpVaS6XLD7ovrQH20cqa3mFWFvr66d
         RJyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ygJ8+TTyO2TV1eqf1wmE9UFoLoL7v5Vtx+glrXFSGyc=;
        b=EQ9QgSrPCVC8nOotbc6n5JSA2RD0L4S/nEwS+APyAFx//k9nLiL0YteyFqpkK5ZfUs
         lxT5ilsjzgDeb+v29rtQbTDBG5dya1bO14dgFh4Kzk4yON7/Np7Tk7w6+VtkaAqA+jMr
         LkP1JqEOIcc2/jh5+uUMujv0OZN+paPMPIS+36Gw8MsixY7FVmZBLMAIfGuQHhVF+yXu
         yFY0N82lKSPpIBvrBP7UH+khEOFx261lkamrzMIc/yWXtWwlnReogtyhbxeyfdVrhGYc
         +CDor4lkKxs0BReIJsNGa0Aq1fCXCrbVCPZ5Jsb+6sKEURAkR8FtQhnZCUvyNxKVtSjs
         elfw==
X-Gm-Message-State: AOAM532FlpDUbXJk/xVdy3W6KvcvvKxd3QdkbL4dhu5MY27cQTjrUA18
        /OJ1/GmE9z4C7whVmCy5oj0=
X-Google-Smtp-Source: ABdhPJx0+UW8Q3+/Fm2tU/fZcSP7+gBFgsoCHE0ltnjp388+fOkrei/2tRgR3ZDQ04xs8Liu2gvQZw==
X-Received: by 2002:a05:6512:33c3:: with SMTP id d3mr7389359lfg.194.1631520034293;
        Mon, 13 Sep 2021 01:00:34 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id t13sm747059lff.46.2021.09.13.01.00.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Sep 2021 01:00:33 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-phy@lists.infradead.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        devicetree@vger.kernel.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 2/4] dt-bindings: phy: brcm,ns-usb2-phy: bind just a PHY block
Date:   Mon, 13 Sep 2021 10:00:22 +0200
Message-Id: <20210913080024.6951-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210913080024.6951-1-zajec5@gmail.com>
References: <20210913080024.6951-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

The old binding was covering the whole DMU block space (DMU block
contains CRU block which contains USB PHY). It was a bad design,
overkill and a non-generic solution.

Northstar's USB 2.0 PHY is a small block (part of the CRU MFD) and
binding should be designed to represent that properly. Rework the
binding to map just PHY with the "reg" property and use syscon to
reference shared register that controls block access.

The old binding is deprecated now.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../bindings/phy/bcm-ns-usb2-phy.yaml         | 25 ++++++++++++++-----
 1 file changed, 19 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/bcm-ns-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/bcm-ns-usb2-phy.yaml
index 05b4dcd80019..426101530a21 100644
--- a/Documentation/devicetree/bindings/phy/bcm-ns-usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/bcm-ns-usb2-phy.yaml
@@ -18,13 +18,21 @@ properties:
     const: brcm,ns-usb2-phy
 
   reg:
-    items:
-      - description: iomem address range of DMU (Device Management Unit)
+    anyOf:
+      - maxItems: 1
+        description: PHY control register
+      - maxItems: 1
+        description: iomem address range of DMU (Device Management Unit)
+        deprecated: true
 
   reg-names:
     items:
       - const: dmu
 
+  brcm,syscon-clkset:
+    description: phandle to syscon for clkset register
+    $ref: /schemas/types.yaml#/definitions/phandle
+
   clocks:
     items:
       - description: USB PHY reference clock
@@ -39,20 +47,25 @@ properties:
 required:
   - compatible
   - reg
-  - reg-names
   - clocks
   - clock-names
   - "#phy-cells"
 
+oneOf:
+  - required:
+      - brcm,syscon-clkset
+  - required:
+      - reg-names
+
 additionalProperties: false
 
 examples:
   - |
     #include <dt-bindings/clock/bcm-nsp.h>
-    phy@1800c000 {
+    phy@1800c164 {
         compatible = "brcm,ns-usb2-phy";
-        reg = <0x1800c000 0x1000>;
-        reg-names = "dmu";
+        reg = <0x1800c164 0x4>;
+        brcm,syscon-clkset = <&clkset>;
         clocks = <&genpll BCM_NSP_GENPLL_USB_PHY_REF_CLK>;
         clock-names = "phy-ref-clk";
         #phy-cells = <0>;
-- 
2.26.2

