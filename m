Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 13D02394468
	for <lists+devicetree@lfdr.de>; Fri, 28 May 2021 16:47:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234845AbhE1Os7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 May 2021 10:48:59 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:55624 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234752AbhE1Os6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 May 2021 10:48:58 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14SElJBl101735;
        Fri, 28 May 2021 09:47:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1622213239;
        bh=JAbiSJamzsBRZ+d4nOMytfKJrNTDLM/S3s38pw9pBpE=;
        h=From:To:CC:Subject:Date;
        b=vs+HRah8eh/DM3YfR9nQCw6l6STbGPDZ9HI+UOEBPMhuljAGxoBMwK3xLXlFHcms1
         5zXdKXrAqlYdMyOZpOYVj0Zl2ZDiybTqie9x6PtuSHRaWqYqtwvhhHE4Mly63XW7bD
         Ht5tcxZfh5hmDK3153aH+09KgZ3s1upuQ0J8KzSo=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14SElJtQ124345
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 28 May 2021 09:47:19 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 28
 May 2021 09:47:18 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 28 May 2021 09:47:19 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14SElIPe033535;
        Fri, 28 May 2021 09:47:18 -0500
Received: from localhost ([10.250.35.153])
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 14SElIgk005114;
        Fri, 28 May 2021 09:47:18 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 0/4] Add R5F nodes on TI K3 AM64x SoCs
Date:   Fri, 28 May 2021 09:47:14 -0500
Message-ID: <20210528144718.25132-1-s-anna@ti.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Nishanth,

The TI K3 R5F remoteproc driver support for the R5F instances on AM64x
SoCs will be merged for 5.14-rc1, and this series adds the corresponding
base dt nodes for the R5F remote processors on TI K3 AM64x SoCs. This
series along with the corresponding driver changes allows to boot these
processors successfully on applicable TI K3 AM64x EVM and SK boards. The
series uses previously merged mailbox nodes.

The R5Fs on AM64x slightly differ from earlier K3 SoCs in that they support
a new "Single-CPU" mode. Please see the driver changes cover-letter for
additional feature differences [1].

Patches are on top of the latest v5.13-rc1 tag + the AM64 R5F bindings.
Bjorn has staged a tag from remoteproc tree with just the bindings [2]
that you can use for merging this series for v5.14. The driver support
will come through remoteproc tree. The patches follow the same style to
similar patches added for J7200 SoCs [3]. 

I have validated the IPC functionality using System Firmware v2021.01a
and corresponding IPC example firmwares.

regards
Suman

[1] https://patchwork.kernel.org/project/linux-remoteproc/cover/20210318215842.8196-1-s-anna@ti.com/
[2] https://git.kernel.org/pub/scm/linux/kernel/git/andersson/remoteproc.git/log/?h=20210327143117.1840-2-s-anna@ti.com 
[3] https://patchwork.kernel.org/project/linux-arm-kernel/cover/20210111184554.6748-1-s-anna@ti.com/

Suman Anna (4):
  arm64: dts: ti: k3-am64-main: Add MAIN domain R5F cluster nodes
  arm64: dts: ti: k3-am642-evm/sk: Add mailboxes to R5Fs
  arm64: dts: ti: k3-am642-evm/sk: Add DDR carveout memory nodes for
    R5Fs
  arm64: dts: ti: k3-am642-evm/sk: Reserve some on-chip SRAM for R5Fs

 arch/arm64/boot/dts/ti/k3-am64-main.dtsi |  84 +++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am642-evm.dts  | 100 +++++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am642-sk.dts   | 100 +++++++++++++++++++++++
 3 files changed, 284 insertions(+)

-- 
2.30.1

