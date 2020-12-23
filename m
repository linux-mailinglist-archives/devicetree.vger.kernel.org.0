Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B43DB2E1F75
	for <lists+devicetree@lfdr.de>; Wed, 23 Dec 2020 17:34:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725907AbgLWQeH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Dec 2020 11:34:07 -0500
Received: from esa.microchip.iphmx.com ([68.232.154.123]:47475 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725785AbgLWQeG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Dec 2020 11:34:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1608741246; x=1640277246;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=zCSMGNUtLeEJ3RtG5a1G/RkIaYNcnXaPAoDqDMa6dVI=;
  b=ttaNBh/dkw4Vli6X/NXT+9d58yl8npRRbYRhvtfi7cpfTcF/6WXp0gVu
   3TBMefl45AYY9q0WM+Noa79bYzYRxYNrnXiCUmVy/0/KdhL6q/O2dYMTL
   rDeriU+fVWH7mkAbHNdWvk9fDJgXZdCQcQA1DWco3eYbxP+a2kpk+UEim
   jkTJMKiTipAJH/F5hGK9mWxruYQx2r+prqcojTqQRdt1EjMvV4hVw7eHH
   Tnv/eW2N3wgY/n/uUG9akOATGRcO3vBfsOk/PvYzPydh53KxW3CPUMX77
   TYm1xowwU8iO5TBSNrBCR/2SkQUntJQY6ldLjwsczp61anLIesVF7vLvP
   g==;
IronPort-SDR: +InkrecSK9jQEIGL+a7SoLdAnrTbmL0535eQHToG5ZjzDgXXoVLa2TNhOeKXzAv+wUoWykgIm7
 kiqoFl5TE2tamAiaags6FxnRcjsd3udS5JeSht+wEiTe12oidfPbk5Vk7VR1pr7ucDpgTfU+st
 X23VieoofvlechNIoJJj1VcCzv4xsEoP7m79PFC5Q/1/YRDYMBEfM1fwZrRkM4X9yWL8GPiFDH
 MhORZDMEkuz4MZyOd37qfaD1fh94qzZtfsazLF7uxizSvetjX5L4Uqn+S4WULS1KTSVQy5B1Z8
 MYQ=
X-IronPort-AV: E=Sophos;i="5.78,441,1599548400"; 
   d="scan'208";a="38426616"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 23 Dec 2020 09:32:50 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 23 Dec 2020 09:32:50 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Wed, 23 Dec 2020 09:32:47 -0700
From:   <conor.dooley@microchip.com>
To:     <robh+dt@kernel.org>, <damien.lemoal@wdc.com>,
        <jassisinghbrar@gmail.com>, <aou@eecs.berkeley.edu>,
        <paul.walmsley@sifive.com>, <palmer@dabbelt.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>
CC:     <lewis.hanly@microchip.com>, <cyril.jean@microchip.com>,
        <daire.mcnamara@microchip.com>, <atish.patra@wdc.com>,
        <anup.patel@wdc.com>, <david.abdurachmanov@gmail.com>,
        <j.neuschaefer@gmx.net>, Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 0/5]  Add support for the PolarFire SoC system controller
Date:   Wed, 23 Dec 2020 16:32:47 +0000
Message-ID: <20201223163247.28923-1-conor.dooley@microchip.com>
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

It further depends on the MAINTAINERS entry created in the same series.

Changes from v2:
* Further reworked dt bindings to satisfy errors and feedback
  (hopefully phandle array is the correct type for the mboxes)
* Full maintainers entry moved to Atish's PFSoC support series, this series now only adds mailbox driver
* Converted config options from MPFS to POLARFIRE_SOC so they are more recognisable
* Further simplified driver code from feedback

Changes from v1:
* Squashed header into first patch
* Fixed DT binding warnings & small fixes
* Cleaned up drivers from feedback

Conor Dooley (5):
  mbox: add polarfire soc system controller mailbox
  dt-bindings: add bindings for polarfire soc mailbox
  soc: add polarfire soc system controller
  dt-bindings: add bindings for polarfire soc system controller
  MAINTAINERS: add maintainers for polarfire soc mailbox driver

 .../mailbox/microchip,mailbox-mpfs.yaml       |  47 +++
 .../microchip,mpfs_sys_controller.yaml        |  34 +++
 MAINTAINERS                                   |   1 +
 drivers/mailbox/Kconfig                       |  12 +
 drivers/mailbox/Makefile                      |   2 +
 drivers/mailbox/mailbox-mpfs.c                | 285 ++++++++++++++++++
 drivers/soc/Kconfig                           |   1 +
 drivers/soc/Makefile                          |   1 +
 drivers/soc/microchip/Kconfig                 |  10 +
 drivers/soc/microchip/Makefile                |   1 +
 drivers/soc/microchip/mpfs-sys-controller.c   | 127 ++++++++
 include/soc/microchip/mpfs.h                  |  51 ++++
 12 files changed, 572 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/microchip,mailbox-mpfs.yaml
 create mode 100644 Documentation/devicetree/bindings/soc/microchip/microchip,mpfs_sys_controller.yaml
 create mode 100644 drivers/mailbox/mailbox-mpfs.c
 create mode 100644 drivers/soc/microchip/Kconfig
 create mode 100644 drivers/soc/microchip/Makefile
 create mode 100644 drivers/soc/microchip/mpfs-sys-controller.c
 create mode 100644 include/soc/microchip/mpfs.h

-- 
2.17.1

