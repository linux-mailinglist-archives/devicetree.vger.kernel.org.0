Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 49A142C8345
	for <lists+devicetree@lfdr.de>; Mon, 30 Nov 2020 12:31:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726828AbgK3LbU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 06:31:20 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:43126 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726463AbgK3LbU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Nov 2020 06:31:20 -0500
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0AUBUILr050482;
        Mon, 30 Nov 2020 05:30:18 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1606735818;
        bh=+0UTMMtjRwwDyZ9SPz3YoaAXbHqhBYphb/iVNcHYZ2Q=;
        h=From:To:CC:Subject:Date;
        b=pzi/4yE3Wp1yivo8Z+DUwif88Tbc5DZsbAxGc4R6IpkivgSUwfpXFIHjMV7ahGZB3
         sbM1Nt3rvoH4OgbEh0fl+dGFEi9qR99HBVmFndldsPxnc+K28zqqW/jW93cb0SnlWA
         5hsgWCNsPOULVlEl+vgz5hncQZ+g1mwMNFGoIYLk=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0AUBUI8A037725
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 30 Nov 2020 05:30:18 -0600
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 30
 Nov 2020 05:29:31 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 30 Nov 2020 05:29:31 -0600
Received: from deskari.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0AUBTSFX047293;
        Mon, 30 Nov 2020 05:29:28 -0600
From:   Tomi Valkeinen <tomi.valkeinen@ti.com>
To:     <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>
CC:     Nikhil Devshatwar <nikhil.nd@ti.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        <ville.syrjala@linux.intel.com>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Daniel Vetter <daniel@ffwll.ch>,
        Swapnil Kashinath Jakhade <sjakhade@cadence.com>,
        Sekhar Nori <nsekhar@ti.com>,
        Tomi Valkeinen <tomi.valkeinen@ti.com>
Subject: [PATCH v4 0/2] drm: add DisplayPort connector
Date:   Mon, 30 Nov 2020 13:29:17 +0200
Message-ID: <20201130112919.241054-1-tomi.valkeinen@ti.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

This series adds the DT bindings and a driver for DisplayPort connector.

Minor changes since v3:
- Added Laurent's reviewed-bys
- Added $ref to graph schema
- Use 'ret' instead of 'r'
- Add the missing period

 Tomi

Tomi Valkeinen (2):
  dt-bindings: dp-connector: add binding for DisplayPort connector
  drm/bridge: display-connector: add DP support

 .../display/connector/dp-connector.yaml       | 56 +++++++++++++++++++
 drivers/gpu/drm/bridge/display-connector.c    | 46 ++++++++++++++-
 2 files changed, 100 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/connector/dp-connector.yaml

-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

