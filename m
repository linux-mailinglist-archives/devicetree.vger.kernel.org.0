Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 82C612CA0DE
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 12:06:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730313AbgLALFB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Dec 2020 06:05:01 -0500
Received: from esa3.microchip.iphmx.com ([68.232.153.233]:1564 "EHLO
        esa3.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727591AbgLALFB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Dec 2020 06:05:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1606820701; x=1638356701;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=21fm/s2a10024hJyayAnBeJLM14GpJpHzPwsgaQUW9U=;
  b=LbVBIY5cORZ3La+P7SzLl2tppigUwnMLfgUYvs+/Rk+GoS+NcTTYgukg
   /hs5vVU/6ITc/pITOP0FToDcMAqIlLRO6Tzn9J7y02MWrkmZVLR5aJM0F
   Qa7pwwh/NXP76Lt4ANKpCmipPg8BEqxuzOq3VQSPaXFud/h8jYjnZ2Qk1
   BrR0lYmpBjEaoYfK8YfQMewmY2o5qU4aeTvkb2iXeeSrMI8zVYc3byWXA
   MhQdI36NCPIinSDwZ9j4F10IWYWYvWhVyQafAe728frH1I8w3MStoFMjk
   XX8TxfEJjfwr+k23Myrlwb5VG2xkWMEeCZ/gx2KamTi4z+2qrqHnwIQ6D
   Q==;
IronPort-SDR: 1OYou1MdYQAQHhN+oytf220YFG6dvyBEvttP9dqsGqe5oVAbCJfhX/uQCq8LzHyVUdhh9jlZjP
 bOkBdSOA6B3Q2wWgGOeKk8YijdBVben2dKp+Fy2crxFjx/EultzKIJBbwJ0j/WaY7hhRfkm8DT
 ei1A8tvR++zYwZ/+FXbUKyr1wJ+yteCaT31dC0TXZxpIL5qWJJAsD5DbXC902glflUDlWcG6Yu
 RVrC+0DOnbFPJ4C2hzWQVeDkfoBDvdTk8ByiBGQAnWCrAaE198GrU8W5Owt0S0JO9+mYpYYqBF
 bPc=
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; 
   d="scan'208";a="100945453"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 01 Dec 2020 04:03:21 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 1 Dec 2020 04:03:19 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Tue, 1 Dec 2020 04:03:17 -0700
From:   <conor.dooley@microchip.com>
To:     <robh+dt@kernel.org>, <damien.lemoal@wdc.com>,
        <jassisinghbrar@gmail.com>, <aou@eecs.berkeley.edu>,
        <paul.walmsley@sifive.com>, <palmer@dabbelt.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>
CC:     <lewis.hanly@microchip.com>, <cyril.jean@microchip.com>,
        <daire.mcnamara@microchip.com>, <atish.patra@wdc.com>,
        <anup.patel@wdc.com>, <david.abdurachmanov@gmail.com>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 5/5] MAINTAINERS: add microchip polarfire soc support
Date:   Tue, 1 Dec 2020 11:03:16 +0000
Message-ID: <20201201110316.28656-1-conor.dooley@microchip.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

Add Cyril Jean and Lewis Hanly as maintainers for the Microchip SoC
directory

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 2daa6ee673f7..2241bdac4816 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14989,6 +14989,15 @@ F:	arch/riscv/
 N:	riscv
 K:	riscv
 
+RISC-V/MICROCHIP POLARFIRE SOC SUPPORT
+M:	Lewis Hanly <lewis.hanly@microchip.com>
+M:	Cyril Jean <cyril.jean@microchip.com>
+L:	linux-riscv@lists.infradead.org
+S:	Supported
+F:	drivers/mailbox/mailbox-mpfs.c
+F:	drivers/soc/microchip/
+F:	include/soc/microchip/mpfs.h
+
 RNBD BLOCK DRIVERS
 M:	Danil Kipnis <danil.kipnis@cloud.ionos.com>
 M:	Jack Wang <jinpu.wang@cloud.ionos.com>
-- 
2.17.1

