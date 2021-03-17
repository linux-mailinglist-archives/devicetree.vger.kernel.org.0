Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CED7133FBB2
	for <lists+devicetree@lfdr.de>; Thu, 18 Mar 2021 00:11:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229570AbhCQXKh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Mar 2021 19:10:37 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:46318 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229472AbhCQXKK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Mar 2021 19:10:10 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12HN9vrI024210;
        Wed, 17 Mar 2021 18:09:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1616022597;
        bh=zQ4WDMUMuAde4qrMHhgP5bJLOvJvm82u3FMiwr2MjII=;
        h=From:To:CC:Subject:Date;
        b=xayao+DDQKnvXMmgiowH6d6twmtWVZjtuCuwUeNZ4vcijpJHU6FfGU3LTGMeQ1boX
         46SHZWgZizwCwGL/7J7JkJXnHgGOqUytKCo33zBHjLUOuJovLXEn1/CLoWHVrYd+Aa
         e1/YDv/zfVh5BWpvPOdAm/MptK1FsAvV8cBXyRIQ=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12HN9vRc029093
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 17 Mar 2021 18:09:57 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 17
 Mar 2021 18:09:57 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 17 Mar 2021 18:09:57 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12HN9vRt118333;
        Wed, 17 Mar 2021 18:09:57 -0500
Received: from localhost ([10.250.32.139])
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 12HN9vLm002385;
        Wed, 17 Mar 2021 18:09:57 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 0/4] AM64x HwSpinlock and Mailbox DT nodes
Date:   Wed, 17 Mar 2021 18:09:42 -0500
Message-ID: <20210317230946.23675-1-s-anna@ti.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Nishanth,

The following series adds the HwSpinlock and Mailbox DT nodes for
AM64x SoCs on AM64x-EVM and AM64x-SK boards. The bindings for both
drivers were merged in 5.12-rc1.

Patches are based on top of your latest ti-k3-dts-next branch,
commit 04a80a75baa1 ("arm64: dts: ti: k3-am642-evm: Add USB support").

Following is the patch summary:
 - Patch 1 adds the HwSpinlock node
 - Patch 2 adds all the relevant Mailbox clusters that generate
   interrupts towards A53
 - Patches 3 and 4 add the actual communication sub-mailbox devices
   and disables unused clusters for AM64x EVM and AM64x SK boards
   respectively.

Boot Logs:
1. AM64x EVM: https://pastebin.ubuntu.com/p/JMxrqr2zQN/
2. AM64x SK: https://pastebin.ubuntu.com/p/rJcyXvD9hV/

regards
Suman

Suman Anna (4):
  arm64: dts: ti: k3-am64-main: Add hwspinlock node
  arm64: dts: ti: k3-am64-main: Add mailbox cluster nodes
  arm64: dts: ti: k3-am642-evm: Add IPC sub-mailbox nodes
  arm64: dts: ti: k3-am642-sk: Add IPC sub-mailbox nodes

 arch/arm64/boot/dts/ti/k3-am64-main.dtsi | 64 ++++++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am642-evm.dts  | 43 ++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am642-sk.dts   | 43 ++++++++++++++++
 3 files changed, 150 insertions(+)

-- 
2.30.1

