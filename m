Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3104E3B3220
	for <lists+devicetree@lfdr.de>; Thu, 24 Jun 2021 17:00:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230377AbhFXPDO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Jun 2021 11:03:14 -0400
Received: from esa.microchip.iphmx.com ([68.232.153.233]:45849 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232313AbhFXPDN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Jun 2021 11:03:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1624546854; x=1656082854;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=0/Em9gZ8ZJxYKhhpEi1Tc8CIu8VuC4kqpPuHiHOkjHo=;
  b=R/qeMKkUs1tnATpTp1inVrlaA2YlnkPII9u4T5P1FRpEnw0uaY2QZYgk
   uKFYJVG2H7jJc5pb3urpR6QJvnWXJ0AFig7+ndJCU8zk1mtDtsr9vBFuN
   C4V0TJx2zwOAyzxJ241RlSLLWozJKNiFqgullUDSkBFlMbIZLyC6fi5YT
   r4dNjdKIjJufdzcJCv7vIqMI8BNdNQzP/THTdUdVGzmTdhitLmGCAht0m
   7ZaHKZzdqEeNxbzKXs/fHNazK+n2Qgw329X0BsmthpDY0EiqBlA0edpne
   d/acK5VaK1R4Qz0m+5ZQp1AH4qVv5xiXBk1XtvwvAi3pxsiu7tbBge2V9
   A==;
IronPort-SDR: JWdD7EhyvrUooZOGHJ7p7VwzXHcKnKD/t75JMixZhunBRGQ9NRGa5wrLxvjjcjM5zXxF3ROScb
 x2Bip6zWOtXQDGBba6/ilrMHT9EhQVR1G7y/oOCJRSIzLrPoFsA/I2nO24D6qwiXQpBgCsev3M
 7OH9tZdxZALC+zBAsk9aaooRpNO6M+BuQHG2mBtG177sb0zoslCVxDeQmT7SNmydckugyKVM7s
 hivUNzYz/EFjg8mgslu4ae8Si9bPwsx3tBT1Kqqbl6yCE4gF9wO0JdXwZo/HFvSNA/X0L1gaDl
 tPE=
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; 
   d="scan'208";a="133328660"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 24 Jun 2021 08:00:53 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Thu, 24 Jun 2021 08:00:44 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Thu, 24 Jun 2021 08:00:42 -0700
From:   <conor.dooley@microchip.com>
To:     <robh+dt@kernel.org>, <damien.lemoal@wdc.com>,
        <jassisinghbrar@gmail.com>, <aou@eecs.berkeley.edu>,
        <paul.walmsley@sifive.com>, <palmer@dabbelt.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <j.neuschaefer@gmx.net>, <sfr@canb.auug.org.au>
CC:     <lewis.hanly@microchip.com>, <cyril.jean@microchip.com>,
        <daire.mcnamara@microchip.com>, <atish.patra@wdc.com>,
        <anup.patel@wdc.com>, <david.abdurachmanov@gmail.com>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v9 0/5] Add support for the PolarFire SoC system controller
Date:   Thu, 24 Jun 2021 16:00:41 +0100
Message-ID: <20210624150041.11136-1-conor.dooley@microchip.com>
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
Patra's PolarFire SoC support patches which introduce it (this series is in 5.13-rc7).

The following link, which is a direct download of a pdf, contains documentation
for the system controller:
https://www.microsemi.com/document-portal/doc_download/1244853-ug0905-polarfire-soc-fpga-system-services-user-guide

Changes from v8:
* Change GENMASK to GENMASK_ULL to avoid shift count over warnings on other arm & microblaze
* Check return value of mutex lock acquistion

Changes from v7:
* Remove functions in header that are redundant without service drivers to avoid test failure

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
 drivers/soc/microchip/mpfs-sys-controller.c   | 121 +++++++++
 include/soc/microchip/mpfs.h                  |  43 +++
 12 files changed, 532 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/microchip,polarfire-soc-mailbox.yaml
 create mode 100644 Documentation/devicetree/bindings/soc/microchip/microchip,polarfire-soc-sys-controller.yaml
 create mode 100644 drivers/mailbox/mailbox-mpfs.c
 create mode 100644 drivers/soc/microchip/Kconfig
 create mode 100644 drivers/soc/microchip/Makefile
 create mode 100644 drivers/soc/microchip/mpfs-sys-controller.c
 create mode 100644 include/soc/microchip/mpfs.h

-- 
2.31.1

