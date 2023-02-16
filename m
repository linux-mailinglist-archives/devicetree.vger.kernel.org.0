Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD584698DE8
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 08:42:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229461AbjBPHmI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 02:42:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229685AbjBPHmH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 02:42:07 -0500
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF5243A87D
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 23:42:05 -0800 (PST)
Received: by codeconstruct.com.au (Postfix, from userid 10000)
        id 294F9202BB; Thu, 16 Feb 2023 15:42:02 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=codeconstruct.com.au; s=2022a; t=1676533322;
        bh=WryB2GO2zbrBH8W+AuZGRUy0IPCfawW4rexCATxsMBo=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=eEytakf3bWKJmEVJAsaqrNdZ4Yrkak1X/toUToOL/S3SqugAS2GUyL4iSuDNq/x94
         ZRWUanKtpochL1PbTtn78MvlZxxMX59bsowwH5jjoMG+dEu00Iq0cFpzK+bMmxhKt6
         P9mO2HzWrRRVyMdpNS/hhKrH5AzFapkgKUEew6wDO2MW+svjKBhPSH+cChFZPL9wNg
         13t6mgcYwSe8qpqjL7CIgEqrZxCXWGl98/J3NuusTKbzmX9JRCt89+8mQAvsLInAEu
         dsEdEOmVHwVlAeTkoOxtU2S+NDdLOo6kg2VmiUxXf/b4W3JLq9cVHKLm2RVpi8QtFQ
         k86uz5pgQJRwA==
From:   Jeremy Kerr <jk@codeconstruct.com.au>
To:     linux-i3c@lists.infradead.org
Cc:     Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Vitor Soares <ivitro@gmail.com>, linux-aspeed@lists.ozlabs.org,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dylan Hung <dylan_hung@aspeedtech.com>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
Subject: [PATCH 4/4] i3c: dw: Add compatible string for ASPEED AST2600 BMC platform
Date:   Thu, 16 Feb 2023 15:41:55 +0800
Message-Id: <90e8fd66b42bc27e6b8c01085c40721232217a5d.1676532146.git.jk@codeconstruct.com.au>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1676532146.git.jk@codeconstruct.com.au>
References: <cover.1676532146.git.jk@codeconstruct.com.au>
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

Now that we have platform-specific code for the ast2600, enable it
through a new compatible string.

Signed-off-by: Jeremy Kerr <jk@codeconstruct.com.au>
---
 drivers/i3c/master/dw-i3c-master.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/i3c/master/dw-i3c-master.c b/drivers/i3c/master/dw-i3c-master.c
index 9be3348cba0e..5ac226e0c558 100644
--- a/drivers/i3c/master/dw-i3c-master.c
+++ b/drivers/i3c/master/dw-i3c-master.c
@@ -1269,6 +1269,7 @@ static const struct dw_i3c_platform_ops ast2600_platform_ops = {
 
 static const struct of_device_id dw_i3c_master_of_match[] = {
 	{ .compatible = "snps,dw-i3c-master-1.00a", },
+	{ .compatible = "aspeed,ast2600-i3c", .data = &ast2600_platform_ops },
 	{},
 };
 MODULE_DEVICE_TABLE(of, dw_i3c_master_of_match);
-- 
2.39.1

