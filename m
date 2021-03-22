Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B101D344F49
	for <lists+devicetree@lfdr.de>; Mon, 22 Mar 2021 19:55:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232158AbhCVSzK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Mar 2021 14:55:10 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:35866 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232147AbhCVSyl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Mar 2021 14:54:41 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12MIsYMd108087;
        Mon, 22 Mar 2021 13:54:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1616439274;
        bh=ZzkdV/ZTtTsujKdSN7lpcDm5B3Vq2lYRwrxWwMFjRZ8=;
        h=From:To:CC:Subject:Date;
        b=SxOFjXirIhCWhU6WajIhDij9Q8IRxRWJgZqQ5+ZU3stn911mnGFaCqbEubpaajFm0
         LQgtOQhGxTLnW69JLxtNlojWJrmp6wI16KOPpNSGht1eDkW0za5NdCw/UpeNVHjhdq
         cjJgyAfM6lFX1HkpVvOjGYjn5j5w1SpKnVtP6D+U=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12MIsY3E084329
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 22 Mar 2021 13:54:34 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Mon, 22
 Mar 2021 13:54:33 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Mon, 22 Mar 2021 13:54:34 -0500
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12MIsXUh086642;
        Mon, 22 Mar 2021 13:54:33 -0500
Received: from localhost ([10.250.66.107])
        by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 12MIsXHu019553;
        Mon, 22 Mar 2021 13:54:33 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>
CC:     Gowtham Tammana <g-tammana@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH v2 0/3] AM64x HwSpinlock and Mailbox DT nodes
Date:   Mon, 22 Mar 2021 13:54:27 -0500
Message-ID: <20210322185430.957-1-s-anna@ti.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Nishanth,

The following is a minor revision of the HwSpinlock and Mailbox DT nodes
series [1] for AM64x SoCs on both AM64x-EVM and AM64x-SK boards. The main
change is the squashing of the individual board dts patches into a single
patch as per your request, and rebasing on your current latest ti-k3-dts-next
branch HEAD commit e4e4e89482ea ("arm64: dts: ti: k3-am64-evm/sk: Add OSPI
flash DT node"). I have also picked up Gowtham's Reviewed-by tags.

The code changes are exactly identical to v1, other than the rebase and
squash.

regards
Suman

[1] https://patchwork.kernel.org/project/linux-arm-kernel/cover/20210317230946.23675-1-s-anna@ti.com/

Suman Anna (3):
  arm64: dts: ti: k3-am64-main: Add hwspinlock node
  arm64: dts: ti: k3-am64-main: Add mailbox cluster nodes
  arm64: dts: ti: k3-am642-evm/sk: Add IPC sub-mailbox nodes

 arch/arm64/boot/dts/ti/k3-am64-main.dtsi | 64 ++++++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am642-evm.dts  | 43 ++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am642-sk.dts   | 43 ++++++++++++++++
 3 files changed, 150 insertions(+)

-- 
2.30.1

