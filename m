Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E18303A3B6B
	for <lists+devicetree@lfdr.de>; Fri, 11 Jun 2021 07:35:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230454AbhFKFhy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 01:37:54 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:36690 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229908AbhFKFhy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 01:37:54 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 15B5ZfGB052845;
        Fri, 11 Jun 2021 00:35:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1623389741;
        bh=DbDCv+8NMzl0I0UoaABgajwTXe8lWjZIzi2WXrI+iAs=;
        h=From:To:CC:Subject:Date;
        b=qQYT5RhBIamx+/2YiS5dlpdXuXgvqD3OA8uw0KdYmNmcnaXgqcDLhYpLB9kBr+T0V
         fnMy++rCNC3kSSiV91SEEoSO3JgzQSuMRP1AiVi6rAr9uoiGkUBLMh9IFhsAng6ryd
         OBjZnddU8z+mqskvH7m7AgkX1kx6Yg95QucnItUg=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 15B5ZfWl033061
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 11 Jun 2021 00:35:41 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 11
 Jun 2021 00:35:40 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 11 Jun 2021 00:35:41 -0500
Received: from ula0132425.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 15B5ZbTK088083;
        Fri, 11 Jun 2021 00:35:38 -0500
From:   Vignesh Raghavendra <vigneshr@ti.com>
To:     Vignesh Raghavendra <vigneshr@ti.com>
CC:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Rob Herring <robh+dt@kernel.org>,
        <linux-mtd@lists.infradead.org>, <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 0/2] mtd: Convert hyperflash/hyperbus bindings to YAML schema
Date:   Fri, 11 Jun 2021 11:05:31 +0530
Message-ID: <20210611053533.16701-1-vigneshr@ti.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series converts Cypress hyperflash and TI AM654 HyperBus Controller
bindings to YAML schema.

Vignesh Raghavendra (2):
  dt-bindings: mtd: Convert cypress,hyperflash to YAML schema
  dt-bindings: mtd: Convert ti,am654-hbmc.txt to YAML schema

 .../bindings/mtd/cypress,hyperflash.yaml      | 51 ++++++++++++++
 .../devicetree/bindings/mtd/ti,am654-hbmc.txt | 51 --------------
 .../bindings/mtd/ti,am654-hbmc.yaml           | 69 +++++++++++++++++++
 3 files changed, 120 insertions(+), 51 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mtd/cypress,hyperflash.yaml
 delete mode 100644 Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt
 create mode 100644 Documentation/devicetree/bindings/mtd/ti,am654-hbmc.yaml

-- 
2.32.0

