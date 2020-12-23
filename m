Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7BC302E1F78
	for <lists+devicetree@lfdr.de>; Wed, 23 Dec 2020 17:34:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726047AbgLWQeg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Dec 2020 11:34:36 -0500
Received: from esa.microchip.iphmx.com ([68.232.153.233]:62857 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725785AbgLWQeg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Dec 2020 11:34:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1608741275; x=1640277275;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=dYPZGNkeNLwFNM7ZbWk1HhdOD7XnxcZHTcC7mnA/goY=;
  b=K6bNZJIJzo3OfHv2ZGkt/u57bHJtoZmDbPrRxVRjUIZEvqWmajdOL0gP
   18MsP+VGlDk0OqpVrhp0XiE/QCKA6VOrW7Acze04cPMaUjntHa9cjgDWh
   D+5uaLw4YDol3ViWwaBxy4skeDpKfPrEgrhmqn4za0VhvcAfuU/nlekKO
   vqlfBHMcS9MmKZba0TaVfQbgWxpjaMHsIuXUVjm6V2j8WYH34Zk0PokSO
   lwiMapSLLhkofGFIiul3WYy7Lc/59ipJVjkU7enyjjD9YnMuYZna075UR
   6pnFJrH4W54BVmFz5yhpzTeNpCd87d20oPspkfYX4sJ+HHelssL7AVFSB
   Q==;
IronPort-SDR: yiJ1k/dFWF2ugYZs1v2M4r/mbI03gkCvf+kyQoYRDQe9B5ebnoq8xhJ/rYEP3RHJ02Di4iKNEN
 ZD9GlDS7CS9nr7xP13uvMntA19eAUgakpnGpZNIrfV8aybOrJrp561sFLUziIxM1/8sbnb5dQx
 yezdo3nHRQ1dcaWRwt/ivWxYWBcvLhNLGR6eL7WtExBvG2ZomQpPwkrOSD9U7WDlMNubGKPEwl
 ArNxa1Zn73ZDjTfzmV1EaJwJruzgj4tZ16ARYZBzORyc5UbMEqEQRogstTmd1YqNWWYRjhtpIX
 CB8=
X-IronPort-AV: E=Sophos;i="5.78,441,1599548400"; 
   d="scan'208";a="103833490"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 23 Dec 2020 09:33:28 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 23 Dec 2020 09:33:28 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Wed, 23 Dec 2020 09:33:25 -0700
From:   <conor.dooley@microchip.com>
To:     <robh+dt@kernel.org>, <damien.lemoal@wdc.com>,
        <jassisinghbrar@gmail.com>, <aou@eecs.berkeley.edu>,
        <paul.walmsley@sifive.com>, <palmer@dabbelt.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>
CC:     <lewis.hanly@microchip.com>, <cyril.jean@microchip.com>,
        <daire.mcnamara@microchip.com>, <atish.patra@wdc.com>,
        <anup.patel@wdc.com>, <david.abdurachmanov@gmail.com>,
        <j.neuschaefer@gmx.net>, Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 5/5] MAINTAINERS: add maintainers for polarfire soc mailbox driver
Date:   Wed, 23 Dec 2020 16:33:25 +0000
Message-ID: <20201223163325.29270-1-conor.dooley@microchip.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

Add the mailbox driver to the existing MAINTAINERS entry for the polarfire soc

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 5da634ea3adb..1e9b08ae1266 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15016,6 +15016,7 @@ M:     Lewis Hanly <lewis.hanly@microchip.com>
 M:     Cyril Jean <cyril.jean@microchip.com>
 L:     linux-riscv@lists.infradead.org
 S:     Supported
+F:	drivers/mailbox/mailbox-mpfs.c
 F:     drivers/soc/microchip/
 F:     include/soc/microchip/mpfs.h
 
-- 
2.17.1

