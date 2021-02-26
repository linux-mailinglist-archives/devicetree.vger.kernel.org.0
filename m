Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C0379326709
	for <lists+devicetree@lfdr.de>; Fri, 26 Feb 2021 19:45:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230019AbhBZSon (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Feb 2021 13:44:43 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:59982 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229949AbhBZSom (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Feb 2021 13:44:42 -0500
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 11QIgv88113498;
        Fri, 26 Feb 2021 12:42:57 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1614364977;
        bh=/Mv4YXsJOhfUictNm8Y/oGeFqih1zQ1MpyWsmLIfr0c=;
        h=From:To:CC:Subject:Date;
        b=CmM0fnLHqKePTdFUt9SKDZ28qW6/AkphUQm07TEiAaCLvxiaCYzovzY4GiINDcZYJ
         MmX+DB/YSnR3LC7kfusYEzByWq6YkoPCIZ1l9ebC1VNmMGf5EQDjOjj5ejWM6XrGN4
         SicjB/co6bNHllZLzKfDhXwpePX1+Nzu+CNXS6yw=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 11QIgvl3076382
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 26 Feb 2021 12:42:57 -0600
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 26
 Feb 2021 12:42:56 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 26 Feb 2021 12:42:57 -0600
Received: from lokesh-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 11QIgq41103387;
        Fri, 26 Feb 2021 12:42:54 -0600
From:   Lokesh Vutla <lokeshvutla@ti.com>
To:     Nishanth Menon <nm@ti.com>, Rob Herring <robh+dt@kernel.org>
CC:     Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>, Vignesh R <vigneshr@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Dave Gerlach <d-gerlach@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v3 0/2] arm64: Initial support for Texas Instruments AM642 SK
Date:   Sat, 27 Feb 2021 00:12:49 +0530
Message-ID: <20210226184251.26451-1-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

AM642 StarterKit (SK) board is a low cost, small form factor board
designed for TI’s AM642 SoC. This series introduces basic support for
AM642 SK.

* Depends on Dave's series for adding AM642 SoC:
https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=439039

Boot log: https://pastebin.ubuntu.com/p/TKPbkwdBxH/

Changes since v2:
- Added Reviewed-by tag from Rob
- Rebased on top of latest master 

v2: https://patchwork.kernel.org/project/linux-arm-kernel/cover/20210202081530.14984-1-lokeshvutla@ti.com/ 
v1: https://patchwork.kernel.org/project/linux-arm-kernel/cover/20210121143924.26213-1-lokeshvutla@ti.com/

Lokesh Vutla (2):
  dt-bindings: arm: ti: Add bindings for AM642 SK
  arm64: dts: ti: Add support for AM642 SK

 .../devicetree/bindings/arm/ti/k3.yaml        |   1 +
 arch/arm64/boot/dts/ti/Makefile               |   2 +
 arch/arm64/boot/dts/ti/k3-am642-sk.dts        | 173 ++++++++++++++++++
 3 files changed, 176 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am642-sk.dts

-- 
2.30.0

