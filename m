Return-Path: <devicetree+bounces-239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A03C77A07A2
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 16:46:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 50CF7281CB6
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 14:46:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BB1E210EA;
	Thu, 14 Sep 2023 14:39:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6D39210E6;
	Thu, 14 Sep 2023 14:39:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10EDEC433D9;
	Thu, 14 Sep 2023 14:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694702362;
	bh=3r82y1pgCz3z5rfJXgtl4TIaNeByv4XWt/0bOvFdPxI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=eZp4wlOv5KSHGEkkqKweIy/eEoPd/Eyd8ZFlyY/6PZPA3nLEfAjcHYum3GMFXt42P
	 lDrncaOxqoxXfq8efsMosdPCEyhK/w6bfPtb6UkhlRZ1CEOpyz7DT7TNU5ivVuyv6B
	 dMH2+gdt7pL90zfHmvrS63FK0cEyutxIc+azokCEc9pTQYUu0j14D494ecjbl78K/o
	 LFclDexGdY2c2PMGN5RYjJPAHh+Wdt6ZR+gSkzrXsTZC5Lq8izi9ZGAqQDpXzmiZNi
	 wdMJdQ5mQkY0xZSUbyYLsCSaJfEBi/VRVyYijHEAVTM9wu5s/mUv+u8vv3Pvm3RGLA
	 35s4wrUE4JqVA==
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: netdev@vger.kernel.org
Cc: lorenzo.bianconi@redhat.com,
	nbd@nbd.name,
	john@phrozen.org,
	sean.wang@mediatek.com,
	Mark-MC.Lee@mediatek.com,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	daniel@makrotopia.org,
	linux-mediatek@lists.infradead.org,
	sujuan.chen@mediatek.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org
Subject: [PATCH net-next 04/15] net: ethernet: mtk_wed: introduce mtk_wed_wdma_get_desc_size utility routine
Date: Thu, 14 Sep 2023 16:38:09 +0200
Message-ID: <d3197d9a411d7df511b8262c129da6f5d561c35e.1694701767.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <cover.1694701767.git.lorenzo@kernel.org>
References: <cover.1694701767.git.lorenzo@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is a preliminary patch to introduce Wireless Ethernet Dispatcher
support for MT7988 SoC.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/net/ethernet/mediatek/mtk_wed.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/mediatek/mtk_wed.c b/drivers/net/ethernet/mediatek/mtk_wed.c
index ce1ca98ea1d6..ac284b1e599f 100644
--- a/drivers/net/ethernet/mediatek/mtk_wed.c
+++ b/drivers/net/ethernet/mediatek/mtk_wed.c
@@ -1245,11 +1245,20 @@ mtk_wed_ring_alloc(struct mtk_wed_device *dev, struct mtk_wed_ring *ring,
 	return 0;
 }
 
+static u32
+mtk_wed_wdma_get_desc_size(struct mtk_wed_hw *hw)
+{
+	if (mtk_wed_is_v1(hw))
+		return sizeof(struct mtk_wdma_desc);
+
+	return 2 * sizeof(struct mtk_wdma_desc);
+}
+
 static int
 mtk_wed_wdma_rx_ring_setup(struct mtk_wed_device *dev, int idx, int size,
 			   bool reset)
 {
-	u32 desc_size = sizeof(struct mtk_wdma_desc) * dev->hw->version;
+	u32 desc_size = mtk_wed_wdma_get_desc_size(dev->hw);
 	struct mtk_wed_ring *wdma;
 
 	if (idx >= ARRAY_SIZE(dev->rx_wdma))
@@ -1278,7 +1287,7 @@ static int
 mtk_wed_wdma_tx_ring_setup(struct mtk_wed_device *dev, int idx, int size,
 			   bool reset)
 {
-	u32 desc_size = sizeof(struct mtk_wdma_desc) * dev->hw->version;
+	u32 desc_size = mtk_wed_wdma_get_desc_size(dev->hw);
 	struct mtk_wed_ring *wdma;
 
 	if (idx >= ARRAY_SIZE(dev->tx_wdma))
-- 
2.41.0


