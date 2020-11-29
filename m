Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 406982C7A66
	for <lists+devicetree@lfdr.de>; Sun, 29 Nov 2020 18:54:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728098AbgK2RyM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Nov 2020 12:54:12 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:42352 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728075AbgK2RyM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Nov 2020 12:54:12 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0ATHqRWH081623;
        Sun, 29 Nov 2020 11:52:27 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1606672347;
        bh=+OOKaw25IWr2O4iAXSvu1n/w/Cn7g/9WmgRCqQLrbEk=;
        h=From:To:CC:Subject:Date;
        b=iwCalZDaXvlh4SOCnvKIZ1n6B2QZeGe5RxHUutkbBMJTRNjge8myJlKPwNbz19kh1
         WNhrmeQULPssV1Pj8rKR3fYbH1olUn3QgVn3oJjNDH9UlYwWMSiao/cM9SVHiUlvsk
         zV1/K4a+URnQUQrjG1DB5DMLAb20qaia9PyY120U=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0ATHqRos033350
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Sun, 29 Nov 2020 11:52:27 -0600
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Sun, 29
 Nov 2020 11:52:26 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Sun, 29 Nov 2020 11:52:27 -0600
Received: from pxplinux063.india.englab.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0ATHqOqe081845;
        Sun, 29 Nov 2020 11:52:25 -0600
From:   Sekhar Nori <nsekhar@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>
CC:     Faiz Abbas <faiz_abbas@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>
Subject: [PATCH v3 0/2] arm64: dts: ti: k3-j721e: MMC/SD higher speed modes support
Date:   Sun, 29 Nov 2020 23:22:21 +0530
Message-ID: <20201129175223.21751-1-nsekhar@ti.com>
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

v3:
- fix new node_name_chars_strict warning that got introduced

v2:
- rebased to latest linux-next
- fixed dtbs_check warning caused by improper states property in gpio
  regulator introduced in patch 2/2.

Faiz Abbas (2):
  arm64: dts: ti: k3-j721e-main: Add output tap delay values
  arm64: dts: ti: k3-j721e-common-proc-board: Add support SD card UHS
    modes

 .../dts/ti/k3-j721e-common-proc-board.dts     | 33 +++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 22 ++++++++++---
 2 files changed, 50 insertions(+), 5 deletions(-)

-- 
2.17.1

