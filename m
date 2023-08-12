Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4AFD779BCD
	for <lists+devicetree@lfdr.de>; Sat, 12 Aug 2023 02:16:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230500AbjHLAQz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Aug 2023 20:16:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233551AbjHLAQy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Aug 2023 20:16:54 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C45626A0
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 17:16:53 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id EE2CA65C28
        for <devicetree@vger.kernel.org>; Sat, 12 Aug 2023 00:16:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02690C433C7;
        Sat, 12 Aug 2023 00:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691799412;
        bh=5sMSUmTaT6AsZS3fe+qczttQD0l64JfGaNck+YRtxbg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=SvBWVPjbxpJ19d1S7KPIbJDIEoZ0BxbS4g9mlyiqbvN9JmrV/ITZmg/Nrwsd/+FA7
         2lJ5eQ8cHu8AzPTzVRkAeqx/IizsSp1g6FthUAkmfNwv5T++ADi2XknJ5OKc7jxrEy
         S9ju1hVcm0j5i8Sk9y6K5KVxmr5JAxCJMHjkzTq6zSkDDOkQhK61rKs6bfW1CObVsy
         myp6E3oowSvK0dV5LJaEfqTX6GtexbUDBYsH2b2cywiX5Xp5biRqfV797gk+yah/nt
         ssCCCVytSWvnTfazEDa+foo25VQczaDSMqlV1TjOg0Prnw1r2GofL4QzQihJhPvgBa
         Gi3uHK8F/VwdA==
Date:   Sat, 12 Aug 2023 01:16:47 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Guo Ren <guoren@kernel.org>
Cc:     Jisheng Zhang <jszhang@kernel.org>, wefu@redhat.com,
        jrtc27@jrtc27.com, anup@brainfault.org, samuel@sholland.org,
        bmeng.cn@gmail.com, opensbi@lists.infradead.org,
        Guo Ren <guoren@linux.alibaba.com>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH] docs/platform: thead-c9xx: Improve the documentation
Message-ID: <20230812-septum-gestate-4c62ef7c7213@spud>
References: <20230808132958.1097873-1-guoren@kernel.org>
 <ZNURXBKkYdiWLanf@xhacker>
 <20230811-cardiac-platter-8b50b3b764d3@spud>
 <CAJF2gTSYAz5ogsnB5SD_A3J1WEPzAHU1GDy_cPnuvXytqvMiBw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="UwVBjK3pjJcMONg/"
Content-Disposition: inline
In-Reply-To: <CAJF2gTSYAz5ogsnB5SD_A3J1WEPzAHU1GDy_cPnuvXytqvMiBw@mail.gmail.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--UwVBjK3pjJcMONg/
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Aug 12, 2023 at 08:07:50AM +0800, Guo Ren wrote:
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
=2E These
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
> > In fact, things have gotten worse IMO with this "using-csr-reset" that I
> > don't think existed in the original iteration that I saw.
> > I did see things getting better with the use of standard stuff like
> > "reg" in our earlier discussion which I don't see here.

> It's not a patch to improve the implementation and we don't make a
> deal in that discussion. This patch improves the document because the
> previous doc didn't describe the whole thing about the
> thead,reset-sample driver.

That's all well and good, but there's still no point in Rob, Krzysztof
or I reviewing it, which is what was being requested in the email I was
replying to.

> > What is the point in carrying out any further review if things will be
> > flat out ignored?

--UwVBjK3pjJcMONg/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZNbPbwAKCRB4tDGHoIJi
0vtLAP9FTEGh5LZRS4Fi3VqSbLfn5GjeWp6jJ7SdTqM8+QAyzQEAkB6NY8wc7yoU
SyTtUyrzonTJcPGECkcIdD1sVp1wGgY=
=DlJg
-----END PGP SIGNATURE-----

--UwVBjK3pjJcMONg/--
