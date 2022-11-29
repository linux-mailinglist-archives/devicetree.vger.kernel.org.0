Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4971F63BB16
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 08:55:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229957AbiK2HzU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 02:55:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230041AbiK2HzS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 02:55:18 -0500
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 998AA3FB83
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 23:55:17 -0800 (PST)
Received: by mail-pj1-x102d.google.com with SMTP id 3-20020a17090a098300b00219041dcbe9so11418517pjo.3
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 23:55:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SS1ByF/ZIw8rKX+vE8A3zpU2gUaBENnfomeSItJeP/I=;
        b=sRDKAvolV1yWrStj9+Ehk13VI1h6QRLLrhuSQbnulwwcZdw4A/XrQQIElyQMtB3dvB
         nG8wpoxdJrYWAb8U+LStvQHvpcV5fT5+gZzfni9Qq/2DBVpzGF8VVVs5XB+yb82AwTrT
         paldaQznhqXHhtTBZORT+8ySOxyGh33SPJtnLchMHxULfrmehVqMGUQaYvOmHalezuzX
         Ls5bgHtkWQS1PXyckICqqIYxQ5kYgVACwfPvtXW1LRQYQBbwf0faZdUaOpid5EDbIDfQ
         eWoDunQoJFtyKqNh4UL7VCoXWYc06VXNpPouEnSpXndoA6R8e7cw3gbWfAyxphGFjUxl
         IP1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SS1ByF/ZIw8rKX+vE8A3zpU2gUaBENnfomeSItJeP/I=;
        b=mRwl4cugmbB2SkWnWlR99ZmBFxQ9pOHd39JMw8UKUVV0qzI17xwnf4BlVinu2o9T4D
         CitaAO3hs3f2c8FKjb2+dBhkE2H7jTlZi/rzWTzFpqTXCbMQoWt/HqescFwSx771P7Nt
         jMKPofJOQF5g6cMq6G+maQXUIXzvKBdYNCY2CttJUIB4YImYVU/GIxxF173kO8ubrkq8
         aqUn0LYeiHiFlgmjAJb6Dgtz5MB69MZMIi4iCC8BkKCQhJ6OiRlYBsWdCbtfwYgc3IWu
         zaEOTBwq28H5ujGnn27tM87F4+rAzKr5K00NhVUt1G2VbqkvTFRie0rFKsUVHZC7sHeA
         tOUA==
X-Gm-Message-State: ANoB5pmOXk/sgb4XIlegmntNsiO+C+0IH6LF0oZOzXLAcHX7LYOdTpbP
        GnExRqTMH1ypMLLHxa10nX0YSg==
X-Google-Smtp-Source: AA0mqf7Jx4zJRdYvDxcyL6CzoQNORQkuOGAGc+d1wDJtGACoeCrQjEIvSnEYhUX4x1ZDot8hrvyC4w==
X-Received: by 2002:a17:902:6ac4:b0:186:bb44:946d with SMTP id i4-20020a1709026ac400b00186bb44946dmr36752312plt.11.1669708516993;
        Mon, 28 Nov 2022 23:55:16 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:5c9c:86cb:4472:916b])
        by smtp.gmail.com with ESMTPSA id 13-20020a170902c24d00b0017f72a430adsm10106342plg.71.2022.11.28.23.55.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Nov 2022 23:55:16 -0800 (PST)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>,
        Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh@kernel.org>
Subject: [PATCH v9 6/8] dt-bindings: arm: rockchip: Add Edgeble Neural Compute Module 2
Date:   Tue, 29 Nov 2022 13:24:22 +0530
Message-Id: <20221129075424.189655-7-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221129075424.189655-1-jagan@edgeble.ai>
References: <20221129075424.189655-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Neural Compute Module 2(Neu2) is a 96boards SoM-CB compute module
based on Rockchip RV1126 from Edgeble AI.

Edgeble Neural Compute Module 2(Neu2) IO board is an industrial
form factor evaluation board from Edgeble AI.

Neu2 needs to mount on top of this IO board in order to create complete
Edgeble Neural Compute Module 2(Neu2) IO platform.

Add dt-bindings for it.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v9, v8:
- none
Changes for v7:
- collect Rob Ack
Changes for v6:

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 244c42eaae8c..26fdd205a899 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -85,6 +85,12 @@ properties:
           - const: chipspark,rayeager-px2
           - const: rockchip,rk3066a
 
+      - description: Edgeble Neural Compute Module 2(Neu2) SoM based boards
+        items:
+          - const: edgeble,neural-compute-module-2-io   # Edgeble Neural Compute Module 2 IO Board
+          - const: edgeble,neural-compute-module-2      # Edgeble Neural Compute Module 2 SoM
+          - const: rockchip,rv1126
+
       - description: Elgin RV1108 R1
         items:
           - const: elgin,rv1108-r1
-- 
2.25.1

