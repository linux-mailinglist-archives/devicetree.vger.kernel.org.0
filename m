Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D9B0477968C
	for <lists+devicetree@lfdr.de>; Fri, 11 Aug 2023 19:57:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236580AbjHKR5i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Aug 2023 13:57:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230423AbjHKR5i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Aug 2023 13:57:38 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39D2D2709
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 10:57:37 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id C00286393E
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 17:57:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C295AC433C7;
        Fri, 11 Aug 2023 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691776656;
        bh=i8BSI+DMxOadGKfniyJeRSvJCGV22ou8keycGF+M3ss=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=pHCV1V4F6hbbXZma7CzioNcTZF7LTpPg76UH9bbLyFXq02HQs/wkFEwYz1Daj1G6+
         H+yfhRh5/9xcg15ON76DcLdb2W94DPUmfMUtU4OXzZoaH3OThEhgDq5WX0v7iysuVi
         jTQz0ZG7gRcPUtAdvSJE+JpJ3eDwYoxR2XGAoZhW73tQEzFLYRsEnPbA4O8vjkadmg
         k6VC9FLZtrxFEhfzMYXNaYuY9JyCowvADYTPyaPXfN06TRhkghq5HPF0Sz4ZEzBMy4
         PPuwOW8RFN0ijDzw568/04rToGou4TRM3+CTiDAzzpQiRsnMdgwcvPKxMtW5ewGfw3
         uH9S9T0so9kCQ==
Date:   Fri, 11 Aug 2023 18:57:31 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Jisheng Zhang <jszhang@kernel.org>
Cc:     guoren@kernel.org, wefu@redhat.com, jrtc27@jrtc27.com,
        anup@brainfault.org, samuel@sholland.org, bmeng.cn@gmail.com,
        opensbi@lists.infradead.org, Guo Ren <guoren@linux.alibaba.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH] docs/platform: thead-c9xx: Improve the documentation
Message-ID: <20230811-cardiac-platter-8b50b3b764d3@spud>
References: <20230808132958.1097873-1-guoren@kernel.org>
 <ZNURXBKkYdiWLanf@xhacker>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="48B+/lHDbe1U8SHm"
Content-Disposition: inline
In-Reply-To: <ZNURXBKkYdiWLanf@xhacker>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--48B+/lHDbe1U8SHm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 11, 2023 at 12:33:32AM +0800, Jisheng Zhang wrote:
> On Tue, Aug 08, 2023 at 09:29:58AM -0400, guoren@kernel.org wrote:
> > From: Guo Ren <guoren@linux.alibaba.com>

> > +T-HEAD Fdt Reset Driver Introduction
> > +------------------------------------
> > +
> > +Every T-HEAD CPU provides a reset control signal and reset address sig=
nals.
> > + - Reset address signal determines CPU where to start up.
> > + - Reset control signal releases CPU from reset state and begins to ex=
ecute
> > +   at reset address.
> > +
> > +Many vendors would gather these signals into SoC control registers. Th=
ese
> > +register designs are similar but with different base addresses and bits
> > +definitions. We only provide standard opensbi, Linux binaries, and jta=
g gdbinit
> > +script to simplify Linux booting at the FPGA stage. The fdt reset driv=
er helps
> > +users bring up their SMP system quickly with the below settings:
>=20
> +DT maintainers and DT list.
>=20
> I can submit a dt-binding for this if DT maintainers agree with below
> properties. Could you please help review?

I already reviewed this once & nothing has improved.
In fact, things have gotten worse IMO with this "using-csr-reset" that I
don't think existed in the original iteration that I saw.
I did see things getting better with the use of standard stuff like
"reg" in our earlier discussion which I don't see here.
What is the point in carrying out any further review if things will be
flat out ignored?

Thanks,
Conor.

> > +
> > + - entry-reg:
> > +	The base address to store reset address value
> > +
> > + - entry-cnt:
> > +	The numbers of entry-reg, all of them set the same reset address
> > +
> > + - control-reg:
> > +	The base address to reset the controller
> > +
> > + - control-val:
> > +	Write which bits of control-reg for booting
> > +
> > + - csr-copy:
> > +	This array determines which csrs to copy from primary hart to the
> > +	secondary harts, which are set in sequence from left to right. The
> > +	secondary harts should keep the same setting as the primary hart.
> > +	These settings are also the first part of the bootup instructions
> > +	for secondary harts.
> > +
> > + - using-csr-reset:
> > +	A legacy reset controller for the SMP system, but abandoned in the
> > +	latest T-HEAD processors.


--48B+/lHDbe1U8SHm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZNZ2iwAKCRB4tDGHoIJi
0tIBAQCD46HF6ssDnduxBujenmfIKHkCJ2G/6AqhqP+C5wG+7AD/VN6rgDdFS218
PMErE/hJpT4EdfODduputnBxgctXew0=
=TaRL
-----END PGP SIGNATURE-----

--48B+/lHDbe1U8SHm--
