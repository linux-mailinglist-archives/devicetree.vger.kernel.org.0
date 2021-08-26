Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F2B13F8162
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 06:02:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230300AbhHZEDJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 00:03:09 -0400
Received: from lucky1.263xmail.com ([211.157.147.135]:39218 "EHLO
        lucky1.263xmail.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231187AbhHZEDI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Aug 2021 00:03:08 -0400
Received: from localhost (unknown [192.168.167.105])
        by lucky1.263xmail.com (Postfix) with ESMTP id 14E3AB2D94;
        Thu, 26 Aug 2021 12:02:19 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
        by smtp.263.net (postfix) whith ESMTP id P21354T140059187595008S1629950526140784_;
        Thu, 26 Aug 2021 12:02:19 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <b520854d1be45adb60e349fe211d06bc>
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
Subject: [PATCH v3 05/14] ASoC: rockchip: i2s: Fix concurrency between tx/rx
Date:   Thu, 26 Aug 2021 12:01:51 +0800
Message-Id: <1629950520-14190-5-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1629950441-14118-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1629950441-14118-1-git-send-email-sugar.zhang@rock-chips.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds lock to fix comcurrency between tx/rx
to fix 'rockchip-i2s ff070000.i2s; fail to clear'

Considering the situation;

       tx stream              rx stream
           |                      |
           |                   disable
         enable                   |
           |                    reset

After this patch:

         lock
           |
       tx stream
           |
         enable
           |
        unlock
       --------               ---------
                                lock
                                  |
                              rx stream
                                  |
                               disable
                                  |
                                reset
                                  |
                               unlock

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

Changes in v3: None
Changes in v2: None

 sound/soc/rockchip/rockchip_i2s.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index 90877e8..0ba728f 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -15,6 +15,7 @@
 #include <linux/clk.h>
 #include <linux/pm_runtime.h>
 #include <linux/regmap.h>
+#include <linux/spinlock.h>
 #include <sound/pcm_params.h>
 #include <sound/dmaengine_pcm.h>
 
@@ -52,6 +53,9 @@ struct rk_i2s_dev {
 	unsigned int bclk_ratio;
 };
 
+/* tx/rx ctrl lock */
+static DEFINE_SPINLOCK(lock);
+
 static int i2s_runtime_suspend(struct device *dev)
 {
 	struct rk_i2s_dev *i2s = dev_get_drvdata(dev);
@@ -93,6 +97,7 @@ static void rockchip_snd_txctrl(struct rk_i2s_dev *i2s, int on)
 	unsigned int val = 0;
 	int retry = 10;
 
+	spin_lock(&lock);
 	if (on) {
 		regmap_update_bits(i2s->regmap, I2S_DMACR,
 				   I2S_DMACR_TDE_ENABLE, I2S_DMACR_TDE_ENABLE);
@@ -133,6 +138,7 @@ static void rockchip_snd_txctrl(struct rk_i2s_dev *i2s, int on)
 			}
 		}
 	}
+	spin_unlock(&lock);
 }
 
 static void rockchip_snd_rxctrl(struct rk_i2s_dev *i2s, int on)
@@ -140,6 +146,7 @@ static void rockchip_snd_rxctrl(struct rk_i2s_dev *i2s, int on)
 	unsigned int val = 0;
 	int retry = 10;
 
+	spin_lock(&lock);
 	if (on) {
 		regmap_update_bits(i2s->regmap, I2S_DMACR,
 				   I2S_DMACR_RDE_ENABLE, I2S_DMACR_RDE_ENABLE);
@@ -180,6 +187,7 @@ static void rockchip_snd_rxctrl(struct rk_i2s_dev *i2s, int on)
 			}
 		}
 	}
+	spin_unlock(&lock);
 }
 
 static int rockchip_i2s_set_fmt(struct snd_soc_dai *cpu_dai,
-- 
2.7.4



