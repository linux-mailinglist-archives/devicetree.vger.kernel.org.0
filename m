Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 43C623813E2
	for <lists+devicetree@lfdr.de>; Sat, 15 May 2021 00:48:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233996AbhENWtZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 May 2021 18:49:25 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:41348 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230371AbhENWtY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 May 2021 18:49:24 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14EMm5vl099720;
        Fri, 14 May 2021 17:48:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1621032485;
        bh=MtATc9FrJN3q39E8EjErepFUxs/F8gGeI3aB393ConI=;
        h=From:To:CC:Subject:Date;
        b=myb0aWtlQNiUEYDYx4lcMAGmwWgV+0hRmJ5p9ERHbCHqUivDE48RSvEuEHXHqjZ1p
         sRDf8rVvGiTmeJLoA+tGtPeBzaeUjSdveW20VivcUwbrutajwebi3uQNfOI6oaGtYy
         t0XosnljM4ygEUzGyU3YX+5C28Fc/XRGTHGoZuVA=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14EMm5aj123006
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 14 May 2021 17:48:05 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 14
 May 2021 17:48:05 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 14 May 2021 17:48:05 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14EMm5O7097345;
        Fri, 14 May 2021 17:48:05 -0500
Received: from localhost ([10.250.35.60])
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 14EMm4QK111424;
        Fri, 14 May 2021 17:48:04 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>
CC:     Jan Kiszka <jan.kiszka@siemens.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 0/2] Add ICSSG MDIO nodes on AM65x & J721E SoCs
Date:   Fri, 14 May 2021 17:47:57 -0500
Message-ID: <20210514224759.9987-1-s-anna@ti.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Nishanth,

The following series adds the base MDIO nodes representing the MDIO
sub-module present in each of the ICSSG subsystem. These build on
top of the foundation ICSSG nodes added in v5.13-rc1. Please see
the previous ICSSG foundation series for more details [1]. 

The MDIO nodes would only be used on boards wired for supporting
the ICSSG Ethernet, so in general are expected to be disabled in
all boards where they are not pinned out.

I have added these as "enabled" by default in the base dtsi files,
and have marked it disabled in all the existing board dts files
until we are ready to add in the ICSSG Ethernet functionality.

Note that the bus_freq property throws a warning with W=2, but this
had been a legacy property defined a long back. The davinci-mdio
binding continues to use this.

regards
Suman

[1] https://patchwork.kernel.org/project/linux-arm-kernel/cover/20210114194805.8231-1-s-anna@ti.com/

Roger Quadros (1):
  arm64: dts: ti: k3-am65-main: Add ICSSG MDIO nodes

Suman Anna (1):
  arm64: dts: ti: k3-j721e-main: Add ICSSG MDIO nodes

 .../boot/dts/ti/k3-am65-iot2050-common.dtsi   | 12 ++++++++
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi      | 30 +++++++++++++++++++
 .../arm64/boot/dts/ti/k3-am654-base-board.dts | 12 ++++++++
 .../dts/ti/k3-j721e-common-proc-board.dts     |  8 +++++
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 20 +++++++++++++
 5 files changed, 82 insertions(+)

-- 
2.30.1

