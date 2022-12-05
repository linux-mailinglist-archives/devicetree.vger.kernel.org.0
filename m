Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 946BB6432B1
	for <lists+devicetree@lfdr.de>; Mon,  5 Dec 2022 20:28:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234159AbiLET2R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Dec 2022 14:28:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234164AbiLET14 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Dec 2022 14:27:56 -0500
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42AAD25C69
        for <devicetree@vger.kernel.org>; Mon,  5 Dec 2022 11:24:51 -0800 (PST)
Received: by mail-pj1-x1032.google.com with SMTP id t11-20020a17090a024b00b0021932afece4so15808242pje.5
        for <devicetree@vger.kernel.org>; Mon, 05 Dec 2022 11:24:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HszHsFObpKMF9YcQdYoRf/Y7YUfVCazWe9S7rPHjT3w=;
        b=XZzHoUDNBzl9iEMjmnv+by+3FaK8WehF0U6ASWLxZ8ivNVhRO1bcfDdG9Px05sThWW
         /Ux79l5G65UeFy3Tp9wZi6qjPUzz9MJIfKt1/cs8nX/Vdogb8iIHBplj22wgJ+VP9aCc
         9m6ifqxcHeWzTkBdXnt71wbf/cqDX1PRwV+g5jelbZfrJ9w045QKxM7e3Ld7ROSwfoKw
         3Upz1DLXSGBmS9KO9dyt7OojIGESC5xfLCI1FcmCgeSY8N9ehbBVz23Xb/grQxbT6NAt
         SBapFqapnd3eoNJxH3JKEzvy06lwFqzJSrIBTRXzXh3grcn59z22tcFoWvrlVGtYSrq3
         /EVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HszHsFObpKMF9YcQdYoRf/Y7YUfVCazWe9S7rPHjT3w=;
        b=UbfgZzNAXZxEaEJYHKUbXlt8MnuSfcETo832t30Az8nU3DERa6ORt56kJ6BFkUvKFr
         vEyw2TDnU7PztHd+4by44uqAytbq//0iAMazV+y6jn0ozO8EkI1CO+e5cOuzynLNxg8r
         I7WwGeLNITflWWrNbbynVvVYk3h29e2fr9fd2acvLLxiotNVjuC43ZBziBZkOCzt46tp
         EiLKB3XxGhHt17cJFmgxak+Ay5coNttspqp/PE9E6FzePmGKKoSoG6c2nZVuUR6XFV//
         mA6SJ9ZOM8UFXbADjl/MTpdIqDMRUKe82aTLg03kkWCNz8HycZ8bGeGWH/AOgO+2fyKF
         yFhg==
X-Gm-Message-State: ANoB5pkkyZZ9snw7BjDc1/eE4Ji1WfeERp+v2fEyJbEfxZ7kYCEcJtC5
        tZnB5FM8VSCbTdzDRqTLKK8ozFeSSIaa9XHA4e0i2A==
X-Google-Smtp-Source: AA0mqf5MMISxiscAKFEQUmMVtBMHymdHth2AFtAlbTCRDZfs475OYuFxsFtGd6dzqWk1og+1D2GI62odsg7JSlOkCPQ=
X-Received: by 2002:a17:90a:2d81:b0:219:9676:fef4 with SMTP id
 p1-20020a17090a2d8100b002199676fef4mr15907661pjd.89.1670268290771; Mon, 05
 Dec 2022 11:24:50 -0800 (PST)
MIME-Version: 1.0
References: <20221201003109.448693-1-tharvey@gateworks.com>
 <CAOMZO5Ba6Kmt-a7FMxj-gN5rEyMJJ=9CFRkS0vQkPf_-72rR2w@mail.gmail.com>
 <Y4n41iL6cG9FsndI@lunn.ch> <CAJ+vNU0kAoVFFmoFfiOhtErxqAkB3MmP3Q2dNCZP4xm_AaWhcA@mail.gmail.com>
 <Y4o2TFGH6DK3tRcH@lunn.ch> <CAJ+vNU1NDggHF4Wn_kg120uPZ=LPCQf2fZ+x6ii6tEMf7DzxFQ@mail.gmail.com>
 <20221205171045.m5ayo3loh32cdgwo@skbuf> <CAJ+vNU123JTbk_t5Eto4M-Wrj6o1fo=8z8qdqf98_rDO=w2yOA@mail.gmail.com>
 <20221205190214.uy6rn4whd6vndo23@skbuf> <CAJ+vNU1M-LEiM2guowP-Ubb8cFnQE+YCFTZ=vL2C79Y0g0v1dQ@mail.gmail.com>
 <20221205191509.moan3imfllfpxkb7@skbuf>
In-Reply-To: <20221205191509.moan3imfllfpxkb7@skbuf>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Mon, 5 Dec 2022 11:24:39 -0800
Message-ID: <CAJ+vNU2mhp-zthHb_a3zidSuFsEo2VT3kZK-k1aVY+GeRySSeQ@mail.gmail.com>
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

On Mon, Dec 5, 2022 at 11:15 AM Vladimir Oltean <vladimir.oltean@nxp.com> wrote:
>
> On Mon, Dec 05, 2022 at 11:10:45AM -0800, Tim Harvey wrote:
> > before adding the internal PHY nodes it works fine so no backporting
> > needed. I just don't want to add the complete/unambiguous dt-bindings
> > until your patch lands as at that point it would otherwise be broken.
>
> Right, but there is some debate on whether device tree updates should
> require new kernel or not. Since in this case, kernels 5.18 and newer
> can trivially support the updated device trees with this change, I think
> it would be silly not to let it be backported. As for older kernels, it
> really depends on what the board ships with.

I see. So then your patch should be backported to when the phy
validation was added which would be d4ebf12bcec4 ("net: dsa:
mv88e6xxx: populate supported_interfaces and mac_capabilities") then
right?

Best Regards,

Tim
