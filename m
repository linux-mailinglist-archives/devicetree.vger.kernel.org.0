Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E9E6963383E
	for <lists+devicetree@lfdr.de>; Tue, 22 Nov 2022 10:22:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231300AbiKVJWb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Nov 2022 04:22:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232341AbiKVJW3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Nov 2022 04:22:29 -0500
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7ADC21B6
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 01:22:26 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2AM9M8sX105746;
        Tue, 22 Nov 2022 03:22:08 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1669108928;
        bh=bvgBIOUk0/EXIcA1xkCEr5z+IOYPa3TOppIs6OQvmj8=;
        h=From:To:CC:Subject:Date;
        b=k5wNhQELOZ7Y060HoFERgy2TjTYKjrCVzEVi2T4R7GMoFDvDYdfMHqdb7XGPW1Xx6
         TPkKO9A53BrwOcFyHvXXvfpkf5vt0DpFVGO24GB2fXQPaz8U5qB/0JK+zJ98Z2YWzK
         f/fba7II1EtkTitlVfPF4YNZsJU5QqJpybTFwfkU=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2AM9M8jm011568
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 22 Nov 2022 03:22:08 -0600
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Tue, 22
 Nov 2022 03:22:07 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Tue, 22 Nov 2022 03:22:07 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2AM9M4rm027623;
        Tue, 22 Nov 2022 03:22:06 -0600
From:   Matt Ranostay <mranostay@ti.com>
To:     <r-gunasekaran@ti.com>, <rogerq@kernel.org>, <vkoul@kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <vigneshr@ti.com>
CC:     <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Matt Ranostay <mranostay@ti.com>
Subject: [PATCH 0/2] phy: ti: phy-j721e-wiz: add j721s2 support
Date:   Tue, 22 Nov 2022 01:22:01 -0800
Message-ID: <20221122092203.762308-1-mranostay@ti.com>
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

Matt Ranostay (2):
  dt-bindings: phy-j721e-wiz: add j721s2 compatible string
  phy: ti: phy-j721e-wiz: add j721s2-wiz-10g module support

 .../bindings/phy/ti,phy-j721e-wiz.yaml           |  1 +
 drivers/phy/ti/phy-j721e-wiz.c                   | 16 ++++++++++++++++
 2 files changed, 17 insertions(+)

-- 
2.38.GIT

