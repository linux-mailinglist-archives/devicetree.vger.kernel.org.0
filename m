Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7117D4B5B8E
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 22:01:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229482AbiBNU5I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 15:57:08 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:44398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230061AbiBNU4w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 15:56:52 -0500
Received: from polaris.svanheule.net (polaris.svanheule.net [IPv6:2a00:c98:2060:a004:1::200])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FE06B239B
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 12:56:31 -0800 (PST)
Received: from terra.local.svanheule.net (104.153-136-217.adsl-dyn.isp.belgacom.be [217.136.153.104])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: sander@svanheule.net)
        by polaris.svanheule.net (Postfix) with ESMTPSA id A555A2A25FA;
        Mon, 14 Feb 2022 19:57:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=svanheule.net;
        s=mail1707; t=1644865026;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=+86Lva2nWXdctV7renNiPdMAVhU1O2KM95YNgJd594E=;
        b=eOC++pB2oI/36x0RFPblsMEWhenygKKH7fBA/mDP3V7yTUMQZUX3CbpJwuZEfr5WhglQTF
        FNSJjmIxDFa7/kmOSXBLwLKu06K2gs6sa/tUJQuPr/cGEQrLXKsGrlLfJ8EYsrLijZIkDE
        9DZK+OBDnJvFMx5Ro/aaGumdb+EQMJI+OiUd1oUj5BRo/DWafP4q7o8aTM2ejh/6OS+/w7
        JW5VqdDik5TjKlc5ATsVYqXEv2Qboo39h0FwYK4K1DpxhG98RyzIO4PC6wtYi22qCLL/Gm
        RUIExlTKvzMFnEWkoHIqhBsHuo8HTCrrbpUrSu0V6I+SEvnyOFWuBfDcsILTkA==
From:   Sander Vanheule <sander@svanheule.net>
To:     Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org
Cc:     Thomas Gleixner <tglx@linutronix.de>,
        Birger Koblitz <mail@birger-koblitz.de>,
        Bert Vermeulen <bert@biot.com>,
        John Crispin <john@phrozen.org>, linux-kernel@vger.kernel.org,
        Sander Vanheule <sander@svanheule.net>
Subject: [PATCH v5 1/4] irqchip/realtek-rtl: use irq_domain_add_linear
Date:   Mon, 14 Feb 2022 19:56:58 +0100
Message-Id: <e4d352e0f8b4aa7fba958c6e07101ef7ee7ade6d.1644864700.git.sander@svanheule.net>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <cover.1644864700.git.sander@svanheule.net>
References: <cover.1644864700.git.sander@svanheule.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When using an offset of 0, irq_domain_add_simple is identical to
irq_domain_add_linear on DT-based systems, so use the latter instead.

Signed-off-by: Sander Vanheule <sander@svanheule.net>
---
 drivers/irqchip/irq-realtek-rtl.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/irqchip/irq-realtek-rtl.c b/drivers/irqchip/irq-realtek-rtl.c
index 50a56820c99b..14e049eed0f2 100644
--- a/drivers/irqchip/irq-realtek-rtl.c
+++ b/drivers/irqchip/irq-realtek-rtl.c
@@ -171,8 +171,7 @@ static int __init realtek_rtl_of_init(struct device_node *node, struct device_no
 	/* Disable all cascaded interrupts */
 	writel(0, REG(RTL_ICTL_GIMR));
 
-	domain = irq_domain_add_simple(node, 32, 0,
-				       &irq_domain_ops, NULL);
+	domain = irq_domain_add_linear(node, 32, &irq_domain_ops, NULL);
 
 	ret = map_interrupts(node, domain);
 	if (ret) {
-- 
2.35.1

