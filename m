Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B7F01433265
	for <lists+devicetree@lfdr.de>; Tue, 19 Oct 2021 11:36:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235112AbhJSJin (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Oct 2021 05:38:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235104AbhJSJil (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Oct 2021 05:38:41 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7DC3C061745
        for <devicetree@vger.kernel.org>; Tue, 19 Oct 2021 02:36:28 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id n7-20020a05600c4f8700b00323023159e1so2016976wmq.2
        for <devicetree@vger.kernel.org>; Tue, 19 Oct 2021 02:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CJsCWcU0YdDyrwMeRQ7adfzbBn9rJ1IRoawBpqp6LUY=;
        b=a4CDa4TY8RYsyf7Ov/rhPNU9JCjBEheWYFGjZ6M0fICmzqhK5+vkmDMKU/YI/iPSAe
         dhQdYbJ5sngCM+Yg0WcU+C1SnMh7BBiM7XI8Y4zFepF/ek5KXIV2uFha4YAd+n89I4fd
         hAkiABx3Q3nVhuCHGuvvTldrFhel/udGiW5h33GXk4Vh/NmEIOUMeZoSOcRPSnEzHhpr
         e9nRg3t/1KKxaflSVB4zdNl6a8RS7Tbp6DaHUriiI7T1AZQyW5+F/y4xjmzQzqE1yjxP
         0zfmI8Wwr3FkiwXL37JohYx0k0eXxdkKvxEHEnvohFXM52RGPKtwcu5WjB0TK3fouwbs
         5wUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CJsCWcU0YdDyrwMeRQ7adfzbBn9rJ1IRoawBpqp6LUY=;
        b=szxV7cxgbDX3MptB7JUIbzJfs26XwRCqdTvzsceXVwDcleFD8INIClMIR93W58vwCe
         W0/P/EQT4/rOB7Pys2YzuwQ61ivpcc6hen8iUohXz/vlJmL0a237JT8JLHzMsiRlgBNb
         J/eDaOrwM1lGWxG8Tn3PyYgEoyeTYgkHwlOWT2OCOpMDhaZybvSTnfMOijyJGIsB+hac
         x68ARbR1MAgB2pmCyi3hWr9hqJNjlaVb9cuF6a9FS2rsNmLr/i3E3fXl5jDRs7Tz93l9
         VFjZcE6XoBt4GLOGXXkCuS+8eU66JIhCuFczQe/ezIiW7CEoxgX2Qez77UoCJKY6nNPE
         GKCg==
X-Gm-Message-State: AOAM532PMET4VIXLH6tmOHaA/aCGg9P5iihQbUEiB6tymf6xQB+HXsoh
        FxNlLqa0SRzhwzA42Gz+xRxDXw==
X-Google-Smtp-Source: ABdhPJzhrEXmzMbsOs77lioFuMQGNrVk6F0Mecc/zs/NbpM2tEsMZAwoONXUBlPSFvrPfNoD8x+fiA==
X-Received: by 2002:a1c:cc0f:: with SMTP id h15mr4821476wmb.37.1634636187595;
        Tue, 19 Oct 2021 02:36:27 -0700 (PDT)
Received: from blmsp.lan ([2a02:2454:3e6:c900:5142:5fbb:5821:5dc3])
        by smtp.gmail.com with ESMTPSA id o23sm1765765wms.18.2021.10.19.02.36.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Oct 2021 02:36:27 -0700 (PDT)
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Zhang Rui <rui.zhang@intel.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, fparent@baylibre.com,
        khilman@baylibre.com, Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH v2 1/4] dt-bindings: thermal: mediatek: Add mt8365
Date:   Tue, 19 Oct 2021 11:34:01 +0200
Message-Id: <20211019093404.1913357-2-msp@baylibre.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211019093404.1913357-1-msp@baylibre.com>
References: <20211019093404.1913357-1-msp@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This unit is present on the mt8365 SoC as well. But there is a
difference in the usage of an apmixed register.

This patch adds a distinct mt8365 to the list of compatibles.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 Documentation/devicetree/bindings/thermal/mediatek-thermal.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/mediatek-thermal.txt b/Documentation/devicetree/bindings/thermal/mediatek-thermal.txt
index 5c7e7bdd029a..ba4ebffeade4 100644
--- a/Documentation/devicetree/bindings/thermal/mediatek-thermal.txt
+++ b/Documentation/devicetree/bindings/thermal/mediatek-thermal.txt
@@ -14,6 +14,7 @@ Required properties:
   - "mediatek,mt2712-thermal" : For MT2712 family of SoCs
   - "mediatek,mt7622-thermal" : For MT7622 SoC
   - "mediatek,mt8183-thermal" : For MT8183 family of SoCs
+  - "mediatek,mt8365-thermal" : For MT8365 family of SoCs
   - "mediatek,mt8516-thermal", "mediatek,mt2701-thermal : For MT8516 family of SoCs
 - reg: Address range of the thermal controller
 - interrupts: IRQ for the thermal controller
-- 
2.33.0

