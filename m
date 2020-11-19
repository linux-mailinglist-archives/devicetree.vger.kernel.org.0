Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 894D82B98D9
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 18:08:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727108AbgKSREI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 12:04:08 -0500
Received: from esa1.microchip.iphmx.com ([68.232.147.91]:52495 "EHLO
        esa1.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726474AbgKSREI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 12:04:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1605805447; x=1637341447;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=2ElBigwIpbfpRKbyi3qg5MholPqNe20l6r2NhuLSHTo=;
  b=NDc0+uQSClspjkpYMrbgVCZbtrGib4hupHO4a/yroRBw0YZUMfO6NuNo
   NYX6Wcj5xJ8uC4qKA8rDldrHzYz1T5G0QxLrOpjLbecm13wLQKjticSqV
   fA15z7+hIiXSVVfYbYCPXuqrd+yTrZ1WwGk51SKIc6V+ngNBAVjvwMS2+
   Gc3GE12swU8kJ6tqqwNYGfYZ6Im9AXKnZpCqIbuoYHzlSJU+2D/ktwTS8
   nbO6JTmeBfSkhfMRDa8Q2kc9WiEKTAyi2yiunPHZVXLbzbvIpvXt7MhHB
   UJtm4mMevcC3A+EjjBsH0tqPBBDPfLCHtZpl529rKqfGl9eI/YB9l5JwY
   A==;
IronPort-SDR: AgQQG6qC1YCTIFuaaqBWqqFKv/jTcPnh6dq7rQU7Yve1+qK0SemEctrY1tdWfqJLKix7u4AAK6
 AHTQqt2Q1D5rO4ylRCxm6XeMbJUEa7xGvHbPF9FM5INhtWZ7JzTuudvLBf5q85jJ7zJJ5R6auv
 XeZXtdyouUhScoPHWT5sp+UsWyO1/knsJTyDtd0pN60bdLXIci0hKFxuoxVd1pzzb+YfDN2Cvo
 d+VYknqB8UkFHcYglTEPO2/qhLc//Y972mEOR+GnHdmK/MY/boJUum5RNE1SfRyUkSdtGOvrwn
 5ck=
X-IronPort-AV: E=Sophos;i="5.78,353,1599548400"; 
   d="scan'208";a="104273932"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 19 Nov 2020 10:04:07 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 19 Nov 2020 10:04:07 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Thu, 19 Nov 2020 10:04:04 -0700
From:   <conor.dooley@microchip.com>
To:     <robh+dt@kernel.org>, <jassisinghbrar@gmail.com>,
        <aou@eecs.berkeley.edu>, <paul.walmsley@sifive.com>,
        <palmer@dabbelt.com>, <devicetree@vger.kernel.org>,
        <linux-riscv@lists.infradead.org>
CC:     <lewis.hanly@microchip.com>, <cyril.jean@microchip.com>,
        <daire.mcnamara@microchip.com>, <atish.patra@wdc.com>,
        <anup.patel@wdc.com>, <david.abdurachmanov@gmail.com>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH 0/6] Add support for the PolarFire Soc system controller
Date:   Thu, 19 Nov 2020 17:04:04 +0000
Message-ID: <20201119170404.18151-1-conor.dooley@microchip.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

This patch series adds support for the system controller on
the PolarFire SoC, using the mailbox framework. A Microchip directory
in the SoC subsystem has been created to hold the mailbox client
driver and will be used for future service drivers.

This directory is included by the kconfig option: 
CONFIG_SOC_MICROCHIP_POLARFIRE, so this patch series depends on Atish 
Patra's PolarFire SoC support patches which introduce that option.

Conor Dooley (6):
  mbox: add polarfire soc system controller mailbox
  soc: add polarfire soc header file
  dt-bindings: add bindings for polarfire soc mailbox
  soc: add polarfire soc system controller
  dt-bindings: add bindings for polarfire soc system controller
  MAINTAINERS: add microchip polarfire soc support

 .../mailbox/microchip,mpfs-mailbox.yaml       |  46 +++
 .../microchip,mpfs_sys_controller.yaml        |  50 +++
 MAINTAINERS                                   |   9 +
 drivers/mailbox/Kconfig                       |  12 +
 drivers/mailbox/Makefile                      |   2 +
 drivers/mailbox/mailbox-mpfs.c                | 296 ++++++++++++++++++
 drivers/soc/Kconfig                           |   1 +
 drivers/soc/Makefile                          |   1 +
 drivers/soc/microchip/Kconfig                 |  10 +
 drivers/soc/microchip/Makefile                |   1 +
 drivers/soc/microchip/mpfs_sys_controller.c   | 136 ++++++++
 include/soc/microchip/mpfs.h                  |  50 +++
 12 files changed, 614 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/microchip,mpfs-mailbox.yaml
 create mode 100644 Documentation/devicetree/bindings/soc/microchip/microchip,mpfs_sys_controller.yaml
 create mode 100644 drivers/mailbox/mailbox-mpfs.c
 create mode 100644 drivers/soc/microchip/Kconfig
 create mode 100644 drivers/soc/microchip/Makefile
 create mode 100644 drivers/soc/microchip/mpfs_sys_controller.c
 create mode 100644 include/soc/microchip/mpfs.h


base-commit: f8394f232b1eab649ce2df5c5f15b0e528c92091
-- 
2.17.1

