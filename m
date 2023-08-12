Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 37936779BCB
	for <lists+devicetree@lfdr.de>; Sat, 12 Aug 2023 02:16:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234404AbjHLAPt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Aug 2023 20:15:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230500AbjHLAPt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Aug 2023 20:15:49 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEF41E42
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 17:15:48 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 644C1612B3
        for <devicetree@vger.kernel.org>; Sat, 12 Aug 2023 00:15:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C389BC43391
        for <devicetree@vger.kernel.org>; Sat, 12 Aug 2023 00:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691799347;
        bh=LzHAa8FdaFobgKZQkKpFvAilcLGLrQgEqIcYVXC7GxA=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=MzZSCxWUzJOAdsmu4RAqQQLC0Gg79VaKFN+XVhogBVPagwStHWeP6N+akoF+U+m7k
         Bygxu7KB8xu4WxY/P08aHHxqh3RuwhgwQl+TyrSrpF4i6a757mtm4GouJ1uW72UpNM
         k3o87P5BIyy7vvt3FNqOnZ1n5vXLr+ubDKQdXJ8rllpWz9D11d03ljRds/HYrKkpGy
         VJkNXII0PeK/tEfzz0OxlGRLp+0bPx0/RHrhk60ic2Um2JemkQa+yD+/ptQFA9XQ00
         fqwQ4reyauiec9K6Fvhc6YgMacj/XK1EIPqIwMY7cnEu5g4YDFei0QwYspOmYyDQB2
         Zf35DVaWVTcJg==
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-52364e9daceso3219901a12.2
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 17:15:47 -0700 (PDT)
X-Gm-Message-State: AOJu0Yw2/UjU5M5X/MozqmfRQQhJTiOc39HG3SsN6vrctbJ9rEjT8lvj
        r0cf2D6dNfjlpklzd4R0b2h3yWtaEBoT6tkrbmQ=
X-Google-Smtp-Source: AGHT+IHAlgbDfqL2mF0l3Hs69Dhj2si/urJQvXIh8eeM6MoIR7x42f3d8ceSnAxAhQ513YvOxBSizW8Z7d8SFAjzuns=
X-Received: by 2002:a05:6402:12d5:b0:523:bfec:4909 with SMTP id
 k21-20020a05640212d500b00523bfec4909mr2842218edx.7.1691799346002; Fri, 11 Aug
 2023 17:15:46 -0700 (PDT)
MIME-Version: 1.0
References: <20230808132958.1097873-1-guoren@kernel.org> <ZNURXBKkYdiWLanf@xhacker>
 <20230811-cardiac-platter-8b50b3b764d3@spud> <CAJF2gTSYAz5ogsnB5SD_A3J1WEPzAHU1GDy_cPnuvXytqvMiBw@mail.gmail.com>
In-Reply-To: <CAJF2gTSYAz5ogsnB5SD_A3J1WEPzAHU1GDy_cPnuvXytqvMiBw@mail.gmail.com>
From:   Guo Ren <guoren@kernel.org>
Date:   Sat, 12 Aug 2023 08:15:34 +0800
X-Gmail-Original-Message-ID: <CAJF2gTQrr8OqrqETpQrehUJRnN4y9O3tmvwTi0qFrZ4A-__p_g@mail.gmail.com>
Message-ID: <CAJF2gTQrr8OqrqETpQrehUJRnN4y9O3tmvwTi0qFrZ4A-__p_g@mail.gmail.com>
Subject: Re: [PATCH] docs/platform: thead-c9xx: Improve the documentation
To:     Conor Dooley <conor@kernel.org>
Cc:     Jisheng Zhang <jszhang@kernel.org>, wefu@redhat.com,
        jrtc27@jrtc27.com, anup@brainfault.org, samuel@sholland.org,
        bmeng.cn@gmail.com, opensbi@lists.infradead.org,
        Guo Ren <guoren@linux.alibaba.com>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Aug 12, 2023 at 8:07=E2=80=AFAM Guo Ren <guoren@kernel.org> wrote:
>
> On Sat, Aug 12, 2023 at 1:57=E2=80=AFAM Conor Dooley <conor@kernel.org> w=
rote:
> >
> > On Fri, Aug 11, 2023 at 12:33:32AM +0800, Jisheng Zhang wrote:
> > > On Tue, Aug 08, 2023 at 09:29:58AM -0400, guoren@kernel.org wrote:
> > > > From: Guo Ren <guoren@linux.alibaba.com>
> >
> > > > +T-HEAD Fdt Reset Driver Introduction
> > > > +------------------------------------
> > > > +
> > > > +Every T-HEAD CPU provides a reset control signal and reset address=
 signals.
> > > > + - Reset address signal determines CPU where to start up.
> > > > + - Reset control signal releases CPU from reset state and begins t=
o execute
> > > > +   at reset address.
> > > > +
> > > > +Many vendors would gather these signals into SoC control registers=
. These
> > > > +register designs are similar but with different base addresses and=
 bits
> > > > +definitions. We only provide standard opensbi, Linux binaries, and=
 jtag gdbinit
> > > > +script to simplify Linux booting at the FPGA stage. The fdt reset =
driver helps
> > > > +users bring up their SMP system quickly with the below settings:
> > >
> > > +DT maintainers and DT list.
> > >
> > > I can submit a dt-binding for this if DT maintainers agree with below
> > > properties. Could you please help review?
> >
> > I already reviewed this once & nothing has improved.
> > In fact, things have gotten worse IMO with this "using-csr-reset" that =
I
> > don't think existed in the original iteration that I saw.
> > I did see things getting better with the use of standard stuff like
> > "reg" in our earlier discussion which I don't see here.
> It's not a patch to improve the implementation and we don't make a
> deal in that discussion. This patch improves the document because the
> previous doc didn't describe the whole thing about the
> thead,reset-sample driver.
>
> > What is the point in carrying out any further review if things will be
> > flat out ignored?
I think the critical problem is JC objects to the whole of this
existing driver,  so any improvement is meaningless for the current.
Your naming advice is okay for me, but it does not relate to this
patch.

>
> >
> > Thanks,
> > Conor.
> >
> > > > +
> > > > + - entry-reg:
> > > > +   The base address to store reset address value
> > > > +
> > > > + - entry-cnt:
> > > > +   The numbers of entry-reg, all of them set the same reset addres=
s
> > > > +
> > > > + - control-reg:
> > > > +   The base address to reset the controller
> > > > +
> > > > + - control-val:
> > > > +   Write which bits of control-reg for booting
> > > > +
> > > > + - csr-copy:
> > > > +   This array determines which csrs to copy from primary hart to t=
he
> > > > +   secondary harts, which are set in sequence from left to right. =
The
> > > > +   secondary harts should keep the same setting as the primary har=
t.
> > > > +   These settings are also the first part of the bootup instructio=
ns
> > > > +   for secondary harts.
> > > > +
> > > > + - using-csr-reset:
> > > > +   A legacy reset controller for the SMP system, but abandoned in =
the
> > > > +   latest T-HEAD processors.
> >
>
>
> --
> Best Regards
>  Guo Ren



--=20
Best Regards
 Guo Ren
