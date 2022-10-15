Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 605E55FFBD9
	for <lists+devicetree@lfdr.de>; Sat, 15 Oct 2022 22:11:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229655AbiJOULr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 15 Oct 2022 16:11:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229594AbiJOULq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 15 Oct 2022 16:11:46 -0400
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16E6242AE3
        for <devicetree@vger.kernel.org>; Sat, 15 Oct 2022 13:11:44 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 29FKBUMV097674;
        Sat, 15 Oct 2022 15:11:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1665864690;
        bh=6rQELq3LVF1Oy9/G8iC1Hlu5ypUXnxEw4otfvlhku1o=;
        h=From:To:CC:Subject:Date;
        b=pVptbBBboZSPSKksXQWzIjyVdnx0lSdNonj6n6ktejeEwU4+VK++rZLm7hlIwPArK
         HyoGulwGSWhgs8BEkIF2LaQnYcZnUyE78TaXXFExrLQQ3AXoSr++4qMxjgdryOciVa
         ggRA8zAWarP2mI3XVxOHUuorrNhYPm039ihrVvqc=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 29FKBUlT124367
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Sat, 15 Oct 2022 15:11:30 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Sat, 15
 Oct 2022 15:11:30 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Sat, 15 Oct 2022 15:11:30 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 29FKBR0c064094;
        Sat, 15 Oct 2022 15:11:28 -0500
From:   Matt Ranostay <mranostay@ti.com>
To:     <vkoul@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <vigneshr@ti.com>
CC:     <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        Matt Ranostay <mranostay@ti.com>
Subject: [PATCH 0/2] phy: ti: phy-j721e-wiz: add j784s4 support
Date:   Sat, 15 Oct 2022 13:11:21 -0700
Message-ID: <20221015201123.195477-1-mranostay@ti.com>
X-Mailer: git-send-email 2.38.0.rc0.52.gdda7228a83
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

WIZ modules for J784S4 platform have two input muxes which requires
additional mux sections options.

Matt Ranostay (2):
  dt-bindings: phy-j721e-wiz: add j784s4 compatible string
  phy: ti: phy-j721e-wiz: add j784s4-wiz-10g module support

 .../bindings/phy/ti,phy-j721e-wiz.yaml        |  1 +
 drivers/phy/ti/phy-j721e-wiz.c                | 22 +++++++++++++++++++
 2 files changed, 23 insertions(+)

-- 
2.38.0.rc0.52.gdda7228a83

