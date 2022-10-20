Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 522506055F2
	for <lists+devicetree@lfdr.de>; Thu, 20 Oct 2022 05:28:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229454AbiJTD2h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Oct 2022 23:28:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229464AbiJTD2f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Oct 2022 23:28:35 -0400
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78BF21DC4CF
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 20:28:34 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 29K3SINR104797;
        Wed, 19 Oct 2022 22:28:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1666236498;
        bh=B22AaKoItGtv/4WAKP2fdoxkbbRaVl//G18xhmtUn08=;
        h=From:To:CC:Subject:Date;
        b=jYUjZ3rlhGbmUBKbU9IufQhBpMCSdU4natrwAZDJfn60LwkJX/0aGmjEV4DqFTH84
         gWKTo9oLF7Xfks648KjZqjtXXnwhqStatdSzZhfP8XvyJ0n9fT/p1rvVCPUffXaBU2
         IPFGBD2OI1TZ7q+BfTIHgDJFFFXB1rEQllQ6t6fI=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 29K3SIkd025650
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 19 Oct 2022 22:28:18 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Wed, 19
 Oct 2022 22:28:18 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Wed, 19 Oct 2022 22:28:18 -0500
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 29K3SESj114404;
        Wed, 19 Oct 2022 22:28:17 -0500
From:   Matt Ranostay <mranostay@ti.com>
To:     <nm@ti.com>, <vigneshr@ti.com>,
        <krzysztof.kozlowski+dt@linaro.org>, <robh+dt@kernel.org>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Matt Ranostay <mranostay@ti.com>
Subject: [PATCH v2 0/2] arm64: dts: add new compatibles for J7 platforms
Date:   Wed, 19 Oct 2022 20:28:00 -0700
Message-ID: <20221020032802.308545-1-mranostay@ti.com>
X-Mailer: git-send-email 2.38.GIT
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
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

