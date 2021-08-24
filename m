Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 09CAB3F5ADB
	for <lists+devicetree@lfdr.de>; Tue, 24 Aug 2021 11:19:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235435AbhHXJTx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Aug 2021 05:19:53 -0400
Received: from lucky1.263xmail.com ([211.157.147.132]:52820 "EHLO
        lucky1.263xmail.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235463AbhHXJTo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Aug 2021 05:19:44 -0400
Received: from localhost (unknown [192.168.167.16])
        by lucky1.263xmail.com (Postfix) with ESMTP id 85918FB499;
        Tue, 24 Aug 2021 17:18:57 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
        by smtp.263.net (postfix) whith ESMTP id P704T139881214887680S1629796736938922_;
        Tue, 24 Aug 2021 17:18:58 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <004b5ec1c10a4f49468917d115dad3fb>
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
Subject: [PATCH v2 11/15] ASoC: rockchip: i2s: Add compatible for more SoCs
Date:   Tue, 24 Aug 2021 17:18:50 +0800
Message-Id: <1629796734-4243-1-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1629796561-4025-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1629796561-4025-1-git-send-email-sugar.zhang@rock-chips.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds more compatible strings for SoCs.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

Changes in v2: None

 sound/soc/rockchip/rockchip_i2s.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index 90580dc..8898ba4 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -613,10 +613,20 @@ static const struct rk_i2s_pins rk3399_i2s_pins = {
 };
 
 static const struct of_device_id rockchip_i2s_match[] __maybe_unused = {
+	{ .compatible = "rockchip,px30-i2s", },
+	{ .compatible = "rockchip,rk1808-i2s", },
+	{ .compatible = "rockchip,rk3036-i2s", },
 	{ .compatible = "rockchip,rk3066-i2s", },
+	{ .compatible = "rockchip,rk3128-i2s", },
 	{ .compatible = "rockchip,rk3188-i2s", },
+	{ .compatible = "rockchip,rk3228-i2s", },
 	{ .compatible = "rockchip,rk3288-i2s", },
+	{ .compatible = "rockchip,rk3308-i2s", },
+	{ .compatible = "rockchip,rk3328-i2s", },
+	{ .compatible = "rockchip,rk3366-i2s", },
+	{ .compatible = "rockchip,rk3368-i2s", },
 	{ .compatible = "rockchip,rk3399-i2s", .data = &rk3399_i2s_pins },
+	{ .compatible = "rockchip,rv1126-i2s", },
 	{},
 };
 
-- 
2.7.4



