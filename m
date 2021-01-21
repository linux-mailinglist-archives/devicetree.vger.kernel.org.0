Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AA8102FED63
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 15:51:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728162AbhAUOsj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 09:48:39 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:56444 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731630AbhAUOlL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 09:41:11 -0500
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10LEdTv9051335;
        Thu, 21 Jan 2021 08:39:29 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611239969;
        bh=HEYx0WhJ/WC+GG0aPtahiX5hNdCNKqPT5FoP0156VfM=;
        h=From:To:CC:Subject:Date;
        b=CfckBLwLfuXeY9SkiOkzT+Nkqj4T5RhHRMSlRBw4qFghxki5niMCqRr3pA0voL4wY
         RBkl/ZufDnRqZ0w/69/2tkoDjSgMvSM745jqwGCn0l/Oc94NcNTxExvZyQQ06pYmCf
         K+CJ0Tys2dPDSj0LCJEkNafBUUo/oD6f9u0ZfGCA=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10LEdTVd049303
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 21 Jan 2021 08:39:29 -0600
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 Jan 2021 08:39:28 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 Jan 2021 08:39:28 -0600
Received: from lokesh-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10LEdOxr130369;
        Thu, 21 Jan 2021 08:39:25 -0600
From:   Lokesh Vutla <lokeshvutla@ti.com>
To:     Nishanth Menon <nm@ti.com>, Rob Herring <robh+dt@kernel.org>
CC:     Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>, Vignesh R <vigneshr@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Dave Gerlach <d-gerlach@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH 0/2] arm64: Initial support for Texas Instruments AM642 SK
Date:   Thu, 21 Jan 2021 20:09:22 +0530
Message-ID: <20210121143924.26213-1-lokeshvutla@ti.com>
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

Depends on Dave's series for adding AM642 SoC:
https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=418539

Lokesh Vutla (2):
  dt-bindings: arm: ti: Add bindings for AM642 SK
  arm64: dts: ti: Add support for AM642 SK

 .../devicetree/bindings/arm/ti/k3.yaml        |   1 +
 arch/arm64/boot/dts/ti/Makefile               |   3 +-
 arch/arm64/boot/dts/ti/k3-am642-sk.dts        | 145 ++++++++++++++++++
 3 files changed, 148 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am642-sk.dts

-- 
2.30.0

