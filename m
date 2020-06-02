Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3636D1EC036
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2020 18:39:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725989AbgFBQjJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Jun 2020 12:39:09 -0400
Received: from lelv0142.ext.ti.com ([198.47.23.249]:45206 "EHLO
        lelv0142.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726037AbgFBQjJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Jun 2020 12:39:09 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 052Gd7rm054480;
        Tue, 2 Jun 2020 11:39:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1591115947;
        bh=isgop+zgmnt9+2x8jJzzOjuiDiGSs1YhFo1LurPj2nM=;
        h=From:To:CC:Subject:Date;
        b=liR9RH/8CcRi37X6bUPxj61HO1JlyDrIJgp43ikGZ7R6DIREnBHtKMJyiM3CMeZRT
         Ff+Hl4qk0t3OyJy9bWWFB4R8I1ZJiHWJDAbi/GP1ZsSqrIRiHfiCZ8vs2Iew2xhmiV
         5wzefAvJuyAr1x4lJJLa/311e5BFuONxT+WPTLcE=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 052Gd7JR109402
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 2 Jun 2020 11:39:07 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 2 Jun
 2020 11:39:07 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 2 Jun 2020 11:39:07 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 052Gd7Hn000593;
        Tue, 2 Jun 2020 11:39:07 -0500
From:   Dan Murphy <dmurphy@ti.com>
To:     <robh@kernel.org>
CC:     <devicetree@vger.kernel.org>, Dan Murphy <dmurphy@ti.com>
Subject: [PATCH] dt-bindings: property-units: Add picoseconds type
Date:   Tue, 2 Jun 2020 11:39:00 -0500
Message-ID: <20200602163900.2556-1-dmurphy@ti.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the '-ps' picosecond unit suffix for property names.

Signed-off-by: Dan Murphy <dmurphy@ti.com>
---
 Documentation/devicetree/bindings/property-units.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/property-units.txt b/Documentation/devicetree/bindings/property-units.txt
index e9b8360b3288..00094070bdac 100644
--- a/Documentation/devicetree/bindings/property-units.txt
+++ b/Documentation/devicetree/bindings/property-units.txt
@@ -17,6 +17,7 @@ Time/Frequency
 -ms		: millisecond
 -us		: microsecond
 -ns		: nanosecond
+-ps		: picosecond
 
 Distance
 ----------------------------------------
-- 
2.26.2

