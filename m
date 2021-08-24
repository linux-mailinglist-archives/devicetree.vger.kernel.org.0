Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C143B3F5ACD
	for <lists+devicetree@lfdr.de>; Tue, 24 Aug 2021 11:17:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235564AbhHXJSL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Aug 2021 05:18:11 -0400
Received: from lucky1.263xmail.com ([211.157.147.131]:40840 "EHLO
        lucky1.263xmail.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235677AbhHXJSL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Aug 2021 05:18:11 -0400
Received: from localhost (unknown [192.168.167.16])
        by lucky1.263xmail.com (Postfix) with ESMTP id 34615C2AA7;
        Tue, 24 Aug 2021 17:17:26 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
        by smtp.263.net (postfix) whith ESMTP id P704T139881235867392S1629796642328500_;
        Tue, 24 Aug 2021 17:17:26 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <af4460724b95081a2b81cecafd31b63f>
X-RL-SENDER: sugar.zhang@rock-chips.com
X-SENDER: zxg@rock-chips.com
X-LOGIN-NAME: sugar.zhang@rock-chips.com
X-FST-TO: broonie@kernel.org
X-RCPT-COUNT: 6
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From:   Sugar Zhang <sugar.zhang@rock-chips.com>
To:     broonie@kernel.org, heiko@sntech.de
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org,
        Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: [PATCH v2 03/15] ASoC: rockchip: i2s: Improve dma data transfer efficiency
Date:   Tue, 24 Aug 2021 17:17:02 +0800
Message-Id: <1629796634-4095-3-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1629796561-4025-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1629796561-4025-1-git-send-email-sugar.zhang@rock-chips.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch changes dma data burst from 4 to 8 to improve
data transfer efficiency.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

Changes in v2: None

 sound/soc/rockchip/rockchip_i2s.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index 05fce2c..2e0047d 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -644,11 +644,11 @@ static int rockchip_i2s_probe(struct platform_device *pdev)
 
 	i2s->playback_dma_data.addr = res->start + I2S_TXDR;
 	i2s->playback_dma_data.addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
-	i2s->playback_dma_data.maxburst = 4;
+	i2s->playback_dma_data.maxburst = 8;
 
 	i2s->capture_dma_data.addr = res->start + I2S_RXDR;
 	i2s->capture_dma_data.addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
-	i2s->capture_dma_data.maxburst = 4;
+	i2s->capture_dma_data.maxburst = 8;
 
 	i2s->bclk_ratio = 64;
 
-- 
2.7.4



