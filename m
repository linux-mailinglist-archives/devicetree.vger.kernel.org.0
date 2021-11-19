Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA1ED456EA6
	for <lists+devicetree@lfdr.de>; Fri, 19 Nov 2021 13:01:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234227AbhKSMEb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Nov 2021 07:04:31 -0500
Received: from mta-02.yadro.com ([89.207.88.252]:35598 "EHLO mta-01.yadro.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232350AbhKSMEb (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 19 Nov 2021 07:04:31 -0500
Received: from localhost (unknown [127.0.0.1])
        by mta-01.yadro.com (Postfix) with ESMTP id 89923460E5;
        Fri, 19 Nov 2021 12:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=yadro.com; h=
        content-type:content-type:content-transfer-encoding:mime-version
        :x-mailer:message-id:date:date:subject:subject:from:from
        :received:received:received; s=mta-01; t=1637323287; x=
        1639137688; bh=m9jbWBLIHFknQPn+FXkCN4elAgMcZDm4czGRhI4yh0I=; b=S
        dncD5sg09kDRVHF6jxomeeMK/++oI9wQMxvDa39JjzqoShL72aJwnMGDByx7QIud
        Jgh2u1NpOFCyyzTnyZU0wLZMf7SQU29lk6J4a4GghU9wYNGODv02KE2gPvpPiURm
        OD+T+RChGiV7IlQhhO2R7ibMPgNYYZIaboDiVKxw1g=
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
        by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id j9khI-If2DRy; Fri, 19 Nov 2021 15:01:27 +0300 (MSK)
Received: from T-EXCH-04.corp.yadro.com (t-exch-04.corp.yadro.com [172.17.100.104])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
        (No client certificate requested)
        by mta-01.yadro.com (Postfix) with ESMTPS id 049E245E29;
        Fri, 19 Nov 2021 15:01:26 +0300 (MSK)
Received: from nb-511.yadro.com (10.199.10.105) by T-EXCH-04.corp.yadro.com
 (172.17.100.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32; Fri, 19
 Nov 2021 15:01:23 +0300
From:   Andrei Kartashev <a.kartashev@yadro.com>
To:     <joel@jms.id.au>, <andrew@aj.id.au>, <openbmc@lists.ozlabs.org>,
        <devicetree@vger.kernel.org>
Subject: [PATCH v2 0/2] ARM: dts: device tree for YADRO VEGMAN BMC
Date:   Fri, 19 Nov 2021 15:00:55 +0300
Message-ID: <20211119120057.12118-1-a.kartashev@yadro.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.199.10.105]
X-ClientProxiedBy: T-EXCH-01.corp.yadro.com (172.17.10.101) To
 T-EXCH-04.corp.yadro.com (172.17.100.104)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This brings initial DTS files for VEGMAN BMC machines

---
  v2:
  - Cleanup I2C definitions
  - Use OpenBMC flash layout

Andrei Kartashev (2):
  dt-bindings: vendor-prefixes: add YADRO
  ARM: dts: aspeed: add device tree for YADRO VEGMAN BMC

 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm/boot/dts/Makefile                    |   5 +-
 arch/arm/boot/dts/aspeed-bmc-vegman-n110.dts  | 149 +++++++++
 arch/arm/boot/dts/aspeed-bmc-vegman-rx20.dts  | 255 ++++++++++++++
 arch/arm/boot/dts/aspeed-bmc-vegman-sx20.dts  | 154 +++++++++
 arch/arm/boot/dts/aspeed-bmc-vegman.dtsi      | 311 ++++++++++++++++++
 6 files changed, 875 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/aspeed-bmc-vegman-n110.dts
 create mode 100644 arch/arm/boot/dts/aspeed-bmc-vegman-rx20.dts
 create mode 100644 arch/arm/boot/dts/aspeed-bmc-vegman-sx20.dts
 create mode 100644 arch/arm/boot/dts/aspeed-bmc-vegman.dtsi

-- 
2.32.0

