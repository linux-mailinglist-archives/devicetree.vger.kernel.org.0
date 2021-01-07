Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0EDC02ED6CB
	for <lists+devicetree@lfdr.de>; Thu,  7 Jan 2021 19:40:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729046AbhAGSkC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jan 2021 13:40:02 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:47458 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726427AbhAGSkC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jan 2021 13:40:02 -0500
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 107IdI4S064580;
        Thu, 7 Jan 2021 12:39:18 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1610044758;
        bh=eZ46Wm24Ue8Tm+8wYOTq1vMn30AME+VL5j1nRdEmEik=;
        h=From:To:CC:Subject:Date;
        b=AHNvmklLmYqn3Mb52t8u4Srzy0BRB83aGAunJ7hAGXd2ZZRo8XmVVw9t2CZWBopQS
         U1fBCrhykqC55VIfXrHMUawiYsI++eoSfsoPTbvRq5y23LK+qyCvQMWuwPfPnwTzoX
         gmUhIQKfJqIpQo4JD3SPeLUTp6tNKoXjDLj/jg7k=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 107IdIRN091901
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 7 Jan 2021 12:39:18 -0600
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 7 Jan
 2021 12:39:17 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 7 Jan 2021 12:39:17 -0600
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 107IdH2e015688;
        Thu, 7 Jan 2021 12:39:17 -0600
Received: from localhost ([10.250.33.36])
        by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 107IdHSI016452;
        Thu, 7 Jan 2021 12:39:17 -0600
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 0/5] Add R5F nodes on TI K3 J7200 SoCs
Date:   Thu, 7 Jan 2021 12:39:02 -0600
Message-ID: <20210107183907.6545-1-s-anna@ti.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Nishanth,

The TI K3 R5F remoteproc driver support for the R5F instances on J7200
SoCs is merged in 5.11-rc1, and this series adds the follow-on base
dt nodes for the R5F remote processors on TI K3 J7200 SoCs. The R5F
nodes on J7200 slightly differ from those on J721E SoCs highlighted
in the driver changes [1]. Additional memory nodes were also added to
boot these processors successfully on applicable TI K3 J7200 EVM boards.
The series uses previously merged mailbox nodes.

The patches follow the same style to similar patches added for J721E
SoCs [2]. Patches are on top of the latest v5.11-rc2 tag.

I have validated the IPC functionality using System Firmware
v2020.07-rc3 and corresponding IPC example firmwares.

regards
Suman

[1] https://patchwork.kernel.org/project/linux-arm-kernel/cover/20201119010531.21083-1-s-anna@ti.com/
[2] https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=372749&state=%2A&archive=both

Suman Anna (5):
  arm64: dts: ti: k3-j7200-mcu: Add MCU domain R5F cluster node
  arm64: dts: ti: k3-j7200-main: Add MAIN domain R5F cluster node
  arm64: dts: ti: k3-j7200-som-p0: Add mailboxes to R5Fs
  arm64: dts: ti: k3-j7200-som-p0: Add DDR carveout memory nodes for
    R5Fs
  arm64: dts: ti: k3-j7200-som-p0: Reserve memory for IPC between RTOS
    cores

 arch/arm64/boot/dts/ti/k3-j7200-main.dtsi     | 42 +++++++++-
 .../boot/dts/ti/k3-j7200-mcu-wakeup.dtsi      | 42 +++++++++-
 arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi   | 80 ++++++++++++++++++-
 3 files changed, 161 insertions(+), 3 deletions(-)

-- 
2.29.2

