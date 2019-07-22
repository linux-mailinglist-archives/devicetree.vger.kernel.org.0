Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1BEA370A87
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 22:20:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729128AbfGVUUe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 16:20:34 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:55372 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727808AbfGVUUe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jul 2019 16:20:34 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6MKKUcX063228;
        Mon, 22 Jul 2019 15:20:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1563826830;
        bh=jGA+cZiSLSnRMYqsz6m/UDZ8vwC3lDAu/9qePTX+uaw=;
        h=From:To:CC:Subject:Date;
        b=bCRItFTgKpOV3kL2QvligjxtQju7xfWgDbsBKgftTeu0574UnTvfxM4Vzkb4KnuWv
         ZZrHEYAXQFLdHlxQPvgBaiO8DaGybCwz6Oj5/InSP5oIFZ6gnoWjWiAQ/g6zS6NQ1x
         1ijxCitSKlVvLZ4uqmj12aLxIsM54FTcfRbmZjHI=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6MKKUsp115318
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 22 Jul 2019 15:20:30 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 22
 Jul 2019 15:20:30 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 22 Jul 2019 15:20:30 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com [128.247.22.53])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6MKKUZj099849;
        Mon, 22 Jul 2019 15:20:30 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
        by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x6MKKUZ21462;
        Mon, 22 Jul 2019 15:20:30 -0500 (CDT)
From:   Suman Anna <s-anna@ti.com>
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 0/4] Add Mailbox nodes for TI K3 AM65x & J721E SoCs
Date:   Mon, 22 Jul 2019 15:20:20 -0500
Message-ID: <20190722202024.14867-1-s-anna@ti.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Tero,

The following series adds the Mailbox DT nodes and the sub-mailboxes
used to communicate between the main MPU processor running Linux and
the various R5F and DSP remote processors present on the TI K3 AM65x
and J721E SoC families. Patches are based on v5.3-rc1 + the HwSpinlock
DT node series [1], and are intended for the 5.4 merge window. 

The bindings and driver support for the same have already been merged
in v5.3-rc1. Functionality is verified using a out-of-tree unit-test
module and some additional loopback test nodes available here [2] for
reference.

regards
Suman

[1] https://patchwork.kernel.org/cover/11053311/
[2] https://github.com/sumananna/mailbox/commits/mbox/test/5.3-rc1-k3

Suman Anna (4):
  arm64: dts: ti: k3-am65-main: Add mailbox cluster nodes
  arm64: dts: ti: k3-am65-main: Add IPC sub-mailbox nodes for R5Fs
  arm64: dts: ti: k3-j721e-main: Add mailbox cluster nodes
  arm64: dts: ti: k3-j721e-main: Add IPC sub-mailbox nodes for all R5Fs
    & DSPs

 arch/arm64/boot/dts/ti/k3-am65-main.dtsi  | 120 ++++++++++++++++
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 158 ++++++++++++++++++++++
 2 files changed, 278 insertions(+)

-- 
2.22.0

