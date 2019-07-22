Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4B97370941
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 21:05:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730581AbfGVTFs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 15:05:48 -0400
Received: from lelv0143.ext.ti.com ([198.47.23.248]:40340 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730737AbfGVTFr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jul 2019 15:05:47 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6MJ5fck106947;
        Mon, 22 Jul 2019 14:05:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1563822341;
        bh=mz8MhyIsX5DOXGbWUjIm6SKTM4q+CG3owh03/4TZcz0=;
        h=From:To:CC:Subject:Date;
        b=VgBzdK8+CYDDAsPxNrjP2IM+lBPfjS53odAYdrV3COOdgxPSR+EGdmRWfHPmnRGeZ
         406op4jiYTlKBPjJ2wKo9tcR8bTb+UJCVujXTZbVPQGHN0+KD1De8txY95Dr+sY5ze
         nlkOUtQzXX4nG/KSD3UYraoD15igMUXBtVQr5HDk=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6MJ5fwL026653
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 22 Jul 2019 14:05:41 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 22
 Jul 2019 14:05:41 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 22 Jul 2019 14:05:41 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com [128.247.22.53])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6MJ5fY6127997;
        Mon, 22 Jul 2019 14:05:41 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
        by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x6MJ5eZ02565;
        Mon, 22 Jul 2019 14:05:40 -0500 (CDT)
From:   Suman Anna <s-anna@ti.com>
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 0/2] Add HwSpinlock nodes for TI K3 SoCs
Date:   Mon, 22 Jul 2019 14:05:37 -0500
Message-ID: <20190722190539.27816-1-s-anna@ti.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Tero,

The following series adds the HwSpinlock DT nodes for the
TI K3 AM65x and J721E SoC families. Patches are based on
v5.3-rc1.

The bindings and driver support for the same have been
merged in v5.3-rc1.

regards
Suman

Suman Anna (2):
  arm64: dts: ti: k3-am65-main: Add hwspinlock node
  arm64: dts: ti: k3-j721e-main: Add hwspinlock node

 arch/arm64/boot/dts/ti/k3-am65-main.dtsi  | 6 ++++++
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 6 ++++++
 2 files changed, 12 insertions(+)

-- 
2.22.0

