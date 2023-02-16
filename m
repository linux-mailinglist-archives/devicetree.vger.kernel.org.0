Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 67A2B698DE7
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 08:42:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229522AbjBPHmI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 02:42:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229461AbjBPHmH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 02:42:07 -0500
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF6D43B0CE
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 23:42:05 -0800 (PST)
Received: by codeconstruct.com.au (Postfix, from userid 10000)
        id 35D4D200E3; Thu, 16 Feb 2023 15:42:00 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=codeconstruct.com.au; s=2022a; t=1676533320;
        bh=4WNgPVjHnkyd+O8qT3n0+qVAMObFFFxGFkSm7gNIyyc=;
        h=From:To:Cc:Subject:Date;
        b=KSe9yqoyHL6hKI3XVVLn+TrKbxor3hAZuifCG1iXSrz7es7wQGnt+jzQtDV1zBJBS
         nQ4o14z7Qp1Cud/UoYhKe6vyhkSUNLVxl/2OrkSl1TVMEVGqy4daaJfyd/2R3tJs8d
         p3LfCXsqDbHT8fRnwBWAIkH/HyiSmpAZh2k/2doQtiqCaF1C80bT8SOY45T7MeBzxK
         DqOJHpe4hGrve7dXH3zpOBAF74KBWt/mMvrtb75OrjrJQZceKTlzNQfqvWvULD1KCL
         kcunY8cORDGx7DYNihRmVZC5PbnHGAK6aidU9aAicWQp2Irs8jfavEJg0zTp3qMFgM
         Ohbvs0FGmK/3Q==
From:   Jeremy Kerr <jk@codeconstruct.com.au>
To:     linux-i3c@lists.infradead.org
Cc:     Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Vitor Soares <ivitro@gmail.com>, linux-aspeed@lists.ozlabs.org,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dylan Hung <dylan_hung@aspeedtech.com>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
Subject: [PATCH 0/4] i3c: Add support for ast2600 i3c controller
Date:   Thu, 16 Feb 2023 15:41:51 +0800
Message-Id: <cover.1676532146.git.jk@codeconstruct.com.au>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The AST2600 SoC hardware includes a set of i3c controllers, based on the
designware i3c core, plus some global registers for SoC integration.

This series adds support for these i3c controllers, through the existing
dw i3c master controller driver, by adding a set of platform-specific
hooks to handle the global register configuration. This also gives us a
way to add any future hardware-specific behaviours.

We also need a DT binding to describe the ast2600-specific hardware.
Since this involves new (mandatory) properties, I have added this as a
separate binding rather than add a new compat string to the dw binding.

The dt-binding example depends on a prior submission to the dt binding
headers:

  https://lore.kernel.org/linux-devicetree/cover.1676294433.git.jk@codeconstruct.com.au/

Full support for the global regmap will land with this queued mfd change:

  https://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git/commit/?id=cf2271843de835839e91c5c036492a87085af756

Of course, any queries/comments/etc are most welcome.

Cheers,


Jeremy

Jeremy Kerr (4):
  dt-bindings: i3c: Add AST2600 i3c controller
  i3c: dw: Add platform operations
  i3c: dw: Add AST2600 platform ops
  i3c: dw: Add compatible string for ASPEED AST2600 BMC platform

 .../bindings/i3c/aspeed,ast2600-i3c.yaml      |  73 ++++++++
 drivers/i3c/master/dw-i3c-master.c            | 165 +++++++++++++++++-
 2 files changed, 232 insertions(+), 6 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/i3c/aspeed,ast2600-i3c.yaml

-- 
2.39.1

