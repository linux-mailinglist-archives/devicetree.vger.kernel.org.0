Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BAE5738E367
	for <lists+devicetree@lfdr.de>; Mon, 24 May 2021 11:35:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232422AbhEXJgd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 May 2021 05:36:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232396AbhEXJgc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 May 2021 05:36:32 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B285BC061574
        for <devicetree@vger.kernel.org>; Mon, 24 May 2021 02:35:04 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id l18-20020a1c79120000b0290181c444b2d0so4050491wme.5
        for <devicetree@vger.kernel.org>; Mon, 24 May 2021 02:35:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=62PaeGm/tBJ//uGzYHNPfzzgrMdbT7h0TiIpVr9Cdhw=;
        b=oQTQ2EZXiqyQF23C+25JhSVHZpnMy1UlC/iAjYjDU735seJre1JC5UDfqK3Fphitf2
         LPpLz98GFdYTpeyVUHrCPkQHSQORehwA8nzL57nF56H/13kWRsF8F2Qij7/3LMbZ+XSV
         TPLUkOr73fIjwcGwCmmtcQf4XlAjAUjkWppdeJsdqG7QzqcuDvgl4KLAeYRKZTST5BLs
         uUzvxmewHR3agPx27h0hVMcAenRJeFAn2UqT38E7VPTwCTzI9j+ifDlU6g0IqrJDgLBr
         a6rPKGXu9TueSWkFkZMs/kI7TucgAe786TbD+uYsJoe3KHwH6KwWPe4BfpFpfCovJCQw
         6Kew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=62PaeGm/tBJ//uGzYHNPfzzgrMdbT7h0TiIpVr9Cdhw=;
        b=EpGo4s3FXLA+96f2kw0rtOlwZX/TbGj73SXDixcmyh5QUlnmFIkk/t/BpxHBMF7bvp
         ynHgc67VYfuq+4xSQgrhotmXrvqZbKl2+PQ3HG7g7pyrn0dlxzK/Hj8YndyFHvKhJf94
         +MAubvIxOYDD7CJb8DxWOqQnDQL35zp3nKwz03xPum17zcPisS3CpYsm9wc54LqIzwxo
         0Mlno0g4vEnJgB4AqS/BA2jtyBZkk2IW+Gfmr0NLoG86nfGq4niy+trJ19qGylBoUlF+
         0/DGhO5Zm4uUu5T7vNbu2tc8qz/sAP/3JnGM+OxXgLzuIahvRr30wrWpWVZxPP1WiXCo
         j5vA==
X-Gm-Message-State: AOAM531tQsRgO1dQ1d9Ej4iqZdPQwdnAwBzKqf8wdXrNWWRvMZPFkXSG
        2xryi22ADhK5q7Qpo+514FPjxw==
X-Google-Smtp-Source: ABdhPJxHI5iSFZNJeQGs9c4fFwSfr366nLRLlKUkhGpSdqZSTLuYpYtZnagbzMC1XSzVri4QPcPqFQ==
X-Received: by 2002:a05:600c:35cc:: with SMTP id r12mr18373680wmq.157.1621848903248;
        Mon, 24 May 2021 02:35:03 -0700 (PDT)
Received: from jackdaw.baylibre.com (82-65-169-74.subs.proxad.net. [82.65.169.74])
        by smtp.googlemail.com with ESMTPSA id p6sm7317267wma.4.2021.05.24.02.35.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 May 2021 02:35:02 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Mark Brown <broonie@kernel.org>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, alsa-devel@alsa-project.org,
        linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: [PATCH] ASoC: meson: gx-card: fix sound-dai dt schema
Date:   Mon, 24 May 2021 11:34:48 +0200
Message-Id: <20210524093448.357140-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.32.0.rc0
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There is a fair amount of warnings when running 'make dtbs_check' with
amlogic,gx-sound-card.yaml.

Ex:
arch/arm64/boot/dts/amlogic/meson-gxm-q200.dt.yaml: sound: dai-link-0:sound-dai:0:1: missing phandle tag in 0
arch/arm64/boot/dts/amlogic/meson-gxm-q200.dt.yaml: sound: dai-link-0:sound-dai:0:2: missing phandle tag in 0
arch/arm64/boot/dts/amlogic/meson-gxm-q200.dt.yaml: sound: dai-link-0:sound-dai:0: [66, 0, 0] is too long

The reason is that the sound-dai phandle provided has cells, and in such
case the schema should use 'phandle-array' instead of 'phandle'.

Fixes: fd00366b8e41 ("ASoC: meson: gx: add sound card dt-binding documentation")
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 .../devicetree/bindings/sound/amlogic,gx-sound-card.yaml      | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/amlogic,gx-sound-card.yaml b/Documentation/devicetree/bindings/sound/amlogic,gx-sound-card.yaml
index db61f0731a20..2e35aeaa8781 100644
--- a/Documentation/devicetree/bindings/sound/amlogic,gx-sound-card.yaml
+++ b/Documentation/devicetree/bindings/sound/amlogic,gx-sound-card.yaml
@@ -57,7 +57,7 @@ patternProperties:
           rate
 
       sound-dai:
-        $ref: /schemas/types.yaml#/definitions/phandle
+        $ref: /schemas/types.yaml#/definitions/phandle-array
         description: phandle of the CPU DAI
 
     patternProperties:
@@ -71,7 +71,7 @@ patternProperties:
 
         properties:
           sound-dai:
-            $ref: /schemas/types.yaml#/definitions/phandle
+            $ref: /schemas/types.yaml#/definitions/phandle-array
             description: phandle of the codec DAI
 
         required:
-- 
2.32.0.rc0

