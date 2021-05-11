Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 11C0337AAD0
	for <lists+devicetree@lfdr.de>; Tue, 11 May 2021 17:38:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231823AbhEKPjU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 May 2021 11:39:20 -0400
Received: from esa.microchip.iphmx.com ([68.232.153.233]:63947 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231844AbhEKPjT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 May 2021 11:39:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1620747493; x=1652283493;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=XOB1CwGDTbBnyoCClAe5S5eJtfPOnOb+M6/jGa4fYXc=;
  b=LB8mM8ChuYslP7OabL/RdLBN3LpgfbKNA3svUQliFZHRRDTfzOpX5P9L
   7VH69kSW863TGgxp3LEnRJVeST5LfSOHF3XSHdNVbE4ajTiDTeB6a43K4
   YBktyT5wqC8u7t6HbqPzI0LGWMvKs2xkvF2A0RiVWA7ZBU025qhMtmYaB
   Xi1AnxFQnMf4p7AYmkEWyEIwxrorQ2aWBABMj6u/topecdh/5xVczbe4a
   BsVrCv1OrA5X7eLXeRNoUgAxFSBQrtq6ZlXA6rKbpWpXOtMv1BLlzFXLh
   6V7WLUtYDQOQFg7r5QZy7BIkUAYoqahDqtQFsElFjfW4pYkY4OnF0ny5a
   w==;
IronPort-SDR: KaQgM2P0FsZgAgXNspFkNpN6ghIYODJTqUu8jTXYLf10Z9X6W86WGq59c0HVzep0tVryCEBwB9
 EX7xWKlnaJ2YOlLjryKOMQfgGbfDyPfbdjlCXwhpeNx0YpFX7JsPnpPKLna6hkf/boRpXrSsVu
 eJdk1a4oUqL/TO4owbUGKpVj9xKD5GwwIu4V4ujJaFv/s4j+hNXdNS7tfCHm5uQC65bVHeaiwI
 K+j9gvNTgOVKxUbGqPJ4PY8Xp6D0HCzwcoOiqh8uWd3U+BuIRZ1KEqsnNwB/ESNgQ0uw0M1Z9W
 TCM=
X-IronPort-AV: E=Sophos;i="5.82,291,1613458800"; 
   d="scan'208";a="120686633"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 11 May 2021 08:38:13 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Tue, 11 May 2021 08:38:12 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Tue, 11 May 2021 08:38:09 -0700
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
Subject: [PATCH v7 0/5] Add support for the PolarFire SoC system controller
Date:   Tue, 11 May 2021 16:38:09 +0100
Message-ID: <20210511153809.24760-1-conor.dooley@microchip.com>
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
Patra's PolarFire SoC support patches which introduce it (this series is now in 5.13-rc1).

The following link, which is a direct download of a pdf, contains documentation
for the system controller:
https://www.microsemi.com/document-portal/doc_download/1244853-ug0905-polarfire-soc-fpga-system-services-user-guide

Changes from v6:
* Re-add the maintainers section that was removed from base pfsoc support patch series
* Removed Cyril Jean from maintainers entry.

Changes from v5:
* Removed excess functions, cleanup in mailbox-mpfs.c

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
  MAINTAINERS: add entry for polarfire soc mailbox

 .../microchip,polarfire-soc-mailbox.yaml      |  47 ++++
 ...icrochip,polarfire-soc-sys-controller.yaml |  35 +++
 MAINTAINERS                                   |   8 +
 drivers/mailbox/Kconfig                       |  12 +
 drivers/mailbox/Makefile                      |   2 +
 drivers/mailbox/mailbox-mpfs.c                | 251 ++++++++++++++++++
 drivers/soc/Kconfig                           |   1 +
 drivers/soc/Makefile                          |   1 +
 drivers/soc/microchip/Kconfig                 |  10 +
 drivers/soc/microchip/Makefile                |   1 +
 drivers/soc/microchip/mpfs-sys-controller.c   | 119 +++++++++
 include/soc/microchip/mpfs.h                  |  56 ++++
 12 files changed, 543 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/microchip,polarfire-soc-mailbox.yaml
 create mode 100644 Documentation/devicetree/bindings/soc/microchip/microchip,polarfire-soc-sys-controller.yaml
 create mode 100644 drivers/mailbox/mailbox-mpfs.c
 create mode 100644 drivers/soc/microchip/Kconfig
 create mode 100644 drivers/soc/microchip/Makefile
 create mode 100644 drivers/soc/microchip/mpfs-sys-controller.c
 create mode 100644 include/soc/microchip/mpfs.h

-- 
2.31.1

