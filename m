Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1C246CFC9B
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 09:22:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229754AbjC3HWk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 03:22:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229695AbjC3HWi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 03:22:38 -0400
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D209EC
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 00:22:37 -0700 (PDT)
Received: by codeconstruct.com.au (Postfix, from userid 10000)
        id 01FA82009F; Thu, 30 Mar 2023 15:22:30 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=codeconstruct.com.au; s=2022a; t=1680160951;
        bh=HI0L+z4dSuwtyWV2p3iTINZNDNpoWtJAQs+xUxWefHs=;
        h=From:To:Cc:Subject:Date;
        b=IizepTBbjfn9pu/qH+Bg9rbM1qPme6TbRW/0RFyiZ+8Y4U4w8/I8qc2g1LotCNk64
         MJnFICkXinWiHNyW8oJ0IJWiVL3hP9uB1nMEICc9k5X8DGRBphpTTdMFHMi3FiNMwT
         ffSTh5fE9hlklFiC9Aofd4Zmv8clY4+j5jNPxRqVKqgiOubt6ebFQ6iX+eO5JJm+PH
         lUdm9UJOEcx5e+1uG/zq6UtMdux18eh39YTwd80oUnWqdX4+QyT1yr9svSZ3rGZAsz
         EfzQnW9uYQm1CYswzRn6QF3fQUd1urlCi7UQAR2qUYlM/8/wPskL6lNj+yaQMlJxW+
         lUkBjOAfyIU/g==
From:   Jeremy Kerr <jk@codeconstruct.com.au>
To:     linux-i3c@lists.infradead.org
Cc:     devicetree@vger.kernel.org,
        Matt Johnston <matt@codeconstruct.com.au>,
        Vitor Soares <ivitro@gmail.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Jack Chen <zenghuchen@google.com>,
        Billy Tsai <billy_tsai@aspeedtech.com>,
        Dylan Hung <dylan_hung@aspeedtech.com>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
Subject: [PATCH v2 0/3] i3c dw,ast2600: Add a driver for the AST2600 i3c controller
Date:   Thu, 30 Mar 2023 15:22:16 +0800
Message-Id: <cover.1680160851.git.jk@codeconstruct.com.au>
X-Mailer: git-send-email 2.39.2
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

This series adds a new i3c controller driver, for the ASPEED AST2600 13c
SoC peripheral. This device is very similar to the dw i3c controller, so
we implement this by adding a little platform abstraction to the dw
driver, and then a platform implementation for ast2600.

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
 drivers/i3c/master/ast2600-i3c-master.c       | 169 ++++++++++++++++++
 drivers/i3c/master/dw-i3c-master.c            |  76 ++++----
 drivers/i3c/master/dw-i3c-master.h            |  55 ++++++
 7 files changed, 360 insertions(+), 33 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/i3c/aspeed,ast2600-i3c.yaml
 create mode 100644 drivers/i3c/master/ast2600-i3c-master.c
 create mode 100644 drivers/i3c/master/dw-i3c-master.h

-- 
2.39.2

