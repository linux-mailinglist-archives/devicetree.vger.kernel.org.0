Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D9BAA46191
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2019 16:50:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728397AbfFNOun (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jun 2019 10:50:43 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:36114 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727560AbfFNOun (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jun 2019 10:50:43 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5EEocgQ002127;
        Fri, 14 Jun 2019 09:50:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1560523838;
        bh=EXfhPcFaIaxEGirPlOMLlvJONPINRLrpN2ItCnY7h9w=;
        h=From:To:CC:Subject:Date;
        b=HjU1k+gdV9A/ERarYaC9LbaXuz4FH2rckbjRr27jGtId8udJbbPtbpKUBA379OZiI
         +zi9NfvbpCkmg40uwHAun3LvyALJiuM76GiGWQIEmJ0S7lXuzDwrI1ZdSdKjFBf+Fr
         InjLCGZtFPcXVvnBSMC++6e7QJjgcI9GrVjlVrxE=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5EEocbj020922
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 14 Jun 2019 09:50:38 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 14
 Jun 2019 09:50:37 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 14 Jun 2019 09:50:37 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5EEoYCv029549;
        Fri, 14 Jun 2019 09:50:35 -0500
From:   Lokesh Vutla <lokeshvutla@ti.com>
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>,
        Rob Herring <robh+dt@kernel.org>
CC:     Sekhar Nori <nsekhar@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Suman Anna <s-anna@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH 0/2] arm64: dts: ti: k3-j721e: Add interrupt controller nodes
Date:   Fri, 14 Jun 2019 20:19:59 +0530
Message-ID: <20190614145001.9598-1-lokeshvutla@ti.com>
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
J721E SoC.

Depends on the main nav intr node posted by Suman: 
https://patchwork.kernel.org/patch/10969399/

Lokesh Vutla (2):
  arm64: dts: ti: k3-j721e: Add interrupt controllers in main domain
  arm64: dts: ti: k3-j721e: Add interrupt controllers in wakeup domain

 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 23 +++++++++++++++++++
 .../boot/dts/ti/k3-j721e-mcu-wakeup.dtsi      | 11 +++++++++
 2 files changed, 34 insertions(+)

-- 
2.21.0

