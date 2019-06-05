Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 57A9D36161
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2019 18:34:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728581AbfFEQej (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jun 2019 12:34:39 -0400
Received: from lelv0142.ext.ti.com ([198.47.23.249]:57870 "EHLO
        lelv0142.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728574AbfFEQej (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jun 2019 12:34:39 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x55GYaDV130355;
        Wed, 5 Jun 2019 11:34:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1559752476;
        bh=EyRxgNDYnTkm/dfjnoK+S5JmanetNm6H7MORnEhgjec=;
        h=From:To:CC:Subject:Date;
        b=gOiBm9pBFHyqPy/yVhu0P83nh5IWbcq7xeovKvOoR6BKYUdPPMf2ZsjLfRPN7r9wc
         6Da9dtiw75MqhEMlvRiVsA5BYwEWaOQ+Bq7lUUTjVqNfeOMzX9MjqQ5gn6VlRuUw25
         W3H+AKKgJe2pxfTHrhMMa4KswWIGm+d9M88gF4E4=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x55GYZco010398
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 5 Jun 2019 11:34:35 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 5 Jun
 2019 11:34:35 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 5 Jun 2019 11:34:35 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com [128.247.22.53])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x55GYZlT023921;
        Wed, 5 Jun 2019 11:34:35 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
        by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x55GYZm10206;
        Wed, 5 Jun 2019 11:34:35 -0500 (CDT)
From:   Suman Anna <s-anna@ti.com>
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 0/4] Add MCU SRAM nodes for TI K3 SoCs
Date:   Wed, 5 Jun 2019 11:34:30 -0500
Message-ID: <20190605163434.23173-1-s-anna@ti.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Tero,

The following series adds the DT nodes for the MCU SRAM present within
the MCU domain for both AM65x and J721E SoCs. The first 2 patches enable
the MCU SRAM node to be probed properly on AM65x SoCs, and the third
patch the equivalent for J721E SoCs. The third patch depends on the
base J721E support patch series from Nishanth [1].

The last patch is not related to MCU SRAM, but adds the ranges for the
R5F cluster that is also present in the MCU domain in preparation for
the R5F nodes.

regards
Suman

[1] https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=121189 

Suman Anna (4):
  arm64: dts: ti: k3-am65: Add MCU SRAM ranges in interconnect nodes
  arm64: dts: ti: k3-am65-mcu: Add the MCU RAM node
  arm64: dts: ti: k3-j721e: Add the MCU SRAM node
  arm64: dts: ti: k3-am65: Add R5F ranges in interconnect nodes

 arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi         | 8 ++++++++
 arch/arm64/boot/dts/ti/k3-am65.dtsi             | 6 ++++++
 arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi | 8 ++++++++
 3 files changed, 22 insertions(+)

-- 
2.21.0

