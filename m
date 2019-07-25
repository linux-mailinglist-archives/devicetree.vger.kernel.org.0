Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 808957426B
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2019 02:10:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388437AbfGYAKc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Jul 2019 20:10:32 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:49498 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388057AbfGYAKb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Jul 2019 20:10:31 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6P0AQMQ015356;
        Wed, 24 Jul 2019 19:10:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1564013426;
        bh=zEvTO0Udn/0fWpLDNjhTpf7b5lOPB1wh9q8pS43qibI=;
        h=From:To:CC:Subject:Date;
        b=nnD3B/O3unY47hXpkWt6BiJvhHQH5W6nNv5S+JK6JBcoh1/m/K7ID1MKjYOM2X/aF
         2V+bT5Hso4lekNRoRTYWWlDTOmfDKjlswfR7BlAXzInXo125IjmzrVTzKXarXM2bFe
         dPyzGXAQ9k1aeZXThx7zIiibFW9qE7YtlzP+hb64=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6P0AQMP030735
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 24 Jul 2019 19:10:26 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 24
 Jul 2019 19:10:25 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 24 Jul 2019 19:10:25 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com [128.247.22.53])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6P0APGA028555;
        Wed, 24 Jul 2019 19:10:25 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
        by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x6P0AOZ03252;
        Wed, 24 Jul 2019 19:10:24 -0500 (CDT)
From:   Suman Anna <s-anna@ti.com>
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH v2 0/4] Add Mailbox nodes for TI K3 AM65x & J721E SoCs
Date:   Wed, 24 Jul 2019 19:10:16 -0500
Message-ID: <20190725001020.23781-1-s-anna@ti.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Tero, Nishanth,

The following series is a revised version of the series [1] that adds
the Mailbox DT nodes and the sub-mailboxes used to communicate between
the main MPU processor running Linux and the various R5F and DSP remote
processors present on the TI K3 AM65x and J721E SoC families. Patches
are based on v5.3-rc1 + the HwSpinlock DT node series [2], and are
intended for the 5.4 merge window. Functionality is verified using a
out-of-tree unit-test module and some additional loopback test nodes
available here [3] for reference.

Changes in v2:
 - All clusters are enabled by default in base dtsi files
 - The sub-mailboxes are moved to the actual board dts files
 - Unused clusters disabled in the board dts files

regards
Suman

[1] https://patchwork.kernel.org/cover/11053401/
[2] https://patchwork.kernel.org/cover/11053311/
[3] https://github.com/sumananna/mailbox/commits/mbox/test/5.3-rc1-k3-v2

Suman Anna (4):
  arm64: dts: ti: k3-am65-main: Add mailbox cluster nodes
  arm64: dts: ti: k3-am65-base-board: Add IPC sub-mailbox nodes for R5Fs
  arm64: dts: ti: k3-j721e-main: Add mailbox cluster nodes
  arm64: dts: ti: k3-j721e-common-proc-board: Add IPC sub-mailbox nodes

 arch/arm64/boot/dts/ti/k3-am65-main.dtsi      | 108 ++++++++++++++++++
 .../arm64/boot/dts/ti/k3-am654-base-board.dts |  58 ++++++++++
 .../dts/ti/k3-j721e-common-proc-board.dts     |  93 +++++++++++++++
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 108 ++++++++++++++++++
 4 files changed, 367 insertions(+)

-- 
2.22.0

