Return-Path: <devicetree+bounces-844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E01C07A3529
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 12:38:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A379281405
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 10:38:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 587BE187D;
	Sun, 17 Sep 2023 10:38:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 972C715C8
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 10:38:15 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::223])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16646189;
	Sun, 17 Sep 2023 03:38:12 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 2DAAF60008;
	Sun, 17 Sep 2023 10:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arinc9.com; s=gm1;
	t=1694947091;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=b9jlP+QMwX9cNjlMgnqdJZg9rK01wAc9gTFIwnzsuzg=;
	b=nHTzyZ2EcVd9psF16qt1mZ8cCRB6QinrWTD+DAM75wicxUhCkBBMPSgTP/6EPNRnm3SmGS
	7BsoC8FlvsQ5yNFBmLQvLap/v9r+JSMR4PGgUTSHLuYugQeoUuVDrZw1DfnIWdEI1M1ama
	dkV5HQ3bKD/oJkyKI0bkMhic6GydiLVrh7b/ygrOtAUGyfOyCWQJKPZGo5O89Bo8/SoNDw
	BWhIQP8Yx2f124OEBk+LWTObUlMRCWfh4/y4EPx5HYnOy9521x/YwVEeAuFqOMHtMDH+oC
	DAkoGBZZyBPHhnPrvPbK0NTaEtsMVfxUqAjWt/xmISha1ASfUqlyTqmTjrWl5g==
From: =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
To: =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>,
	Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mips@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH] mips: dts: ralink: mt7621: define each reset as an item
Date: Sun, 17 Sep 2023 13:37:53 +0300
Message-Id: <20230917103753.52644-1-arinc.unal@arinc9.com>
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
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Each item of the resets property should define a reset. Split the item with
two resets on the ethernet node into two separate items.

Sort the items of the clocks property to the same line as a trivial change.

Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
---
 arch/mips/boot/dts/ralink/mt7621.dtsi | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/mips/boot/dts/ralink/mt7621.dtsi b/arch/mips/boot/dts/ralink/mt7621.dtsi
index 7caed0d14f11..35a10258f235 100644
--- a/arch/mips/boot/dts/ralink/mt7621.dtsi
+++ b/arch/mips/boot/dts/ralink/mt7621.dtsi
@@ -300,14 +300,13 @@ ethernet: ethernet@1e100000 {
 		compatible = "mediatek,mt7621-eth";
 		reg = <0x1e100000 0x10000>;
 
-		clocks = <&sysc MT7621_CLK_FE>,
-			 <&sysc MT7621_CLK_ETH>;
+		clocks = <&sysc MT7621_CLK_FE>, <&sysc MT7621_CLK_ETH>;
 		clock-names = "fe", "ethif";
 
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		resets = <&sysc MT7621_RST_FE &sysc MT7621_RST_ETH>;
+		resets = <&sysc MT7621_RST_FE>, <&sysc MT7621_RST_ETH>;
 		reset-names = "fe", "eth";
 
 		interrupt-parent = <&gic>;
-- 
2.39.2


