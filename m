Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1918E173522
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2020 11:18:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726714AbgB1KSP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Feb 2020 05:18:15 -0500
Received: from lucky1.263xmail.com ([211.157.147.132]:53144 "EHLO
        lucky1.263xmail.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726748AbgB1KSP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Feb 2020 05:18:15 -0500
Received: from localhost (unknown [192.168.167.8])
        by lucky1.263xmail.com (Postfix) with ESMTP id 555FCA1E98;
        Fri, 28 Feb 2020 18:01:49 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
        by smtp.263.net (postfix) whith ESMTP id P12225T140183993132800S1582884093668539_;
        Fri, 28 Feb 2020 18:01:49 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <8bee6ba962c1f6e2ebfdeb9144fdcb05>
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
Subject: [PATCH 3/3] MAINTAINERS: add maintainers to rockchip nfc
Date:   Fri, 28 Feb 2020 18:01:16 +0800
Message-Id: <1582884076-27615-4-git-send-email-yifeng.zhao@rock-chips.com>
X-Mailer: git-send-email 2.0.0
In-Reply-To: <1582884076-27615-1-git-send-email-yifeng.zhao@rock-chips.com>
References: <1582884076-27615-1-git-send-email-yifeng.zhao@rock-chips.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
---

 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 4017e6b760be..79cfad293549 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2242,6 +2242,7 @@ L:	linux-rockchip@lists.infradead.org
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git
 S:	Maintained
 F:	Documentation/devicetree/bindings/i2c/i2c-rk3x.txt
+F:	Documentation/devicetree/bindings/*/*rockchip*.yaml
 F:	arch/arm/boot/dts/rk3*
 F:	arch/arm/boot/dts/rv1108*
 F:	arch/arm/mach-rockchip/
@@ -2249,6 +2250,7 @@ F:	drivers/clk/rockchip/
 F:	drivers/i2c/busses/i2c-rk3x.c
 F:	drivers/*/*rockchip*
 F:	drivers/*/*/*rockchip*
+F:	drivers/*/*/*/*rockchip*
 F:	sound/soc/rockchip/
 N:	rockchip
 
-- 
2.17.1



