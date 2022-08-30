Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3365C5A63E6
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 14:51:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229999AbiH3Mvo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 08:51:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229982AbiH3Mvi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 08:51:38 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F341B654D
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 05:51:37 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id h1so5734802wmd.3
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 05:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=7s4lILp9cgE/VG98/TN3p3rL3NeB7y+YGCWWz/Ak6qo=;
        b=L6AZHkI6qAhQKRgDVwck8jQPEP5pvVUbAewKRUe/QGZDUn6HXSmN7CBSKyiywVSxuc
         jx+z2pZ+bS6vETgwOq+5TPiOOZd/+INHG4k09nhpsh7oO7PbPKmVWluwQhTFnH7sTb+b
         TMfPZLKaY9wuJnFT6eo9KxVz+acW//pawvrgQZ8ioqEfagH4O9ZY4YJbhJGSmCJhEVqX
         1LGL4eQupDP+4Yhh4q/cg3pBc1mapDtk8g7hqBfmgV4vCCm4eLh9sZ+RYQ4XWP950MEq
         U8V5zPoQfGgNugjHqnYldO7xIy93uKBSjuZ578J8OsdSqOQs1yt4iX/9O38srfbRYIq5
         qWrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=7s4lILp9cgE/VG98/TN3p3rL3NeB7y+YGCWWz/Ak6qo=;
        b=Aj4iNudr3oM9TS1bVLUsJGIYpM+/bqml/XBtyW78uJirPZs2245MwEN9GqTJhg5A7m
         +xhMeGCuIlZQyP9kt6W0NR45SIBkbskcGxl43Zgp/VaEKVoDzn3ZztsDFR2Fp4ZWdN5t
         4C2YUlTdEvXGxlnQJQsh3v/h4zraGEJ2HVlj1inxO++vzPFOmza+wJDQavLW5axi6UTX
         dIdPOlOIkmLYuvBUPax/0VW8T4OI3P91FkkvvOlY3k7CClbgmXfkOQgcqvzP/TY0Uz7q
         p4OlW3dK6tw/8JBLSsHH9sbAp6fZqL8p/6llQqTtVeWYRcQD7fCix1m99aM9Sk2PoTvF
         TY8A==
X-Gm-Message-State: ACgBeo0BW4KTFeLfswYsXbCVcFQUbGyfFi6Dquv3yFa/pu9O3ZCYteNw
        rAymyI3Uy8xkcNuDetTh80tD3A==
X-Google-Smtp-Source: AA6agR5nyN9qMCqsMR5Co7UgnLcOiBBKn7+L3agUSkd7KYHf7KNGKsjAB3LwR6t08tkeAcEr4nLWYw==
X-Received: by 2002:a7b:cc85:0:b0:3a5:50b2:f9be with SMTP id p5-20020a7bcc85000000b003a550b2f9bemr9329439wma.18.1661863895829;
        Tue, 30 Aug 2022 05:51:35 -0700 (PDT)
Received: from rainbowdash.office.codethink.co.uk ([167.98.27.226])
        by smtp.gmail.com with ESMTPSA id 14-20020a05600c020e00b003a3170a7af9sm11778784wmi.4.2022.08.30.05.51.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Aug 2022 05:51:35 -0700 (PDT)
From:   Ben Dooks <ben.dooks@sifive.com>
To:     palmer@dabbelt.com, paul.walmsley@sifive.com,
        aou@eecs.berkeley.edu, greentime.hu@sifive.com,
        conor.dooley@microchip.com, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org
Cc:     Ben Dooks <ben.dooks@sifive.com>
Subject: [RESEND PATCH] dt-bindings: sifive-ccache: fix cache level for l3 cache
Date:   Tue, 30 Aug 2022 13:51:33 +0100
Message-Id: <20220830125133.1698781-1-ben.dooks@sifive.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220829062202.3287-1-zong.li@sifive.com>
References: <20220829062202.3287-1-zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

With newer cores such as the p550, the SiFive composable cache can be
a level 3 cache. Update the cache level to be one of 2 or 3.

Signed-off-by: Ben Dooks <ben.dooks@sifive.com>
---
 Documentation/devicetree/bindings/riscv/sifive-ccache.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/riscv/sifive-ccache.yaml b/Documentation/devicetree/bindings/riscv/sifive-ccache.yaml
index 1a64a5384e36..6190deb65455 100644
--- a/Documentation/devicetree/bindings/riscv/sifive-ccache.yaml
+++ b/Documentation/devicetree/bindings/riscv/sifive-ccache.yaml
@@ -45,7 +45,7 @@ properties:
     const: 64
 
   cache-level:
-    const: 2
+    enum: [2, 3]
 
   cache-sets:
     enum: [1024, 2048]
-- 
2.35.1

