Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 33D303B1EFF
	for <lists+devicetree@lfdr.de>; Wed, 23 Jun 2021 18:50:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229688AbhFWQw6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Jun 2021 12:52:58 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:51780 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229523AbhFWQw5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Jun 2021 12:52:57 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 15NGoX5K082740;
        Wed, 23 Jun 2021 11:50:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1624467033;
        bh=KQT5OwEaiSGomyhFNIlIMFbSzAYJ5PQyWz7JtlD0Ntw=;
        h=From:To:CC:Subject:Date;
        b=wbRGByWMuxf698M7tCPontt10azAUU+Nm4kPJcyZiWwjfEvnsveOHcbttP24CjOrn
         77sukRY1ug0ANg6Dd8K6u7EDyzsPYqPdbXs/vz1VTopulQVdDOldVh9gREHeMpdCzh
         Xni8bzmht0NeAYu2JYfOEfJJgURrJbIu3yvDwNlc=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 15NGoX3t026551
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 23 Jun 2021 11:50:33 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 23
 Jun 2021 11:50:32 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 23 Jun 2021 11:50:33 -0500
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 15NGoW02117921;
        Wed, 23 Jun 2021 11:50:32 -0500
Received: from localhost ([10.250.33.41])
        by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 15NGoW7B006920;
        Wed, 23 Jun 2021 11:50:32 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Santosh Shilimkar <ssantosh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
CC:     Kishon Vijay Abraham I <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Jan Kiszka <jan.kiszka@siemens.com>,
        Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 0/2] Add AM64x SoC support to PRUSS platform driver
Date:   Wed, 23 Jun 2021 11:50:30 -0500
Message-ID: <20210623165032.31223-1-s-anna@ti.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Santosh,

The following series adds the base support for the ICSSG IP on AM64x SoCs.
Patches are on top of v5.13-rc1 + minor fix that Jan had posted [1].

The ICSSG IP on AM64x is a minor revised version that looks almost same as
the version used on J721E. There is no SGMII support on AM64x SoCs, but
otherwise they have the same 2 PRUs, 2 RTUS and 2 Tx_PRUs just like J721E
and AM65x SR2.0 SoCs.

The CFG sub-module is the only sub-module that has a different revision
version w.r.t J721E. J721E and AM65x differed in CFG, ECC Aggregator,
RAT Slices. ECAP, INTC, MDIO and UART0 are all identical. There are no
revision registers on IEP0/IEP1, MII_RT, MII_G_RT, PROTECT or TASK Manager
modules, and these look to be identical from a quick register comparision
from TRM. There are no SGMII registers at all. IEP, MII_RT and MII_G_RT
are also syscon nodes, so any differences would have to be dealt
within the client drivers.

regards,
Suman

[1] https://patchwork.kernel.org/project/linux-arm-kernel/patch/d6e24953-ea89-fd1c-6e16-7a0142118054@siemens.com/

Suman Anna (2):
  dt-bindings: soc: ti: pruss: Update bindings for K3 AM64x SoCs
  soc: ti: pruss: Enable support for ICSSG subsystems on K3 AM64x SoCs

 Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml | 6 ++++--
 drivers/soc/ti/pruss.c                                 | 1 +
 2 files changed, 5 insertions(+), 2 deletions(-)

-- 
2.30.1

