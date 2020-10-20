Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD16A294198
	for <lists+devicetree@lfdr.de>; Tue, 20 Oct 2020 19:43:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2437216AbgJTRnF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Oct 2020 13:43:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2437213AbgJTRnF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Oct 2020 13:43:05 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D31F3C0613D3
        for <devicetree@vger.kernel.org>; Tue, 20 Oct 2020 10:43:04 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id 13so2718051wmf.0
        for <devicetree@vger.kernel.org>; Tue, 20 Oct 2020 10:43:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tBhINe5+YmVPHfb1/p3z/ZugBR00FYyA2WW1AgRCGAM=;
        b=WbHD959s2sqRdOZIhuLjT2Bq0V9cHBGUM6oT9iAegHQsQ+NASd6sENwppAqbr4Aoju
         nx2mJZJa/SiVwmMqJQAUM6ktcpeVWNJ2NtRR+IjvbJF0dvxDCBbvCYBD3j5lRtQGCnts
         EeC4nyMrnqSwmfzfLQuvSWY8Vo2I6I766NCOwnNT52Aq8ka8jUDgLkG8sr1xEPnNSO9x
         2QJwoYC4uhbNJFSLbBNr3FR1JY6T/tNfwoY9g5jp08J6Gjxp3bhlsu2xVxDukEL8SVhI
         c8jPjI0t01rU7NJCIYkxPF6B3R6mvCBkIQCc/ex2IUXOxCO9ihFdQrjBOs7JaNAhmFBH
         i4zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tBhINe5+YmVPHfb1/p3z/ZugBR00FYyA2WW1AgRCGAM=;
        b=JOvJPPza9yIZI8PgmlqbYi9S1CqjFf+6phhcQegyrrkwf/VY5CRk/Y6JS17YwJNSIb
         HzSmlPIWF9q8Mulbro4CyGxXTMygkFt2f/STxFOFQfeYiy97VKV2kIq7FnySzi4kYz0F
         ZEiEu4JTBaYNCu+HhYtHyjNWynnDWYuJ8bLPG5l6WdqWbxDTfrin9u0YhjBAchUvYC00
         ViQs0QnlydMUAKIw7CAVlRW8WvBBungw7dUbUcHEeatMjCQUuW0zAeMTdS30zdKhZWFx
         mDbvUlx1dqwiBQjSz4+UCeQcYJKNqSyHBo1w3dBthFZzUcYOf97GSpgkWPkviquaEdRP
         8C9g==
X-Gm-Message-State: AOAM530vDAKX+orX+X3Abjw47p4AsOTcfHbRsK9C+Fo6BWTuANDqBldf
        56J1dVdwSP9NZ0+c2C2rFIG1/A==
X-Google-Smtp-Source: ABdhPJzYZnrg/xFUR1Exo3D3a8p65ayChvkyZu0pYYwQ4gWPnT+Pl6BY9opLW0tRMMKBzlTaAg9jxw==
X-Received: by 2002:a05:600c:4107:: with SMTP id j7mr3965065wmi.44.1603215783589;
        Tue, 20 Oct 2020 10:43:03 -0700 (PDT)
Received: from localhost.localdomain (199.170.185.81.rev.sfr.net. [81.185.170.199])
        by smtp.gmail.com with ESMTPSA id v123sm3297756wme.7.2020.10.20.10.43.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 10:43:03 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org, daniel@ffwll.ch,
        airlied@linux.ie, p.zabel@pengutronix.de, chunkuang.hu@kernel.org,
        Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 4/8] drm/mediatek: dsi: add pdata variable to start clk in HS mode
Date:   Tue, 20 Oct 2020 19:42:49 +0200
Message-Id: <20201020174253.3757771-5-fparent@baylibre.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201020174253.3757771-1-fparent@baylibre.com>
References: <20201020174253.3757771-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On MT8167, DSI seems to work fine only if we start the clk in HS mode.
If we don't start the clk in HS but try to switch later to HS, the
display does not work.

This commit adds a platform data variable to be used to start the
DSI clk in HS mode at power on.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index 4a188a942c38..461643c05689 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -175,6 +175,7 @@ struct mtk_dsi_driver_data {
 	const u32 reg_cmdq_off;
 	bool has_shadow_ctl;
 	bool has_size_ctl;
+	bool use_hs_on_power_on;
 };
 
 struct mtk_dsi {
@@ -671,7 +672,7 @@ static int mtk_dsi_poweron(struct mtk_dsi *dsi)
 
 	mtk_dsi_clk_ulp_mode_leave(dsi);
 	mtk_dsi_lane0_ulp_mode_leave(dsi);
-	mtk_dsi_clk_hs_mode(dsi, 0);
+	mtk_dsi_clk_hs_mode(dsi, !!dsi->driver_data->use_hs_on_power_on);
 
 	return 0;
 err_disable_engine_clk:
-- 
2.28.0

