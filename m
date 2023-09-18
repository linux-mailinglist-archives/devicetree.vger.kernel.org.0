Return-Path: <devicetree+bounces-978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 315097A43BE
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 10:00:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 30BD31C20CE9
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 08:00:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB32133E2;
	Mon, 18 Sep 2023 08:00:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D36986FD0
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 08:00:53 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::227])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99B2BCFB;
	Mon, 18 Sep 2023 00:59:30 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 7888E20003;
	Mon, 18 Sep 2023 07:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arinc9.com; s=gm1;
	t=1695023968;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=A60OSmANdEj1qdlQAPPS0Wy4M2HCzCwvUt3i18ClpfU=;
	b=WoNKxA2JwenWUdbj4rcD0ooJY/T0jemtRMr1pLi0jbUxp0obE6v/QGaZ25JniMN8dnv4Bm
	yKcjINMmqKJ0R9bR9UmSie4I1NGz/xvHmzSlvuNVkceS5+O5SlgPkVybsiYVI55mc58NTF
	A8Td2/fNDiMsSUDfbpDoJ9YHNvXrL6AQGw5JcTuVZ29A/cu+djArUiUBi5I3GRRyX4kBIH
	VlvaJb1k4aZxm7fOEDAoix1KashvQGL+qDZuaH+KaXN+4TAxtK6oJqIrY+7Bmy9lt/wNm8
	q8AKShrI4Za+QHqbX5sHPuQitldi3hXGADn/9e5XS7nTvv2jI2SYcmJtb13sVg==
From: =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
To: =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>,
	Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-mips@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH] mips: dts: ralink: mt7621: rename to GnuBee GB-PC1 and GnuBee GB-PC2
Date: Mon, 18 Sep 2023 10:59:15 +0300
Message-Id: <20230918075915.87029-1-arinc.unal@arinc9.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: arinc.unal@arinc9.com
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Rename GB-PC1 to GnuBee GB-PC1, and GB-PC2 to GnuBee GB-PC2 to include
brand and model name.

Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
---
 arch/mips/boot/dts/ralink/mt7621-gnubee-gb-pc1.dts | 2 +-
 arch/mips/boot/dts/ralink/mt7621-gnubee-gb-pc2.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/mips/boot/dts/ralink/mt7621-gnubee-gb-pc1.dts b/arch/mips/boot/dts/ralink/mt7621-gnubee-gb-pc1.dts
index 129b6710b699..f9c262cc2e96 100644
--- a/arch/mips/boot/dts/ralink/mt7621-gnubee-gb-pc1.dts
+++ b/arch/mips/boot/dts/ralink/mt7621-gnubee-gb-pc1.dts
@@ -8,7 +8,7 @@
 
 / {
 	compatible = "gnubee,gb-pc1", "mediatek,mt7621-soc";
-	model = "GB-PC1";
+	model = "GnuBee GB-PC1";
 
 	memory@0 {
 		device_type = "memory";
diff --git a/arch/mips/boot/dts/ralink/mt7621-gnubee-gb-pc2.dts b/arch/mips/boot/dts/ralink/mt7621-gnubee-gb-pc2.dts
index f810cd10f4f4..b281e13f22ed 100644
--- a/arch/mips/boot/dts/ralink/mt7621-gnubee-gb-pc2.dts
+++ b/arch/mips/boot/dts/ralink/mt7621-gnubee-gb-pc2.dts
@@ -8,7 +8,7 @@
 
 / {
 	compatible = "gnubee,gb-pc2", "mediatek,mt7621-soc";
-	model = "GB-PC2";
+	model = "GnuBee GB-PC2";
 
 	memory@0 {
 		device_type = "memory";
-- 
2.39.2


