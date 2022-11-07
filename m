Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7467D61F998
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 17:27:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231587AbiKGQ1b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 11:27:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231519AbiKGQ0p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 11:26:45 -0500
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B188822B3E
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 08:22:58 -0800 (PST)
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by mail.gandi.net (Postfix) with ESMTPSA id 023B11BF216;
        Mon,  7 Nov 2022 16:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1667838176;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=e41V9fJN/RH5QZBBj4tkXdPkkAqaySNaHc60tohnkE0=;
        b=RniDk8Ba8Qawefh3lHvZDMCQpnzM3TYo9DNWUSU9cfg/VbCnnGUGOaS6Ed3Bxsx9Geoemv
        AbMdXD1rnEIGkxqYYXeCtK1b0Ket/GPbt+iFgWfsIko8frUlDNFJ8lRW2fxmO7QfpEpRcA
        SDU5e5CmgqCpLUw6n0pNo7dkugVf2SVT6neJAMhirhaAYR2BWKwR1b40KaF262iSMfAABU
        WFC8hp6XoWpF3/V75D/vBa9iJdzCVojGPpTiettwacLZniQ05AYAXTKbgf2y4VETA1jl6U
        x8Lrj5N1Hvq0agNGkcHugmASQAXDqkASa5S86RYRah4BSxBy3Gc5ql+8wXkbhw==
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
Date:   Mon,  7 Nov 2022 17:22:53 +0100
Message-Id: <20221107162253.54110-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221104085316.24499-1-zajec5@gmail.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b'150464c64669b2689fde42437586495d3a6ab8f6'
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

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel
