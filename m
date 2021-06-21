Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 82DCC3AED03
	for <lists+devicetree@lfdr.de>; Mon, 21 Jun 2021 18:03:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229837AbhFUQGL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Jun 2021 12:06:11 -0400
Received: from esa.microchip.iphmx.com ([68.232.154.123]:49133 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229789AbhFUQGK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Jun 2021 12:06:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1624291436; x=1655827436;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=4nksVGJc59kKQoPCASmg1lsIewXyAyJELl1qHWXP4GA=;
  b=QF+3HpmPPNaI3q8MA2G+2ubbALFV8Idb36TEwFuGZ2sIDGZLygSz4mzA
   fqh7dG9kzAEFXclVK+v3w9bQChqIm/aShYbgiln9LihqhVYl5l3oKB3gq
   ae1nymZ0/uIBQ4RC8SwokvP+VZDrIpNE7a78aOIo+R204/GtOTpHUnCmQ
   XBUV992hkKIU7Td9BJGLj49uxx+od1laVK6XgJnm0pIcyN0xdjmHkvTYk
   JJzIrWIqPPqrMcoThbXukSZOvTNTRr9txW2R6BKXtcBfjNx9WVJtLp/5Z
   JDOXyeZlAtVsSHBvMPbj2/iF0jXCSTNJQSg2HCA/nCRFGEhqqu98gp4fi
   g==;
IronPort-SDR: a4qcGuMO8VfPlGi0BrPCWcLr8jz1DNb30GgxhXKhnKOSrAJMGDndDUSntRAecU3qf580/m2rOZ
 B7fS2R0l2r07Foj4b3EJ6B2G2c0PJ8WRW33VWN3WFOO8J6dq0HH94UGCt0shqGiR8/KXBW4HGi
 p/7RAHDKShCZSd7sT8POQT3jyqjOCBj7ByiWQFSpUn5R8SnqI1D3YSM7T9BkinctmaloM8I6Pq
 WM/MojRhVf8FJH16CgAsf6KAidNq47/CY9MgPyPmMTM4VaDs7jtD3r4MfhEnGI60zDRj3yu9k2
 kDA=
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; 
   d="scan'208";a="119478484"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 21 Jun 2021 09:03:55 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Mon, 21 Jun 2021 09:03:55 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Mon, 21 Jun 2021 09:03:53 -0700
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
Subject: [PATCH v8 5/5] MAINTAINERS: add entry for polarfire soc mailbox
Date:   Mon, 21 Jun 2021 17:03:52 +0100
Message-ID: <20210621160352.5543-1-conor.dooley@microchip.com>
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

