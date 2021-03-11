Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC3AA33716D
	for <lists+devicetree@lfdr.de>; Thu, 11 Mar 2021 12:35:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232504AbhCKLe7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Mar 2021 06:34:59 -0500
Received: from esa.microchip.iphmx.com ([68.232.154.123]:58729 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232499AbhCKLeq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Mar 2021 06:34:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1615462487; x=1646998487;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=fiVlYIat51VcqGO3igsLjcxXXnwW/lh7Rsk9mNXPSB8=;
  b=IDBZnsAR4lKuhrcwe69l39skJ8DGJ01lQIWOg2OO133i2xJ4mJZHjvlT
   cPaXuuzS+wQHJuchbNQP4sa+vC+NIUa+BJ1QrgeLIpQM7fgo/prKlrVHW
   CmSKn15lSCFEtO20+I3yK2WRdDLFqYv8opoGUm4kacPzVC6MdUGetpG16
   3aA0qqkk5xKHi5bttwldcikxfHWNdXXyPYZla+bxs8+f5CQCYGnZOPGaf
   cHoUdqXRLAI3AEJPLJxWOZ/Ct/QKREs3yFvZlTnqmJMKHUOTkXmYyn4ze
   KcGC+dw+Y7Ni40C1WnYTSTOOU82qT9waANHKao/EXmXuRtD/pCn/EABsw
   w==;
IronPort-SDR: 5BpOAVA2gXd7yTa3rO/ZUPhgtNT1qvLBHWXa+pmILb4bKYc1iGcio4kVJInku8oRmo+G+K9hsb
 iqufWWJGGXyj+3ut5NbGYtN6YGR7SO+PF2fM7A/C/V9eoJn6mDZAzgKt6fSFDgUKa27mORu8hu
 VyUy6uTYL/9mgIy9ePar5gjLPUxAzVpsbRLqaT0CLZIi2bc7FRv4gGX8o2NXRIKGGQHKpA91II
 whIJGJn3APAUIIEAVaSQROjeTUNi88xkhsHcIM+5o/njV2t31peNFk3R3rBMPZRE2H5KvB29HX
 Qqo=
X-IronPort-AV: E=Sophos;i="5.81,240,1610434800"; 
   d="scan'208";a="109596648"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 11 Mar 2021 04:34:46 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Thu, 11 Mar 2021 04:34:34 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Thu, 11 Mar 2021 04:34:31 -0700
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
Subject: [PATCH v4 0/5]  Add support for the PolarFire SoC system controller
Date:   Thu, 11 Mar 2021 11:34:31 +0000
Message-ID: <20210311113431.15378-1-conor.dooley@microchip.com>
X-Mailer: git-send-email 2.17.1
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
  mbox: add polarfire soc system controller mailbox
  dt-bindings: add bindings for polarfire soc mailbox
  soc: add polarfire soc system controller
  dt-bindings: add bindings for polarfire soc system controller
  MAINTAINERS: add entry for polarfire soc mailbox driver

 .../microchip,polarfire-soc-mailbox.yaml      |  47 +++
 ...icrochip,polarfire-soc-sys-controller.yaml |  36 +++
 MAINTAINERS                                   |   1 +
 drivers/mailbox/Kconfig                       |  12 +
 drivers/mailbox/Makefile                      |   2 +
 drivers/mailbox/mailbox-mpfs.c                | 277 ++++++++++++++++++
 drivers/soc/Kconfig                           |   1 +
 drivers/soc/Makefile                          |   1 +
 drivers/soc/microchip/Kconfig                 |  10 +
 drivers/soc/microchip/Makefile                |   1 +
 drivers/soc/microchip/mpfs-sys-controller.c   | 127 ++++++++
 include/soc/microchip/mpfs.h                  |  57 ++++
 12 files changed, 572 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/microchip,polarfire-soc-mailbox.yaml
 create mode 100644 Documentation/devicetree/bindings/soc/microchip/microchip,polarfire-soc-sys-controller.yaml
 create mode 100644 drivers/mailbox/mailbox-mpfs.c
 create mode 100644 drivers/soc/microchip/Kconfig
 create mode 100644 drivers/soc/microchip/Makefile
 create mode 100644 drivers/soc/microchip/mpfs-sys-controller.c
 create mode 100644 include/soc/microchip/mpfs.h

-- 
2.17.1

