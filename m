Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D3D9F2DC9D6
	for <lists+devicetree@lfdr.de>; Thu, 17 Dec 2020 01:11:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730991AbgLQALA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Dec 2020 19:11:00 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:54202 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730885AbgLQAK7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Dec 2020 19:10:59 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0BH09Fev107333;
        Wed, 16 Dec 2020 18:09:15 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1608163755;
        bh=DkNhY9aZP6n1PMPg/S5Srt31KDWqKbK1LtGRPToZzEo=;
        h=From:To:CC:Subject:Date;
        b=FzIzdBxAVEjnZCs9+Ng6bbCQtg4yetT1ZXoX3uH18IShllGBc5iku9IylaLO84NAw
         8SeYf84oYmMSHi/tpM/o71MMG5agB3dOJMSrYE5PaDOuhoSqMXyltpQAlykzxQRulj
         uMgANk0VLEfP7r+IPX2n/y6JQ4VCq01ZETY8H1DY=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0BH09F8g078229
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 16 Dec 2020 18:09:15 -0600
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 16
 Dec 2020 18:09:14 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 16 Dec 2020 18:09:14 -0600
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0BH09ErL016965;
        Wed, 16 Dec 2020 18:09:14 -0600
Received: from uda0271916b.dhcp.ti.com (uda0271916b.dhcp.ti.com [128.247.81.224] (may be forged))
        by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 0BH09Efu112393;
        Wed, 16 Dec 2020 18:09:14 -0600
From:   Gowtham Tammana <g-tammana@ti.com>
To:     <robh+dt@kernel.org>, Nisanth Menon <nm@ti.com>,
        Tero Kristo <t-kristo@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Gowtham Tammana <g-tammana@ti.com>
Subject: [PATCH 0/2] Add watchdog dt nodes for TI's J7200 SoC
Date:   Wed, 16 Dec 2020 18:07:14 -0600
Message-ID: <20201217000716.11091-1-g-tammana@ti.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adds the watchdog dt node for TI's J7200 SoC. Also included a minor fix
to the dt binding document to make it consistent with naming convention.

Gowtham Tammana (2):
  dt-bindings: watchdog: change node name to generic
  arm64: dts: ti: k3-j7200-main: Add main domain watchdog entries

 .../bindings/watchdog/ti,rti-wdt.yaml          |  4 ++--
 arch/arm64/boot/dts/ti/k3-j7200-main.dtsi      | 18 ++++++++++++++++++
 2 files changed, 20 insertions(+), 2 deletions(-)

-- 
2.29.0

