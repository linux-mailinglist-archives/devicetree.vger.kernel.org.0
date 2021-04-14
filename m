Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A56A435F87F
	for <lists+devicetree@lfdr.de>; Wed, 14 Apr 2021 18:08:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230352AbhDNPyd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Apr 2021 11:54:33 -0400
Received: from esa.microchip.iphmx.com ([68.232.154.123]:40061 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231642AbhDNPy2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Apr 2021 11:54:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1618415647; x=1649951647;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=/KGk8I8m0j2VmOPYq7abEM0DKHicSdwT4puY/U8F15Y=;
  b=sOlxhM4z5XyN2zClnE+DAm2bFFIYRUNrmTpbJYWGT6S/m0kgs4LOSlfL
   Jv0BxuRIcknpg087eEQ+ui5rxm7JWnC19ZUk3nZO1DAzvfNNvsW9rCoYV
   OhIS9cLre88xTUiMshOB9jNgtk50+e1M+My1kJqetFqN28giWwxg2ZCAU
   5ciPKu42aq8BivKmZYgeKDpmoxqxqb+Dp1O4deD6I3cIyD2BB8fhE4n6Q
   YBOc7nqMpSCyqiR5+0n/yID1sxbAFtSCPF4UOTDie25iyRm7Y8jfX01Tr
   UdHAltkxDbY3nIXIxy0Z2nMGES15x4St1/6ZNl726Hl1BzEPx+XdicXLU
   A==;
IronPort-SDR: makIn7PkMyJY5XX2jaRoSn0KvBrJKDaW1zDoiOL6H/bT6eCssMrWiulXA06B0USqFRNdPs0g6l
 bKxfUEitsjTDgLSEqp56vDpM7kgmnXetwfTLKUooMBFbPkc0Y72PHKs8hsOnyiegwsYNdvFVg5
 gaFMDVcI8DWGWdXSFXDT5quZ8GFjI7iZZkanAOyoD2tbVYrTO+KjerzORORkLlzqPe5lFwjAlO
 Ji2dhaBoPOejgm6Nn34sXPrtMaRIWzjaEdfXe0vjbeyq30FxdJyMkhVlgZyOajVFdgfwigsRix
 R1Q=
X-IronPort-AV: E=Sophos;i="5.82,222,1613458800"; 
   d="scan'208";a="110799902"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 14 Apr 2021 08:54:06 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Wed, 14 Apr 2021 08:54:06 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Wed, 14 Apr 2021 08:54:03 -0700
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
Subject: [PATCH v6 5/5] MAINTAINERS: add entry for polarfire soc mailbox driver
Date:   Wed, 14 Apr 2021 16:54:03 +0100
Message-ID: <20210414155403.29800-1-conor.dooley@microchip.com>
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
index fc7eb045d65f..4b7590c5527d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15364,6 +15364,7 @@ M:	Lewis Hanly <lewis.hanly at microchip.com>
 M:	Cyril Jean <cyril.jean at microchip.com>
 L:	linux-riscv at lists.infradead.org
 S:	Supported
+F:	drivers/mailbox/mailbox-mpfs.c
 F:	drivers/soc/microchip/
 F:	include/soc/microchip/mpfs.h
 
-- 
2.31.1

