Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 66CC11B8EAD
	for <lists+devicetree@lfdr.de>; Sun, 26 Apr 2020 12:05:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726139AbgDZKFX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Apr 2020 06:05:23 -0400
Received: from lucky1.263xmail.com ([211.157.147.135]:55680 "EHLO
        lucky1.263xmail.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726118AbgDZKFX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Apr 2020 06:05:23 -0400
Received: from localhost (unknown [192.168.167.16])
        by lucky1.263xmail.com (Postfix) with ESMTP id 784547C9E2;
        Sun, 26 Apr 2020 18:03:13 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from ubuntu18.lan (unknown [58.22.7.114])
        by smtp.263.net (postfix) whith ESMTP id P19267T139854424778496S1587895377527434_;
        Sun, 26 Apr 2020 18:03:14 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <4891490ec8d8d35f5ceb7b84963aedd4>
X-RL-SENDER: yifeng.zhao@rock-chips.com
X-SENDER: zyf@rock-chips.com
X-LOGIN-NAME: yifeng.zhao@rock-chips.com
X-FST-TO: miquel.raynal@bootlin.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From:   Yifeng Zhao <yifeng.zhao@rock-chips.com>
To:     miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-mtd@lists.infradead.org,
        heiko@sntech.de, linux-rockchip@lists.infradead.org,
        Yifeng Zhao <yifeng.zhao@rock-chips.com>
Subject: [PATCH v5 3/7] MAINTAINERS: add maintainers to rockchip nfc
Date:   Sun, 26 Apr 2020 18:02:46 +0800
Message-Id: <20200426100250.14678-4-yifeng.zhao@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200426100250.14678-1-yifeng.zhao@rock-chips.com>
References: <20200426100250.14678-1-yifeng.zhao@rock-chips.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
---

Changes in v5: None
Changes in v4: None
Changes in v3: None
Changes in v2: None

 MAINTAINERS | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 58725773cec4..187415b1481a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2308,11 +2308,11 @@ L:	linux-rockchip@lists.infradead.org
 S:	Maintained
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git
 F:	Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
-F:	Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
-F:	Documentation/devicetree/bindings/spi/spi-rockchip.yaml
+F:	Documentation/devicetree/bindings/*/*rockchip*.yaml
 F:	arch/arm/boot/dts/rk3*
 F:	arch/arm/boot/dts/rv1108*
 F:	arch/arm/mach-rockchip/
+F:	drivers/*/*/*/*rockchip*
 F:	drivers/*/*/*rockchip*
 F:	drivers/*/*rockchip*
 F:	drivers/clk/rockchip/
-- 
2.17.1



