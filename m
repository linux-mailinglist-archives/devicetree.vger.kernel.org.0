Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F27136AE786
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 17:58:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230512AbjCGQ6y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 11:58:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229778AbjCGQ6H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 11:58:07 -0500
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::226])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6545B90B74;
        Tue,  7 Mar 2023 08:54:34 -0800 (PST)
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by mail.gandi.net (Postfix) with ESMTPSA id 729ABC000C;
        Tue,  7 Mar 2023 16:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1678208071;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=OoHOhM6NI+NHubp6HcRrHMGYMYR9q+lJKQNdRjJEoE4=;
        b=OiaNIHUuJ+haJMCU00qbEjkxYKRE676GoY2H97J7SpnpDxUASx3Eht3mUJHYADpS6ZpWR9
        u5lExuMHRfU2pdosksYGOc/9OxXwVwApKJBIrgkNu0tUkgaXyORmwnoVDICdeOsZYiNHhw
        +cQLX3GcEvUIjrbXbBFe1Lgsd0o/hrbT9hCuT8zI7cmckzDWrW0bMkc4bgZoJvHwCFQZ9M
        E08lTdO9jYohFpARsKsK2CHt2fw4LmTwm4pK1OQWr9yP+GvQcbFM26EUjGqic/JCnQ/SD4
        HpuMaaC9EWteZMmPkXR1Rx8PEue9LKNZRH0NaSYSYWzafOZFcl7Vr0+JlthGJw==
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        <linux-kernel@vger.kernel.org>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Michael Walle <michael@walle.cc>,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
        Robert Marko <robert.marko@sartura.hr>,
        Luka Perkov <luka.perkov@sartura.hr>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org,
        Colin Ian King <colin.i.king@gmail.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v2 08/21] dt-bindings: nvmem: Fix spelling mistake "platforn" -> "platform"
Date:   Tue,  7 Mar 2023 17:53:46 +0100
Message-Id: <20230307165359.225361-9-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230307165359.225361-1-miquel.raynal@bootlin.com>
References: <20230307165359.225361-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Colin Ian King <colin.i.king@gmail.com>

There is a spelling mistake in platforn-name. Fix it.

Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../devicetree/bindings/nvmem/layouts/onie,tlv-layout.yaml      | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/nvmem/layouts/onie,tlv-layout.yaml b/Documentation/devicetree/bindings/nvmem/layouts/onie,tlv-layout.yaml
index 5a0e7671aa3f..714a6538cc7c 100644
--- a/Documentation/devicetree/bindings/nvmem/layouts/onie,tlv-layout.yaml
+++ b/Documentation/devicetree/bindings/nvmem/layouts/onie,tlv-layout.yaml
@@ -61,7 +61,7 @@ properties:
     type: object
     additionalProperties: false
 
-  platforn-name:
+  platform-name:
     type: object
     additionalProperties: false
 
-- 
2.34.1

