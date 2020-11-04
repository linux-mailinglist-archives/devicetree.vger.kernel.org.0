Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D07A02A659C
	for <lists+devicetree@lfdr.de>; Wed,  4 Nov 2020 14:56:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729880AbgKDN4i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Nov 2020 08:56:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729591AbgKDN4i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Nov 2020 08:56:38 -0500
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAA7FC061A4A
        for <devicetree@vger.kernel.org>; Wed,  4 Nov 2020 05:56:37 -0800 (PST)
Received: by mail-wr1-x444.google.com with SMTP id n18so22127696wrs.5
        for <devicetree@vger.kernel.org>; Wed, 04 Nov 2020 05:56:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ceCydoW0taXspmLSuwqkIqJ7k7CBWNdOO4aazBAUNz0=;
        b=zbIBvdO1WovtIL9ewxpVE3Ru5lfMAtveCSNRIFq7KBZUv9esUor3y3OsunCpHvG0xr
         h+hHcAqamQxJ1WIvNHK5zWweTSUuwjpAyEsjd2fAjlh/nnVEq4bnJjIf7dg+6Z5FqHsI
         9djF/qYLR+76BXoKMimG3wD22vaz6lPwQsRAQnOqX9D14cHlKprCbN0kPQzOKCzinevF
         FpABk83dXoaFf7G7IwSEuigN2jFnsxVxmiXWE70XrYYcTvNwwnsdL+cPZ4GI+B9lYdMr
         LzmNM+vIOdkvgEnths2co49mD3PSAghTNwEBM/y+EpX2IgNgNBh7Vd34gkqNvkNt+fx5
         Zj/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ceCydoW0taXspmLSuwqkIqJ7k7CBWNdOO4aazBAUNz0=;
        b=kQGy0cvqP9+7F1OJD48lIPTFk1ifLIb5Ouku3c8iTYzL0iN/brck0fcvqI7NTTpgFS
         RJTxBAtVnS2Z849qOtagZHTYYHfboX4PZacWsjRXeqeAiSDobVeaP4sC+l2m4RnCbY2j
         Hbi/NIAsj3PfeVqYViWkzNa1rD4/3KjdU+yiwjpcmkFuBXpTuoEL8rtlayyzXPjiib5J
         +PWxb82qk1eZzr0+3pjVlpA5AQ0MrEAQort6bvCUzHK/YzT8YU4djjBu91nin+D6ZHE9
         PLOuqAj8VSIJXgq+qXF2OCmnimIZJVLecE8jGjiKEpoHcEOHAVmLGfSUQi3eGaOzPyzU
         pysg==
X-Gm-Message-State: AOAM533msVVPnLrO1l7fwPjHqVIm52vBB56CdgPIJbMNz5WASDdLV3Ui
        qT63yQnuetxToGkI7JYlwTNqdQ==
X-Google-Smtp-Source: ABdhPJy97b+b+kxYNpot01NUM/PbFFZ3Cx3QmCKDYUoJrWaMzeH3t75MBfmhKESXwrKut/mjYcruNQ==
X-Received: by 2002:adf:f584:: with SMTP id f4mr30905424wro.383.1604498196476;
        Wed, 04 Nov 2020 05:56:36 -0800 (PST)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:61b2:b9fb:eeb7:b9f7])
        by smtp.gmail.com with ESMTPSA id n9sm2285234wmd.4.2020.11.04.05.56.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Nov 2020 05:56:35 -0800 (PST)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     kishon@ti.com, repk@triplefau.lt, devicetree@vger.kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v3 1/3] dt-bindings: phy: amlogic,meson-axg-mipi-pcie-analog: remove reg attribute
Date:   Wed,  4 Nov 2020 14:56:29 +0100
Message-Id: <20201104135631.1550125-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201104135631.1550125-1-narmstrong@baylibre.com>
References: <20201104135631.1550125-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The PHY registers happens to be at the beginning of a large zone containing
interleaved system registers (mainly clocks, power management, PHY control..),
found in all Amlogic SoC so far.

The goal is to model it the same way as the other "features" of this zone,
like Documentation/devicetree/bindings/clock/amlogic,gxbb-clkc.txt
and Documentation/devicetree/bindings/power/amlogic,meson-ee-pwrc.yaml
and have a coherent bindings scheme over the Amlogic SoCs.

This update the description, removed the reg attribute then updates the example
accordingly.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../phy/amlogic,meson-axg-mipi-pcie-analog.yaml | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/amlogic,meson-axg-mipi-pcie-analog.yaml b/Documentation/devicetree/bindings/phy/amlogic,meson-axg-mipi-pcie-analog.yaml
index 18c1ec5e19ad..702763a84dac 100644
--- a/Documentation/devicetree/bindings/phy/amlogic,meson-axg-mipi-pcie-analog.yaml
+++ b/Documentation/devicetree/bindings/phy/amlogic,meson-axg-mipi-pcie-analog.yaml
@@ -9,27 +9,32 @@ title: Amlogic AXG shared MIPI/PCIE analog PHY
 maintainers:
   - Remi Pommarel <repk@triplefau.lt>
 
+description: |+
+  The Everything-Else Power Domains node should be the child of a syscon
+  node with the required property:
+
+  - compatible: Should be the following:
+                "amlogic,meson-gx-hhi-sysctrl", "simple-mfd", "syscon"
+
+  Refer to the the bindings described in
+  Documentation/devicetree/bindings/mfd/syscon.yaml
+
 properties:
   compatible:
     const: amlogic,axg-mipi-pcie-analog-phy
 
-  reg:
-    maxItems: 1
-
   "#phy-cells":
     const: 1
 
 required:
   - compatible
-  - reg
   - "#phy-cells"
 
 additionalProperties: false
 
 examples:
   - |
-    mpphy: phy@0 {
+    mpphy: phy {
           compatible = "amlogic,axg-mipi-pcie-analog-phy";
-          reg = <0x0 0xc>;
           #phy-cells = <1>;
     };
-- 
2.25.1

