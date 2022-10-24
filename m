Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A4266098F8
	for <lists+devicetree@lfdr.de>; Mon, 24 Oct 2022 05:55:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229717AbiJXDyr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Oct 2022 23:54:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229904AbiJXDyo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Oct 2022 23:54:44 -0400
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4846B10FE
        for <devicetree@vger.kernel.org>; Sun, 23 Oct 2022 20:54:37 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 29O3sNrU002641;
        Sun, 23 Oct 2022 22:54:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1666583663;
        bh=B22AaKoItGtv/4WAKP2fdoxkbbRaVl//G18xhmtUn08=;
        h=From:To:CC:Subject:Date;
        b=yxo80AKv6SDn1j5M0vqVB4GjpFJl0/VJvkNYRDkWRcg8HM5mBwrOXUbmooYCt9Xdl
         ZXE9waOjeiPupwIb/pki/8gbBNqarR0835ZM5JwUY7SXK6ylb2j0CPQe4wMkJE0Jc9
         1Qhe7k0GaFyo5nt3ojTmRh8UYT5qN3pfvlu3EKLk=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 29O3sNd3083355
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Sun, 23 Oct 2022 22:54:23 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Sun, 23
 Oct 2022 22:54:23 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Sun, 23 Oct 2022 22:54:23 -0500
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 29O3sKJq101138;
        Sun, 23 Oct 2022 22:54:22 -0500
From:   Matt Ranostay <mranostay@ti.com>
To:     <nm@ti.com>, <vigneshr@ti.com>,
        <krzysztof.kozlowski+dt@linaro.org>, <robh+dt@kernel.org>,
        <lee@kernel.org>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Matt Ranostay <mranostay@ti.com>
Subject: [PATCH RESEND v2 0/2] arm64: dts: add new compatibles for J7 platforms
Date:   Sun, 23 Oct 2022 20:54:03 -0700
Message-ID: <20221024035405.366208-1-mranostay@ti.com>
X-Mailer: git-send-email 2.38.GIT
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Changes from v1:
* add j7200 and j721s2 syscon compatible strings to dt-binding documentation
* changed compatible strings to use newly defined ones per platform

Matt Ranostay (2):
  dt-bindings: mfd: ti,j721e-system-controller: add compatible strings
    for other platforms
  arm64: dts: k3-j72*: correct compatible for syscon entries

 .../devicetree/bindings/mfd/ti,j721e-system-controller.yaml     | 2 ++
 arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi                 | 2 +-
 arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi                 | 2 +-
 arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi                | 2 +-
 4 files changed, 5 insertions(+), 3 deletions(-)

-- 
2.38.GIT

