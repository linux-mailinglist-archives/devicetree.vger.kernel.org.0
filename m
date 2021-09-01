Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 94BEA3FD1FC
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 05:52:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241754AbhIADuS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Aug 2021 23:50:18 -0400
Received: from lucky1.263xmail.com ([211.157.147.131]:55432 "EHLO
        lucky1.263xmail.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241846AbhIADtQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Aug 2021 23:49:16 -0400
Received: from localhost (unknown [192.168.167.172])
        by lucky1.263xmail.com (Postfix) with ESMTP id 1F04BC2C0D;
        Wed,  1 Sep 2021 11:48:18 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
        by smtp.263.net (postfix) whith ESMTP id P6276T140523079702272S1630468091356880_;
        Wed, 01 Sep 2021 11:48:17 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <486f3bb2b2333b201077128edda7fc47>
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
Subject: [PATCH v3 5/7] ASoC: rockchip: pdm: Add support for path map
Date:   Wed,  1 Sep 2021 11:48:01 +0800
Message-Id: <1630468083-7248-5-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1630468039-7186-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1630468039-7186-1-git-send-email-sugar.zhang@rock-chips.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds property 'rockchip,path-map' for path mapping.

e.g.

"rockchip,path-map = <3 2 1 0>" means the mapping as follows:

  path0 <-- sdi3
  path1 <-- sdi2
  path2 <-- sdi1
  path3 <-- sdi0

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

Changes in v3: None
Changes in v2: None

 sound/soc/rockchip/rockchip_pdm.c | 34 ++++++++++++++++++++++++++++++++++
 sound/soc/rockchip/rockchip_pdm.h |  3 +++
 2 files changed, 37 insertions(+)

diff --git a/sound/soc/rockchip/rockchip_pdm.c b/sound/soc/rockchip/rockchip_pdm.c
index f2bf023..64d9891 100644
--- a/sound/soc/rockchip/rockchip_pdm.c
+++ b/sound/soc/rockchip/rockchip_pdm.c
@@ -20,6 +20,7 @@
 
 #define PDM_DMA_BURST_SIZE	(8) /* size * width: 8*4 = 32 bytes */
 #define PDM_SIGNOFF_CLK_RATE	(100000000)
+#define PDM_PATH_MAX		(4)
 
 enum rk_pdm_version {
 	RK_PDM_RK3229,
@@ -539,8 +540,36 @@ static const struct of_device_id rockchip_pdm_match[] __maybe_unused = {
 };
 MODULE_DEVICE_TABLE(of, rockchip_pdm_match);
 
+static int rockchip_pdm_path_parse(struct rk_pdm_dev *pdm, struct device_node *node)
+{
+	unsigned int path[PDM_PATH_MAX];
+	int cnt = 0, ret = 0, i = 0, val = 0, msk = 0;
+
+	cnt = of_count_phandle_with_args(node, "rockchip,path-map",
+					 NULL);
+	if (cnt != PDM_PATH_MAX)
+		return cnt;
+
+	ret = of_property_read_u32_array(node, "rockchip,path-map",
+					 path, cnt);
+	if (ret)
+		return ret;
+
+	for (i = 0; i < cnt; i++) {
+		if (path[i] >= PDM_PATH_MAX)
+			return -EINVAL;
+		msk |= PDM_PATH_MASK(i);
+		val |= PDM_PATH(i, path[i]);
+	}
+
+	regmap_update_bits(pdm->regmap, PDM_CLK_CTRL, msk, val);
+
+	return 0;
+}
+
 static int rockchip_pdm_probe(struct platform_device *pdev)
 {
+	struct device_node *node = pdev->dev.of_node;
 	const struct of_device_id *match;
 	struct rk_pdm_dev *pdm;
 	struct resource *res;
@@ -606,6 +635,11 @@ static int rockchip_pdm_probe(struct platform_device *pdev)
 	}
 
 	rockchip_pdm_rxctrl(pdm, 0);
+
+	ret = rockchip_pdm_path_parse(pdm, node);
+	if (ret != 0 && ret != -ENOENT)
+		goto err_suspend;
+
 	ret = devm_snd_dmaengine_pcm_register(&pdev->dev, NULL, 0);
 	if (ret) {
 		dev_err(&pdev->dev, "could not register pcm: %d\n", ret);
diff --git a/sound/soc/rockchip/rockchip_pdm.h b/sound/soc/rockchip/rockchip_pdm.h
index 13bfbc2..cab9772 100644
--- a/sound/soc/rockchip/rockchip_pdm.h
+++ b/sound/soc/rockchip/rockchip_pdm.h
@@ -53,6 +53,9 @@
 #define PDM_FD_DENOMINATOR_MSK	GENMASK(15, 0)
 
 /* PDM CLK CTRL */
+#define PDM_PATH_SHIFT(x)	(8 + (x) * 2)
+#define PDM_PATH_MASK(x)	(0x3 << PDM_PATH_SHIFT(x))
+#define PDM_PATH(x, v)		((v) << PDM_PATH_SHIFT(x))
 #define PDM_CLK_FD_RATIO_MSK	BIT(6)
 #define PDM_CLK_FD_RATIO_40	(0X0 << 6)
 #define PDM_CLK_FD_RATIO_35	BIT(6)
-- 
2.7.4



