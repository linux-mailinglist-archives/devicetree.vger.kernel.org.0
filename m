Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 76437429DF8
	for <lists+devicetree@lfdr.de>; Tue, 12 Oct 2021 08:49:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232784AbhJLGvN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Oct 2021 02:51:13 -0400
Received: from mx1.tq-group.com ([93.104.207.81]:22458 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232509AbhJLGvF (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 12 Oct 2021 02:51:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1634021344; x=1665557344;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=OexUDrCO45DT7y8Xa3ppCIZxrceYdrcYeP4z6z7CHck=;
  b=iFuiLx0exm4mKU3CewVh+ag3cNzsSHBHVN+q/xremeg85WfuKRVeH4uR
   C5R7SlDpzjtwbaqU2nVBjoFr4E5Vey2fkzLaHxhrJXMsjxgnVG28+jmmp
   2BbqnaOQU9/4zVVPw/lhyAJgYOlCHYnGsmeoKgz66vmamRQFWY5svBGFI
   hpjtebIRYfaslamWJrB+MRodSiCK5tSVbyfoJcKeRfAVdTlw7234NkEjj
   a26RKUFtpdhEyGqwFQbI7nOajeTxhuOAL7dYoHhqhqP5aGRZUZic68Jx9
   30x+4GJJ1zi0MP0SfwKJewhVBLx0YB95D0KZsrcpBMB8wTsmelPxCQ7AT
   Q==;
X-IronPort-AV: E=Sophos;i="5.85,366,1624312800"; 
   d="scan'208";a="19985094"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 12 Oct 2021 08:49:01 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 12 Oct 2021 08:49:02 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 12 Oct 2021 08:49:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1634021341; x=1665557341;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=OexUDrCO45DT7y8Xa3ppCIZxrceYdrcYeP4z6z7CHck=;
  b=M7aAq7a5Tda+vba+hvUILc33Luj3ItHwGyn3qmts0nBBmfpo6NcKKuFr
   Bxy2Ze3Gn1XBMk7MU3LMsGq7TuFoGxC4lM1Ws7Zlkb0hQ9kFkAytf1t4p
   umAzeaTrin9PpkktrB/caVPyGHi9q4tzQEKfSIoZe5pvH3yst8pBdAXZy
   IElSmJkzuIYH5TRkpFlgw85ua+fcckKXxq13+rnknGK2zdQK0BImeNt9i
   QZqxtOdQl2ruYzawCctiHQ4+Xx2HpO423yAlrkgXy4Hrf/69vq4hHyT3k
   kcVdeC9Ot7oHsLFNxZ/nT0R6eqDuh0lfTMGlgYoDh8GlrJfQvfu3npBJu
   g==;
X-IronPort-AV: E=Sophos;i="5.85,366,1624312800"; 
   d="scan'208";a="19985093"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 12 Oct 2021 08:49:01 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id ACDBF280065;
        Tue, 12 Oct 2021 08:49:01 +0200 (CEST)
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
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Sam Ravnborg <sam@ravnborg.org>
Subject: [PATCH v2 2/4] drm/bridge: ti-sn65dsi83: Make enable GPIO optional
Date:   Tue, 12 Oct 2021 08:48:41 +0200
Message-Id: <20211012064843.298104-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211012064843.298104-1-alexander.stein@ew.tq-group.com>
References: <20211012064843.298104-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The enable signal may not be controllable by the kernel. Make it
optional.
This is a similar to commit bbda1704fc15 ("drm/bridge: ti-sn65dsi86: Make
enable GPIO optional")

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 drivers/gpu/drm/bridge/ti-sn65dsi83.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/ti-sn65dsi83.c b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
index a32f70bc68ea..9072342566f3 100644
--- a/drivers/gpu/drm/bridge/ti-sn65dsi83.c
+++ b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
@@ -671,7 +671,8 @@ static int sn65dsi83_probe(struct i2c_client *client,
 		model = id->driver_data;
 	}
 
-	ctx->enable_gpio = devm_gpiod_get(ctx->dev, "enable", GPIOD_OUT_LOW);
+	ctx->enable_gpio = devm_gpiod_get_optional(ctx->dev, "enable",
+						   GPIOD_OUT_LOW);
 	if (IS_ERR(ctx->enable_gpio))
 		return PTR_ERR(ctx->enable_gpio);
 
-- 
2.25.1

