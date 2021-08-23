Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 396EE3F4915
	for <lists+devicetree@lfdr.de>; Mon, 23 Aug 2021 12:54:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236318AbhHWKzX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Aug 2021 06:55:23 -0400
Received: from lucky1.263xmail.com ([211.157.147.132]:35134 "EHLO
        lucky1.263xmail.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236301AbhHWKzX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Aug 2021 06:55:23 -0400
Received: from localhost (unknown [192.168.167.225])
        by lucky1.263xmail.com (Postfix) with ESMTP id F36DBFB5F6;
        Mon, 23 Aug 2021 18:54:38 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
        by smtp.263.net (postfix) whith ESMTP id P10596T140297356953344S1629716077595046_;
        Mon, 23 Aug 2021 18:54:39 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <7744b2575fba8ab9f2f9be421384bba5>
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
Subject: [PATCH 11/15] ASoC: rockchip: i2s: Add compatible for more SoCs
Date:   Mon, 23 Aug 2021 18:54:32 +0800
Message-Id: <1629716076-21465-2-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1629715710-21137-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1629715710-21137-1-git-send-email-sugar.zhang@rock-chips.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds more compatible strings for SoCs.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
Change-Id: I980a7c34a7f6c82a066a37e7f97fa4e69cbae583
---
 sound/soc/rockchip/rockchip_i2s.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index cedfe47..a0f2778 100644
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



