Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B8B0A4557EB
	for <lists+devicetree@lfdr.de>; Thu, 18 Nov 2021 10:20:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245109AbhKRJXt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Nov 2021 04:23:49 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:5493 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S245156AbhKRJXa (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 18 Nov 2021 04:23:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1637227230; x=1668763230;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=NmZSdW+5LVfKmAVPKZKf41GorbnUuDSvFzzyCMsfbWk=;
  b=o/YfM8JBg1vDA1cwdvwrDubZQxjJNDvYamj6dJ9JIjFf32dkdz5N3aPl
   GZCgkNJ4iky0wG1F+EGRpG38IEw/1i4YoWC92ettjG9cFlq82r66R0XGW
   CQeReAeox7R8WjEikU33QU2A/BVxd3BTSKjklOlYX30X6Rm7JA1ywC4M8
   KL0XPbaLkC8xB7b7McdZYb8lrfkuDvICbp3z9mnt6V+HKVJYx2eF/8Efh
   ZisS8D6msLhAkDjlMl5k6WF469AdA9BBXLVOod3rU2OU080EqFCwb9IOO
   TDTFv5f+xwtHUXuWngussYSHxTXqFe1tRdQgd/VPBy0CrclMHtfYNgQCI
   g==;
X-IronPort-AV: E=Sophos;i="5.87,244,1631570400"; 
   d="scan'208";a="20534723"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 18 Nov 2021 10:20:04 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 18 Nov 2021 10:20:05 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 18 Nov 2021 10:20:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1637227205; x=1668763205;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=NmZSdW+5LVfKmAVPKZKf41GorbnUuDSvFzzyCMsfbWk=;
  b=obUpin4bO7+TZ9kixzEElsGKqf2eohEGNlhKB9cwJDEUakg1x6LvR9Hc
   NWS1plOM5zM9sToTtXQa/xNCZxlAbZLaw08IM0XyCqif1soBWLJ03y7ej
   kIzE5To0qt6cu5g5DrCRjY7jI/e28RUkHFVvMDojEkdPBQmMyrHS90UsQ
   uhNxoZ1eXP1y2wY1q7yC5VV03gMs8djrzbRhPKM2v3xu84ADVLAPjj4Lk
   qLKr3TfmcsBOolLorbcQ1tyRh5CbTgzExAKTHr6yNJSbnSaCZ4D4C7xEX
   Pj2kFd7p6UCx7G5+Ov/OQRrrU4VunhdWERR2IlUeUAWux23FwkVqIA8F8
   Q==;
X-IronPort-AV: E=Sophos;i="5.87,244,1631570400"; 
   d="scan'208";a="20534713"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 18 Nov 2021 10:20:03 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 2C80F280078;
        Thu, 18 Nov 2021 10:20:02 +0100 (CET)
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
Subject: [PATCH v4 2/4] drm/bridge: ti-sn65dsi83: Make enable GPIO optional
Date:   Thu, 18 Nov 2021 10:19:53 +0100
Message-Id: <20211118091955.3009900-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211118091955.3009900-1-alexander.stein@ew.tq-group.com>
References: <20211118091955.3009900-1-alexander.stein@ew.tq-group.com>
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
index 945f08de45f1..065610edc37a 100644
--- a/drivers/gpu/drm/bridge/ti-sn65dsi83.c
+++ b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
@@ -662,7 +662,8 @@ static int sn65dsi83_probe(struct i2c_client *client,
 	}
 
 	/* Put the chip in reset, pull EN line low, and assure 10ms reset low timing. */
-	ctx->enable_gpio = devm_gpiod_get(ctx->dev, "enable", GPIOD_OUT_LOW);
+	ctx->enable_gpio = devm_gpiod_get_optional(ctx->dev, "enable",
+						   GPIOD_OUT_LOW);
 	if (IS_ERR(ctx->enable_gpio))
 		return PTR_ERR(ctx->enable_gpio);
 
-- 
2.25.1

