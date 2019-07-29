Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9A8FA78BB6
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2019 14:25:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726738AbfG2MZu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Jul 2019 08:25:50 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:33448 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726281AbfG2MZu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Jul 2019 08:25:50 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6TCPeoP047169;
        Mon, 29 Jul 2019 07:25:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1564403140;
        bh=QONql/qooBcZcno2oWPNpb0xDksuazYqT9igEM/PyUM=;
        h=From:To:CC:Subject:Date;
        b=yEkpozwsyUme1bx5Lm9ChpOKaMf20NsOgwyL9ZM7YnfcxnfBUW67bUPsYeaQpFFxU
         axrBFS+3u1YE2LVRDByTlzkpivF9FpfN7N/pqesJw+/Jfr9PR4jhQl2zDNDI9aBQyz
         8jrdZZpXkGqPG8WH7ENpyDQLRMCGH++mKzpAOkek=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6TCPeeo089945
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 29 Jul 2019 07:25:40 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 29
 Jul 2019 07:25:40 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 29 Jul 2019 07:25:40 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6TCPbCC085709;
        Mon, 29 Jul 2019 07:25:37 -0500
From:   Lokesh Vutla <lokeshvutla@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
CC:     Sekhar Nori <nsekhar@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v5 0/3] soc: ti: k3: Allow for exclusive and shared device requests
Date:   Mon, 29 Jul 2019 17:54:50 +0530
Message-ID: <20190729122453.32252-1-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.22.0
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

Changes since v4: https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=148371
- Split the driver and arch changes into a separate series.
- Added Reviewed-by from Nishanth M
- Rebased on top of v5.3-rc2

Lokesh Vutla (3):
  firmware: ti_sci: Allow for device shared and exclusive requests
  dt-bindings: ti_sci_pm_domains: Add support for exclusive and shared
    access
  soc: ti: ti_sci_pm_domains: Add support for exclusive and shared
    access

 .../bindings/soc/ti/sci-pm-domain.txt         | 11 ++++-
 MAINTAINERS                                   |  1 +
 drivers/firmware/ti_sci.c                     | 45 ++++++++++++++++++-
 drivers/soc/ti/ti_sci_pm_domains.c            | 23 +++++++++-
 include/dt-bindings/soc/ti,sci_pm_domain.h    |  9 ++++
 include/linux/soc/ti/ti_sci_protocol.h        |  3 ++
 6 files changed, 86 insertions(+), 6 deletions(-)
 create mode 100644 include/dt-bindings/soc/ti,sci_pm_domain.h

-- 
2.21.0

