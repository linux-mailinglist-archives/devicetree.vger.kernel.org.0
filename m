Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1BCC72B6EE
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2019 15:48:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726191AbfE0NsQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 May 2019 09:48:16 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:53476 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726693AbfE0NsQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 May 2019 09:48:16 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4RDm3H7012480;
        Mon, 27 May 2019 08:48:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1558964883;
        bh=sXYcD4XMlQBXTBpB0CQsMmBf9Lno5Nysqf8Tnwt8Cjk=;
        h=From:To:CC:Subject:Date;
        b=m2GaaM/spxeU5LaWXMCB+1hw3hKwko9mDalNCrSwdtKN1xrRhy6VxgMnqd5VaAKBf
         ibOYXUjCYhJF19tjI+wXHSGo+xkz7QR4Qu0i+vHFGkBIqFger4ftDQzSuAW/9tCxwe
         Q+kWWkQw1z2GJfCx5L7VCulFTAsfILDyQRxFuML8=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4RDm2bt095715
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 27 May 2019 08:48:02 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 27
 May 2019 08:48:00 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 27 May 2019 08:48:00 -0500
Received: from jadmar.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4RDlviD065947;
        Mon, 27 May 2019 08:47:58 -0500
From:   Jyri Sarha <jsarha@ti.com>
To:     <alsa-devel@alsa-project.org>, <devicetree@vger.kernel.org>,
        <dri-devel@lists.freedesktop.org>
CC:     <laurent.pinchart@ideasonboard.com>, <tomi.valkeinen@ti.com>,
        <peter.ujfalusi@ti.com>, <a.hajda@samsung.com>, <robh@kernel.org>
Subject: [PATCH v8 0/6] drm/bridge: sii902x: HDMI-audio support and some fixes
Date:   Mon, 27 May 2019 16:47:51 +0300
Message-ID: <cover.1558964241.git.jsarha@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I think these should be ready for applying to drm-misc.

Changes since v7:
 - Debased on top of the lasts drm-misc-next and tested
 - "dt-bindings: display: sii902x: Add HDMI audio bindings"
   - Dropped off "or higher to avoid conflict with video ports"
     and added "Reviewed-by: Rob Herring <robh@kernel.org>"

Ther previous round:
https://patchwork.kernel.org/cover/10919173/

Jyri Sarha (5):
  drm/bridge: sii902x: Set output mode to HDMI or DVI according to EDID
  drm/bridge: sii902x: pixel clock unit is 10kHz instead of 1kHz
  dt-bindings: display: sii902x: Remove trailing white space
  dt-bindings: display: sii902x: Add HDMI audio bindings
  drm/bridge: sii902x: Implement HDMI audio support

Tomi Valkeinen (1):
  drm/bridge: sii902x: add input_bus_flags

 .../bindings/display/bridge/sii902x.txt       |  42 +-
 drivers/gpu/drm/bridge/sii902x.c              | 488 +++++++++++++++++-
 2 files changed, 522 insertions(+), 8 deletions(-)

-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

