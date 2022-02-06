Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E3434AAFB0
	for <lists+devicetree@lfdr.de>; Sun,  6 Feb 2022 14:58:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241294AbiBFN6c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Feb 2022 08:58:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241096AbiBFN62 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Feb 2022 08:58:28 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32A6CC0401DA
        for <devicetree@vger.kernel.org>; Sun,  6 Feb 2022 05:58:23 -0800 (PST)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 27313405C7
        for <devicetree@vger.kernel.org>; Sun,  6 Feb 2022 13:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644155902;
        bh=SAhW/a84WS23pzYvstDyhGEwqpxke2RgUd70WOPmdjA=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=EdbytoSxKuFL0gCSNSUWXKB0ecI16UBj7SAp6Xm5g4WGxlnWexL014KKwNxcu3JdP
         AZcWefsI8qeL9azSWx4O/wfUvejBD6yQjLxa/DMV+gltDizLRpF8DpICxrIPEbCI+F
         BU7/u+TzRaIcJ7AlpmzKtIuBkcNRHOGN8USDHlqlSsEv/60NnERgUaNld3wHjNE1t8
         UJFiJtQlLDu4haVoohHFfm4vALtcDxeQlvIfd8u1cnEHU6QfLTBG+oKob43Iz9g09V
         a/eVADGTejVryn3l//zephXasmubqWdLYFpuvvMENl0sODP6bidHEwocTrva+w4lSr
         5gOeBssEWWNGA==
Received: by mail-wm1-f72.google.com with SMTP id a8-20020a7bc1c8000000b0037bc4c62e97so503009wmj.0
        for <devicetree@vger.kernel.org>; Sun, 06 Feb 2022 05:58:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SAhW/a84WS23pzYvstDyhGEwqpxke2RgUd70WOPmdjA=;
        b=b27ybOZJjKrW2vB+MX+eEJe8yDNmOlNdevvrdhvrA5ZxsXmfvvFyTJLi+rjS4owNSz
         YJYpKnKmiXyUeC3oBsNPmbRVFNTRPuJzqxMF0kWzdMlsbJfDK2oLyfLADBJQ7y07WbqN
         Mt0l/so75HjFVz5rYRTUNP05SPlE/ZKZVD4GdoTvtI08J45HxjrG5NZYSgPbW6qOXTeZ
         tyHqjaZM0zrILmwv5eFxdEWt/02V/EFxsYgcrKWk2r7Vyt2TZISN5H06yTheSJhBbcBR
         xYuPqPt1d1Qw+n503mFoQrmMkLx04j8RKe+hdzBe+yfeh2APigVLEHWX9H0HNmF1aR9k
         f77A==
X-Gm-Message-State: AOAM531YV/1wWKkJxdj7leHergucrLvshcCOJFxWHy4o73b4KUcMpS7E
        NgAOelgohc3ts9j3M434gu2DZNwJ92cmovirUUnHZg3xW82TNekf4zLqoxrwa+4G31cYyV2nLk3
        aL5LPcY+Q9b9xjmEwwEbWhfHZqcPWXKaB+PZBaVQ=
X-Received: by 2002:a5d:5981:: with SMTP id n1mr6623849wri.354.1644155900203;
        Sun, 06 Feb 2022 05:58:20 -0800 (PST)
X-Google-Smtp-Source: ABdhPJytvwW46TDkRhn6fTvRn7j0B7m4/zg+NDrjv6/9KG89d6habuNMjHscp6X1w/nZLrHXawIU3w==
X-Received: by 2002:a5d:5981:: with SMTP id n1mr6623839wri.354.1644155900042;
        Sun, 06 Feb 2022 05:58:20 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id e9sm8296888wrg.60.2022.02.06.05.58.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Feb 2022 05:58:19 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Lukasz Luba <lukasz.luba@arm.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Dmitry Osipenko <digetx@gmail.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 7/8] memory: of: parse max-freq property
Date:   Sun,  6 Feb 2022 14:58:06 +0100
Message-Id: <20220206135807.211767-8-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220206135807.211767-1-krzysztof.kozlowski@canonical.com>
References: <20220206135807.211767-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Passing the memory timings maximum frequency as an unit address was
a workaround and instead 'max-freq' is preferred.  Look for 'max-freq'
first and then fallback to 'reg'.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 drivers/memory/of_memory.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/memory/of_memory.c b/drivers/memory/of_memory.c
index b94408954d85..bac5c7f34936 100644
--- a/drivers/memory/of_memory.c
+++ b/drivers/memory/of_memory.c
@@ -212,8 +212,10 @@ static int of_lpddr3_do_get_timings(struct device_node *np,
 {
 	int ret;
 
-	/* The 'reg' param required since DT has changed, used as 'max-freq' */
-	ret = of_property_read_u32(np, "reg", &tim->max_freq);
+	ret = of_property_read_u32(np, "max-freq", &tim->max_freq);
+	if (ret)
+		/* Deprecated way of passing max-freq as 'reg' */
+		ret = of_property_read_u32(np, "reg", &tim->max_freq);
 	ret |= of_property_read_u32(np, "min-freq", &tim->min_freq);
 	ret |= of_property_read_u32(np, "tRFC", &tim->tRFC);
 	ret |= of_property_read_u32(np, "tRRD", &tim->tRRD);
-- 
2.32.0

