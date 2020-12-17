Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E4582DC9D5
	for <lists+devicetree@lfdr.de>; Thu, 17 Dec 2020 01:11:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728449AbgLQALA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Dec 2020 19:11:00 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:59246 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730918AbgLQAK7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Dec 2020 19:10:59 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0BH09GGv117895;
        Wed, 16 Dec 2020 18:09:16 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1608163756;
        bh=F6ec2ygQdV3OJFBBqhHJ86J7KtWdEQwoWhDFozvrPiI=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=rBw94jysHS5QWmqOo5+rdiciZ2BHWeadGDW2mCvS1uSD8GpZydvNoDiu5IAfrkkhO
         w9ct1c7bcftg2vMy3F32WRT9O/PApaIIViqlK4glhuGdg3RcPqGawh0+/QiyxsrM2l
         bySjkx13QxXGMPdJBG+fMInTAJFLfvzhr7gXNg/g=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0BH09G3T078254
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 16 Dec 2020 18:09:16 -0600
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 16
 Dec 2020 18:09:15 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 16 Dec 2020 18:09:16 -0600
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0BH09G0p055673;
        Wed, 16 Dec 2020 18:09:16 -0600
Received: from uda0271916b.dhcp.ti.com (uda0271916b.dhcp.ti.com [128.247.81.224] (may be forged))
        by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 0BH09Efv112393;
        Wed, 16 Dec 2020 18:09:16 -0600
From:   Gowtham Tammana <g-tammana@ti.com>
To:     <robh+dt@kernel.org>, Nisanth Menon <nm@ti.com>,
        Tero Kristo <t-kristo@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Gowtham Tammana <g-tammana@ti.com>
Subject: [PATCH 1/2] dt-bindings: watchdog: change node name to generic
Date:   Wed, 16 Dec 2020 18:07:15 -0600
Message-ID: <20201217000716.11091-2-g-tammana@ti.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20201217000716.11091-1-g-tammana@ti.com>
References: <20201217000716.11091-1-g-tammana@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Modifying the example to use generic as node name to keep it consistent
with the generic name recommendation.

Signed-off-by: Gowtham Tammana <g-tammana@ti.com>
---
 Documentation/devicetree/bindings/watchdog/ti,rti-wdt.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/watchdog/ti,rti-wdt.yaml b/Documentation/devicetree/bindings/watchdog/ti,rti-wdt.yaml
index c1348db59374..e21af390b3e9 100644
--- a/Documentation/devicetree/bindings/watchdog/ti,rti-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/ti,rti-wdt.yaml
@@ -57,8 +57,8 @@ examples:
      */
     #include <dt-bindings/soc/ti,sci_pm_domain.h>
 
-    watchdog0: rti@2200000 {
-        compatible = "ti,rti-wdt";
+    watchdog0: watchdog@2200000 {
+        compatible = "ti,j7-rti-wdt";
         reg = <0x2200000 0x100>;
         clocks = <&k3_clks 252 1>;
         power-domains = <&k3_pds 252 TI_SCI_PD_EXCLUSIVE>;
-- 
2.29.0

