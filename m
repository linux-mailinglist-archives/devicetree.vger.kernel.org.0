Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9A0D530B96B
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 09:18:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232165AbhBBIQx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 03:16:53 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:48824 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232427AbhBBIQe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 03:16:34 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1128FZgC057281;
        Tue, 2 Feb 2021 02:15:35 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1612253735;
        bh=i+XVwyrvWx80URUTABfB0yFTSD+pdlopKEP5xvhcrnE=;
        h=From:To:CC:Subject:Date;
        b=K890I8pjnjco2nZqaxA4A/JSJT5htmTiCCLak/+0ss8SnlzHsAjB+MD6rPfN6A981
         ggmXNUVivyhKIkJJbZEA5ePk0C2gp2GZjC3UhXDpge+cZNFwAnprpcyWb2rXJPtpBG
         gL/wj1T6Kv2ssOCB4cC1mhj3o/dGyUvI4BTtGvuY=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1128FZqM060607
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 2 Feb 2021 02:15:35 -0600
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 2 Feb
 2021 02:15:35 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 2 Feb 2021 02:15:35 -0600
Received: from lokesh-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1128FVZ4051822;
        Tue, 2 Feb 2021 02:15:31 -0600
From:   Lokesh Vutla <lokeshvutla@ti.com>
To:     Nishanth Menon <nm@ti.com>, Rob Herring <robh+dt@kernel.org>
CC:     Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>, Vignesh R <vigneshr@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Dave Gerlach <d-gerlach@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v2 0/2] arm64: Initial support for Texas Instruments AM642 SK
Date:   Tue, 2 Feb 2021 13:45:28 +0530
Message-ID: <20210202081530.14984-1-lokeshvutla@ti.com>
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

Depends on following two series to get MMC SD card working:
* Dave's series for adding AM642 SoC:
	https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=418539
* AM64 support in sdhci_am654:
	https://lore.kernel.org/linux-devicetree/20210113115908.3882-3-a-govindraju@ti.com/

Changes since v1:
- Updated commit description for automation header
- Updated Makefile to add dtb buld in a separate line
- Fix compatible in k3-am642-sk.dts
- Mark unused nodes as disabled.

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

