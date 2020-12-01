Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D4C52CA0D5
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 12:06:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729808AbgLALDn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Dec 2020 06:03:43 -0500
Received: from esa4.microchip.iphmx.com ([68.232.154.123]:12917 "EHLO
        esa4.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729425AbgLALDn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Dec 2020 06:03:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1606820622; x=1638356622;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=FGtPhqRgilZG6lzFXwF1W6lCCJFnX3QJX7Kd0Z86TGw=;
  b=kqAddjm9agk7AUClmqlZIrJc1bCCfM8e9GcNUnBnaDxLmVqcP4g84bLx
   SU9+3OjDqYAQukghr+oWQEzCgjyCC3G1uNpkR9F+qhaLcYA6TgNNlVIbM
   SgC7g30kNZhBSp6z+lJOwgN3WgkHBUcJJJZ0nomO9emdO+xlcDjGGWoaF
   SEqzC0rdF8fn5QONNzmg3I3GRUPYa1kSt0sIfyY+FWa5Da83cRfbaJJtF
   Rfu3kJG/vB2LF5rLYDbJ2XYpGn3TGUDuxEbkSF0KwvT89nTS9XejLJcB5
   VeD1UmFuDFDMRzSQ6NMH35Ujq/f7+uvlPsY4OzWr2Q9MpN9saENOMkdjH
   g==;
IronPort-SDR: Cs03h4YGEaHjkbLY08KhFq3entQDhODQoH5WPueKyU4feyT+ERtJRhDtYzTMYTmt1jGm44KpeH
 NPwXp7RZW7axleaEdSseEpGJlfNpI+bEGok7YXz0jGv6vOMJa0J4SaK18AD0Vir1Jky9B5Lkot
 oAIaxGQxqxeujzlj8KasUKxwN/gaLXDD9wn0Yww7SW94AZNQI+taZpi5NUOqTUI/aWFd9gwVNF
 ACRVAA8z9rITrH/YCdB2ly6TaIoXabDKt12tq9eqyEFYb/xbjTAISVIsDKm5KCh/YNHfialhZH
 l1U=
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; 
   d="scan'208";a="95390174"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 01 Dec 2020 04:02:37 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 1 Dec 2020 04:02:36 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Tue, 1 Dec 2020 04:02:34 -0700
From:   <conor.dooley@microchip.com>
To:     <robh+dt@kernel.org>, <damien.lemoal@wdc.com>,
        <jassisinghbrar@gmail.com>, <aou@eecs.berkeley.edu>,
        <paul.walmsley@sifive.com>, <palmer@dabbelt.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>
CC:     <lewis.hanly@microchip.com>, <cyril.jean@microchip.com>,
        <daire.mcnamara@microchip.com>, <atish.patra@wdc.com>,
        <anup.patel@wdc.com>, <david.abdurachmanov@gmail.com>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 0/5] Add support for the PolarFire SoC system controller
Date:   Tue, 1 Dec 2020 11:02:33 +0000
Message-ID: <20201201110233.28296-1-conor.dooley@microchip.com>
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

Changes from v1:
* Squashed header into first patch
* Fixed DT binding warnings & small fixes
* Cleaned up drivers from feedback

Conor Dooley (5):
  mbox: add polarfire soc system controller mailbox
  dt-bindings: add bindings for polarfire soc mailbox
  soc: add polarfire soc system controller
  dt-bindings: add bindings for polarfire soc system controller
  MAINTAINERS: add microchip polarfire soc support

 .../mailbox/microchip,mpfs-mailbox.yaml       |  47 +++
 .../microchip,mpfs_sys_controller.yaml        |  49 +++
 MAINTAINERS                                   |   9 +
 drivers/mailbox/Kconfig                       |  12 +
 drivers/mailbox/Makefile                      |   2 +
 drivers/mailbox/mailbox-mpfs.c                | 285 ++++++++++++++++++
 drivers/soc/Kconfig                           |   1 +
 drivers/soc/Makefile                          |   1 +
 drivers/soc/microchip/Kconfig                 |  10 +
 drivers/soc/microchip/Makefile                |   1 +
 drivers/soc/microchip/mpfs_sys_controller.c   | 135 +++++++++
 include/soc/microchip/mpfs.h                  |  51 ++++
 12 files changed, 603 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/microchip,mpfs-mailbox.yaml
 create mode 100644 Documentation/devicetree/bindings/soc/microchip/microchip,mpfs_sys_controller.yaml
 create mode 100644 drivers/mailbox/mailbox-mpfs.c
 create mode 100644 drivers/soc/microchip/Kconfig
 create mode 100644 drivers/soc/microchip/Makefile
 create mode 100644 drivers/soc/microchip/mpfs_sys_controller.c
 create mode 100644 include/soc/microchip/mpfs.h

-- 
2.17.1

