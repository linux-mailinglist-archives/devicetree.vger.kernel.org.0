Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CD4F23F87B1
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 14:39:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234812AbhHZMjr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 08:39:47 -0400
Received: from lucky1.263xmail.com ([211.157.147.134]:60232 "EHLO
        lucky1.263xmail.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241190AbhHZMjr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Aug 2021 08:39:47 -0400
Received: from localhost (unknown [192.168.167.235])
        by lucky1.263xmail.com (Postfix) with ESMTP id 50DDCCF6E3;
        Thu, 26 Aug 2021 20:38:50 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
        by smtp.263.net (postfix) whith ESMTP id P32763T139761010153216S1629981525980003_;
        Thu, 26 Aug 2021 20:38:51 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <a599fea80fd4ac406c3f68b214458503>
X-RL-SENDER: yifeng.zhao@rock-chips.com
X-SENDER: zyf@rock-chips.com
X-LOGIN-NAME: yifeng.zhao@rock-chips.com
X-FST-TO: heiko@sntech.de
X-RCPT-COUNT: 12
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From:   Yifeng Zhao <yifeng.zhao@rock-chips.com>
To:     heiko@sntech.de, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, vkoul@kernel.org,
        michael.riesch@wolfvision.net, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, kishon@ti.com,
        p.zabel@pengutronix.de, Yifeng Zhao <yifeng.zhao@rock-chips.com>
Subject: [PATCH v1 0/3] 
Date:   Thu, 26 Aug 2021 20:38:41 +0800
Message-Id: <20210826123844.8464-1-yifeng.zhao@rock-chips.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add Naneng combo PHY support for RK3568

This phy can be used as pcie-phy, usb3-phy, sata-phy or sgmii-phy.



Yifeng Zhao (3):
  dt-bindings: phy: rockchip: Add Naneng combo PHY bindings
  phy/rockchip: add naneng combo phy for RK3568
  arm64: dts: rockchip: add naneng combo phy nodes for rk3568

 .../phy/phy-rockchip-naneng-combphy.yaml      | 100 +++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  68 ++
 drivers/phy/rockchip/Kconfig                  |   8 +
 drivers/phy/rockchip/Makefile                 |   1 +
 .../rockchip/phy-rockchip-naneng-combphy.c    | 646 ++++++++++++++++++
 5 files changed, 823 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
 create mode 100644 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c

-- 
2.17.1



