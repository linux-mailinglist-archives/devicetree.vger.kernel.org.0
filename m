Return-Path: <devicetree+bounces-1107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C44987A4A74
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 15:02:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7F6AB2822C2
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 13:02:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A4E91CFB6;
	Mon, 18 Sep 2023 13:02:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1FA71CAA4
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 13:02:16 +0000 (UTC)
Received: from out-219.mta1.migadu.com (out-219.mta1.migadu.com [IPv6:2001:41d0:203:375::db])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDAB2171A
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 05:59:49 -0700 (PDT)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1695041988;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZJIBmn1MRAFelLIOs/v4ao97mYf3xkRoyjgfFYfZY14=;
	b=Eis19EUqt8F5IEwvw8k8WICesKIk8mVKQTgQ2JtVlQ/Nd4QR4TvsAVTHDbc7M7b42hC7p0
	HS5d2/tBiclp2l0szNn3Okmly9q+c3ItDNH4jvU5omvCbV7IKjoubgcAtTLWHMJs1TA31C
	+WlvwkLUU08ypgbbDuXItBJsRZrGhswphsJlKkfbY5BoaoDtSPqEqUO9w+6X2mUgCAdoWG
	rVh6KTD3HCE1JP+1fNIXeyjTQ92DDOp2Sofq66TDpgiEkUdyPlGZBE47KfCFmhLfZb60Zy
	9bXFmY14ySAJWn4Rh91RL4BCJtw7WYIKn8egenwedBwEaekOLajEmgrVA7on9w==
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
Subject: [RFC PATCH v2 4/9] drm/panel: nv3052c: Wait before entering sleep mode
Date: Mon, 18 Sep 2023 22:58:48 +1000
Message-ID: <20230918125853.2249187-5-contact@jookia.org>
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
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The panel needs us to wait 120ms between exiting and entering sleep.
Guarantee that by always waiting 150ms before entering sleep mode.

Signed-off-by: John Watts <contact@jookia.org>
---
 drivers/gpu/drm/panel/panel-newvision-nv3052c.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-newvision-nv3052c.c b/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
index 2526b123b1f5..307335d0f1fc 100644
--- a/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
+++ b/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
@@ -289,6 +289,9 @@ static int nv3052c_unprepare(struct drm_panel *panel)
 	struct mipi_dbi *dbi = &priv->dbi;
 	int err;
 
+	/* Wait 150ms in case we just exited sleep mode */
+	msleep(150);
+
 	err = mipi_dbi_command(dbi, MIPI_DCS_ENTER_SLEEP_MODE);
 	if (err)
 		dev_err(priv->dev, "Unable to enter sleep mode: %d\n", err);
-- 
2.42.0


