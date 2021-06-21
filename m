Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1040E3AECFA
	for <lists+devicetree@lfdr.de>; Mon, 21 Jun 2021 18:02:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230021AbhFUQFG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Jun 2021 12:05:06 -0400
Received: from esa.microchip.iphmx.com ([68.232.154.123]:53458 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230071AbhFUQFF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Jun 2021 12:05:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1624291371; x=1655827371;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=RZTu4Q0uMlgLEt74u2zDTQiVdr3MIjeXvc5Byuh9Kb0=;
  b=xkCMPnRQjOdM1jZ+Xi9Ak59MNUtezLAFhMmuWUnmtFYM8Sim9By54kzK
   2ljDSbDX+2FxT2ZML0L9tox1zUs1AWFfYlwrGw/cWin29gIsblS3o4pve
   mlGUdSt1PjYntqhiT5tq6ioyA/Y1KhLcxXEaBI+rQ1uxha3EMduq89mps
   VqBgrLQAkVqiDJFaZdo6kJNfu31kfP3YJ02kMBOSEcBYzCHCXd5V3CS2g
   5lFJ7qu6tajopyHyVweXTtKpKnJRTrDIn+R3MyKMM3Ep7YnyBZDuXrkmE
   gTtcZLROpqjR4SKwtFD7uq31UNcVmKGck+lUaZ9DjNRNKOXxTrwWepJ9A
   Q==;
IronPort-SDR: flAkaGVLGzGD56+5XfKoYkfYUCGlmxrA3LN7lgfdChlp9Bd4HcBqpM9cMbj9VGHxzIYOHufxJo
 4EoX058xv4jwgnH7ObsGjnlO8FD8nKWvDRk/UcZ4RCflbTqRqG5u8IRHqfnhTtcnoLVyZyIozl
 SiWG7gOCNbblr4hhfZotLWou17MRTvSFXTzGdCramXIow65tA7sLhVo0tK7/n469yEoDT3ScuC
 WK4YhyODg41HhNEXJXCzHQIuh5jgK84XsJqWBIeu4zj5e9cHBJ+dY64Fe9+MVqRC2Z4xMsQFon
 +ck=
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; 
   d="scan'208";a="59681407"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 21 Jun 2021 09:02:50 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Mon, 21 Jun 2021 09:02:49 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Mon, 21 Jun 2021 09:02:46 -0700
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
Subject: [PATCH v8 0/5]  Add support for the PolarFire SoC system controller
Date:   Mon, 21 Jun 2021 17:02:46 +0100
Message-ID: <20210621160246.29960-1-conor.dooley@microchip.com>
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
 drivers/soc/microchip/mpfs-sys-controller.c   | 119 +++++++++
 include/soc/microchip/mpfs.h                  |  43 +++
 12 files changed, 530 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/microchip,polarfire-soc-mailbox.yaml
 create mode 100644 Documentation/devicetree/bindings/soc/microchip/microchip,polarfire-soc-sys-controller.yaml
 create mode 100644 drivers/mailbox/mailbox-mpfs.c
 create mode 100644 drivers/soc/microchip/Kconfig
 create mode 100644 drivers/soc/microchip/Makefile
 create mode 100644 drivers/soc/microchip/mpfs-sys-controller.c
 create mode 100644 include/soc/microchip/mpfs.h

-- 
2.31.1

