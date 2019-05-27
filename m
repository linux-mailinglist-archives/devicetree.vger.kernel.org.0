Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 84CD52B6F1
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2019 15:48:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726711AbfE0NsT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 May 2019 09:48:19 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:53484 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726693AbfE0NsS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 May 2019 09:48:18 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4RDm9rh012510;
        Mon, 27 May 2019 08:48:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1558964889;
        bh=5kqhzE3IcUtd1zhmOu0aWvtk9OmxjF6LW8lgnJDouOo=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=h4jkBklXYqOq8wLXcvzcQ0+YNv3ZXbpijcSu/H/QqyMHDtqg/qFVHjVwp29Kgo25n
         BE8ZZNAQgXHIGgbiveQJOVxBh9QDCdY1jd/L85Ywa8kjHCEhjhAALsBd07MW8m1Dwc
         CdhUvC44YxxJvvyX1437fm6tm8gXeYU9kKlfeEI4=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4RDm9hX096101
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 27 May 2019 08:48:09 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 27
 May 2019 08:48:09 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 27 May 2019 08:48:08 -0500
Received: from jadmar.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4RDlviH065947;
        Mon, 27 May 2019 08:48:07 -0500
From:   Jyri Sarha <jsarha@ti.com>
To:     <alsa-devel@alsa-project.org>, <devicetree@vger.kernel.org>,
        <dri-devel@lists.freedesktop.org>
CC:     <laurent.pinchart@ideasonboard.com>, <tomi.valkeinen@ti.com>,
        <peter.ujfalusi@ti.com>, <a.hajda@samsung.com>, <robh@kernel.org>
Subject: [PATCH v8 4/6] dt-bindings: display: sii902x: Remove trailing white space
Date:   Mon, 27 May 2019 16:47:55 +0300
Message-ID: <f1f2ef82c4e8ecea920c408bd4e569f5ed27d20a.1558964241.git.jsarha@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1558964241.git.jsarha@ti.com>
References: <cover.1558964241.git.jsarha@ti.com>
MIME-Version: 1.0
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Remove trailing white space from sii902x display bridge binding.

Signed-off-by: Jyri Sarha <jsarha@ti.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/display/bridge/sii902x.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/sii902x.txt b/Documentation/devicetree/bindings/display/bridge/sii902x.txt
index 72d2dc6c3e6b..c4c1855ca654 100644
--- a/Documentation/devicetree/bindings/display/bridge/sii902x.txt
+++ b/Documentation/devicetree/bindings/display/bridge/sii902x.txt
@@ -5,7 +5,7 @@ Required properties:
 	- reg: i2c address of the bridge
 
 Optional properties:
-	- interrupts: describe the interrupt line used to inform the host 
+	- interrupts: describe the interrupt line used to inform the host
 	  about hotplug events.
 	- reset-gpios: OF device-tree gpio specification for RST_N pin.
 
-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

