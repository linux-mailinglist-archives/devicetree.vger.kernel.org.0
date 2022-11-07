Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 43CB661F9B4
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 17:29:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232220AbiKGQ32 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 11:29:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232228AbiKGQ25 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 11:28:57 -0500
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::225])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2A06222B7
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 08:26:55 -0800 (PST)
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by mail.gandi.net (Postfix) with ESMTPSA id 1DF2F1C0003;
        Mon,  7 Nov 2022 16:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1667838414;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=LbBvYgPag/aDwy9fxEOFeDG/k2Ec6w15gu89rLDkU0c=;
        b=G6EjkKgfeTc6+TEDTeUHj/TkBFC37kPc61rbFrKQ1F96X5TPrix66dUfBYlhRajpgfY9uM
        GBsWXp15z/aMaPNq/liYzXin5bETN3hFzCqX6VQJX/5XpHo1F+fOhxpeByhNEDZ0iwlzqn
        QyHF0GbvhUHzclLsz3I4n75rA2YLsJvTHNN3LeoQ/ixXl/XFhtbmBIbCAHZZcF9OirHZXh
        +Jma/A+/OrB8FdkeIV63mhB6INwIwHXO1hvBpvXnZu1zbDj8t8A6EDMyslgJtCzlOo/+Co
        9ifqVe5YeU6zypFb72FeE0I1g8pqoT4mFdrHpkmbhpO8scMdygyZ13bj5WMJhA==
Date:   Mon, 7 Nov 2022 17:26:52 +0100
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>
Cc:     Brian Norris <computersforpeace@gmail.com>,
        Kamal Dasu <kdasu.kdev@gmail.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH] dt-bindings: mtd: brcm,brcmnand: update interrupts
 description
Message-ID: <20221107172652.654c972c@xps-13>
In-Reply-To: <20221107162253.54110-1-miquel.raynal@bootlin.com>
References: <20221104085316.24499-1-zajec5@gmail.com>
        <20221107162253.54110-1-miquel.raynal@bootlin.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

miquel.raynal@bootlin.com wrote on Mon,  7 Nov 2022 17:22:53 +0100:

> On Fri, 2022-11-04 at 08:53:16 UTC, =3D?utf-8?b?UmFmYcWCIE1pxYJlY2tp?=3D =
wrote:
> > From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> >=20
> > 1. DMA and EDU are mutually exclusive: don't allow both at the same time
> > 2. Require interrupt-names for 2+ interrupts to avoid /guessing/
> >=20
> > Reported-by: Florian Fainelli <f.fainelli@gmail.com>
> > Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl> =20
>=20
> Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git =
nand/next, thanks.

This patch has not yet been acked by Rob or Krzysztof, I just dropped it
and will (re)apply it later if it gets through the necessary reviews.

Sorry for the noise.

Thanks,
Miqu=C3=A8l
