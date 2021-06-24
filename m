Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 998AC3B322D
	for <lists+devicetree@lfdr.de>; Thu, 24 Jun 2021 17:02:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232038AbhFXPEg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Jun 2021 11:04:36 -0400
Received: from esa.microchip.iphmx.com ([68.232.154.123]:61439 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230249AbhFXPEf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Jun 2021 11:04:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1624546936; x=1656082936;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=4nksVGJc59kKQoPCASmg1lsIewXyAyJELl1qHWXP4GA=;
  b=ztqKDwc8YtyDqNDU2hBxtyLg+uxSVQO+DhHMT0hIVEGe719uZ/bakYIc
   DGsrGM4WKbmI+n69cTqJ7etSWtPvNbpkXz/9PlfSULzraTzBtRNuNZm7z
   7JXeiVe2hT3uM4sQx4AFM3fY2mjIZoeKGd1oRKcP1HgIUn3Eg2aNsstXV
   ngfCkbIWakXpz0FG6M6hah6y5hZnpk5JPolqYAFFktxHEy8SZMY0Yl1PV
   1SS9xgoArDeGnEHsUyYkm+yOeshU/m8KePfkrI2k5ddFm/m8YieT5yV5B
   2mz0mAApVNBEanOB27ZeMQg1K4hpQwuGTILzVYD7sdk7oo8i4BgpxhSL2
   A==;
IronPort-SDR: JQg4eJwB3AFpdM+Sl6Mxpb+DyL/xwgOk0ZVF2B6yYzhQnEvKUWz9Jt8bC7XGhUXqgk2/0bjvmY
 AB9HaQ3cHAfnQWb964ryfFTmlQrREgdfttA7LRQHAZC5Cg9FIiMuH6hyMwieo2kkz8oo/xkKBX
 hUIHWfXnDVOWpYacCYL1W8FmR9nc1aqwwFQ6acj++DK8mcCdNNh4wd3vCtpPbt/MG22E7AIgBU
 ymwmJmKQIcJkJ4TU9RzZn/xjgUG7K7ImyEyHDFc6o2JlwYESE6cNWjzTuxsZXH7o/yC6LWsS0N
 9zc=
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; 
   d="scan'208";a="60084290"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 24 Jun 2021 08:01:55 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Thu, 24 Jun 2021 08:01:55 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Thu, 24 Jun 2021 08:01:52 -0700
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
Subject: [PATCH v9 5/5] MAINTAINERS: add entry for polarfire soc mailbox
Date:   Thu, 24 Jun 2021 16:01:52 +0100
Message-ID: <20210624150152.11666-1-conor.dooley@microchip.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

Add Lewis Hanly as a maintainer for the Microchip SoC
directory and the system services mailbox driver

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 8c5ee008301a..dc549a60fddc 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15705,6 +15705,14 @@ F:	arch/riscv/
 N:	riscv
 K:	riscv
 
+RISC-V/MICROCHIP POLARFIRE SOC SUPPORT
+M:	Lewis Hanly <lewis.hanly@microchip.com>
+L:	linux-riscv@lists.infradead.org
+S:	Supported
+F:	drivers/mailbox/mailbox-mpfs.c
+F:	drivers/soc/microchip/
+F:	include/soc/microchip/mpfs.h
+
 RNBD BLOCK DRIVERS
 M:	Md. Haris Iqbal <haris.iqbal@ionos.com>
 M:	Jack Wang <jinpu.wang@ionos.com>
-- 
2.31.1

