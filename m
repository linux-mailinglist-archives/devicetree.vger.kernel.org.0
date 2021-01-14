Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC88F2F6B78
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 20:49:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729157AbhANTtB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 14:49:01 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:43064 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728474AbhANTtA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 14:49:00 -0500
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10EJmAfF106762;
        Thu, 14 Jan 2021 13:48:10 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1610653690;
        bh=TWFuehf5/l5C/yZVA7eB9F/IIzXdebBg+mVV6tMOOOU=;
        h=From:To:CC:Subject:Date;
        b=QJlnPMWmHKiEPEAA3AHchkb8Pk7IXcYqqURQ6Bwff4MRqRWhmMwtbkmbFb2FAOUd+
         w7ZOg387YeKNZKxuxnIDi589jOdKXjDSlehFRb+IOBTq1ysrbQLVLnhECTSTpCsIRB
         cZlHOzsCV0PI91qyyH4HVmC6NFh6U7iJ+gPBA9Ms=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10EJmA0F105931
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 14 Jan 2021 13:48:10 -0600
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 14
 Jan 2021 13:48:10 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 14 Jan 2021 13:48:10 -0600
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10EJmAvt123106;
        Thu, 14 Jan 2021 13:48:10 -0600
Received: from localhost ([10.250.34.42])
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 10EJmAcW043599;
        Thu, 14 Jan 2021 13:48:10 -0600
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>
CC:     Jan Kiszka <jan.kiszka@siemens.com>,
        Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Roger Quadros <rogerq@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 0/2] Add ICSSG nodes on AM65x & J721E SoCs
Date:   Thu, 14 Jan 2021 13:48:03 -0600
Message-ID: <20210114194805.8231-1-s-anna@ti.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Nishanth,

The following series adds the DT nodes for the Programmable Real-Time
Unit and Industrial Communication Subsystems - Gigabit (PRU_ICSSG or
simply ICSSG, normally called PRU-ICSS or PRUSS on earlier SoCs) present
within the MAIN domain on the AM65x and J721E SoCs. For details, please
refer to the respective Technical Reference Manuals [1][2] or the cover
letter from the first foundation PRUSS platform driver [3].

The sub-system is represented through multiple platform device nodes
which are supported through a corresponding platform driver, like the
PRUSS platform driver, PRUSS irqchip driver and a PRU remoteproc driver
(recently upstreamed in 5.10, 5.11 kernels). This series adds the
foundation ICSSG nodes, that can in turn be referenced and used by PRU
client/application drivers. The client bindings and driver changes are
currently under review [4][5], but won't affect these nodes.

The ICSSG nodes for AM65x are as per the Section 6.5 of the AM65x TRM
for SR2.0. There are some minor functional differences between the two
IP revisions, but the dts node representation difference will only be the
Tx_PRUs nodes which have to be disabled in any derivative SR1.0-based dts
files.

Patches are on top of 5.11-rc1 + your ti-k3-dts-next branch.

Note that the interrupt nodes will generate a warning about missing
'#address-cells' when compiled using W=2, but adding that currently
fails the dtbs_check, so going with the dt binding compliance.

regards
Suman

[1] AM65x TRM Rev.E: http://www.ti.com/lit/pdf/spruid7
[2] J721E TRM Rev.B: http://www.ti.com/lit/zip/spruil1
[3] https://patchwork.kernel.org/project/linux-arm-kernel/cover/1596020528-19510-1-git-send-email-grzegorz.jaszczyk@linaro.org/
[4] https://patchwork.kernel.org/project/linux-remoteproc/patch/20201216165239.2744-2-grzegorz.jaszczyk@linaro.org/
[5] https://patchwork.kernel.org/project/linux-remoteproc/patch/20201211184811.6490-2-grzegorz.jaszczyk@linaro.org/

Suman Anna (2):
  arm64: dts: ti: k3-am65-main: Add ICSSG nodes
  arm64: dts: ti: k3-j721e-main: Add ICSSG nodes

 arch/arm64/boot/dts/ti/k3-am65-main.dtsi  | 393 ++++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 262 +++++++++++++++
 2 files changed, 655 insertions(+)

-- 
2.29.2

