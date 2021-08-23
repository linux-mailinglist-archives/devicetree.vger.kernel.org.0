Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 39AD73F4908
	for <lists+devicetree@lfdr.de>; Mon, 23 Aug 2021 12:53:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236273AbhHWKyP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Aug 2021 06:54:15 -0400
Received: from lucky1.263xmail.com ([211.157.147.132]:33964 "EHLO
        lucky1.263xmail.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236274AbhHWKyF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Aug 2021 06:54:05 -0400
Received: from localhost (unknown [192.168.167.224])
        by lucky1.263xmail.com (Postfix) with ESMTP id 89B59FB6AB;
        Mon, 23 Aug 2021 18:53:21 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
        by smtp.263.net (postfix) whith ESMTP id P22031T140205908551424S1629715992162978_;
        Mon, 23 Aug 2021 18:53:15 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <a83add3348000e17268c56254b1406d0>
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
Subject: [PATCH 09/15] ASoC: rockchip: i2s: Add property to specify play/cap capability
Date:   Mon, 23 Aug 2021 18:53:04 +0800
Message-Id: <1629715990-21372-5-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1629715710-21137-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1629715710-21137-1-git-send-email-sugar.zhang@rock-chips.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

- 'rockchip,playback-only': support playback only.
- 'rockchip,capture-only': support capture only.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
Change-Id: Ie022214de4e42bba5ba898ea39a4e39807e8d4ab
---
 sound/soc/rockchip/rockchip_i2s.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index 8a432ae..cedfe47 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -721,6 +721,11 @@ static int rockchip_i2s_probe(struct platform_device *pdev)
 			soc_dai->capture.channels_max = val;
 	}
 
+	if (of_property_read_bool(node, "rockchip,playback-only"))
+		soc_dai->capture.channels_min = 0;
+	else if (of_property_read_bool(node, "rockchip,capture-only"))
+		soc_dai->playback.channels_min = 0;
+
 	ret = devm_snd_soc_register_component(&pdev->dev,
 					      &rockchip_i2s_component,
 					      soc_dai, 1);
-- 
2.7.4



