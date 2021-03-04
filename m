Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4272932D770
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 17:10:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236557AbhCDQIw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Mar 2021 11:08:52 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:38248 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236243AbhCDQIZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Mar 2021 11:08:25 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 124G7Hmp048628;
        Thu, 4 Mar 2021 10:07:17 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1614874037;
        bh=KFHEIwfXAq5wnSODJmppb3Cbchngj54+NlIGvRbFz/E=;
        h=From:To:CC:Subject:Date;
        b=ah5OBhvu4CqnzJ70PeLSIetZYD81EFW+Z8+GYVV8KFG9B/SQE60+2qDUe9UHGGPwn
         dTe3h2lpgQD3X375OfG/9JF5NQK2PM9OCjvfl8XxPV7BPd01k7EZ0qfXUpH4/SC+F3
         HKwcmjxuHdHXy+4dJoSeJugd2wdFDusSorIIqalI=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 124G7HBM052548
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 4 Mar 2021 10:07:17 -0600
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 4 Mar
 2021 10:07:17 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 4 Mar 2021 10:07:17 -0600
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 124G7HdD102212;
        Thu, 4 Mar 2021 10:07:17 -0600
Received: from localhost ([10.250.35.110])
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 124G7HXF013405;
        Thu, 4 Mar 2021 10:07:17 -0600
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>
CC:     Jan Kiszka <jan.kiszka@siemens.com>,
        Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Roger Quadros <rogerq@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH v2 0/2] Add ICSSG nodes on AM65x & J721E SoCs
Date:   Thu, 4 Mar 2021 10:07:10 -0600
Message-ID: <20210304160712.8452-1-s-anna@ti.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Nishanth,

The following series is a resend of the ICSSG DT nodes [1] for the 5.13
merge window. Patches are just rebased on top of 5.12-rc1 + your latest
ti-k3-dts-next branch HEAD commit 0d7571c36331 ("arm64: dts: ti: k3-am65-main:
Add device_type to pcie*_rc nodes"). There are no code changes w.r.t v1, I
have picked up Vignesh's Reviewed-by tags. 

Note that the interrupt nodes continue to generate a warning about missing
'#address-cells' when compiled using W=2, and this was concluded to be not
an issue [2]. The nodename for PRUSS INTC is now enforced as per the
discussion in [2] and added in commit 5ab931402a17 ("dt-bindings: irqchip:
Add node name to PRUSS INTC") in v5.12-rc1.

Boot logs:
AM65x: https://pastebin.ubuntu.com/p/dVgBWB3xCv/
J721E: https://pastebin.ubuntu.com/p/YpmRPyCkRn/

Please see the v1 cover-letter [1] for all the original details.

regards
Suman

[1] https://patchwork.kernel.org/project/linux-arm-kernel/cover/20210114194805.8231-1-s-anna@ti.com/
[2] https://patchwork.kernel.org/comment/23926133/

Suman Anna (2):
  arm64: dts: ti: k3-am65-main: Add ICSSG nodes
  arm64: dts: ti: k3-j721e-main: Add ICSSG nodes

 arch/arm64/boot/dts/ti/k3-am65-main.dtsi  | 393 ++++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 262 +++++++++++++++
 2 files changed, 655 insertions(+)

-- 
2.30.1

