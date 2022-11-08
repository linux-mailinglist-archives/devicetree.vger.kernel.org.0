Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05F6E620B20
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 09:26:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233287AbiKHI06 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 03:26:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233490AbiKHI04 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 03:26:56 -0500
Received: from relay11.mail.gandi.net (relay11.mail.gandi.net [IPv6:2001:4b98:dc4:8::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA23B27CC9
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 00:26:54 -0800 (PST)
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by mail.gandi.net (Postfix) with ESMTPSA id AF8A2100006;
        Tue,  8 Nov 2022 08:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1667896013;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=nyOQBBCwy5LvUjAVyjwQzg8dIstpjePTgDnGaoZhyTc=;
        b=JCsoJTuYrYVbQKGBrMvdrxIEAjU4s5FrXPqhzBnkoQJEeloXaTWlJQi9U/pRF0jFvWoIeL
        gk2PxZA2kt9qhH4nAzoq20C7cTDQGge8fvyq8Z3EWiZU9AMeZjJX25ZfZClzIn7GtXi+PJ
        qbkbDYpdoc8Y82HoKjz7R1mRKvZza3Sft/CkN1kP0NhUP1I2CQJQA4UwNqdGNPPienVjks
        UeUJUOpDn4wLPhykQMAF5bty2/ut68j1ggNQ8HyIl7ukfktDTaQJPEwH+e5pfeCtKX16kQ
        T3N+x5nBX0AumgguvIi9a9tj5F2+7+Xo+XPikruR7J6Rz7A6pD8vXJ7gk2tQNQ==
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     =?utf-8?b?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>
Cc:     Brian Norris <computersforpeace@gmail.com>,
        Kamal Dasu <kdasu.kdev@gmail.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?utf-8?b?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH] dt-bindings: mtd: brcm,brcmnand: update interrupts description
Date:   Tue,  8 Nov 2022 09:26:49 +0100
Message-Id: <20221108082650.60536-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221104085316.24499-1-zajec5@gmail.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b'075e181fba721d7af83dd1f2b65aed64703f5a40'
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 2022-11-04 at 08:53:16 UTC, =?utf-8?b?UmFmYcWCIE1pxYJlY2tp?= wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> 1. DMA and EDU are mutually exclusive: don't allow both at the same time
> 2. Require interrupt-names for 2+ interrupts to avoid /guessing/
> 
> Reported-by: Florian Fainelli <f.fainelli@gmail.com>
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> Reviewed-by: Rob Herring <robh@kernel.org>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel
