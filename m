Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DB98633A05
	for <lists+devicetree@lfdr.de>; Tue, 22 Nov 2022 11:25:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233092AbiKVKZx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Nov 2022 05:25:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233593AbiKVKZV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Nov 2022 05:25:21 -0500
X-Greylist: delayed 422 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 22 Nov 2022 02:22:53 PST
Received: from mx4.securetransport.de (mx4.securetransport.de [178.254.6.145])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id A708320184
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 02:22:53 -0800 (PST)
Received: from mail.dh-electronics.com (unknown [77.24.89.57])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mx4.securetransport.de (Postfix) with ESMTPSA id C93E4720109;
        Tue, 22 Nov 2022 11:15:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dh-electronics.com;
        s=dhelectronicscom; t=1669112112;
        bh=bJlCMJDxfB/y8X7vNgoJnu3057bmwnMcIpLwhBIIIOg=;
        h=From:To:CC:Subject:Date:In-Reply-To:References:From;
        b=IXxIZcB6brGuwBHS33xl3jo45VTzP2Ecx2wviIkjGQ8Higc+vj4dbXyYFnKZu1ikR
         VchNToXw7D9ZaBlqFNurfkqSSqMXY74i8RsgPdmRnfSE7Z267kBTao2QgzCOjCfkTy
         ETelKOqKAwkMGhlBba7tKwUhcFPfAwKR7zEK3TaGMl+GIYcXGrvKFarrjSRveS6tk6
         Wx8+O3l1evvrTPFmAbip5BGr6IIgfpflBzrRAyKvSXpwehMvhjnwP6D2MsDotQvoJG
         fK+MWPg+kWrzPTYKi5pb87ANkrp9BLPM24WcFyoG9MOFnM8XV3ayKxD/oVZExdK1J8
         kB7SSP0CsVi2w==
Received: from DHPWEX01.DH-ELECTRONICS.ORG (10.64.2.30) by
 DHPWEX01.DH-ELECTRONICS.ORG (10.64.2.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.20; Tue, 22 Nov 2022 11:00:00 +0100
Received: from localhost.localdomain (172.16.51.2) by
 DHPWEX01.DH-ELECTRONICS.ORG (10.64.2.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.20 via Frontend Transport; Tue, 22 Nov 2022 11:00:00 +0100
From:   Christoph Niedermaier <cniedermaier@dh-electronics.com>
To:     <linux-arm-kernel@lists.infradead.org>
CC:     Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        "Support Opensource" <support.opensource@diasemi.com>,
        Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
        Lee Jones <lee@kernel.org>, "Rob Herring" <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marek Vasut <marex@denx.de>, <kernel@dh-electronics.com>,
        <devicetree@vger.kernel.org>
Subject: [PATCH 1/3] dt-bindings: mfd: da9062: Move IRQ to optional properties
Date:   Tue, 22 Nov 2022 10:58:31 +0100
Message-ID: <20221122095833.3957-2-cniedermaier@dh-electronics.com>
X-Mailer: git-send-email 2.11.0
X-klartext: yes
In-Reply-To: <20221122095833.3957-1-cniedermaier@dh-electronics.com>
References: <20221122095833.3957-1-cniedermaier@dh-electronics.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Move IRQ to optional properties, because the MFD DA9061/62
is usable without IRQ. This makes the chip usable for designs
that don't have the IRQ pin connected.

Signed-off-by: Christoph Niedermaier <cniedermaier@dh-electronics.com>
---
Cc: Support Opensource <support.opensource@diasemi.com>
Cc: Adam Thomson <Adam.Thomson.Opensource@diasemi.com>
Cc: Lee Jones <lee@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Marek Vasut <marex@denx.de>
Cc: kernel@dh-electronics.com
Cc: devicetree@vger.kernel.org
To: linux-kernel@vger.kernel.org
---
 Documentation/devicetree/bindings/mfd/da9062.txt | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/da9062.txt b/Documentation/devicetree/bindings/mfd/da9062.txt
index bab0d0e66cb3..fe580206e18d 100644
--- a/Documentation/devicetree/bindings/mfd/da9062.txt
+++ b/Documentation/devicetree/bindings/mfd/da9062.txt
@@ -33,11 +33,6 @@ Required properties:
     "dlg,da9061" for DA9061
 - reg : Specifies the I2C slave address (this defaults to 0x58 but it can be
   modified to match the chip's OTP settings).
-- interrupts : IRQ line information.
-- interrupt-controller
-
-See Documentation/devicetree/bindings/interrupt-controller/interrupts.txt for
-further information on IRQ bindings.
 
 Optional properties:
 
@@ -48,6 +43,12 @@ Optional properties:
 See Documentation/devicetree/bindings/gpio/gpio.txt for further information on
 GPIO bindings.
 
+- interrupts : IRQ line information.
+- interrupt-controller
+
+See Documentation/devicetree/bindings/interrupt-controller/interrupts.txt for
+further information on IRQ bindings.
+
 Sub-nodes:
 
 - regulators : This node defines the settings for the LDOs and BUCKs.
-- 
2.11.0

