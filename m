Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 29DBC35CAAC
	for <lists+devicetree@lfdr.de>; Mon, 12 Apr 2021 18:03:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238937AbhDLQEP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Apr 2021 12:04:15 -0400
Received: from esa.microchip.iphmx.com ([68.232.154.123]:32594 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239928AbhDLQEP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Apr 2021 12:04:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1618243436; x=1649779436;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=ZqO4v5XWvmV6i2qYDUBpRbDz6kva5C+vptihlshcyy0=;
  b=M5XV94bCSOJ2crNUWv8ACHB1ykBN/FfJcL7EpqAW1kn940X1rLukiKcm
   kQ9uKY66EOSRWt99Dh5xO9iMDbRu2OASIy1IsR0IcLCiaxkS4XLJA/6CZ
   SvOewCg2x5d4h0PQk5ICqxYbMog2hG6lseNp/PPRT/7Z4W2gaWWitSiXz
   myCO0lFcJCvMMTM3pnuBO29L9VHFQ1r36UiotAXIfkxSeK3GAOJcXuonb
   VeOoHkRarfCz1FmTHwwclBUloyDWDZVuaWjhnZpvVu3zJqJbnExRJ3MCC
   z20OI71E5A/VUhR5db/zWlDhxeb025SImUpxzsrwQI4if6eqWyiEazU/7
   w==;
IronPort-SDR: 3Y+J8lhBboqZ8hIyTdSdj+4JdPYf1yIzYTCnn7UOuIUaTc5J4GxCMxsixl92uKqdFPqd4IHvtT
 O/YFMw/Lj2/4gY+ld45bINLVeHdQf1YdUNQ5sYfDPmxhuv+CgcInbQpGdbaF9hs/LBaze55U22
 5B4S48dCNZ+QcsFXR1x9+SAKu+WHHdoUXVuAdMwYACMKPGDAB5GGOY2WtxLpnfayELLy6eiCPA
 BALZCf6JQISsY4uJZNPThy2f1skalb/KoXv7vbq0/agT2sWoldf7SQsgGK03DeUfKkIMO6wz6B
 LVg=
X-IronPort-AV: E=Sophos;i="5.82,216,1613458800"; 
   d="scan'208";a="110516045"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 12 Apr 2021 09:03:55 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Mon, 12 Apr 2021 09:03:55 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Mon, 12 Apr 2021 09:03:52 -0700
From:   <conor.dooley@microchip.com>
To:     <robh+dt@kernel.org>, <damien.lemoal@wdc.com>,
        <jassisinghbrar@gmail.com>, <aou@eecs.berkeley.edu>,
        <paul.walmsley@sifive.com>, <palmer@dabbelt.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <j.neuschaefer@gmx.net>
CC:     <lewis.hanly@microchip.com>, <cyril.jean@microchip.com>,
        <daire.mcnamara@microchip.com>, <atish.patra@wdc.com>,
        <anup.patel@wdc.com>, <david.abdurachmanov@gmail.com>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v5 0/5]  Add support for the PolarFire SoC system controller
Date:   Mon, 12 Apr 2021 17:03:51 +0100
Message-ID: <20210412160351.19229-1-conor.dooley@microchip.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

This patch series adds support for the system controller on
the PolarFire SoC, using the mailbox framework. A Microchip directory
in the SoC subsystem has been created to hold the mailbox client
driver and will be used for future service drivers.

These drivers are gated by the kconfig option:
CONFIG_SOC_MICROCHIP_POLARFIRE, so this patch series depends on Atish
Patra's PolarFire SoC support patches which introduce it.

It further depends on the MAINTAINERS entry created in the same series.

The following link, which is a direct download of a pdf, contains documentation
for the system controller:
https://www.microsemi.com/document-portal/doc_download/1244853-ug0905-polarfire-soc-fpga-system-services-user-guide

Changes from v4:
* Changed dt binding from Rob Herring's feedback
* Shortened some verbose variable names
* Reordered binding patches
* Write directly into response array, rather than allocate in controller isr and memcpy in client

Changes from v3:
* Fixed mboxes reference in dt binding for mailbox client
* Bug fixes and cleanup from Jonathan Neuschäfer's feedback on
  mailbox-mpfs.c & mpfs-sys-controller.c
* Renamed dt binding files to match compatible strings
* Removed PFSoC gating condition on drivers/soc/microchip subdirectory
* Converted all size based operations to bytes for consistency
* Converted response array to a structure, enabling support for more
  complex services that return a status instead of/alongside a payload.

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
  dt-bindings: add bindings for polarfire soc mailbox
  mbox: add polarfire soc system controller mailbox
  dt-bindings: add bindings for polarfire soc system controller
  soc: add polarfire soc system controller
  MAINTAINERS: add entry for polarfire soc mailbox driver

 .../microchip,polarfire-soc-mailbox.yaml      |  47 +++
 ...icrochip,polarfire-soc-sys-controller.yaml |  35 +++
 MAINTAINERS                                   |   1 +
 drivers/mailbox/Kconfig                       |  12 +
 drivers/mailbox/Makefile                      |   2 +
 drivers/mailbox/mailbox-mpfs.c                | 272 ++++++++++++++++++
 drivers/soc/Kconfig                           |   1 +
 drivers/soc/Makefile                          |   1 +
 drivers/soc/microchip/Kconfig                 |  10 +
 drivers/soc/microchip/Makefile                |   1 +
 drivers/soc/microchip/mpfs-sys-controller.c   | 119 ++++++++
 include/soc/microchip/mpfs.h                  |  56 ++++
 12 files changed, 557 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/microchip,polarfire-soc-mailbox.yaml
 create mode 100644 Documentation/devicetree/bindings/soc/microchip/microchip,polarfire-soc-sys-controller.yaml
 create mode 100644 drivers/mailbox/mailbox-mpfs.c
 create mode 100644 drivers/soc/microchip/Kconfig
 create mode 100644 drivers/soc/microchip/Makefile
 create mode 100644 drivers/soc/microchip/mpfs-sys-controller.c
 create mode 100644 include/soc/microchip/mpfs.h

-- 
2.31.1

