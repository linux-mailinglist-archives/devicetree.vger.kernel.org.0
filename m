Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 63A096F8B3
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 07:08:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726139AbfGVFIu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 01:08:50 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:33716 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726024AbfGVFIt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jul 2019 01:08:49 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6M58f8j094913;
        Mon, 22 Jul 2019 00:08:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1563772121;
        bh=SG0BY7NmARWHPZ46WvVxOLib4UKMaQ/abgenQMLS8pE=;
        h=From:To:CC:Subject:Date;
        b=MOW+KtI5PzXhXUYnhzvy+6XB0LJXGwc2/EyXxCrLVzsPcHa5lGYtGl/KVRq1jB/1O
         dub3kA6PzqfY2yGxggr9tiPSojozgvLqQvVyf4XolypJoTdPQdbpzE29FOSSdJAoNk
         R3j5DUJihG4zopf5J4xLL5PccOjUdjToqvZ4mMU8=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6M58fCK010931
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 22 Jul 2019 00:08:41 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 22
 Jul 2019 00:08:40 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 22 Jul 2019 00:08:40 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6M58bwL039856;
        Mon, 22 Jul 2019 00:08:38 -0500
From:   Lokesh Vutla <lokeshvutla@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
CC:     Sekhar Nori <nsekhar@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v4 0/5] soc: ti: k3: Allow for exclusive and shared device requests
Date:   Mon, 22 Jul 2019 10:37:52 +0530
Message-ID: <20190722050757.29893-1-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Sysfw provides an option for requesting exclusive access for a
device using the flags MSG_FLAG_DEVICE_EXCLUSIVE. If this flag is
not used, the device is meant to be shared across hosts. Once a device
is requested from a host with this flag set, any request to this
device from a different host will be nacked by sysfw.

Current tisci firmware and pm drivers always requests for device with
exclusive permissions set. But this is not be true for certain devices
that are expcted to be shared across different host contexts.
So add support for getting the shared or exclusive permissions from DT
and request firmware accordingly.

Changes since v3: https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=103447
- Rebased on top of v5.3-rc1
- Updated power-domain cells for j721e.
- Mark the console uart as shared in am65x-base-board
- Added Reviewed-by from Rob

Lokesh Vutla (5):
  firmware: ti_sci: Allow for device shared and exclusive requests
  dt-bindings: ti_sci_pm_domains: Add support for exclusive and shared
    access
  soc: ti: ti_sci_pm_domains: Add support for exclusive and shared
    access
  arm64: dts: ti: k3-am654: Update the power domain cells
  arm64: dts: ti: k3-j721e: Update the power domain cells

 .../bindings/soc/ti/sci-pm-domain.txt         | 11 ++++-
 MAINTAINERS                                   |  1 +
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi      | 44 +++++++++---------
 arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi       | 10 ++---
 arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi    |  6 +--
 arch/arm64/boot/dts/ti/k3-am65.dtsi           |  1 +
 .../arm64/boot/dts/ti/k3-am654-base-board.dts |  1 +
 .../dts/ti/k3-j721e-common-proc-board.dts     |  4 ++
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 20 ++++-----
 .../boot/dts/ti/k3-j721e-mcu-wakeup.dtsi      |  6 +--
 arch/arm64/boot/dts/ti/k3-j721e.dtsi          |  1 +
 drivers/firmware/ti_sci.c                     | 45 ++++++++++++++++++-
 drivers/soc/ti/ti_sci_pm_domains.c            | 23 +++++++++-
 include/dt-bindings/soc/ti,sci_pm_domain.h    |  9 ++++
 include/linux/soc/ti/ti_sci_protocol.h        |  3 ++
 15 files changed, 136 insertions(+), 49 deletions(-)
 create mode 100644 include/dt-bindings/soc/ti,sci_pm_domain.h

-- 
2.21.0

