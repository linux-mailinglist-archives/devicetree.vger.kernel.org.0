Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 65ECD3975FB
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 17:00:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234074AbhFAPCf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 11:02:35 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:56558 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233797AbhFAPCc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 11:02:32 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 151F0cTT072810;
        Tue, 1 Jun 2021 10:00:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1622559638;
        bh=mn3NOWcjSH2+z1oO2g2mGjbZGwSazQ1vA3SC266Cq+k=;
        h=From:To:CC:Subject:Date;
        b=NgtPk7HQy/kx2xUdGpVq4K/VkLAEu2LFAzNG1F9RQjNvd2J0gonZuSIpiUnZ10JL4
         bUdeNpYqEYwAw1IV2j2gQJWF/KeXgEK0Gl5SveItYyIdn3BevPxuRn87AQxNGm5jig
         wE/2s90FFJjhO2zRA3uIoK9qTGJe42cfLYl3o6v0=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 151F0cn5118061
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 1 Jun 2021 10:00:38 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Tue, 1 Jun
 2021 10:00:38 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Tue, 1 Jun 2021 10:00:38 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 151F0cpE098563;
        Tue, 1 Jun 2021 10:00:38 -0500
Received: from localhost ([10.250.35.153])
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 151F0bDv109670;
        Tue, 1 Jun 2021 10:00:38 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>
CC:     Jan Kiszka <jan.kiszka@siemens.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH v2 0/2] Add ICSSG MDIO nodes on AM65x & J721E SoCs
Date:   Tue, 1 Jun 2021 10:00:30 -0500
Message-ID: <20210601150032.11432-1-s-anna@ti.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Nishanth,

he following series is a resend of the ICSSG DT nodes [1] for the 5.14
merge window. Patches are just rebased on top of 5.13-rc1 + your latest
ti-k3-dts-next branch HEAD commit 69db725cdb2b ("arm64: dts: ti:
k3-am654x/j721e/j7200-common-proc-board: Fix MCU_RGMII1_TXC direction")
+ Aswath's AM65x MMCSD1 UHS-I patch [2]. There are no code changes w.r.t
v1, I have picked up Reviewed-by tags from Jan and Grygorii.

regards
Suman

[1] https://patchwork.kernel.org/project/linux-arm-kernel/cover/20210514224759.9987-1-s-anna@ti.com/
[2] https://patchwork.kernel.org/project/linux-arm-kernel/patch/20210529033749.6250-1-a-govindraju@ti.com/

Roger Quadros (1):
  arm64: dts: ti: k3-am65-main: Add ICSSG MDIO nodes

Suman Anna (1):
  arm64: dts: ti: k3-j721e-main: Add ICSSG MDIO nodes

 .../boot/dts/ti/k3-am65-iot2050-common.dtsi   | 12 ++++++++
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi      | 30 +++++++++++++++++++
 .../arm64/boot/dts/ti/k3-am654-base-board.dts | 12 ++++++++
 .../dts/ti/k3-j721e-common-proc-board.dts     |  8 +++++
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 20 +++++++++++++
 5 files changed, 82 insertions(+)

-- 
2.30.1

