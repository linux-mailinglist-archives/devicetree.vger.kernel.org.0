Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A9E93F815D
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 06:02:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229463AbhHZEC5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 00:02:57 -0400
Received: from lucky1.263xmail.com ([211.157.147.133]:56700 "EHLO
        lucky1.263xmail.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230076AbhHZEC5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Aug 2021 00:02:57 -0400
Received: from localhost (unknown [192.168.167.105])
        by lucky1.263xmail.com (Postfix) with ESMTP id 1FD71D623F;
        Thu, 26 Aug 2021 12:02:09 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
        by smtp.263.net (postfix) whith ESMTP id P21354T140059187595008S1629950526140784_;
        Thu, 26 Aug 2021 12:02:08 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <45a58f8c817b59afc0ecb8c7a6f67f7f>
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
Subject: [PATCH v3 02/14] ASoC: rockchip: i2s: Fixup clk div error
Date:   Thu, 26 Aug 2021 12:01:48 +0800
Message-Id: <1629950520-14190-2-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1629950441-14118-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1629950441-14118-1-git-send-email-sugar.zhang@rock-chips.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

MCLK maybe not precise as required because of PLL,
but which still can be used and no side effect. so,
using DIV_ROUND_CLOSEST instead div.

e.g.

set mclk to 11289600 Hz, but get 11289598 Hz.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

Changes in v3: None
Changes in v2: None

 sound/soc/rockchip/rockchip_i2s.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index c9d5c52..05fce2c 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -280,10 +280,10 @@ static int rockchip_i2s_hw_params(struct snd_pcm_substream *substream,
 	if (i2s->is_master_mode) {
 		mclk_rate = clk_get_rate(i2s->mclk);
 		bclk_rate = i2s->bclk_ratio * params_rate(params);
-		if (bclk_rate == 0 || mclk_rate % bclk_rate)
+		if (!bclk_rate)
 			return -EINVAL;
 
-		div_bclk = mclk_rate / bclk_rate;
+		div_bclk = DIV_ROUND_CLOSEST(mclk_rate, bclk_rate);
 		div_lrck = bclk_rate / params_rate(params);
 		regmap_update_bits(i2s->regmap, I2S_CKR,
 				   I2S_CKR_MDIV_MASK,
-- 
2.7.4



