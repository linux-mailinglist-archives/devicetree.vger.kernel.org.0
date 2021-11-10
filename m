Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 56D9344C1D8
	for <lists+devicetree@lfdr.de>; Wed, 10 Nov 2021 14:06:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231806AbhKJNJX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Nov 2021 08:09:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231162AbhKJNJW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Nov 2021 08:09:22 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D804C061766
        for <devicetree@vger.kernel.org>; Wed, 10 Nov 2021 05:06:35 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id p3-20020a05600c1d8300b003334fab53afso1681020wms.3
        for <devicetree@vger.kernel.org>; Wed, 10 Nov 2021 05:06:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=R0zmm5Uwifws1MjnZkoUoDiCdMAMP2gTWa9ThB/Ce5w=;
        b=1m0Zm/PCzG9z0NWK6pM25Oo95Vg28gOv9Xxo1+5wlKgKglsyHyBsqDFgDUzTbsMB57
         xjaltweVlNWagApW8IO23aA6bVgPVDa1mHKIQenHFxGcg1slLrTpEjrE9KxGTEHQ43Hc
         QsTCAXXZ6mxyPu8yLVIpDLuPl0PiLvgyJYTuncv0ws/0NA4Su+PgOY9mN9SqBhD/tyks
         4EDYwHGKMDvkRSzKKECAGh+vTlT2CmOIs5U6Ye9qg3JNW52SlzaPJrsHf3U1W1osTt+s
         l9AisBK1qbStdmqnc1r4cAVDnZK8oK6nTjuazIEE9DpN+tS+uDGqG8wYbSIxIC+TWn6z
         ydKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=R0zmm5Uwifws1MjnZkoUoDiCdMAMP2gTWa9ThB/Ce5w=;
        b=UNC/ROJCUoZ6eU2JxP4ngsNBjI6dhmCuLQYj72TveEgAjYFGD96ErEbu6rBTL1EgOd
         T0t5YtNaFgIYEoWS0atK0Kr0h58EE3cQcUD0nuDmSn0HsW3hTl+59zASrHQg7b1A9bc+
         QbJoR7o7ZFMSQOB2cYQ9fX9BQkURmU+Tm5puiew4I4n7Mzut8apw35JV4Aw4pOYK4TxV
         jc9E3XaMP/Scghd3WkhNBARum+Ws9PzLZ7uCMqhZfFv+6SINeB7e9lIxX7wIh17QMAzl
         U2siKKLIXDXW+I3YbMwyg8esMS7Z6y5SGrkDbR+noMTkEbW1qp4LJmrLA1/CpZURtqIj
         D7Nw==
X-Gm-Message-State: AOAM532RWAUQv+HkkNRMndPeOzczXn1O0HvRSp/hCVFTp5HAYzA+5jWf
        sYo82CFw/u3GMCPYkbbfTY+WYg==
X-Google-Smtp-Source: ABdhPJxg96GtGO4PDG74wJnowtrVZTuUQp8gjbRnkF7TxTwbcLHbB6RNHz7trA0AOKagF0tJgbHZtA==
X-Received: by 2002:a05:600c:3553:: with SMTP id i19mr15986433wmq.97.1636549593736;
        Wed, 10 Nov 2021 05:06:33 -0800 (PST)
Received: from localhost.localdomain (laubervilliers-656-1-151-143.w92-154.abo.wanadoo.fr. [92.154.18.143])
        by smtp.gmail.com with ESMTPSA id i17sm5952175wmq.48.2021.11.10.05.06.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Nov 2021 05:06:33 -0800 (PST)
From:   Guillaume Ranquet <granquet@baylibre.com>
To:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        CK Hu <ck.hu@mediatek.com>, Jitao shi <jitao.shi@mediatek.com>
Cc:     Markus Schneider-Pargmann <msp@baylibre.com>,
        Rob Herring <robh@kernel.org>, dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6 1/7] dt-bindings: mediatek,dpi: Add DP_INTF compatible
Date:   Wed, 10 Nov 2021 14:06:17 +0100
Message-Id: <20211110130623.20553-2-granquet@baylibre.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211110130623.20553-1-granquet@baylibre.com>
References: <20211110130623.20553-1-granquet@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Markus Schneider-Pargmann <msp@baylibre.com>

DP_INTF is similar to DPI but does not have the exact same feature set
or register layouts.

DP_INTF is the sink of the display pipeline that is connected to the
DisplayPort controller and encoder unit. It takes the same clocks as
DPI.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/display/mediatek/mediatek,dpi.yaml       | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
index dd2896a40ff08..53acf9a84f7fb 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
@@ -4,16 +4,16 @@
 $id: http://devicetree.org/schemas/display/mediatek/mediatek,dpi.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: mediatek DPI Controller Device Tree Bindings
+title: mediatek DPI/DP_INTF Controller Device Tree Bindings
 
 maintainers:
   - CK Hu <ck.hu@mediatek.com>
   - Jitao shi <jitao.shi@mediatek.com>
 
 description: |
-  The Mediatek DPI function block is a sink of the display subsystem and
-  provides 8-bit RGB/YUV444 or 8/10/10-bit YUV422 pixel data on a parallel
-  output bus.
+  The Mediatek DPI and DP_INTF function blocks are a sink of the display
+  subsystem and provides 8-bit RGB/YUV444 or 8/10/10-bit YUV422 pixel data on a
+  parallel output bus.
 
 properties:
   compatible:
@@ -23,6 +23,7 @@ properties:
       - mediatek,mt8173-dpi
       - mediatek,mt8183-dpi
       - mediatek,mt8192-dpi
+      - mediatek,mt8195-dpintf
 
   reg:
     maxItems: 1
@@ -54,7 +55,7 @@ properties:
     $ref: /schemas/graph.yaml#/properties/port
     description:
       Output port node. This port should be connected to the input port of an
-      attached HDMI or LVDS encoder chip.
+      attached HDMI, LVDS or DisplayPort encoder chip.
 
 required:
   - compatible
-- 
2.32.0

