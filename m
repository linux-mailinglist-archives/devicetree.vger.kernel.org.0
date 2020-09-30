Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7CCD127DED9
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 05:19:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730104AbgI3DTR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Sep 2020 23:19:17 -0400
Received: from szxga05-in.huawei.com ([45.249.212.191]:14739 "EHLO huawei.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1729784AbgI3DSo (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 29 Sep 2020 23:18:44 -0400
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
        by Forcepoint Email with ESMTP id 8939C68E6F7F032983E9;
        Wed, 30 Sep 2020 11:18:37 +0800 (CST)
Received: from thunder-town.china.huawei.com (10.174.177.253) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.487.0; Wed, 30 Sep 2020 11:18:31 +0800
From:   Zhen Lei <thunder.leizhen@huawei.com>
To:     Wei Xu <xuwei5@hisilicon.com>, Rob Herring <robh+dt@kernel.org>,
        "Jonathan Cameron" <Jonathan.Cameron@Huawei.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
CC:     Zhen Lei <thunder.leizhen@huawei.com>,
        Libin <huawei.libin@huawei.com>,
        Kefeng Wang <wangkefeng.wang@huawei.com>
Subject: [PATCH v6 05/17] dt-bindings: arm: hisilicon: add binding for SD5203 SoC
Date:   Wed, 30 Sep 2020 11:17:00 +0800
Message-ID: <20200930031712.2365-6-thunder.leizhen@huawei.com>
X-Mailer: git-send-email 2.26.0.windows.1
In-Reply-To: <20200930031712.2365-1-thunder.leizhen@huawei.com>
References: <20200930031712.2365-1-thunder.leizhen@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [10.174.177.253]
X-CFilter-Loop: Reflected
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree binding for Hisilicon SD5203 SoC.

Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>
---
 Documentation/devicetree/bindings/arm/hisilicon/hisilicon.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/hisilicon/hisilicon.yaml b/Documentation/devicetree/bindings/arm/hisilicon/hisilicon.yaml
index 6d17309c7c84308..43b8ce2227aaae9 100644
--- a/Documentation/devicetree/bindings/arm/hisilicon/hisilicon.yaml
+++ b/Documentation/devicetree/bindings/arm/hisilicon/hisilicon.yaml
@@ -59,4 +59,9 @@ properties:
       - description: HiP07 D05 Board
         items:
           - const: hisilicon,hip07-d05
+
+      - description: SD5203 based boards
+        items:
+          - const: H836ASDJ
+          - const: hisilicon,sd5203
 ...
-- 
1.8.3


