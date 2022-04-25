Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 153F350D8D7
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 07:30:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241260AbiDYFcv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 01:32:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241271AbiDYFcs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 01:32:48 -0400
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEB3B263F
        for <devicetree@vger.kernel.org>; Sun, 24 Apr 2022 22:29:44 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id h12so20833004plf.12
        for <devicetree@vger.kernel.org>; Sun, 24 Apr 2022 22:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=t0t+E3+UrZRK2vD9EjjV15zx2XRnBcgr7x3QPaYOIsA=;
        b=hW6UGrW0yXkHXxU5Dy7MVLbaaKIjTnm2l1SlcHVst+c5c0Owaq+KqAFg56bhbhW16d
         wjlS1pLvCn8mLKO9wDHxek5hIdOSwya8f5mLh8nwKCFs5daRgP81SxXS3OOABDeH6Q5K
         FRN/ETlo7wnr7uJVwIsGHM44GI2FcFEaMwJy04vBZ3Pgd93lE/5hDBO3xO8yzkDZK9oL
         TPHzN4+4FTPZF0H49y8vFgl3C8KzAZCyen9RytLqHLK99/Dtt7B8u/9dqPN8R0grboVY
         JAtA/DH1HTNtd5FPqejxFpzrVvhp7odqziHffjoaBphxFOFmwVWHZVpfvAklgtPO7/ce
         ZwXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=t0t+E3+UrZRK2vD9EjjV15zx2XRnBcgr7x3QPaYOIsA=;
        b=WVvq2pneuHxkME9lR2WImbkU/pIOj3U/ObJNNtQQLmxNSqb6jH/6UeOqxdeBN0QTsO
         oEqk+Tq4n44W3ROWzjzYriE/I0+A1tKSOY9vUH7DAMVLHWKDHUf3hccId508vk1btJY7
         PwZmh0tVDERyYIrEYl8BtfTKM8/oqH8SyR3O2Bx/5dduBHJfq9pz3OT9eF34urETfIF/
         w/C+i6q8BlOrd+z6bK6qsrmPyHPZg7dvoJN9n26rlqywc03DfJGca9DsyynzXOMDbl9L
         uRAKwMiIhPl+DiGDU1etRCAC0QegnfbmkfgjgQEg3DfIm8yN8pi0DoFWwbrdZtypB7x0
         E3mQ==
X-Gm-Message-State: AOAM531wWkKe+RGZoRKliazZFpXp0LGySsP899r6cbbZpK/PJ80RhF6F
        5QIqNM1qA2njHmhf5ZM1nKFqvQ==
X-Google-Smtp-Source: ABdhPJxiIHOFIGxhJm1sEj9yZBmjT+WueOWESH2RjxHuid96Bunut71XKscaM1SaUlE4hpxTAiULDg==
X-Received: by 2002:a17:90b:694:b0:1d9:6a2e:bc9 with SMTP id m20-20020a17090b069400b001d96a2e0bc9mr4761931pjz.169.1650864584237;
        Sun, 24 Apr 2022 22:29:44 -0700 (PDT)
Received: from x1.hsd1.or.comcast.net ([2601:1c2:1001:7090:237c:3672:1f2:b81c])
        by smtp.gmail.com with ESMTPSA id 5-20020a631045000000b0039d942d18f0sm8282017pgq.48.2022.04.24.22.29.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Apr 2022 22:29:43 -0700 (PDT)
From:   Drew Fustini <dfustini@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Nishanth Menon <nm@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Dave Gerlach <d-gerlach@ti.com>,
        Tony Lindgren <tony@atomide.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Drew Fustini <dfustini@baylibre.com>,
        Keerthy <j-keerthy@ti.com>
Subject: [PATCH 1/2] dt-bindings: wkup-m3-ipc: Add ti,scale-data-fw property
Date:   Sun, 24 Apr 2022 22:28:05 -0700
Message-Id: <20220425052806.484590-2-dfustini@baylibre.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220425052806.484590-1-dfustini@baylibre.com>
References: <20220425052806.484590-1-dfustini@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Dave Gerlach <d-gerlach@ti.com>

Add documentation for ti,scale-data-fw property to enable I2C PMIC
voltage scaling during deep sleep. The property contains the name of a
binary file for the CM3 firmware to load.

Based on previous work by Russ Dill.

Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
Signed-off-by: Keerthy <j-keerthy@ti.com>
[dfustini: split from driver patch and convert to json-schema]
Signed-off-by: Drew Fustini <dfustini@baylibre.com>
---
 .../devicetree/bindings/soc/ti/wkup-m3-ipc.yaml       | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/ti/wkup-m3-ipc.yaml b/Documentation/devicetree/bindings/soc/ti/wkup-m3-ipc.yaml
index 88d690de050c..d2c248d82384 100644
--- a/Documentation/devicetree/bindings/soc/ti/wkup-m3-ipc.yaml
+++ b/Documentation/devicetree/bindings/soc/ti/wkup-m3-ipc.yaml
@@ -40,6 +40,12 @@ description: |+
   override the pin's existing bias (pull-up/pull-down) and value (high/low) when
   IO isolation is active.
 
+  Support for I2C PMIC Voltage Scaling
+  ====================================
+  It is possible to pass the name of a binary file to load into the CM3 memory.
+  The binary data is the I2C sequences for the CM3 to send out to the PMIC
+  during low power mode entry.
+
 properties:
   compatible:
     enum:
@@ -67,6 +73,11 @@ properties:
       mbox_wkupm3 child node.
     maxItems: 1
 
+  ti,scale-data-fw:
+    $ref: /schemas/types.yaml#/definitions/string
+    description:
+      Name of the firmware binary in /lib/firmware to copy to CM3 aux data
+
   ti,vtt-gpio-pin:
     $ref: /schemas/types.yaml#/definitions/uint32
     description: GPIO pin connected to enable pin on VTT regulator
-- 
2.32.0

