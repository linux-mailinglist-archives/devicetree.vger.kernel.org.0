Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F6BA6D1BBA
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 11:16:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231200AbjCaJQO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 05:16:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231241AbjCaJQA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 05:16:00 -0400
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8728E1EFFC
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 02:15:36 -0700 (PDT)
Received: by codeconstruct.com.au (Postfix, from userid 10000)
        id D189F20156; Fri, 31 Mar 2023 17:15:13 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=codeconstruct.com.au; s=2022a; t=1680254113;
        bh=V7VKEyDxEI8ZR8KoaP19Mi+G8YmO8XIsRnHDacm64Hk=;
        h=From:To:Cc:Subject:Date;
        b=f+RTY1E3vF89NURR2dU4/QVmDCdXUGRLzO8j9mEXZd2FHMuwn3dZm3VLen37zNR1g
         Gfj/orZewDfOJot6Ge6C1NQCtHVqOdC8fEVf6wvLbvaQQLEyg9Z9U/taXOJ87mwGEN
         iqen0pFTjKGb0Lz5g5fsttDWYln+XdOL84zGHWczsqjl/dMSmNiV6gPCa+roZoF2Dd
         akelWg3oK+UjZOhc84dr55VOTRRSLsstLzn6tvA5ES5q/CGzhxo5LiDvkMeWRkkz11
         z7WtyGMvy59CoX4dehEQ6QZ+OAinBDSfcFltX2gsvPxaEfoLvYpIosoXBuK35izM1F
         tZzAVT7tR8yyA==
From:   Jeremy Kerr <jk@codeconstruct.com.au>
To:     linux-i3c@lists.infradead.org
Cc:     devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
        Matt Johnston <matt@codeconstruct.com.au>,
        Vitor Soares <ivitro@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Jack Chen <zenghuchen@google.com>,
        Billy Tsai <billy_tsai@aspeedtech.com>,
        Dylan Hung <dylan_hung@aspeedtech.com>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
Subject: [PATCH v3 0/3] i3c dw,ast2600: Add a driver for the AST2600 i3c controller
Date:   Fri, 31 Mar 2023 17:14:58 +0800
Message-Id: <20230331091501.3800299-1-jk@codeconstruct.com.au>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series adds a new i3c controller driver, for the ASPEED AST2600 i3c
SoC peripheral. This device is very similar to the dw i3c controller, so
we implement this by adding a little platform abstraction to the dw
driver, and then a platform implementation for ast2600.

For those testing at home: there's a couple of prereqs for getting this
running: we need the ast2600 i3c clocks in their proper configuration,
as implemented in:

  https://lore.kernel.org/all/20230302005834.13171-1-jk@codeconstruct.com.au/

- this series has been merged to clk-next, but has not hit Linus'
upstream yet. The series will still build fine without this.

You'll also want the dts definitions for the i3c controller and
pincontrol setup on the ast2600 platform. I have changes for those in my
dev/i3c branch:

  https://github.com/CodeConstruct/linux/commits/dev/i3c

- and will send those once we have the driver accepted.

v3: expand the prereqs & background above, and implement some feedback
from review. Mainly: rather that using a platform_data pointer, assume
platforms will use an encapsulating struct for their platform-specific
data

v2: This is a rework from an earlier series that implemented this as
part of the dw driver; I have adopted Ben Dooks' suggestion to split
into a new driver + exported hooks from the dw base.

As always: comments, queries etc. are most welcome.

Cheers,


Jeremy

Jeremy Kerr (3):
  i3c: dw: Add infrastructure for platform-specific implementations
  dt-bindings: i3c: Add AST2600 i3c controller
  i3c: ast2600: Add AST2600 platform-specific driver

 .../bindings/i3c/aspeed,ast2600-i3c.yaml      |  72 ++++++++
 MAINTAINERS                                   |   6 +
 drivers/i3c/master/Kconfig                    |  14 ++
 drivers/i3c/master/Makefile                   |   1 +
 drivers/i3c/master/ast2600-i3c-master.c       | 168 ++++++++++++++++++
 drivers/i3c/master/dw-i3c-master.c            |  76 ++++----
 drivers/i3c/master/dw-i3c-master.h            |  54 ++++++
 7 files changed, 358 insertions(+), 33 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/i3c/aspeed,ast2600-i3c.yaml
 create mode 100644 drivers/i3c/master/ast2600-i3c-master.c
 create mode 100644 drivers/i3c/master/dw-i3c-master.h

-- 
2.39.1

