Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 855942B98DF
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 18:08:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728205AbgKSREv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 12:04:51 -0500
Received: from esa5.microchip.iphmx.com ([216.71.150.166]:51679 "EHLO
        esa5.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728182AbgKSREu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 12:04:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1605805491; x=1637341491;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=sA2ID8SjJBtdaCsBr435cqGSWmz9ad2T9JlA0MEQJN0=;
  b=ZuMHVT1F2TEQ6ubLPln8J9MxTfXmSCJZAPexhw9qT+nmkfNtJJynqEEu
   wEMJFXlZxR4pPRmvlYX0lEw9hSKzPN7v/Vjav7gaKk2VVYlA4OAQbT8OP
   JCkdKyTSTUf3xGSEiMwGrOSVJfNFIZMv1u+brCxH+BtWCQlroysstp7s7
   xJLNuwEORXu4GNv3mZkb3HFAP2DcT74B3EhUCDKoYE7Elt4JliBmGNqCc
   nFFJ6eJOZhIUMOrvF9p/lWfROXHDqDaRM+Ho5XJF8fJf9M+Ld/P79OGnx
   mAFMOX6IXIafDrC58RCPvdYbzFkUVWysyJGKBh/j5eqNFKiUNbHZTbjSo
   w==;
IronPort-SDR: qjePlLxdxiqTeGAXUc0ovbRMvEH7bq8VO1HyDrZOcF5hymtKH5MDlxFkyf4Ei8B2uvFkco1I18
 djWNgGiHO3jXi8K+LeG7hwDOasJ9N63wPOxRoImPMxLJixma5xFwqwku7F6bwEJX4T8soc7DfT
 nJULOnAEmPuqMGAhChTGDjkbzeAYfXtmQdSWpr/plfoFcmDx2QUCo3wepjWTVljY2k786MQRPE
 tZcfKgCszRrFZglfEVWhc28oUR2vXhvxwgoL4bo/Qa0gCZczPFDt1NjGn59wsg+uor8c7cgMqa
 5PU=
X-IronPort-AV: E=Sophos;i="5.78,353,1599548400"; 
   d="scan'208";a="99122009"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 19 Nov 2020 10:04:50 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 19 Nov 2020 10:04:48 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Thu, 19 Nov 2020 10:04:46 -0700
From:   <conor.dooley@microchip.com>
To:     <robh+dt@kernel.org>, <jassisinghbrar@gmail.com>,
        <aou@eecs.berkeley.edu>, <paul.walmsley@sifive.com>,
        <palmer@dabbelt.com>, <devicetree@vger.kernel.org>,
        <linux-riscv@lists.infradead.org>
CC:     <lewis.hanly@microchip.com>, <cyril.jean@microchip.com>,
        <daire.mcnamara@microchip.com>, <atish.patra@wdc.com>,
        <anup.patel@wdc.com>, <david.abdurachmanov@gmail.com>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH 6/6] MAINTAINERS: add microchip polarfire soc support
Date:   Thu, 19 Nov 2020 17:04:45 +0000
Message-ID: <20201119170445.18795-1-conor.dooley@microchip.com>
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
index 3da6d8c154e4..2965daaa80e9 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15000,6 +15000,15 @@ F:	arch/riscv/
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

