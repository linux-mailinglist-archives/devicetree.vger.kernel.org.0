Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B8733A89DB
	for <lists+devicetree@lfdr.de>; Tue, 15 Jun 2021 21:57:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229979AbhFOT7f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Jun 2021 15:59:35 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:32782 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230144AbhFOT7e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Jun 2021 15:59:34 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 15FJvObA105581;
        Tue, 15 Jun 2021 14:57:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1623787044;
        bh=2Gqzj70UQYOjQZBe/Kk9vAJwmvsc2ef+haBHXyrCq04=;
        h=From:To:CC:Subject:Date;
        b=JJayzESp01KP3uOyMiYOXaCjPn0R8jWz2UEAhF2QZ6mOaWTNjJ52GvCmvyiumKuyr
         fCcE3omy34KeYnDlsawCpR7A36H/ZAk1d89iapAkQLqL3gH7G5CPqyE+QrJlrrnmkq
         L3wr8xGYB02mzgd/j4c9xIOrHBHydQ7dwuzrOvq0=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 15FJvO5F015543
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 15 Jun 2021 14:57:24 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Tue, 15
 Jun 2021 14:57:23 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Tue, 15 Jun 2021 14:57:23 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 15FJvNM0123060;
        Tue, 15 Jun 2021 14:57:23 -0500
Received: from localhost ([10.250.35.153])
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 15FJvNUa095741;
        Tue, 15 Jun 2021 14:57:23 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH v2 0/3] Add R5F nodes on TI K3 AM64x SoCs
Date:   Tue, 15 Jun 2021 14:57:15 -0500
Message-ID: <20210615195718.15898-1-s-anna@ti.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Nishanth,

This is a rebased version of the K3 AM64x R5F node series posted previously.
Please see the v1 cover-letter for all the functional details [1]. I have
dropped Patch 4 [2] from the previous series as per the discussion and agreed
upon in [2] until we align on the longer-term memory utilization of OCM RAM.

Patches are on top of your latest staged ti-k3-dts-next branch commit
d65f069e50a3 (arm64: dts: ti: Drop reg-io-width/reg-shift from UART nodes")
+ Aswath's [PATCH v4 0/3] AM64: Update the locations of various elements in SRAM
series (can't see the links on lakml patchworks).

Bjorn has staged a tag from remoteproc tree with just the bindings [3]
that you can use for merging this series for v5.14. The driver support
will come through remoteproc tree.

I have validated the IPC functionality using System Firmware v2021.01a
with appropriate U-Boot that goes along with Aswath's series and corresponding
legacy PDK IPC example firmwares.

regards
Suman

[1] https://patchwork.kernel.org/project/linux-arm-kernel/cover/20210528144718.25132-1-s-anna@ti.com/
[2] https://patchwork.kernel.org/project/linux-arm-kernel/patch/20210528144718.25132-5-s-anna@ti.com/
[3] https://git.kernel.org/pub/scm/linux/kernel/git/andersson/remoteproc.git/log/?h=20210327143117.1840-2-s-anna@ti.com 

Suman Anna (3):
  arm64: dts: ti: k3-am64-main: Add MAIN domain R5F cluster nodes
  arm64: dts: ti: k3-am642-evm/sk: Add mailboxes to R5Fs
  arm64: dts: ti: k3-am642-evm/sk: Add DDR carveout memory nodes for
    R5Fs

 arch/arm64/boot/dts/ti/k3-am64-main.dtsi | 84 ++++++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am642-evm.dts  | 78 ++++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am642-sk.dts   | 78 ++++++++++++++++++++++
 3 files changed, 240 insertions(+)

-- 
2.30.1

