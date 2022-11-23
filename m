Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3911634E4D
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 04:24:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235518AbiKWDYc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Nov 2022 22:24:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235511AbiKWDYc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Nov 2022 22:24:32 -0500
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02A01B73BA
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 19:24:29 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2AN3OInb067615;
        Tue, 22 Nov 2022 21:24:18 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1669173858;
        bh=2jdGZzKcHM/J0ThdPNdM/F3L7qddr17TgBnGi+H6YA8=;
        h=From:To:CC:Subject:Date;
        b=yHCUgcYWMhrtHDxR7i4omzPcGePd2fAcLUa74S/Vbl7E1YVbL+hPhgyHiKVBXF9Aj
         C/g066DNVPpo8ctvrnWCGu1tQddxhMXsFANZfJJtDZEdz3GuqvzWhg6uThlRWXwRsw
         qqazxAQWkixn500Jw/ytE9SBJroHmhdsybiU2iO8=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2AN3OI5N109710
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 22 Nov 2022 21:24:18 -0600
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Tue, 22
 Nov 2022 21:24:18 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Tue, 22 Nov 2022 21:24:18 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2AN3OEn6005835;
        Tue, 22 Nov 2022 21:24:16 -0600
From:   Matt Ranostay <mranostay@ti.com>
To:     <r-gunasekaran@ti.com>, <rogerq@kernel.org>, <vkoul@kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <vigneshr@ti.com>
CC:     <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Matt Ranostay <mranostay@ti.com>
Subject: [PATCH v2 0/2] phy: ti: phy-j721e-wiz: add j721s2 support
Date:   Tue, 22 Nov 2022 19:24:11 -0800
Message-ID: <20221123032413.1193961-1-mranostay@ti.com>
X-Mailer: git-send-email 2.38.GIT
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for j721s2 support for phy-j721e-wiz module.

Changes from v1:
* Re-order new compatible within yaml documentation

Matt Ranostay (2):
  dt-bindings: phy-j721e-wiz: add j721s2 compatible string
  phy: ti: phy-j721e-wiz: add j721s2-wiz-10g module support

 .../bindings/phy/ti,phy-j721e-wiz.yaml           |  1 +
 drivers/phy/ti/phy-j721e-wiz.c                   | 16 ++++++++++++++++
 2 files changed, 17 insertions(+)

-- 
2.38.GIT

