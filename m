Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C5A526D45D
	for <lists+devicetree@lfdr.de>; Thu, 17 Sep 2020 09:13:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726109AbgIQHNS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Sep 2020 03:13:18 -0400
Received: from lelv0142.ext.ti.com ([198.47.23.249]:58162 "EHLO
        lelv0142.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726106AbgIQHNM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Sep 2020 03:13:12 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08H7Cvfh088457;
        Thu, 17 Sep 2020 02:12:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1600326777;
        bh=rluFFABoX9nD6x0Kuv3cb0MBAuTHf6aAKtZz2u3Wyj8=;
        h=From:To:CC:Subject:Date;
        b=fzXyjwHULsdN6nq7wW7lPnMOPQ7jGWFEL4acdc1tq1mHe4nWzYV/SaO9NIGlEFCgH
         PUVIpezTDlFmY0eX2TQkNalVbj8Lxam2lCseRLRxQG6h9Ca0IAE3QlEnlG/axijE4e
         CPEYFseC2jYSXrC7XFWnUDNl8pMKPfET80ZZzHbY=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08H7CvoT049056
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 17 Sep 2020 02:12:57 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 17
 Sep 2020 02:12:56 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 17 Sep 2020 02:12:56 -0500
Received: from deskari.lan (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08H7Crh2085779;
        Thu, 17 Sep 2020 02:12:54 -0500
From:   Tomi Valkeinen <tomi.valkeinen@ti.com>
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>,
        Swapnil Jakhade <sjakhade@cadence.com>, <yamonkar@cadence.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
CC:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Sekhar Nori <nsekhar@ti.com>,
        Tomi Valkeinen <tomi.valkeinen@ti.com>
Subject: [PATCH 0/2] arm64: dts: ti: k3-j721e: Add DisplayPort
Date:   Thu, 17 Sep 2020 10:12:46 +0300
Message-ID: <20200917071248.71284-1-tomi.valkeinen@ti.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

This is a preliminary series to add DisplayPort to J7 EVM dts files.
There are related binding patches that are not yet merged, but all
patches can be found from:

git://git.kernel.org/pub/scm/linux/kernel/git/tomba/linux.git 5.10/cdns-dp

I'm sending this series to show the actual use of all the bindings,
which should make it easier to spot issues with the bindings.

 Tomi

Tomi Valkeinen (2):
  arm64: dts: ti: k3-j721e-main: add DP & DP PHY
  arm64: dts: ti: k3-j721e-common-proc-board: add DP to j7 evm

 .../dts/ti/k3-j721e-common-proc-board.dts     |  72 ++++++++++++
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 104 ++++++++++++++++++
 2 files changed, 176 insertions(+)

-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

