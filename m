Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6867742392D
	for <lists+devicetree@lfdr.de>; Wed,  6 Oct 2021 09:47:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237588AbhJFHtP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Oct 2021 03:49:15 -0400
Received: from mx1.tq-group.com ([93.104.207.81]:38343 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S237470AbhJFHtO (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 6 Oct 2021 03:49:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1633506443; x=1665042443;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=EZE+qWpRsn+5r1JQt0pqgoeVfHJE9GHVycUHYlEL3rc=;
  b=gXBADIioj0VCR/wGTb17+YtLLtkIKria9cqM8Q553T7ur4fVxmqKJ/kL
   8kzsk+M0FkJ2W90/CO2ow0f51DW+lliyIQmkabR6qmEZuGmeScod0neER
   18sySMYM7BOB+RgcOk7X0W58mzrMYE9XK4tdbS6x0ZeczrF9ucbiq4YAl
   wUaZ76/FnpNXy+WcvvS546yBVSivqQft9PuhKxdYzSa7ItmbBaHp3OzA8
   OCFnnMy2vTn6J+b2TrjWuRLod+4g99hCthO46l4ygQDJxNKMUomUM2iHU
   1d/pdL+h7cvNSBC6anGcIr7b20x2Tg/hOVK9etkJ0GDszFervXyzJ/ulH
   g==;
X-IronPort-AV: E=Sophos;i="5.85,350,1624312800"; 
   d="scan'208";a="19887682"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 06 Oct 2021 09:47:22 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 06 Oct 2021 09:47:22 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 06 Oct 2021 09:47:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1633506442; x=1665042442;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=EZE+qWpRsn+5r1JQt0pqgoeVfHJE9GHVycUHYlEL3rc=;
  b=OSbBXLByawSb1n6/Y95tcrH0YN0yqkiwsdWataqNRFvXoXg5FtAN4Uxm
   x51b0OyYcBYd/XfDq1mvynfqsMR3NFpI++fgTAd1X+edQ1qWgaSrOe55L
   fMDC/oO3t5dl0AQYnj3bQUVQn/FbZhbEc0gDM8R4bd6yrXh/tNCHsNlV6
   EYcMMi/4hYSQacJdO8OmQIE7aL1nzWttF9yecynjLzmehJAZ2IZRQcHFH
   oBGutCxaLl+qXExlZEkL0E8z9h8kxBkGPn9suc48LO0R5uFSHLXPDXNIU
   UV/003rQsFONoknI2QAuGQkUkLhUXFy88GLtixDLifNOxmV1EUgUnUHoc
   Q==;
X-IronPort-AV: E=Sophos;i="5.85,350,1624312800"; 
   d="scan'208";a="19887681"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 06 Oct 2021 09:47:22 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id E5D3C280075;
        Wed,  6 Oct 2021 09:47:21 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Subject: [PATCH 3/3] drm/bridge: ti-sn65dsi8: Make enable GPIO optional
Date:   Wed,  6 Oct 2021 09:47:13 +0200
Message-Id: <20211006074713.1094396-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211006074713.1094396-1-alexander.stein@ew.tq-group.com>
References: <20211006074713.1094396-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The enable signal may not be controllable by the kernel. Make it
optional.
This is a similar to commit bbda1704fc15 ("drm/bridge: ti-sn65dsi86: Make
enable GPIO optional")

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 drivers/gpu/drm/bridge/ti-sn65dsi83.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/ti-sn65dsi83.c b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
index 5fab0fabcd15..101da29ba698 100644
--- a/drivers/gpu/drm/bridge/ti-sn65dsi83.c
+++ b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
@@ -679,7 +679,7 @@ static int sn65dsi83_probe(struct i2c_client *client,
 		model = id->driver_data;
 	}
 
-	ctx->enable_gpio = devm_gpiod_get(ctx->dev, "enable", GPIOD_OUT_LOW);
+	ctx->enable_gpio = devm_gpiod_get_optional(ctx->dev, "enable", GPIOD_OUT_LOW);
 	if (IS_ERR(ctx->enable_gpio))
 		return PTR_ERR(ctx->enable_gpio);
 
-- 
2.25.1

