Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 15EA7337173
	for <lists+devicetree@lfdr.de>; Thu, 11 Mar 2021 12:36:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232675AbhCKLfb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Mar 2021 06:35:31 -0500
Received: from esa.microchip.iphmx.com ([68.232.153.233]:4365 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232565AbhCKLf0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Mar 2021 06:35:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1615462526; x=1646998526;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=0SiAXxZU9xTZalFZ8LLDzB+0PPRiu5p6gIrxTDHRm1M=;
  b=yaJu4TZshNJeRhYjwxP8ffzr6X37vCMMaYrlqcJOhsyyP/HUrNFRGSLD
   gQzwrpKDUPOfymI9PA1L0K3+XlezjVlN2s2gFJvI77vVxGanDeflB9OA7
   w85whRu68V2mjbbN3G4enL+V2wilH6JpaamSbwxlCXD1omo478Tq1T+wB
   lDopkrBzcdF1WZXVFOfzmCLm5zEfxX5RFiZTF4+I77F9b1algC6paquJ9
   KFEcYfEqFCKQha1eE4r/+UMZNS5i4hHdIFHiVT838qTWcmELG5Ew4BaFU
   F1m5OWi5lr9neqlcdLJtbQ5lPKjuqkfveRgEzx9nUerWdqMha40JW+VQM
   A==;
IronPort-SDR: bZV3bhP16BqEqeySiF0SRfMpRSH9/C260M5QPO1Ov2ytY6MZNVM6HOpR9vaNUr72m64oXzggua
 BMGqgy23VsiaumpmWjfuketMhWwMlngz/ljJuDTSMrxPNrz4qRILPlfWqTIIBj/lYcEF2VFMnp
 tEObe/cM/KI67STDcV84PjoOu4R8fDUeRDWhkr02sL71/NhUeIYqK6li2hVJV+V246jM+QIUhW
 1IzxVA1SCF6mhXSc5wOUut8s60zfp2jGyjrgqgY0UtXp/4qsdVJdKXwH/2nEpsN6xts7lI/grz
 ir8=
X-IronPort-AV: E=Sophos;i="5.81,240,1610434800"; 
   d="scan'208";a="112819487"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 11 Mar 2021 04:35:26 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Thu, 11 Mar 2021 04:35:04 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Thu, 11 Mar 2021 04:35:02 -0700
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
Subject: [PATCH v4 5/5] MAINTAINERS: add entry for polarfire soc mailbox driver
Date:   Thu, 11 Mar 2021 11:35:01 +0000
Message-ID: <20210311113501.15745-1-conor.dooley@microchip.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

Add the mailbox driver to the existing MAINTAINERS entry for the polarfire
 soc

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 04590ba30340..a7d9e6f720ad 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15363,6 +15363,7 @@ M:	Lewis Hanly <lewis.hanly at microchip.com>
 M:	Cyril Jean <cyril.jean at microchip.com>
 L:	linux-riscv at lists.infradead.org
 S:	Supported
+F:	drivers/mailbox/mailbox-mpfs.c
 F:	drivers/soc/microchip/
 F:	include/soc/microchip/mpfs.h
 
-- 
2.17.1

