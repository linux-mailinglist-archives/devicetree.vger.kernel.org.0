Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2DAF526CD25
	for <lists+devicetree@lfdr.de>; Wed, 16 Sep 2020 22:54:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728463AbgIPUyc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Sep 2020 16:54:32 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:36576 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726904AbgIPUya (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Sep 2020 16:54:30 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08GDANTO087365;
        Wed, 16 Sep 2020 08:10:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1600261823;
        bh=9wHo3imGeXO8BTmwSnZizPYMmhA3O6AwXlQOgEsuO5w=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=dyqpYyNrljTSi6OMFNgwZMkO5uxSi2+iNeSPzJRggEhGoPmnc9Bw/ykU8qamfqHvg
         XD/jTf/tvXjPOXe9bpHe+msBZ+juPFEl0CbCH2tc7foe2owxr+1GXFe7/QEyMeu2Uu
         swq+ryQAcfJjZzVmE8zJSpVC0DieUYKxTLjNPbi4=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08GDANEP056610;
        Wed, 16 Sep 2020 08:10:23 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 16
 Sep 2020 08:10:23 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 16 Sep 2020 08:10:23 -0500
Received: from deskari.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08GDAGss043549;
        Wed, 16 Sep 2020 08:10:21 -0500
From:   Tomi Valkeinen <tomi.valkeinen@ti.com>
To:     <dri-devel@lists.freedesktop.org>
CC:     <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Jyri Sarha <jsarha@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Nishanth Menon <nm@ti.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Tomi Valkeinen <tomi.valkeinen@ti.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v3 2/2] dt-bindings: display: ti,j721e-dss: add missing properties to dt-schema
Date:   Wed, 16 Sep 2020 16:10:09 +0300
Message-ID: <20200916131009.221252-3-tomi.valkeinen@ti.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200916131009.221252-1-tomi.valkeinen@ti.com>
References: <20200916131009.221252-1-tomi.valkeinen@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add assigned-clocks, assigned-clock-parents and dma-coherent optional
properties.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/display/ti/ti,j721e-dss.yaml  | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/ti/ti,j721e-dss.yaml b/Documentation/devicetree/bindings/display/ti/ti,j721e-dss.yaml
index 173730d56334..c9a947d55fa4 100644
--- a/Documentation/devicetree/bindings/display/ti/ti,j721e-dss.yaml
+++ b/Documentation/devicetree/bindings/display/ti/ti,j721e-dss.yaml
@@ -77,6 +77,14 @@ properties:
       - const: vp3
       - const: vp4
 
+  assigned-clocks:
+    minItems: 1
+    maxItems: 5
+
+  assigned-clock-parents:
+    minItems: 1
+    maxItems: 5
+
   interrupts:
     items:
       - description: common_m DSS Master common
@@ -95,6 +103,9 @@ properties:
     maxItems: 1
     description: phandle to the associated power domain
 
+  dma-coherent:
+    type: boolean
+
   ports:
     type: object
     description:
-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

