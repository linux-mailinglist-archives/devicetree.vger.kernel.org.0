Return-Path: <devicetree+bounces-664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDCB7A2915
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 23:12:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E46E11C20A35
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 21:12:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AC811B296;
	Fri, 15 Sep 2023 21:12:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8E651B275
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 21:12:15 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 126D219E;
	Fri, 15 Sep 2023 14:12:11 -0700 (PDT)
Received: from localhost (89-26-75-29.dyn.cablelink.at [89.26.75.29])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sebastianfricke)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C1C056607326;
	Fri, 15 Sep 2023 22:12:09 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1694812329;
	bh=bYLYR835uDXMEL/Pj2+98z3BbfLx3uwnjanJiXP0eRY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=TQ+YkK+gpa+RQR1tayz/p4ym9lJK+x7P1J6dv9rb37mBkSpQArzWnnAHinOQJp1Ej
	 vgT4cpePR7ujKkRz8grqjxufeZrFq+RMyGbpA9YnOp8RlwHq6X6WDISs4Ex/4U2l/N
	 lRsVlk77pfUhmRikXC7aWWCHS/aldnqzq8x3T9wi1jomqNIAZbtcHMaiuxx3iN3cfZ
	 got4k7pjPSxoJAi1BGoVTRMkCuhepZBt2DjBiobMyOAgX4zGYi6BTwZMlJ4H3664zg
	 veanXU/Q6adBvHTU8/UARCsSy8e9QFtvWYEEd96P6tGHbDI/OvduJgIi3BofSrs0/t
	 df7YDBs87rEiw==
From: Sebastian Fricke <sebastian.fricke@collabora.com>
Date: Fri, 15 Sep 2023 23:11:36 +0200
Subject: [PATCH v12 7/7] media: chips-media: wave5: Add wave5 driver to
 maintainers file
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id:
 <20230915-wave5_v12_on_media_master-v12-7-92fc66cd685d@collabora.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1694812307; l=1012;
 i=sebastian.fricke@collabora.com; s=linux-media; h=from:subject:message-id;
 bh=oe7G1BPYvCGvF+TquXvdzFGyRHh7qNc/vt2UNcQusZA=;
 b=DOeNLhi2ebCCtD0TaZNM6efAQsWbAp17fUrDJm+l5CsR+H0mAxpG7BGKiUpjXEKCS0dCJCi3W/Vd
 eRKGzy6jAP9x7nsffTNGEVzhn0ShuAD+u7Bu4Scp6HMVg94NNvJM
X-Developer-Key: i=sebastian.fricke@collabora.com; a=ed25519;
 pk=pYXedPwrTtErcj7ERYeo/IpTrpe4QbJuEzSB52fslBg=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Robert Beckett <bob.beckett@collabora.com>

Add the Chips&Media wave5 encoder/decoder driver to the maintainers file

Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 063a11791bbf..b6a592c14caa 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -23206,6 +23206,14 @@ F:	include/linux/watchdog.h
 F:	include/trace/events/watchdog.h
 F:	include/uapi/linux/watchdog.h
 
+WAVE5 VPU CODEC DRIVER
+M:	Nas Chung <nas.chung@chipsnmedia.com>
+M:	Jackson Lee <jackson.lee@chipsnmedia.com>
+L:	linux-media@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/media/cnm,wave5.yaml
+F:	drivers/media/platform/chips-media/wave5/
+
 WHISKEYCOVE PMIC GPIO DRIVER
 M:	Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>
 L:	linux-gpio@vger.kernel.org

-- 
2.25.1

