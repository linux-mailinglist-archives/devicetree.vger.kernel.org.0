Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D864D59EC9B
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 21:44:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233406AbiHWTnW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 15:43:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233051AbiHWTnH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 15:43:07 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88888CF
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 11:43:40 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id g8so9693998plq.11
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 11:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=t5Z//tr8iPA2uwuDmmL4RQBNRGpzhRZG+pPbl3yTBwA=;
        b=7+DmvW1XLyQy51XB9jWZ4MFw60gZJBRQXQXDSHakXB5KqCkxKNJu+ya5qfofismA/Q
         bW1M3WMA9CuKJzkfA88E+ZwmVaVaVzvvvs3Ie/NaEoIOy4jyXiZhsh0AdvM5qjYvewAT
         dSCJxSBWyXQgBeiTcE72V9oG3bl2PgKcYTCt+DxGOKl5HpLJX9cQBE4Ua35QWly5OuVK
         xCbYcogbFhitszbkvZJaJukpxBa3U8gFOoe4sjYWjARGXMsSl5f9t1rgqsic5WmhZ+eQ
         9sbrCsnfhH3jvJyEPkFeYKONnQCHiBxaJlzj9vmlt1l/L3KA9Lv6Ca7rSK4jzEEml6Rp
         rMFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=t5Z//tr8iPA2uwuDmmL4RQBNRGpzhRZG+pPbl3yTBwA=;
        b=lyCpGhFT5fVkVCbadgm308GI9Voy0y7Jjm28G8kwyWkPo0sBKq3kajZalANuJep9+J
         zNl04mU1OyUssfn7fv8X0GHaBS15zRZTACnMzRHnWpQP5/I5CEQ5G6G55xyiZ8jFwlum
         Ew83iGuApUrZe7HF2bfD+Y1AyMQABmzgr0FeN4cE4FznHtHJjY0A9p6McY5RsOUYQfq4
         pjDhGn+WyKpM18LsByCUFM+Uv6AAXQwkzMWpJjcUp6b3KvMeGB7AuTItU8U1q1zForfL
         Do0EkB9DmUv4Ee4BcfatHl2Anux3Oy34HeskiGeJHLNG1R5B4CJVXRBVkGnxYM2hi7k9
         0Gpg==
X-Gm-Message-State: ACgBeo3cEQdTZMOMN6RUUygFuRpXdirU6oouWmW+QtbpQg5jpv/ehMLT
        KMLXeaz5iAoBNTkhj0SSGJX7/s/ISGQcV5KMTpA=
X-Google-Smtp-Source: AA6agR7ibijcF0zCQ1t7QbgF4OIa4JoXbn9v4EDttl/o5U+zle4anEu32Li68RP5+54Mv44eAzVrnQ==
X-Received: by 2002:a17:902:8643:b0:172:e067:d7ac with SMTP id y3-20020a170902864300b00172e067d7acmr12675279plt.164.1661280219982;
        Tue, 23 Aug 2022 11:43:39 -0700 (PDT)
Received: from localhost.localdomain ([23.27.44.55])
        by smtp.gmail.com with ESMTPSA id b187-20020a62cfc4000000b0053641e66825sm7767647pfg.173.2022.08.23.11.43.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Aug 2022 11:43:39 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     devicetree@vger.kernel.org, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 2/4] dt-bindings: vendor-prefixes: Document Jadard
Date:   Wed, 24 Aug 2022 00:12:40 +0530
Message-Id: <20220823184242.3554472-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220823184242.3554472-1-jagan@edgeble.ai>
References: <20220823184242.3554472-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Jadard Technology Inc. manufactures and distributes chips
from Shenzhen.

Add vendor prefix for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index e8ee5084cb89..6ac4c1fc09c4 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -637,6 +637,8 @@ patternProperties:
     description: ITian Corporation
   "^iwave,.*":
     description: iWave Systems Technologies Pvt. Ltd.
+  "^jadard,.*":
+    description: Jadard Technology Inc.
   "^jdi,.*":
     description: Japan Display Inc.
   "^jedec,.*":
-- 
2.25.1

