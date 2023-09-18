Return-Path: <devicetree+bounces-1100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AAD17A4A61
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 15:01:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 10A071C2113D
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 13:00:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7656C1D520;
	Mon, 18 Sep 2023 13:00:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C48081CFBF
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 13:00:30 +0000 (UTC)
Received: from out-222.mta0.migadu.com (out-222.mta0.migadu.com [IPv6:2001:41d0:1004:224b::de])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 620D7119
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 05:59:42 -0700 (PDT)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1695041980;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QEybRG/z/QiYL8x5ls+wYPU1myIjvupP8IAsRIKh5xg=;
	b=FEW+MOpwp9cGHz48fZOCAK7zxLfyFA4CUAFrB6PZomcNlEIGsGhUu9YN+yjVZsm6WpQWNR
	DPyIrvPVPIkHZ81tGtQ/L+knTLJ0LPoF3thlOez1lfZ4zx3z+WQ4PcwvprhmkX53U9r4cG
	6vdfCR8dAmEptpSNt3V8vFaaFd+cZ5a1V4F6+kbDS0g902b/8m4+nbiuqCDroZnmo0v5CC
	tfdFZMV3a9qM49QY0+4lEVVLCdfPdtpB/51bKPdu41g9mUNL1HsxBfMsh+XxcNE4/jKYhv
	yf4uBAXssBeKi2GcMBz7NmP8jEwSMPLU4ZX6qa8aOI+KkH5YTrkjAZXuPSlAuw==
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
Subject: [RFC PATCH v2 3/9] drm/panel: nv3052c: Sleep for 150ms after reset
Date: Mon, 18 Sep 2023 22:58:47 +1000
Message-ID: <20230918125853.2249187-4-contact@jookia.org>
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

The current code waits after resets for 5 to 20 milliseconds.
This is appropriate when resetting a sleeping panel, but an awake panel
requires at least 120ms of waiting.

Sleep for 150ms so the panel always completes it reset properly.

Signed-off-by: John Watts <contact@jookia.org>
---
 drivers/gpu/drm/panel/panel-newvision-nv3052c.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/panel/panel-newvision-nv3052c.c b/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
index 90dea21f9856..2526b123b1f5 100644
--- a/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
+++ b/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
@@ -258,7 +258,7 @@ static int nv3052c_prepare(struct drm_panel *panel)
 	gpiod_set_value_cansleep(priv->reset_gpio, 1);
 	usleep_range(10, 1000);
 	gpiod_set_value_cansleep(priv->reset_gpio, 0);
-	usleep_range(5000, 20000);
+	msleep(150);
 
 	for (i = 0; i < ARRAY_SIZE(nv3052c_panel_regs); i++) {
 		err = mipi_dbi_command(dbi, nv3052c_panel_regs[i].cmd,
-- 
2.42.0


