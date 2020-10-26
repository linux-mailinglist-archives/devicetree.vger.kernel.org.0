Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 41A37299A62
	for <lists+devicetree@lfdr.de>; Tue, 27 Oct 2020 00:27:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2406067AbgJZX1A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Oct 2020 19:27:00 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:53940 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405905AbgJZX0x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Oct 2020 19:26:53 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 09QNQk3o021125;
        Mon, 26 Oct 2020 18:26:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1603754806;
        bh=Q3jxC6W0cImy1LxLzFtvktaUDEhoAd7VCcIpAmY6R1Q=;
        h=From:To:CC:Subject:Date;
        b=A46fM4K819bD+LbpwOXo+9qgLvJGVW9Rw9MJWY4JC5N+WH8vnWqa3xtxIRuOkasiv
         5u9QJryoAYZhMe9EdwDYu+kW6p1BICERoCKA39aLvkKSCrWOHHB1qGIhoBrclHi5WG
         +rDQt3RgEgcY4H4AiDJ7/yjem+YriKT4jfmBm1JQ=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 09QNQksN007685
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 26 Oct 2020 18:26:46 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 26
 Oct 2020 18:26:46 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 26 Oct 2020 18:26:46 -0500
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 09QNQkdh064931;
        Mon, 26 Oct 2020 18:26:46 -0500
Received: from localhost ([10.250.39.72])
        by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 09QNQkkW032106;
        Mon, 26 Oct 2020 18:26:46 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 0/3] Add HwSpinlock & Mailbox nodes on J7200 SoCs
Date:   Mon, 26 Oct 2020 18:26:34 -0500
Message-ID: <20201026232637.15681-1-s-anna@ti.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Nishanth,

The following series adds the HwSpinlock and Mailbox nodes for the J7200
series. The sub-mailbox nodes that will be used by the K3 R5F remoteproc
nodes are also added to the k3-j7200-som-p0.dtsi file in sync with the
convention used on J721E SoCs.

Patches are based on 5.10-rc1 and your current staged branch commit 
9dcd17be61e4 ("arm64: dts: ti: k3-am65: ringacc: drop 
ti,dma-ring-reset-quirk")

FYI, the HwSpinlock binding has been converted to YAML in 5.10-rc1, but
the Mailbox bindings are still in text format.

regards
Suman

Suman Anna (3):
  arm64: dts: ti: k3-j7200-main: Add hwspinlock node
  arm64: dts: ti: k3-j7200-main: Add mailbox cluster nodes
  arm64: dts: ti: k3-j7200-som-p0: Add IPC sub-mailbox nodes

 arch/arm64/boot/dts/ti/k3-j7200-main.dtsi   | 114 ++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi |  68 ++++++++++++
 2 files changed, 182 insertions(+)

-- 
2.28.0

