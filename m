Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 70FFC29A9E8
	for <lists+devicetree@lfdr.de>; Tue, 27 Oct 2020 11:42:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1414528AbgJ0Kls (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Oct 2020 06:41:48 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:59612 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2898508AbgJ0Kls (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Oct 2020 06:41:48 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 09RAfgVh010850;
        Tue, 27 Oct 2020 05:41:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1603795302;
        bh=eCghNEkC8J49W1FR/glILbUgjCUFiKQI/EhZeMOZVyE=;
        h=From:To:CC:Subject:Date;
        b=U6UYSxTiPDbe8gA+1RWG/azq3bApk7wm82gk5MZXT7y8Q59xPwcNHznK9j5XWcwF6
         RTuhT/N5mOGSpflrC+/JSf90Aafgg2NW+XZDZ8bwVO2UJvjCb7bjZ0nJCRHE+NHt/5
         2DcFEA8L8RAvJHDxbenu5VIQslmU8W2in6qXiG44=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 09RAffNv026294
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 27 Oct 2020 05:41:41 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 27
 Oct 2020 05:41:41 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 27 Oct 2020 05:41:41 -0500
Received: from deskari.lan (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 09RAfd69110982;
        Tue, 27 Oct 2020 05:41:39 -0500
From:   Tomi Valkeinen <tomi.valkeinen@ti.com>
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Swapnil Jakhade <sjakhade@cadence.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Tomi Valkeinen <tomi.valkeinen@ti.com>
Subject: [PATCH 0/4] arm64: dts: ti: AM6 and J721e display dts changes
Date:   Tue, 27 Oct 2020 12:41:28 +0200
Message-ID: <20201027104132.105485-1-tomi.valkeinen@ti.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

linux-next now contains binding changes for "k3-am65: mark dss as
dma-coherent".

Also everything to get DP working is included in -rc1, except the two
dts patches in this series. Note that DisplayPort connector binding is
still in discussion [1]. I don't expect changes there, but if you want
to wait until those patches get merged, you could just pick the two am6
patches.

 Tomi

[1] https://www.spinics.net/lists/dri-devel/msg275245.html

Tomi Valkeinen (4):
  arm64: dts: ti: k3-j721e-main: add DP & DP PHY
  arm64: dts: ti: k3-j721e-common-proc-board: add DP to j7 evm
  arm64: dts: ti: k3-am65: mark dss as dma-coherent
  arm64: dts: ti: am654-base-board: fix clock node name

 arch/arm64/boot/dts/ti/k3-am65-main.dtsi      |   2 +
 .../arm64/boot/dts/ti/k3-am654-base-board.dts |   2 +-
 .../dts/ti/k3-j721e-common-proc-board.dts     |  72 ++++++++++++
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 104 ++++++++++++++++++
 4 files changed, 179 insertions(+), 1 deletion(-)

-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

