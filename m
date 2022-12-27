Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88969656C22
	for <lists+devicetree@lfdr.de>; Tue, 27 Dec 2022 15:45:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229692AbiL0Oo6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Dec 2022 09:44:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232120AbiL0OoQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Dec 2022 09:44:16 -0500
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FF1FBE24;
        Tue, 27 Dec 2022 06:44:15 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2BREi6ct087566;
        Tue, 27 Dec 2022 08:44:06 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1672152246;
        bh=0SWusFp7qwVw0GYRZP/6rlOnW5qGKhR4Jaep/x8Ev+Q=;
        h=From:To:CC:Subject:Date;
        b=UtryC9+88dneyaovBDbEyp39F9THaHzto82bk9Y79iPx+6mCVDKfI5qd52/r4Ok06
         kg5z0ckOVYcm0XUrafp8CAney82uwGpY+g4DuOVPtho6fgoXlOg4ySEvLk8VIMtyie
         cmSC06Gc0DMjI7IHUeA9s5GTm/QTP9Ru+aUagqZo=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2BREi6qB048254
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 27 Dec 2022 08:44:06 -0600
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Tue, 27
 Dec 2022 08:44:05 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Tue, 27 Dec 2022 08:44:05 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2BREi4un015310;
        Tue, 27 Dec 2022 08:44:05 -0600
From:   Devarsh Thakkar <devarsht@ti.com>
To:     <andersson@kernel.org>, <devicetree@vger.kernel.org>,
        <mathieu.poirier@linaro.org>, <p.zabel@pengutronix.de>,
        <linux-remoteproc@vger.kernel.orgi>, <robh+dt@kernel.org>,
        <linux-kernel@vger.kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <s-anna@ti.com>
CC:     <hnagalla@ti.com>, <praneeth@ti.com>, <nm@ti.com>,
        <vigneshr@ti.com>, <a-bhatia1@ti.com>, <j-luthra@ti.com>,
        <devarsht@ti.com>
Subject: [PATCH v4 0/2] Add single core R5F IPC for AM62 SoC family
Date:   Tue, 27 Dec 2022 20:14:02 +0530
Message-ID: <20221227144404.25184-1-devarsht@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
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

AM62 SoC family don't have a multicore R5F cluster,
instead they have a single core R5F.
This enables IPC support with single core R5F for AM62
family of SoCs.

Devarsh Thakkar (2):
  dt-bindings: remoteproc: ti: Add new compatible for AM62 SoC family
  remoteproc: k3-r5: Use separate compatible string for TI AM62 SoC
    family

 .../bindings/remoteproc/ti,k3-r5f-rproc.yaml  | 65 ++++++++++++++-----
 drivers/remoteproc/ti_k3_r5_remoteproc.c      | 57 ++++++++++++----
 2 files changed, 91 insertions(+), 31 deletions(-)

-- 
2.17.1

