Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3056D116A9
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2019 11:42:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726446AbfEBJlx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 May 2019 05:41:53 -0400
Received: from lelv0143.ext.ti.com ([198.47.23.248]:43368 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726371AbfEBJlx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 May 2019 05:41:53 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x429fnsH001416;
        Thu, 2 May 2019 04:41:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1556790109;
        bh=y1mmQXyRP8VGnuf9to6cDSUzyoOXLeylvR/kRGn346k=;
        h=From:To:CC:Subject:Date;
        b=IgOBRUGimtrcOti4rNkrjc4i+m1dWpRZAQ0lIK9YQMUZHTZpUzwyejaDW2HAibR1x
         xU/mpAbgR35BfhbKOVquXa2uBide02q64zIrAjBjYAIRnQfZgB0LXNpvDF8mV7kqGH
         iL1T+mHE8g6zY+IuOrvzmmRK/01g8EmfKYo+oyJE=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x429fnBw070513
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 2 May 2019 04:41:49 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 2 May
 2019 04:41:49 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 2 May 2019 04:41:49 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x429fkRx038664;
        Thu, 2 May 2019 04:41:46 -0500
From:   Lokesh Vutla <lokeshvutla@ti.com>
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>,
        Rob Herring <robh+dt@kernel.org>
CC:     Sekhar Nori <nsekhar@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Peter Ujfalusi <peter.ujfalusi@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH 0/3]  arm64: dts: ti: k3-am654: Add interrupt controller nodes
Date:   Thu, 2 May 2019 15:11:16 +0530
Message-ID: <20190502094119.16350-1-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series adds dt nodes for interrupt controllers available in
AM654 SoC.

Lokesh Vutla (3):
  arm64: dts: ti: k3-am654: Update compatible for dmsc
  arm64: dts: ti: k3-am654: Add interrupt controllers in main domain
  arm64: dts: ti: k3-am654: Add interrupt controllers in wakeup domain

 arch/arm64/boot/dts/ti/k3-am65-main.dtsi   | 41 ++++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi | 13 ++++++-
 2 files changed, 53 insertions(+), 1 deletion(-)

-- 
2.21.0

