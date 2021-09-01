Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 958CC3FD1EE
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 05:48:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241841AbhIADtM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Aug 2021 23:49:12 -0400
Received: from lucky1.263xmail.com ([211.157.147.134]:35920 "EHLO
        lucky1.263xmail.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241824AbhIADtM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Aug 2021 23:49:12 -0400
Received: from localhost (unknown [192.168.167.172])
        by lucky1.263xmail.com (Postfix) with ESMTP id 2544FCFAB9;
        Wed,  1 Sep 2021 11:48:14 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
        by smtp.263.net (postfix) whith ESMTP id P6276T140523079702272S1630468091356880_;
        Wed, 01 Sep 2021 11:48:13 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <3715cb9d071067ae54ec1847f9243f15>
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
Subject: [PATCH v3 2/7] ASoC: dt-bindings: rockchip: Add binding for rv1126 pdm
Date:   Wed,  1 Sep 2021 11:47:58 +0800
Message-Id: <1630468083-7248-2-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1630468039-7186-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1630468039-7186-1-git-send-email-sugar.zhang@rock-chips.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch documents for rv1126 pdm.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

Changes in v3: None
Changes in v2: None

 Documentation/devicetree/bindings/sound/rockchip,pdm.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/rockchip,pdm.txt b/Documentation/devicetree/bindings/sound/rockchip,pdm.txt
index 98572a2..60e8630 100644
--- a/Documentation/devicetree/bindings/sound/rockchip,pdm.txt
+++ b/Documentation/devicetree/bindings/sound/rockchip,pdm.txt
@@ -6,6 +6,7 @@ Required properties:
   - "rockchip,px30-pdm"
   - "rockchip,rk1808-pdm"
   - "rockchip,rk3308-pdm"
+  - "rockchip,rv1126-pdm"
 - reg: physical base address of the controller and length of memory mapped
   region.
 - dmas: DMA specifiers for rx dma. See the DMA client binding,
-- 
2.7.4



