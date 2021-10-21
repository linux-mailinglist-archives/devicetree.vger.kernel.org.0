Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 26F7C435DDF
	for <lists+devicetree@lfdr.de>; Thu, 21 Oct 2021 11:27:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231332AbhJUJ3n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Oct 2021 05:29:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231320AbhJUJ3n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Oct 2021 05:29:43 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89829C06161C
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 02:27:27 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id b189-20020a1c1bc6000000b0030da052dd4fso116811wmb.3
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 02:27:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YUizT5Wo6QNRZzLKQyX7xAagO6y2u5vlJ1IHIzpEMig=;
        b=8MyqEVx81dV7pE7mPfN/OecXsjb2Qv/SvK1MGn4n2hIQNJ6xMKdEUM7+tSQYLsARc3
         384KGvuma+/fJGBxypQUfCheMIhkOkkRINw34Pzd0q/SQ6tR4MlMAjs9O5A3OrQOsiRU
         XQn7qlnXHnN2U/PjSlX/4M3Zd3m+z09PEBjntw/9xgPMKCdU1Si1ds056Yb8Dx1rl6rb
         NTVjgk1gQDglYkuxVLUWjuts337Pg5iKRfsw9QdieDjb/xigjd6HO2bazX259Tg7ET2a
         rA6JVukqzDBTeTV+BTOloCEfnGeeWnsh4zYM+WHymrp7JepuIuzfZ1Xb9JeDLn3+BS7/
         O16Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YUizT5Wo6QNRZzLKQyX7xAagO6y2u5vlJ1IHIzpEMig=;
        b=ZbTW6G8D/VS27hEI5PSpiECF5MgaCw0ldTHbkEtrViZ/vL/G2z16DwxOB8xGxe0lXV
         wrIV6Dvm9ugkgmh0T2F3g5qd7SBi/kQ3yccTzLKaL2mEQVGezUG+/hbxSCUnmDjCMJFu
         LpHA7vuM+FNVbvQVCAL8Mq+LSu/6AMogTHysr5JmIxZYVh0VhP3gjk+Hp976Y3jlV2A7
         FjUCvHYQeLUNuYSLCzsJ7vKO2SdYhxXJgYvs7HFMcIrDBCJZDSTgUVHfemmL9NSi2cZY
         BYlybXBbvjFPhpaBe89rXvVGT5+KgJrmyqp6XRBH3vBhMKIOeP8mPi7rssoMDDq6QzwU
         xB1A==
X-Gm-Message-State: AOAM531BP/xguRJD006mUUugW5EzgIDOJzxzygVNSJ2PH9qBStbREzUL
        wNKD1eV4Sac+J8QLJZTstFQcag==
X-Google-Smtp-Source: ABdhPJz1E+9+oInCY1vqxibaqKskcDP7eWbh3y5SDTdZxzg/MhVoYwSyqQLSyEcMXzma59LSuMGbqw==
X-Received: by 2002:a05:600c:4111:: with SMTP id j17mr19808078wmi.59.1634808446096;
        Thu, 21 Oct 2021 02:27:26 -0700 (PDT)
Received: from blmsp.lan ([2a02:2454:3e6:c900:5142:5fbb:5821:5dc3])
        by smtp.gmail.com with ESMTPSA id d3sm4538468wrb.36.2021.10.21.02.27.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Oct 2021 02:27:25 -0700 (PDT)
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc:     Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH v5 1/7] dt-bindings: mediatek,dpi: Add DP_INTF compatible
Date:   Thu, 21 Oct 2021 11:27:01 +0200
Message-Id: <20211021092707.3562523-2-msp@baylibre.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211021092707.3562523-1-msp@baylibre.com>
References: <20211021092707.3562523-1-msp@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DP_INTF is similar to DPI but does not have the exact same feature set
or register layouts.

DP_INTF is the sink of the display pipeline that is connected to the
DisplayPort controller and encoder unit. It takes the same clocks as
DPI.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---

Notes:
    Changes v4 -> v5:
    - Newly created patch after realizing that the specific clocks for dpintf were
      the same as engine and pixel clocks.

 .../bindings/display/mediatek/mediatek,dpi.yaml       | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
index dd2896a40ff0..53acf9a84f7f 100644
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
2.33.0

