Return-Path: <devicetree+bounces-1099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3337A4A60
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 15:00:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C28D51C2102C
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 13:00:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4C791CFB8;
	Mon, 18 Sep 2023 13:00:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9BC38F9F
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 13:00:29 +0000 (UTC)
Received: from out-213.mta1.migadu.com (out-213.mta1.migadu.com [IPv6:2001:41d0:203:375::d5])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD82E1AA
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 05:59:33 -0700 (PDT)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1695041971;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=N/ff6X+NOYVbrocTBpgld9JVVmEwtIn+hGTJSAUql5A=;
	b=xU2gCXcZ99qnp0V/FuJlF/n2AtySlh1HubS9pviOcSE8wWBmHhTjI7q5ZQH4wpC6NWFox/
	YBqov8jgDzayqQ3+W92TB9gvkbJ1b/iq5CijPFKTkeDrJl/k1c65EXNBdDio+DLRv0a8B9
	6/rG8zAmXU7qnBWrM8IBnF9ZISOxWAkt1LThoJKku5ii/+PY2RzpmlNx4avcOyLjNEPyp5
	TnNUKglG+nq3LHA5T5Ostb8Iz+Qy38WriI7rIWAPqiAI5+iW/QpyC6j0QAthk7Vt2HVHNt
	YxXh62g8QVEIj5QEp9D5+2Z9QTEyr/LcoOqS0dxbkxAZTXUWuhugNTgcwGyeog==
From: John Watts <contact@jookia.org>
To: dri-devel@lists.freedesktop.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	John Watts <contact@jookia.org>,
	Paul Cercueil <paul@crapouillou.net>,
	Christophe Branchereau <cbranchereau@gmail.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH v2 2/9] drm/panel: nv3052c: Add SPI device IDs
Date: Mon, 18 Sep 2023 22:58:46 +1000
Message-ID: <20230918125853.2249187-3-contact@jookia.org>
In-Reply-To: <20230918125853.2249187-1-contact@jookia.org>
References: <20230918125853.2249187-1-contact@jookia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

SPI drivers needs their own list of compatible device IDs in order
for automatic module loading to work. Add those for this driver.

Signed-off-by: John Watts <contact@jookia.org>
Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>
---
 drivers/gpu/drm/panel/panel-newvision-nv3052c.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-newvision-nv3052c.c b/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
index 589431523ce7..90dea21f9856 100644
--- a/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
+++ b/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
@@ -465,6 +465,12 @@ static const struct nv3052c_panel_info ltk035c5444t_panel_info = {
 	.bus_flags = DRM_BUS_FLAG_DE_HIGH | DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE,
 };
 
+static const struct spi_device_id nv3052c_ids[] = {
+	{ "ltk035c5444t", },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(spi, nv3052c_ids);
+
 static const struct of_device_id nv3052c_of_match[] = {
 	{ .compatible = "leadtek,ltk035c5444t", .data = &ltk035c5444t_panel_info },
 	{ /* sentinel */ }
@@ -476,6 +482,7 @@ static struct spi_driver nv3052c_driver = {
 		.name = "nv3052c",
 		.of_match_table = nv3052c_of_match,
 	},
+	.id_table = nv3052c_ids,
 	.probe = nv3052c_probe,
 	.remove = nv3052c_remove,
 };
-- 
2.42.0


