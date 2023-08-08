Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92D0A774135
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 19:16:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234208AbjHHRQo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 13:16:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234214AbjHHRQR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 13:16:17 -0400
Received: from mail-qv1-xf2e.google.com (mail-qv1-xf2e.google.com [IPv6:2607:f8b0:4864:20::f2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3B251CEB0
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 09:06:37 -0700 (PDT)
Received: by mail-qv1-xf2e.google.com with SMTP id 6a1803df08f44-63cffc0f95eso29147196d6.3
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 09:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1691510789; x=1692115589;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KmZq8plralUfhUCeO0zuZ8rV58wpzJBRG27vY2vs6cs=;
        b=hV8az3MPC71mBlUV5SSiJpo2eAx+uJnTg8ppHE+Hy4uAJGL63sW9p8Z0DAb5gohukM
         uy8mTf9m68Z8jJSTAfsoHsrLRbfeA5ck5fLzkCwlg+0qW38nordujrRQgcKbCN17XViZ
         vV383QSL/6B8fNuCz83pDbtFqJn/mm1/GFU602T8TNjZJ92EPQVh7RQYdnsbBYkk0GFt
         qbjfej6F8LWOlC93csJCC0GIbHqkIaD3ghmgaFtOQyABSgC6Cc8BolZgq7KJqY8Hvr98
         +WlDXnMj8sG+gziP+bhLtxrySI3SK7FEkY6Xd5vHVRxwvxCMAyCbZG+umvocnVZuk2LS
         SRzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691510789; x=1692115589;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KmZq8plralUfhUCeO0zuZ8rV58wpzJBRG27vY2vs6cs=;
        b=W6rwbKgRocdXFcZ9UugDCvBGLGeRLETkQxbVBEX9NhcncJBcDvd7xq7MPY5odLvplK
         P4XMpbTNIpcgUV3ht4MRqK3Dy9bEOFjeTVHrJKivA13hvTJ/fu63rL2tt6j2aolrt6Jw
         5simmloxnGu88HEVi0OVMRuE0EI5rxAQ4GJ5mSmpGU2XjwsNDROIJj8i5ml/9C0fj64Q
         g9uqIIUKaDXR9P87eHOwxV4MHKm6MEOaPC7Ag9gnNuhIsnmxOUvU65ySlqosEiAiUK84
         KDJWifRUd7quWNIeEnjHJTjegMKrf3Q4xJUwZ92Ot810nU16nrhcz27YBOOVzHrrOasB
         yVfw==
X-Gm-Message-State: AOJu0YwonvbmGsziFEVunuc92qwgvPJXVrRP4x3C7L0TrRaSwUfjHdrA
        wRaLQP2qmgd6oNCK4PsqrZ4K/gDe/dYFTHky5bSv+qEu6nWJbFhf7oo=
X-Google-Smtp-Source: AGHT+IGKZbzqHtAQeH+ERa/8lc1KwqmrCEauq29EtyhIWFzJmE3Z/R6hI/O84pNycisvdvGnKhmQiTpqB01gZJI0Wxg=
X-Received: by 2002:a1f:bdd1:0:b0:471:8787:2c6c with SMTP id
 n200-20020a1fbdd1000000b0047187872c6cmr4968353vkf.6.1691505016313; Tue, 08
 Aug 2023 07:30:16 -0700 (PDT)
MIME-Version: 1.0
References: <20230807193102.6374-1-brgl@bgdev.pl> <54421791-75fa-4ed3-8432-e21184556cde@lunn.ch>
 <CAMRc=Mc6COaxM6GExHF2M+=v2TBpz87RciAv=9kHr41HkjQhCg@mail.gmail.com>
 <ZNJChfKPkAuhzDCO@shell.armlinux.org.uk> <CAMRc=MczKgBFvuEanKu=mERYX-6qf7oUO2S4B53sPc+hrkYqxg@mail.gmail.com>
 <65b53003-23cf-40fa-b9d7-f0dbb45a4cb2@lunn.ch>
In-Reply-To: <65b53003-23cf-40fa-b9d7-f0dbb45a4cb2@lunn.ch>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Tue, 8 Aug 2023 16:30:05 +0200
Message-ID: <CAMRc=MecYHi=rPaT44kuX_XMog=uwB9imVZknSjnmTBW+fb5WQ@mail.gmail.com>
Subject: Re: [PATCH 0/2] net: stmmac: allow sharing MDIO lines
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     "Russell King (Oracle)" <linux@armlinux.org.uk>,
        "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Jose Abreu <joabreu@synopsys.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Andrew Halaney <ahalaney@redhat.com>,
        Alex Elder <elder@linaro.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 8, 2023 at 4:25=E2=80=AFPM Andrew Lunn <andrew@lunn.ch> wrote:
>
> > > On Tue, Aug 08, 2023 at 10:13:09AM +0200, Bartosz Golaszewski wrote:
> > > > Ok so upon some further investigation, the actual culprit is in stm=
mac
> > > > platform code - it always tries to register an MDIO bus - independe=
nt
> > > > of whether there is an actual mdio child node - unless the MAC is
> > > > marked explicitly as having a fixed-link.
> > > >
> > > > When I fixed that, MAC1's probe is correctly deferred until MAC0 ha=
s
> > > > created the MDIO bus.
> > > >
> > > > Even so, isn't it useful to actually reference the shared MDIO bus =
in some way?
> > > >
> > > > If the schematics look something like this:
> > > >
> > > > --------           -------
> > > > | MAC0 |--MDIO-----| PHY |
> > > > -------- |     |   -------
> > > >          |     |
> > > > -------- |     |   -------
> > > > | MAC1 |--     ----| PHY |
> > > > --------           -------
> > > >
> > > > Then it would make sense to model it on the device tree?
> > >
> > > So I think what you're saying is that MAC0 and MAC1's have MDIO bus
> > > masters, and the hardware designer decided to tie both together to
> > > a single set of clock and data lines, which then go to two PHYs.
> >
> > The schematics I have are not very clear on that, but now that you
> > mention this, it's most likely the case.
>
> I hope not. That would be very broken. As Russell pointed out, MDIO is
> not multi-master. You need to check with the hardware designer if the
> schematics are not clear.

Sorry, it was not very clear. It's the case that two MDIO masters
share the MDC and data lines.

>
> > Good point, but it's worse than that: when MAC0 is unbound, it will
> > unregister the MDIO bus and destroy all PHY devices. These are not
> > refcounted so they will literally go from under MAC1. Not sure how
> > this can be dealt with?
>
> unbinding is not a normal operation. So i would just live with it, and
> if root decides to shoot herself in the foot, that is her choice.
>

I disagree. Unbinding is very much a normal operation. Less so for
platform devices but still, it is there for a reason and should be
expected to work correctly. Or at the very least not crash and burn
the system.

On the other hand, I like your approach because I may get away without
having to fix it. But if I were to fix it - I would reference the MDIO
bus from the secondary mac by phandle and count its references before
dropping it. :)

Bartosz
