Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 80608377044
	for <lists+devicetree@lfdr.de>; Sat,  8 May 2021 09:09:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229841AbhEHHKi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 8 May 2021 03:10:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229481AbhEHHKh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 8 May 2021 03:10:37 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F844C061761
        for <devicetree@vger.kernel.org>; Sat,  8 May 2021 00:09:36 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id v12so11364965wrq.6
        for <devicetree@vger.kernel.org>; Sat, 08 May 2021 00:09:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HcVgM2vyvgzDYevyg/QfJoz8h0kWR0tPVu2/nxnMK08=;
        b=oQBOEU8joU5LNoeSGDS2505fZ52pdijNw8EXDD8PUyl871qBQ+EUV1zHQGNwO0ZrGS
         u99bMzj80z7cRcYzkmFiE2eZFNDAXLhnG2BKMHfS61rBk4vDTBFWt2KjDwBGdOTXoTCA
         6yUeU1YB/04dP9XgL3i4u7p83VPQ7lc2zhCq0ZAmWlInVy1VuQw70Y7eFJILijFpFU29
         gc2pKGXAURTVJvZWp5cdPZGn9eY1+/rANSMJLHh6up28IIvCzhwSoERCvuNz0t6N4ygS
         Hg53jVkGXckGQRjzq/34ro2gU3htal2yfCibZ77ujjn1AxoZFp7swGtJzoX2rcBjTX6/
         rgjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HcVgM2vyvgzDYevyg/QfJoz8h0kWR0tPVu2/nxnMK08=;
        b=LOYtFvKJBbEMdecFX+uTK/h+lUT6DpiztpclVE7kgc1kOezd9dezHuIgF8WcmRCzug
         YGde/e5/sbS1st2I1NYVDK8eON6LyyFUekbqW/CludXFHUKN8zocjDrwoZCCpc1nOZNy
         0IwTYVK26I7C/e9FwoRIySDEekeVSii+i4CGdj2mP2F6VzTN3h1fUbYarHbg6v/hHnG+
         mz96FrqocanGdoAYl9qygBgwS1gIhfE+2A64OKMZ0MEDCDWGJTW/R/HdoxPzHvRIq+t3
         MfCi+7/PjbsMB3X2rk935AIh/oncStAAOFLCtYeRgrX2NQ5udo0Gf2EFv6m1MBnAc5Le
         O1BA==
X-Gm-Message-State: AOAM533yVRk32+4nIaPPp5uTNo0DazCvnkjHzrSxFt5PDHFlvyb/TMKJ
        45hCaD7S1XVF2e8qsu74oBffT+YBm06bHw==
X-Google-Smtp-Source: ABdhPJwv2tpuFMx/ij8r4UA+F3GGnnHZs5rMG0ie4Q88HHaz7t2ijVZwXBdGKTtDzNHE2yUl+JWpfQ==
X-Received: by 2002:adf:f683:: with SMTP id v3mr17358197wrp.133.1620457774843;
        Sat, 08 May 2021 00:09:34 -0700 (PDT)
Received: from localhost.localdomain (231.red-83-51-243.dynamicip.rima-tde.net. [83.51.243.231])
        by smtp.gmail.com with ESMTPSA id s18sm11740345wro.95.2021.05.08.00.09.33
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 May 2021 00:09:34 -0700 (PDT)
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
To:     vkoul@kernel.org
Cc:     kishon@ti.com, devicetree@vger.kernel.org,
        linux-phy@lists.infradead.org, robh+dt@kernel.org,
        linux-staging@lists.linux.dev, gregkh@linuxfoundation.org,
        neil@brown.name, ilya.lipnitskiy@gmail.com
Subject: [PATCH RESEND v2 2/6] dt-bindings: phy: mediatek,mt7621-pci-phy: add clock entries
Date:   Sat,  8 May 2021 09:09:26 +0200
Message-Id: <20210508070930.5290-3-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210508070930.5290-1-sergio.paracuellos@gmail.com>
References: <20210508070930.5290-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

MT7621 SoC clock driver has already mainlined in
'commit 48df7a26f470 ("clk: ralink: add clock driver for mt7621 SoC")'
Hence update schema with the add of the entries related to
clock. Since until now things were not properly being done
we mark also 'clock' as required in the binding since this
will be now the only way to properly retrieve frequency to be
able to make a correct configuration of the PCIe phy registers.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 .../devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml     | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml
index 0ccaded3f245..29d4123323c2 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml
@@ -16,6 +16,9 @@ properties:
   reg:
     maxItems: 1
 
+  clocks:
+    maxItems: 1
+
   "#phy-cells":
     const: 1
     description: selects if the phy is dual-ported
@@ -23,6 +26,7 @@ properties:
 required:
   - compatible
   - reg
+  - clocks
   - "#phy-cells"
 
 additionalProperties: false
@@ -32,5 +36,6 @@ examples:
     pcie0_phy: pcie-phy@1e149000 {
       compatible = "mediatek,mt7621-pci-phy";
       reg = <0x1e149000 0x0700>;
+      clocks = <&sysc 0>;
       #phy-cells = <1>;
     };
-- 
2.25.1

