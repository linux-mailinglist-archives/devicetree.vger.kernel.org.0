Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6B66537AB0F
	for <lists+devicetree@lfdr.de>; Tue, 11 May 2021 17:46:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231609AbhEKPrv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 May 2021 11:47:51 -0400
Received: from esa.microchip.iphmx.com ([68.232.153.233]:64898 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231804AbhEKPrv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 May 2021 11:47:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1620748005; x=1652284005;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=2wFNoG8f366htGhQt8VAHF5ZyPpaUVl2/KxdsBD2KTY=;
  b=fAX2fUftE0e3WSJwlVg2mSsaDYRTdarhgPLbvh8uNDy026wJeR1H9KT1
   YA0wPqq8j8ViIN3Qq0jIC8hKUmf66lhn/qPt0vvh+f0R9yhF0A1H0peWM
   WMwF3r82JYbm0P1AANmEhN0HYB7bSLZwfPjuvGZN9TzgsRiPNFL1lz6qC
   h7ZP+7tKScBCfqW9Deqh2wUPQciHhzv9Vw/ZaFrJmIpwEaKVGxr7LA7ip
   QTiI7DSnX+rCkOyaWvIfDEMz+ChZE0hp9agK0zLViKq9FB08fBf7k4N0W
   6l5SH/gAfMO0mv4Cs7RybZDvTox9UeOR5TOOiPwFDX8WrN29UdYX4zab3
   g==;
IronPort-SDR: 7VPdf6u1uldYlANmAUTf8Cs9wmc1Ja/pJAmKHvFRoVADALlJPQFQHYVm6ULh7yL5tyNfznn7OA
 Cr87ifwt3TW08bknBl+fs8kxmuTlRsfq2WocO9faRGtn6o+iJsZb+gahRcf7RpwqEte0UBg1CI
 aPj1pUJngeVg4aT00lvdl5UqIxz/i/qmZTmKPJc5GXyZLv/EmHJkJt7QMijpzxBQ1HS5w2yQy2
 8U7JzMFBVKzUajznsvtkpfdFSduXnOWJhZe4zT6MEeawYe8NCDcE8ZOo3XbTFGdPP4/j6Ca0Pf
 MKs=
X-IronPort-AV: E=Sophos;i="5.82,291,1613458800"; 
   d="scan'208";a="120688921"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 11 May 2021 08:46:44 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Tue, 11 May 2021 08:46:43 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Tue, 11 May 2021 08:46:41 -0700
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
Subject: [PATCH v7 5/5] MAINTAINERS: add entry for polarfire soc mailbox
Date:   Tue, 11 May 2021 16:46:40 +0100
Message-ID: <20210511154640.6831-1-conor.dooley@microchip.com>
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
index bd7aff0c120f..c3ec9407ce2c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15693,6 +15693,14 @@ F:	arch/riscv/
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

