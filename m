Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E4F321E9C2
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2020 09:13:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726932AbgGNHNV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jul 2020 03:13:21 -0400
Received: from mail.kernel.org ([198.145.29.99]:55880 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726809AbgGNHNU (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Jul 2020 03:13:20 -0400
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.194.72])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id A236422227;
        Tue, 14 Jul 2020 07:13:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1594710799;
        bh=YiVWckYXZobeNaSRkUj8azBJxqyMKc8YEr8QUsXFDdg=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=pPUI4kqRSARdAvLmGOuFhpE0+TwvUrgdGV5zoluw7dB4jMnbpdwOyWHl6ni2MDtIU
         zibtyLk+sEY8qdNgniqRgz0jDnhq1F8gEZ5FU8cZ/255xX8zfgMyAeAwl2Mpfp/py3
         mIgoeOwFEXDJijHL+pJwF8QkP8OK82SFgkfFbUMc=
Received: by wens.tw (Postfix, from userid 1000)
        id F23B05FCE5; Tue, 14 Jul 2020 15:13:13 +0800 (CST)
From:   Chen-Yu Tsai <wens@kernel.org>
To:     Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>
Cc:     Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Siarhei Siamashka <siarhei.siamashka@gmail.com>
Subject: [PATCH 2/5] drm/panel: simple: Set bpc from bits-per-color DT property for panel-dpi
Date:   Tue, 14 Jul 2020 15:13:02 +0800
Message-Id: <20200714071305.18492-3-wens@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200714071305.18492-1-wens@kernel.org>
References: <20200714071305.18492-1-wens@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chen-Yu Tsai <wens@csie.org>

Now that the device tree binding for panel-dpi has the "bits-per-color"
property, parse its value and set bpc in the panel description to the
given value. This would allow encoders to detect less-than-8-bits color
depth and employ color dithering if possible.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 drivers/gpu/drm/panel/panel-simple.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 13a9df44f781..0765bfa54b7a 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -433,6 +433,7 @@ static int panel_dpi_probe(struct device *dev,
 
 	of_property_read_u32(np, "width-mm", &desc->size.width);
 	of_property_read_u32(np, "height-mm", &desc->size.height);
+	of_property_read_u32(np, "bits-per-color", &desc->bpc);
 
 	/* Extract bus_flags from display_timing */
 	bus_flags = 0;
-- 
2.27.0

