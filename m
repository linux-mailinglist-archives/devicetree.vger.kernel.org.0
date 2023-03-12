Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F7006B6A4B
	for <lists+devicetree@lfdr.de>; Sun, 12 Mar 2023 19:41:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230400AbjCLSlc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Mar 2023 14:41:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229906AbjCLSl0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Mar 2023 14:41:26 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9883C144AF
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 11:41:06 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id g18so10472230ljl.3
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 11:41:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678646424;
        h=cc:to:subject:date:from:in-reply-to:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=THHnNubc2+UuqNjcDLN8j6le5gzsAvvJJbRATCHsptA=;
        b=mSwbsG5Ht/I33FIdKkbpe+WacfAj9rjx1VdEg0snVLuo8OcOlWWNhF97EYdY9dsGiT
         u3pgQH/2e+6niCv9x7mI6DWuYkmzRsFUZe1pihirT32Ot02Q0oH8QMODJV5oaDnZQ6+D
         L+xJZukY+ydVn3K5q/W7u7nI+PJzdKWHeXlws7Siblk0bi1WCYx2JzovQhzpibJyLqae
         bmcwRrIoqSE8UiJKu2XjaVeFuOyddHeRDGgyru25h6pnD0NR0vMPeO+3JEUm/n6Jq8mb
         Ojp4por0Gx5bJ1PrUKNfipf2/oKq+XRE9ZHXlKsNKliz0ecBbd0vpA7OVOJSTnWsiTeH
         7xmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678646424;
        h=cc:to:subject:date:from:in-reply-to:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=THHnNubc2+UuqNjcDLN8j6le5gzsAvvJJbRATCHsptA=;
        b=w3J1Q28A6fU1I6Ma8wEj7N+Xz0ObYhoHvdghlMdteXcAGV0H1zaTwaKqHGW+WQOlxF
         +N1Rw3PmWk9vOVX0CyacwTWOvJXrmTqRr/kAowCrF/2ffMtq8dCyt9e5nduN5MQQpI5J
         fVVd3AXIjyQ3joO745Rql8qUipAKc3fjAIk1lEq6sjVycabP2TMzXuLOxTtD+rCe34Af
         5BDVLOLH5ozetXYA5J+54JW5tr+T0zoWaT5/OHsByL/GaXvtfTn2dcxkc6Q+nTbFNEQN
         958GW0fj2cJ2Tvm+vm/yqLdUvxmAQssonDZppj9Jz94q9TpjTx+miQCdGZrmdaM4tzkQ
         asMQ==
X-Gm-Message-State: AO0yUKXbUlCdXM4PnfKdlq+ZqXPZl7JLS1CXc1bCLPptTXngZopa+Nq9
        kpvKX+TSjaV/HsE2SgMr1uB4+fQF4KM/gUuZ
X-Google-Smtp-Source: AK7set8Pw1mqlRr5S1eE5B51tmi6+8cp+CxcSBYyyPCKOVq3aON+iX2RqPzN7IavUy3ADeGQyw8eFg==
X-Received: by 2002:a2e:b019:0:b0:295:9d2c:c5b5 with SMTP id y25-20020a2eb019000000b002959d2cc5b5mr2700631ljk.12.1678644646699;
        Sun, 12 Mar 2023 11:10:46 -0700 (PDT)
Received: from 0001-dt-bindings-exynos-dw-mshc-common-add-exynos7885-var.patch (46-138-144-249.dynamic.spd-mgts.ru. [46.138.144.249])
        by smtp.gmail.com with ESMTPSA id m2-20020a2e7102000000b002934febffe4sm725570ljc.128.2023.03.12.11.10.46
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 11:10:46 -0700 (PDT)
Message-Id: <1678644516.665314-1-sleirsgoevy@gmail.com>
In-Reply-To: <1678644516.665314-0-sleirsgoevy@gmail.com>
From:   Sergey Lisov <sleirsgoevy@gmail.com>
Date:   Sun, 12 Mar 2023 20:58:50 +0300
Subject: [PATCH v5 1/3] dt-bindings: exynos-dw-mshc-common: add exynos7885
 variants
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Jaehoon Chung <jh80.chung@samsung.com>
Cc:     linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some Samsung Exynos boards using the arm64 architecture have DW MMC
controllers configured for a 32-bit data bus but a 64-bit FIFO. On these
systems the 64-bit FIFO registers must be accessed in two 32-bit halves.

Add two new compatible strings, "samsung,exynos7885-dw-mshc" and
"samsung,exynos7885-dw-mshc-smu" respectively, to denote exynos7885
boards that need this quirk. But it's very possible that all
"samsung,exynos7-dw-mshc" boards are actually affected.
---
 .../devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
index fdaa18481..3eebaed2c 100644
--- a/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
@@ -22,6 +22,8 @@ properties:
       - samsung,exynos5420-dw-mshc-smu
       - samsung,exynos7-dw-mshc
       - samsung,exynos7-dw-mshc-smu
+      - samsung,exynos7885-dw-mshc
+      - samsung,exynos7885-dw-mshc-smu
       - axis,artpec8-dw-mshc
 
   reg:
-- 
2.38.3


