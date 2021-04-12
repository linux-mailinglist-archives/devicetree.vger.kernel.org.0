Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E26C35CAB5
	for <lists+devicetree@lfdr.de>; Mon, 12 Apr 2021 18:04:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243205AbhDLQEm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Apr 2021 12:04:42 -0400
Received: from esa.microchip.iphmx.com ([68.232.153.233]:14487 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242899AbhDLQEl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Apr 2021 12:04:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1618243463; x=1649779463;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=NtsbRnX9UZiSvfgBEYfn5sxNum6q9ycjRRfSv7Rnq1w=;
  b=KfG/fKUkL38elGpx08c3ShMr0BqOLi/1i8C5tnDQqxArmWh6gONfybGd
   CCc9xImPrQ+ko2/z/79lsEs43E8kyNyWeLzCybV/lIX2jOGt0H+Ls77Sw
   RPWQtWviEBAz7AMPTeW/GSRDHZSo8v3U6886JNNXumD+tvk5ZMwbdrNnW
   GEdGTx/RjyaUWPfpg/qMUN9gkygW7RJWzyBYnoXtf0gQYvFCF5tcf3qWU
   YlbHZfHW78AbRsWxx6Zy+oly/HrqafHYtK1lZHgNxNGCA5ZiaEpMvy60b
   Vmdd3ePtj0hEVg2UfDV16Nw1aayuapOB8/Mx791mVSjDIj0xKP8DFy+h1
   A==;
IronPort-SDR: WAfHFwTkFGD2sCPhyDiM+VYGK7A0sP3rhyZILvCJYJ3dlxkXJxivG6ioMCuie+3v7GXXfcF3S8
 Z6qPEhK1LtEeS1vFS+ST2MDwhS71qeURjBVcTfzKZzRew5IiSOWYPVxEMpt/WmW99OYRzGhh57
 KhcSQtVC/P3zyHqCQdDdeVl7RczzX2sK0pgVTymx5cohIZ/36Gstx5IMhPwTN61caSOd/nnZRu
 ikq65kLeouLDIqVBHlf+tb4nC48/9Dv3lYPmgDRE3UZTyaPynJEqPFI7LlBD/T0FvdP77eFGWz
 16M=
X-IronPort-AV: E=Sophos;i="5.82,216,1613458800"; 
   d="scan'208";a="116697957"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 12 Apr 2021 09:04:23 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Mon, 12 Apr 2021 09:04:22 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Mon, 12 Apr 2021 09:04:20 -0700
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
Subject: [PATCH v5 5/5] MAINTAINERS: add entry for polarfire soc mailbox driver
Date:   Mon, 12 Apr 2021 17:04:19 +0100
Message-ID: <20210412160419.19595-1-conor.dooley@microchip.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
index 8246a19a4fde..996d7d3b7d07 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15357,6 +15357,7 @@ M:	Lewis Hanly <lewis.hanly at microchip.com>
 M:	Cyril Jean <cyril.jean at microchip.com>
 L:	linux-riscv at lists.infradead.org
 S:	Supported
+F:	drivers/mailbox/mailbox-mpfs.c
 F:	drivers/soc/microchip/
 F:	include/soc/microchip/mpfs.h
 
-- 
2.31.1

