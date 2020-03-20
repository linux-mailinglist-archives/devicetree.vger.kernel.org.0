Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 96EBF18CA73
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2020 10:34:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726789AbgCTJeJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Mar 2020 05:34:09 -0400
Received: from lucky1.263xmail.com ([211.157.147.130]:55208 "EHLO
        lucky1.263xmail.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726602AbgCTJeJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Mar 2020 05:34:09 -0400
Received: from localhost (unknown [192.168.167.32])
        by lucky1.263xmail.com (Postfix) with ESMTP id BBD2898A8E;
        Fri, 20 Mar 2020 17:34:03 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from ubuntu18.lan (unknown [58.22.7.114])
        by smtp.263.net (postfix) whith ESMTP id P19134T140660085376768S1584696835111908_;
        Fri, 20 Mar 2020 17:34:01 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <a2788f8beebf89e9311c37ca470a0cdd>
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
Subject: [PATCH v4 0/3] Add Rockchip NFC drivers for RK3308 and others
Date:   Fri, 20 Mar 2020 17:33:39 +0800
Message-Id: <20200320093342.15470-1-yifeng.zhao@rock-chips.com>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Rockchp's NFC(Nand Flash Controller) has three versions: V6, V8 and V9.
This series patch can support all  three versions.


Changes in v4:
- Define platform data structure for the register offsets.
- The compatible define with rkxx_nfc.
- Use SET_SYSTEM_SLEEP_PM_OPS to define PM_OPS.
- Use exec_op instead of legacy hooks.
- The compatible define with rkxx_nfc
- Add assigned-clocks
- Fix some wrong define

Changes in v3:
- Change the title for the dt-bindings

Changes in v2:
- Fix compile error.
- Include header files sorted by file name

Yifeng Zhao (3):
  mtd: rawnand: rockchip: NFC drivers for RK3308, RK3188 and others
  dt-bindings: mtd: Describe Rockchip RK3xxx NAND flash controller
  MAINTAINERS: add maintainers to rockchip nfc

 .../bindings/mtd/rockchip,nand.yaml           |  101 ++
 MAINTAINERS                                   |    2 +
 drivers/mtd/nand/raw/Kconfig                  |    7 +
 drivers/mtd/nand/raw/Makefile                 |    1 +
 drivers/mtd/nand/raw/rockchip_nand.c          | 1315 +++++++++++++++++
 5 files changed, 1426 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/rockchip,nand.yaml
 create mode 100644 drivers/mtd/nand/raw/rockchip_nand.c

-- 
2.17.1



