Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1D87F78BCB
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2019 14:31:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727034AbfG2MbO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Jul 2019 08:31:14 -0400
Received: from lelv0142.ext.ti.com ([198.47.23.249]:37832 "EHLO
        lelv0142.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726281AbfG2MbO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Jul 2019 08:31:14 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6TCVA29018211;
        Mon, 29 Jul 2019 07:31:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1564403470;
        bh=WkIvzTYMGOo+BeE/sna2FJqHS0aucP6+/eKNHn9wBL4=;
        h=From:To:CC:Subject:Date;
        b=cQTne9ngkvEICvYknwSxG98+DPDEMvzwOuX4tJ/7PLDtxpRURLhIFy2UMWBO5KRd7
         Y0iWgWF39ThjTDxF1eEBX5S8WDbCQoTwpugQnb7xD0eAuJmz+E2Qe+ylCujS2gDrml
         OnyUJOMgRVi4qwGu/XEb423TgrRLMBdFOEmeLD0o=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6TCVA5T083835
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 29 Jul 2019 07:31:10 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 29
 Jul 2019 07:31:10 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 29 Jul 2019 07:31:10 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6TCV7t1087075;
        Mon, 29 Jul 2019 07:31:08 -0500
From:   Lokesh Vutla <lokeshvutla@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
CC:     Sekhar Nori <nsekhar@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v5 0/2] arm64: dts: ti: k3: Update the power-domain cells
Date:   Mon, 29 Jul 2019 18:00:21 +0530
Message-ID: <20190729123023.32702-1-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Update the power-domains cells on all K3 based devices to reflect
exclusive and shared permissions in each device.

Changes since v4: https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=148371
- Split the dts changes into a separate series.
- Added Reviewed-by from Nishanth M
- Rebased on top of v5.3-rc2

Lokesh Vutla (2):
  arm64: dts: ti: k3-am654: Update the power domain cells
  arm64: dts: ti: k3-j721e: Update the power domain cells

 arch/arm64/boot/dts/ti/k3-am65-main.dtsi      | 44 +++++++++----------
 arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi       | 10 ++---
 arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi    |  6 +--
 arch/arm64/boot/dts/ti/k3-am65.dtsi           |  1 +
 .../arm64/boot/dts/ti/k3-am654-base-board.dts |  1 +
 .../dts/ti/k3-j721e-common-proc-board.dts     |  4 ++
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 20 ++++-----
 .../boot/dts/ti/k3-j721e-mcu-wakeup.dtsi      |  6 +--
 arch/arm64/boot/dts/ti/k3-j721e.dtsi          |  1 +
 9 files changed, 50 insertions(+), 43 deletions(-)

-- 
2.22.0

