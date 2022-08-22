Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 39FA859C1D3
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 16:47:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235450AbiHVOqE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 10:46:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235487AbiHVOpZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 10:45:25 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E63324F28
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 07:45:23 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id h24so13503493wrb.8
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 07:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=hDgzoGfvkSJprn1pVjh45rvsUgwFKfwgOyRxpaD3tAs=;
        b=uV6WZ94rfyaXVoUh/a3cSluphqUec+lYu1z+0VkR3Tm4ro//0CSirXWFgW68u3rQa5
         Nzc8DnBaHh0WNcqiTCGoWa7wJFzAtwym3pDqM67pa7R/q7WWv7JL5X4JHfMYs12dAplF
         sEw9sqvvka4ViiNqO52p1bN7LbOUI4bPeVT3GQDJY8ZwthfGdPnPmc0Tevx5d/0UQ445
         OE6c3HA9Lbu4NlF+24ZSHs1V9fZ1tzzUO9a6Ma+2brbjykei70MHWoss9Pb1vVCuqIgh
         bTHQbUGqPzHsgMxFECQpuzhSFmbZVBvM8Bc9GP7QJDuJxslgeVLgg2AyaEMnpHxEVPhL
         OZGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=hDgzoGfvkSJprn1pVjh45rvsUgwFKfwgOyRxpaD3tAs=;
        b=MW9v4R40KqfJ2jSebRp5NGRp3RTUECEdG7AqnfyLR7qq0APusDQw2fC7GUkcNrcsId
         6m417tPmyz/9t9EmYvTkDUeN5C0EgHRubAMIAISZPLJH3X72CPDWpbYjs/mDPoty0err
         3oitXAUSR6XD0kZ8FIPo+8xJnkWHuRcqVcdOhNN2sPW0CE1ELLBN3whUJPL7LTnvI9Hb
         sgHCsBZNFOMB5GNU7XX6NcP22+selq2bNtjkXcZHP7JwOKPqMy8ws0uW/flgZbKHO/4i
         eH9aCRkDIhsygLuQi2V5ShvKz08TOm3wVH4+/kohQRokMPB4W7FgSDB267AxJdtTzTZP
         +CcA==
X-Gm-Message-State: ACgBeo00ycGnCH9pG36c1hsJSIZN3AYon0WgSa+P9+KmEfdeGVNUhLMH
        ysP/qndXCWHaoM/OEAsc3scFyQ==
X-Google-Smtp-Source: AA6agR5fjdsY02I9D0DN/Zu7mCPzLbITeHSwG+mjAqQHFtmzGXS7a6CE8dStN62WGowvrhmAMz043A==
X-Received: by 2002:adf:eb50:0:b0:21e:3d13:3a91 with SMTP id u16-20020adfeb50000000b0021e3d133a91mr10682767wrn.484.1661179521924;
        Mon, 22 Aug 2022 07:45:21 -0700 (PDT)
Received: from blmsp.fritz.box ([2001:4090:a245:8020:2658:1f7c:362:3e99])
        by smtp.gmail.com with ESMTPSA id z24-20020a1cf418000000b003a5dadcf1a8sm14670935wma.19.2022.08.22.07.45.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 07:45:21 -0700 (PDT)
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Chun-Jie Chen <chun-jie.chen@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Fabien Parent <parent.f@gmail.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Fabien Parent <fparent@baylibre.com>,
        Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH v3 1/4] dt-bindings: power: Add MT8365 power domains
Date:   Mon, 22 Aug 2022 16:43:00 +0200
Message-Id: <20220822144303.3438467-2-msp@baylibre.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220822144303.3438467-1-msp@baylibre.com>
References: <20220822144303.3438467-1-msp@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabien Parent <fparent@baylibre.com>

Add power domains dt-bindings for MT8365.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---

Notes:
    Changes in v3:
    - Renamed mt8365-power.h to mediatek,mt8365-power.h
    
    Changes in v2:
    - Made include/dt-bindings/power/mt8365-power.h dual-license.

 .../power/mediatek,power-controller.yaml      |  2 ++
 .../dt-bindings/power/mediatek,mt8365-power.h | 19 +++++++++++++++++++
 2 files changed, 21 insertions(+)
 create mode 100644 include/dt-bindings/power/mediatek,mt8365-power.h

diff --git a/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml b/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
index b448101fac43..a8702706dae4 100644
--- a/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
@@ -30,6 +30,7 @@ properties:
       - mediatek,mt8186-power-controller
       - mediatek,mt8192-power-controller
       - mediatek,mt8195-power-controller
+      - mediatek,mt8365-power-controller
 
   '#power-domain-cells':
     const: 1
@@ -69,6 +70,7 @@ patternProperties:
               "include/dt-bindings/power/mt8183-power.h" - for MT8183 type power domain.
               "include/dt-bindings/power/mt8192-power.h" - for MT8192 type power domain.
               "include/dt-bindings/power/mt8195-power.h" - for MT8195 type power domain.
+              "include/dt-bindings/power/mediatek,mt8365-power.h" - for MT8365 type power domain.
         maxItems: 1
 
       clocks:
diff --git a/include/dt-bindings/power/mediatek,mt8365-power.h b/include/dt-bindings/power/mediatek,mt8365-power.h
new file mode 100644
index 000000000000..e6cfd0ec7871
--- /dev/null
+++ b/include/dt-bindings/power/mediatek,mt8365-power.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
+/*
+ * Copyright (c) 2022 MediaTek Inc.
+ */
+
+#ifndef _DT_BINDINGS_POWER_MT8365_POWER_H
+#define _DT_BINDINGS_POWER_MT8365_POWER_H
+
+#define MT8365_POWER_DOMAIN_MM		0
+#define MT8365_POWER_DOMAIN_CONN	1
+#define MT8365_POWER_DOMAIN_MFG		2
+#define MT8365_POWER_DOMAIN_AUDIO	3
+#define MT8365_POWER_DOMAIN_CAM		4
+#define MT8365_POWER_DOMAIN_DSP		5
+#define MT8365_POWER_DOMAIN_VDEC	6
+#define MT8365_POWER_DOMAIN_VENC	7
+#define MT8365_POWER_DOMAIN_APU		8
+
+#endif /* _DT_BINDINGS_POWER_MT8365_POWER_H */
-- 
2.37.2

