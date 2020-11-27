Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 792B42C6C6F
	for <lists+devicetree@lfdr.de>; Fri, 27 Nov 2020 21:13:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731202AbgK0UMF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Nov 2020 15:12:05 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:45474 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732304AbgK0UK7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Nov 2020 15:10:59 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0ARKASaB021171;
        Fri, 27 Nov 2020 14:10:28 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1606507828;
        bh=jM95ffjQIq6NetMJBqZAeE9W0S9iEifgD6FT2qtgmIs=;
        h=From:To:CC:Subject:Date;
        b=gEFulRdRVhEturcolbRW898NZCBoNaAgK//0CksixCbzNHMpbrtbcsOqt/8f/Kq5d
         BBwkHqVT3sF33exs68KkeyBjUj7zbs2KizXfEpWwHKloRZaw4YFtZsAPHNKU7Xa+d2
         Sshl1rND8T8YaJ2Xm6z4giNdtF3lGE7W8Rr+4qE8=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0ARKASaT127562
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 27 Nov 2020 14:10:28 -0600
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 27
 Nov 2020 14:10:28 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 27 Nov 2020 14:10:28 -0600
Received: from pxplinux063.india.englab.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0ARKAPw6117269;
        Fri, 27 Nov 2020 14:10:26 -0600
From:   Sekhar Nori <nsekhar@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>
CC:     Faiz Abbas <faiz_abbas@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>
Subject: [PATCH v2 0/2] arm64: dts: ti: k3-j721e: MMC/SD higher speed modes support
Date:   Sat, 28 Nov 2020 01:40:22 +0530
Message-ID: <20201127201024.64836-1-nsekhar@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

This is repost of Faiz's patches adding higher speed modes
for J721E, originally posted here:'

https://lore.kernel.org/lkml/20201001190541.6364-1-faiz_abbas@ti.com/

Dependencies are resolved now, and patches rebased to latest linux-next.

v2:
- rebased to latest linux-next
- fixed dtbs_check warning caused by improper states property in gpio
  regulator introduced in patch 2/2.

Faiz Abbas (2):
  arm64: dts: ti: k3-j721e-main: Add output tap delay values
  arm64: dts: ti: k3-j721e-common-proc-board: Add support SD card UHS
    modes

 .../dts/ti/k3-j721e-common-proc-board.dts     | 35 ++++++++++++++++++-
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 22 +++++++++---
 2 files changed, 51 insertions(+), 6 deletions(-)

-- 
2.17.1
