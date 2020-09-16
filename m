Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C646C26D3FF
	for <lists+devicetree@lfdr.de>; Thu, 17 Sep 2020 08:55:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726255AbgIQGzz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Sep 2020 02:55:55 -0400
Received: from lelv0142.ext.ti.com ([198.47.23.249]:55290 "EHLO
        lelv0142.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726187AbgIQGzy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Sep 2020 02:55:54 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08GDAJAv049962;
        Wed, 16 Sep 2020 08:10:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1600261819;
        bh=nJyDNuFH4JncIWEARJ4jZayGf8kl2sDQXOKHsTeGXzE=;
        h=From:To:CC:Subject:Date;
        b=xDhRLu8A4ukqH31dvP/NihJRecJfmw74kuPNHHuAvWa6plKFPKlcs0PVk1czN/hCV
         LROE49uSo8tJVWN9pZGmxW2az3819XsAMa3j6QVg/UJL+/TLy2+jzuKj/B5KQufLkX
         qKtk/aO5KdstyKUFfmcF7K0BQcRDg1az4/0wSi8g=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08GDAIX5013056
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 16 Sep 2020 08:10:18 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 16
 Sep 2020 08:10:18 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 16 Sep 2020 08:10:18 -0500
Received: from deskari.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08GDAGsq043549;
        Wed, 16 Sep 2020 08:10:16 -0500
From:   Tomi Valkeinen <tomi.valkeinen@ti.com>
To:     <dri-devel@lists.freedesktop.org>
CC:     <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Jyri Sarha <jsarha@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Nishanth Menon <nm@ti.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Tomi Valkeinen <tomi.valkeinen@ti.com>
Subject: [PATCH v3 0/2] Fixes for am65x and j721e dss dt-schema
Date:   Wed, 16 Sep 2020 16:10:07 +0300
Message-ID: <20200916131009.221252-1-tomi.valkeinen@ti.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

This is version three of the series:

https://www.spinics.net/lists/arm-kernel/msg836244.html

There are no changes to the yaml in this version, but I am resending as
I missed cc'ing dri-devel previously.

I have also added Rob's reviewed-bys, and sending only the dt-schema
changes.

 Tomi

Tomi Valkeinen (2):
  dt-bindings: display: ti,am65x-dss: add missing properties to
    dt-schema
  dt-bindings: display: ti,j721e-dss: add missing properties to
    dt-schema

 .../devicetree/bindings/display/ti/ti,am65x-dss.yaml  | 11 +++++++++++
 .../devicetree/bindings/display/ti/ti,j721e-dss.yaml  | 11 +++++++++++
 2 files changed, 22 insertions(+)

-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

