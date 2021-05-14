Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 16403381299
	for <lists+devicetree@lfdr.de>; Fri, 14 May 2021 23:07:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230141AbhENVIz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 May 2021 17:08:55 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:48618 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229927AbhENVIy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 May 2021 17:08:54 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14EL7ULv064441;
        Fri, 14 May 2021 16:07:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1621026450;
        bh=X/6o1O5FBxZByc/+gIVd8rI6scbawC3RowyjB2lgOOw=;
        h=From:To:CC:Subject:Date;
        b=NsfqdDBNdYVXDG2UtZPMqFVSpn3Yfi5I6ovCHjZJcULPiiSdUwZmxC6u6l6ouuSnd
         Xfch+tCEQuQbsqD9j4qu7vLu2/KbUcU9fmWPMIW9P0NOJ2MWBcQ/EyFVT8kd8LSXDL
         fa5E0xnscWSam/lBBSw0VA56QY/N44MZ99fLHiKU=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14EL7UB5122090
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 14 May 2021 16:07:30 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 14
 May 2021 16:07:30 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 14 May 2021 16:07:30 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14EL7UEB093826;
        Fri, 14 May 2021 16:07:30 -0500
Received: from localhost ([10.250.35.60])
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 14EL7UD3054590;
        Fri, 14 May 2021 16:07:30 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>
CC:     Gowtham Tammana <g-tammana@ti.com>,
        Praneeth Bajjuri <praneeth@ti.com>,
        Vaibhav Gupta <v_gupta@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 0/3] Add crypto nodes for J7200 and AM64x
Date:   Fri, 14 May 2021 16:07:21 -0500
Message-ID: <20210514210725.32720-1-s-anna@ti.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Nishanth,

The following series adds the crypto nodes including the underlying
rng nodes for J7200 and AM64x SoCs. Patches are on top of 5.13-rc1.

Note that AM64x supports only a limited number of algos compared to
the other K3 SoCs. The AM64x driver support accounting for this is
merged in v5.13-rc1. Also, the IP appears at the same address on
J7200 and AM64x but is in different domains.

I have verified the basic crypto self-tests, extra-tests and some
basic tcrypt tests on both J7200 EVM and AM64x EVM boards.

regards
Suman

Peter Ujfalusi (2):
  arm64: dts: ti: k3-j7200-mcu: Add the mcu sa2ul crypto node
  arm64: dts: ti: k3-am64-main: Enable crypto accelerator

Suman Anna (1):
  arm64: dts: ti: k3-am64: Add SA2UL address space to Main CBASS ranges

 arch/arm64/boot/dts/ti/k3-am64-main.dtsi      | 19 ++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am64.dtsi           |  1 +
 .../boot/dts/ti/k3-j7200-mcu-wakeup.dtsi      | 20 +++++++++++++++++++
 3 files changed, 40 insertions(+)

-- 
2.30.1

