Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3AF1129EB24
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 12:58:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725730AbgJ2L6q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 07:58:46 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:38516 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725710AbgJ2L6p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Oct 2020 07:58:45 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 09T3cFBx077948;
        Wed, 28 Oct 2020 22:38:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1603942695;
        bh=WW0LO+cP2rq85PI/Fw+ZoJmMWBtWWJ6ytKdcU67075U=;
        h=From:To:CC:Subject:Date;
        b=odZZ8Fksz81Y3xf5SU1D7qvqZc19dvkS/sEmRr6QWX1H5/QFtosY+dOF80Q/D2lAT
         Ni+pKbeplllkp8096Oiakir8VXDJheAMTOx2vizMsqMwu2bRlWdhikiSF4hemWmdG3
         iBNPh1RrDwyDDE9rwUXoQWRVCpsyyuxC5dmZGGnM=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 09T3cFEK004791
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 28 Oct 2020 22:38:15 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 28
 Oct 2020 22:38:15 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 28 Oct 2020 22:38:14 -0500
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 09T3cFAS102255;
        Wed, 28 Oct 2020 22:38:15 -0500
Received: from localhost ([10.250.39.72])
        by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 09T3cE6c113520;
        Wed, 28 Oct 2020 22:38:14 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 0/8] Add R5F nodes on TI K3 AM65x and J721E SoCs
Date:   Wed, 28 Oct 2020 22:37:54 -0500
Message-ID: <20201029033802.15366-1-s-anna@ti.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Nishanth,

The TI K3 R5F remoteproc driver and bindings were merged into 5.10-rc1,
and this series adds the follow-on base dt nodes for the R5F remote
processors on TI K3 AM65x and J721E SoCs. Additional memory nodes were
also added to boot these processors successfully on applicable TI K3
AM65x and J721E EVM boards. The series uses previously accepted mailbox
nodes.

The patches follow slightly different convention between AM65x and
J721E. The reserved-memory nodes are added directly in the relevant
board dts file for AM65x boards, while they are added in the common
k3-j721e-som-p0.dtsi file for J721E SoCs following the similar addition
of K3 C66x and C71x DSP nodes in 5.10-rc1.

Patches apply on top of your 5.10-rc1 based staging branch.

I have validated the IPC functionality using System Firmware v2020.04a
and corresponding IPC example firmwares. 

regards
Suman

Suman Anna (8):
  arm64: dts: ti: k3-am65-mcu: Add MCU domain R5F cluster node
  arm64: dts: ti: k3-am654-base-board: Add mailboxes to R5Fs
  arm64: dts: ti: k3-am654-base-board: Add DDR carveout memory nodes for
    R5Fs
  arm64: dts: ti: k3-am654-base-board: Reserve memory for IPC between
    R5F cores
  arm64: dts: ti: k3-j721e-mcu: Add MCU domain R5F cluster node
  arm64: dts: ti: k3-j721e-main: Add MAIN domain R5F cluster nodes
  arm64: dts: ti: k3-j721e-som-p0: Add mailboxes to R5Fs
  arm64: dts: ti: k3-j721e-som-p0: Add DDR carveout memory nodes for
    R5Fs

 arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi       |  42 ++++++-
 .../arm64/boot/dts/ti/k3-am654-base-board.dts |  45 ++++++-
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     |  82 ++++++++++++-
 .../boot/dts/ti/k3-j721e-mcu-wakeup.dtsi      |  42 ++++++-
 arch/arm64/boot/dts/ti/k3-j721e-som-p0.dtsi   | 110 +++++++++++++++++-
 5 files changed, 316 insertions(+), 5 deletions(-)

-- 
2.28.0

