Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B062712DA9
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2019 14:31:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726289AbfECMbs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 May 2019 08:31:48 -0400
Received: from lelv0142.ext.ti.com ([198.47.23.249]:38740 "EHLO
        lelv0142.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726047AbfECMbr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 May 2019 08:31:47 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x43CVc4s032499;
        Fri, 3 May 2019 07:31:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1556886698;
        bh=ie89C1JN/2hoK4jNI1tfsDdl8ZlnIPT+HjtwaWZJjJ8=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=fVrZfMp8HkYM6OmUt7/eVrtHj1A31XUIxPoNbJlBAnTLdwd9+B1MHUym+2Xx8/ObV
         yYlORimFJ4BsiakxMmiIuXOQuAOqTG8V/gXpOWHSbIC+6sJoiyCPDAx4bk0T+5p4xX
         RDAqy8gkrX/40KX1DaDUG8g4MzkTG5YUBRfzvD3A=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x43CVchQ049770
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 3 May 2019 07:31:38 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 3 May
 2019 07:31:36 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 3 May 2019 07:31:36 -0500
Received: from deskari.lan (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x43CUYu7002029;
        Fri, 3 May 2019 07:31:34 -0500
From:   Tomi Valkeinen <tomi.valkeinen@ti.com>
To:     Andrzej Hajda <a.hajda@samsung.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Andrey Gusakov <andrey.gusakov@cogentembedded.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Andrey Smirnov <andrew.smirnov@gmail.com>,
        Peter Ujfalusi <peter.ujfalusi@ti.com>,
        Jyri Sarha <jsarha@ti.com>, Benoit Parrot <bparrot@ti.com>,
        <dri-devel@lists.freedesktop.org>
CC:     Tomi Valkeinen <tomi.valkeinen@ti.com>,
        <devicetree@vger.kernel.org>, Rob Herring <robh@kernel.org>
Subject: [PATCHv3 23/23] dt-bindings: tc358767: add HPD support
Date:   Fri, 3 May 2019 15:29:49 +0300
Message-ID: <20190503122949.12266-24-tomi.valkeinen@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190503122949.12266-1-tomi.valkeinen@ti.com>
References: <20190503122949.12266-1-tomi.valkeinen@ti.com>
MIME-Version: 1.0
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DT property for defining the pin used for HPD.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
Cc: devicetree@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/display/bridge/toshiba,tc358767.txt      | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.txt b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.txt
index e3f6aa6a214d..583c5e9dbe6b 100644
--- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.txt
+++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.txt
@@ -12,6 +12,7 @@ Optional properties:
                    (active high shutdown input)
  - reset-gpios: OF device-tree gpio specification for RSTX pin
                 (active low system reset)
+ - toshiba,hpd-pin: TC358767 GPIO pin number to which HPD is connected to (0 or 1)
  - ports: the ports node can contain video interface port nodes to connect
    to a DPI/DSI source and to an eDP/DP sink according to [1][2]:
     - port@0: DSI input port
-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

