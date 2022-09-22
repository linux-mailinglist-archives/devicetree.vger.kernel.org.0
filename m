Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 120F25E6D45
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 22:44:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229519AbiIVUow (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 16:44:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229598AbiIVUou (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 16:44:50 -0400
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DA3250506
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 13:44:45 -0700 (PDT)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 28MKicbJ070955;
        Thu, 22 Sep 2022 15:44:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1663879478;
        bh=P6NEvfz5gVf9k8dk/KZYobZYXBAwGwewYMSyAglecQI=;
        h=From:To:CC:Subject:Date;
        b=JQQTckO2aTqtuJD4fi5Uc+yJ1XjaVVI1ohtAqN4Wy8ltYINLSSPPfO2AuRlvV0B4d
         3vnh0sarAzfTlgSxJwHy5s76HWmf48SgEtIwX+PVCgNNqqdvt0xhoVu83phG076xLd
         1sXsK7Y2MZSa90IrVMYDdbHOjpjFjv5EQxB4kBEI=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 28MKic2E006121
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 22 Sep 2022 15:44:38 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Thu, 22
 Sep 2022 15:44:38 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Thu, 22 Sep 2022 15:44:38 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 28MKialb034450;
        Thu, 22 Sep 2022 15:44:37 -0500
From:   Matt Ranostay <mranostay@ti.com>
To:     <vigneshr@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Matt Ranostay <mranostay@ti.com>
Subject: [PATCH 0/2] dt-bindings: PCI: ti,j721e-pci-*: resolve unexpected property warnings
Date:   Thu, 22 Sep 2022 13:44:32 -0700
Message-ID: <20220922204434.74764-1-mranostay@ti.com>
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

Resolve unexpected property warnings related to interrupts in both J721E PCI EP and host
yaml files.

Matt Ranostay (2):
  dt-bindings: PCI: ti,j721e-pci-host: add interrupt controller
    definition
  dt-bindings: PCI: ti,j721e-pci-*: Add missing interrupt properties

 .../bindings/pci/ti,j721e-pci-ep.yaml         |  7 +++++++
 .../bindings/pci/ti,j721e-pci-host.yaml       | 20 +++++++++++++++++++
 2 files changed, 27 insertions(+)

-- 
2.38.0.rc0.52.gdda7228a83

