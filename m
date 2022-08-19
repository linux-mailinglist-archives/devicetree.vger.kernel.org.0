Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B38DD59A862
	for <lists+devicetree@lfdr.de>; Sat, 20 Aug 2022 00:30:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242621AbiHSWZl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Aug 2022 18:25:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242800AbiHSWZb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Aug 2022 18:25:31 -0400
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 001D81095A2
        for <devicetree@vger.kernel.org>; Fri, 19 Aug 2022 15:25:30 -0700 (PDT)
Received: by mail-oi1-x22c.google.com with SMTP id j5so6214747oih.6
        for <devicetree@vger.kernel.org>; Fri, 19 Aug 2022 15:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=nltXdNcFX6Gm5RkRCgm94nUZvKBm+MVKRVe6GCZWuEU=;
        b=HKBAzUO+Swga0loEQtsoZkdSdIozZZhKG/jN24zOKSJGnt4J+W9sllpQENThzj4qkN
         A2ifv81esgB/abK1JVsSxdHNmAgegGhj4NWS1RoUkop6S9O6WTpwbpq9qiBN4Q43pZHk
         GG3hwU32JFXBeB5kHGNgTjy0ShTlXIQzWapU64UXA3dMbvLCC1Xsi7bCBXwsKHtEaOXB
         mHfbE2TmfYKmZorOplzWCIJP7l23RK5jQ4NFy8RAedYO4n7UMZ+0mYad2b5DqDBVuF8m
         cnSV/W3w+dH0cvCBxus96pWx1PLuzSxusHIkfq4WFSE6q6zqjrVPDq0/WJqIbVrV5VGo
         YWOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=nltXdNcFX6Gm5RkRCgm94nUZvKBm+MVKRVe6GCZWuEU=;
        b=NUWasg3JrP+0BxaKyZoaDwG1+oqHxEo3Honrgoy11jSSA1O2LRQ5Xb8dhjq9BYkvSu
         KLSqfy12thksaY3eaG0kKlBfUlOzFAn8xXb1DWXUOq2SAMFFqChSScdkzXA86lh95UQM
         vaFJd6I2Is2fcILgnTIBat48RGTNZMtO5mdtw7hgmW70GX7JDPnXNWmmyc2rLO54PuSx
         CqEBrO5OiGAwuyZu3+cYyBlIBjXl6zotexB68yopqIumyXUs0UoG/d8D4c2w/N/wS+uF
         VbB/pQcU5YOKg/UP3F5VNjwQwfQI/dAGPhSABiA9zWJ9RNjwTzU21iOLzKKI/h5uZAve
         5FZA==
X-Gm-Message-State: ACgBeo3lxnJAPvHN09PJxU1ZFxoIe7jGwTO2JnO3CYBbhjssWQ51hZyK
        ORI2/hCBRHJcfp4KbR+MaTz/5Qus1j4=
X-Google-Smtp-Source: AA6agR4TS+8/UtC8HLgmqsmjF2+QODCrI4MnBaiACnskYpYlrUhupnt/PuHUhe3IKfsRnAPjut2LBA==
X-Received: by 2002:a05:6808:2087:b0:343:6e94:64c9 with SMTP id s7-20020a056808208700b003436e9464c9mr4271868oiw.270.1660947929904;
        Fri, 19 Aug 2022 15:25:29 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id ca15-20020a056830610f00b0061d31170573sm1470497otb.20.2022.08.19.15.25.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Aug 2022 15:25:28 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
        pgwipeout@gmail.com, cphealy@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/3] dt-bindings: vendor-prefixes: add Anbernic
Date:   Fri, 19 Aug 2022 17:25:18 -0500
Message-Id: <20220819222520.3069-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220819222520.3069-1-macroalpha82@gmail.com>
References: <20220819222520.3069-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Anbernic designs and manufactures portable gaming systems.
https://anbernic.com/

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 2f0151e9f6be..2a5a98d6fdda 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -105,6 +105,8 @@ patternProperties:
     description: AMS-Taos Inc.
   "^analogix,.*":
     description: Analogix Semiconductor, Inc.
+  "^anbernic,.*":
+    description: Anbernic
   "^andestech,.*":
     description: Andes Technology Corporation
   "^anvo,.*":
-- 
2.25.1

