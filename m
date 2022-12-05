Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81434643127
	for <lists+devicetree@lfdr.de>; Mon,  5 Dec 2022 20:12:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229891AbiLETLb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Dec 2022 14:11:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230228AbiLETK6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Dec 2022 14:10:58 -0500
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC81FDF4D
        for <devicetree@vger.kernel.org>; Mon,  5 Dec 2022 11:10:57 -0800 (PST)
Received: by mail-pg1-x533.google.com with SMTP id 62so11310162pgb.13
        for <devicetree@vger.kernel.org>; Mon, 05 Dec 2022 11:10:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=B0Kd9WBq2dzTQ7BS0kMNrkl8WPJjrmUTw0XBlwIkqlY=;
        b=ErWWnE+PGz0f9dFVCEKmShw8K2ieOGtKXer8wC4ZSvmxljZHtXtwAOYY/F1cnXus3p
         68nWLKS11EJvi6WoVdfnoDCW6GelyddnfdTU1SVWmLYPsyh8iCE46qa/zZPH990TnH1D
         hWdB1F80j3WBomMj2yETkbc7WLt+4I/ltUqBast4ezXhqbHRlDGupeWBaRRu18kt2JMv
         /ucXcqqmrfts5LtF8e/62IGtXxqIdVaAnz07IQeFHkD7rUnw5en59pUOq26h7pMHWqns
         pbYoMx/XUul5j/PhUrG21oe4cPT68iu+1Nw3pkeinH4C1cTAYdeN3IeY+608DHJITzPQ
         kFQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B0Kd9WBq2dzTQ7BS0kMNrkl8WPJjrmUTw0XBlwIkqlY=;
        b=NlHhy03jevVg28mzqoMWBOK9R201X19YY3jwClUCtTZe/KlseFgLjzfhqKaOo/jIgE
         PhXWO0NrpSf+1koESZr8a9lFUevC2f1Nk2ECrOjpgI8ptB/1hXc5LassKJ5l4hr8p1Ud
         HjOB+j2YAM86I87mfMbOQqUlux+HZ5PhZY01PLDpn0SoOXk1T+twKCw6HxugdhP9taNk
         jRYACLq1hiI8y8MAXjPxKUFer9RBl8cyQpwSWOIV4G4dKpiI10t0aT6bkgDi2xz/9U3E
         ad0FfXBsh62b+PglpRQ8qr6tp8iFrtsJbdklFFUuYDFt9r0PWfk3O6o4DRSvCMAwl3Rn
         PBJg==
X-Gm-Message-State: ANoB5pm9/JDzQsr+rvDd6IlalzOnaQ5nKW6BLSSpNFa35QH01fqerKPB
        fGj2gYGIVW7IJHZcPPnXrp7HbsQzC7bBxDfR/+DSOg==
X-Google-Smtp-Source: AA0mqf6JFNvdfIh4wsNAWevITO9Kt/gTQ/YE2h9k/CnZIdwKcM7iNEAMXrAtzrhw4JwsR8kpHUKgtlRquGCpjbJk37c=
X-Received: by 2002:a62:b501:0:b0:563:771d:417f with SMTP id
 y1-20020a62b501000000b00563771d417fmr67300246pfe.45.1670267457266; Mon, 05
 Dec 2022 11:10:57 -0800 (PST)
MIME-Version: 1.0
References: <20221201003109.448693-1-tharvey@gateworks.com>
 <CAOMZO5Ba6Kmt-a7FMxj-gN5rEyMJJ=9CFRkS0vQkPf_-72rR2w@mail.gmail.com>
 <Y4n41iL6cG9FsndI@lunn.ch> <CAJ+vNU0kAoVFFmoFfiOhtErxqAkB3MmP3Q2dNCZP4xm_AaWhcA@mail.gmail.com>
 <Y4o2TFGH6DK3tRcH@lunn.ch> <CAJ+vNU1NDggHF4Wn_kg120uPZ=LPCQf2fZ+x6ii6tEMf7DzxFQ@mail.gmail.com>
 <20221205171045.m5ayo3loh32cdgwo@skbuf> <CAJ+vNU123JTbk_t5Eto4M-Wrj6o1fo=8z8qdqf98_rDO=w2yOA@mail.gmail.com>
 <20221205190214.uy6rn4whd6vndo23@skbuf>
In-Reply-To: <20221205190214.uy6rn4whd6vndo23@skbuf>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Mon, 5 Dec 2022 11:10:45 -0800
Message-ID: <CAJ+vNU1M-LEiM2guowP-Ubb8cFnQE+YCFTZ=vL2C79Y0g0v1dQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: imx6qdl-gw5904: add internal mdio nodes
To:     Vladimir Oltean <vladimir.oltean@nxp.com>
Cc:     Andrew Lunn <andrew@lunn.ch>, Fabio Estevam <festevam@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 5, 2022 at 11:02 AM Vladimir Oltean <vladimir.oltean@nxp.com> wrote:
>
> On Mon, Dec 05, 2022 at 10:01:35AM -0800, Tim Harvey wrote:
> > Vladimir,
> >
> > Yes, this patch resolves the issue. Enabling CONFIG_MARVELL_PHY
> > without this patch still shows the issue.
>
> Yeah, that makes sense considering what the issue is.
>
> > Thanks - please cc me on that and I'll respond (unless you want me to send it).
> >
> > I'll submit a v2 of my dt patch with fec phy-mode = 'rgmii' after this
> > patch lands.
>
> The question is how far to backport this change.
>
> I see that the GW5904 board was introduced in 2017. Which kernels do you
> need to support the complete/unambiguous dt-binding?

before adding the internal PHY nodes it works fine so no backporting
needed. I just don't want to add the complete/unambiguous dt-bindings
until your patch lands as at that point it would otherwise be broken.

Best Regards,

Tim

>
> I'm tempted to submit the patch to the "net" tree (making it a candidate
> for stable releases) but without a Fixes: tag, making it go as far as it
> will. That would be down to kernel 5.18, where the mv88e6xxx_get_caps()
> function was introduced. Further down, and we'd need different patches
> for older stable trees.
