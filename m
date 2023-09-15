Return-Path: <devicetree+bounces-661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB5B7A290C
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 23:12:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 97CA51C20A69
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 21:12:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39CAB1B28C;
	Fri, 15 Sep 2023 21:11:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 726061B275
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 21:11:57 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3874BA0;
	Fri, 15 Sep 2023 14:11:56 -0700 (PDT)
Received: from localhost (89-26-75-29.dyn.cablelink.at [89.26.75.29])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sebastianfricke)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id EC5DD660731C;
	Fri, 15 Sep 2023 22:11:54 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1694812315;
	bh=10L+mW/hGohZLpaKH+R8m7hSr+3EWsY0PRUN1tnoT/c=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=luJd27SFRJewaQNV4dtRjlYcK3YYG0+yrP7S3Ejo+aHUzl6PYjmX1iLhRIMibyAI0
	 LEw3K2Nob6R45JR9IcjkofDvbUI84oQQ7bkXyqxXzkybxqluoOK3ReU+npZTh2mba1
	 BAq5lGgRyWRWq4qHOeKom5WKhlTB3AfDLrH+LaSyD90Ea0XCzXZoqH/xcvtOPLBqF+
	 WesNW0bkB8TO3jxxVJI93Co7qhRb86cGtwy7oD/WWojCA80YAhyQA/UstsmU5on9DJ
	 MfSwpeFLMtrwUbFPlHOgwaK+nzbPiXhWg8yVPmDgtu2Jy6gERBfKUj7S9jSCqrXdao
	 mypczTAlLEo5A==
From: Sebastian Fricke <sebastian.fricke@collabora.com>
Date: Fri, 15 Sep 2023 23:11:31 +0200
Subject:
 [PATCH v12 2/7] media: v4l2: Allow M2M job queuing w/o streaming CAP queue
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id:
 <20230915-wave5_v12_on_media_master-v12-2-92fc66cd685d@collabora.com>
References:
 <20230915-wave5_v12_on_media_master-v12-0-92fc66cd685d@collabora.com>
In-Reply-To:
 <20230915-wave5_v12_on_media_master-v12-0-92fc66cd685d@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nas Chung <nas.chung@chipsnmedia.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Jackson Lee <jackson.lee@chipsnmedia.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Conor Dooley <conor+dt@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sebastian Fricke <sebastian.fricke@collabora.com>,
 Robert Beckett <bob.beckett@collabora.com>, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
X-Mailer: b4 0.11.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1694812307; l=1354;
 i=sebastian.fricke@collabora.com; s=linux-media; h=from:subject:message-id;
 bh=10L+mW/hGohZLpaKH+R8m7hSr+3EWsY0PRUN1tnoT/c=;
 b=WsenXnltqRAyMoRQG6+C77rrc/du2DWnzPMg8BN3t0PH7d0f1LxxPeOZkqgpxEGWILK3t6f7o3q4
 FVh3ZxNUBWlHE+gFBsaJr3cRFKWABwn6t4/AtcDRc4Bx2Ph82omb
X-Developer-Key: i=sebastian.fricke@collabora.com; a=ed25519;
 pk=pYXedPwrTtErcj7ERYeo/IpTrpe4QbJuEzSB52fslBg=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Allow decoder drivers to enable set the ignore_streaming flag on their
CAPTURE queue, to allow queuing jobs to the M2M ready queue and perform
firmware sequence analysis with just a streaming OUTPUT queue and
available bitstream data.

Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
 drivers/media/v4l2-core/v4l2-mem2mem.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/media/v4l2-core/v4l2-mem2mem.c b/drivers/media/v4l2-core/v4l2-mem2mem.c
index 0cc30397fbad..2dbbe93be257 100644
--- a/drivers/media/v4l2-core/v4l2-mem2mem.c
+++ b/drivers/media/v4l2-core/v4l2-mem2mem.c
@@ -301,9 +301,12 @@ static void __v4l2_m2m_try_queue(struct v4l2_m2m_dev *m2m_dev,
 
 	dprintk("Trying to schedule a job for m2m_ctx: %p\n", m2m_ctx);
 
-	if (!m2m_ctx->out_q_ctx.q.streaming
-	    || !m2m_ctx->cap_q_ctx.q.streaming) {
-		dprintk("Streaming needs to be on for both queues\n");
+	if (!m2m_ctx->out_q_ctx.q.streaming ||
+	    (!m2m_ctx->cap_q_ctx.q.streaming && !m2m_ctx->cap_q_ctx.ignore_streaming)) {
+		if (!m2m_ctx->cap_q_ctx.ignore_streaming)
+			dprintk("Streaming needs to be on for both queues\n");
+		else
+			dprintk("Streaming needs to be on for the OUTPUT queue\n");
 		return;
 	}
 

-- 
2.25.1

