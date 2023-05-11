Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E82B6FFCBD
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 00:38:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239505AbjEKWi0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 May 2023 18:38:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239512AbjEKWiU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 18:38:20 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C8047D84
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 15:38:16 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id CDB736524F
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 22:38:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE2CFC4339B;
        Thu, 11 May 2023 22:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1683844695;
        bh=bmkyDue9zuybIbd/bUm7zldOyRuw0dCz29un7llr9gE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Nf+OSUxU+jX/Q7r5PUlHVNe4JilMMBp/2adGAhWB4POVovvicXgaNjS3f2PRK/N0e
         rhvQ1od/OplE9pCTv5nKpJD8FgsHNNGocxyR6oxg+PpjUnu2twSNJakLn6S1gyI95E
         kFNurR+w0/a8dGFYmYEBbrrQa5VeU84wTTx6KJxqEZaSIzdhBc+vtSiSvQA9BEanbJ
         8UbnYpxSwRUMInTW1U0Ad/mqoRa/cubrWySFF6qXvGHZGCMI5WXTMuihiphtkpUBu8
         j412zv9MyGXoHcEa+FrmiEqnQVIhTskqiuBnMLEtbwqBCJgsdzkR1iM/h6b23L+o2b
         eIElnRGrO5kAQ==
Date:   Thu, 11 May 2023 23:38:10 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Atish Patra <atishp@atishpatra.org>
Cc:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        Conor Dooley <conor+dt@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Yangyu Chen <cyy@cyyself.name>,
        Conor Dooley <conor.dooley@microchip.com>,
        Rob Herring <robh+dt@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Andrew Jones <ajones@ventanamicro.com>
Subject: Re: [RFC 0/6] Deprecate riscv,isa DT property?
Message-ID: <20230511-occupancy-cleat-06e532e3ea11@spud>
References: <20230508-hypnotic-phobia-99598439d828@spud>
 <CAOnJCUKM13+qzR-rKJZj6OD=-DWiu0z9atzBJ89j_bRwByiowA@mail.gmail.com>
 <20230511-punctuate-dinghy-0dd9be94270c@spud>
 <CAOnJCUL-JTNJMCrAOgnk80pMxOQq9k2+fv84D6cPWHjZmrkqRA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="y28Ar8z5vXm+hkkJ"
Content-Disposition: inline
In-Reply-To: <CAOnJCUL-JTNJMCrAOgnk80pMxOQq9k2+fv84D6cPWHjZmrkqRA@mail.gmail.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--y28Ar8z5vXm+hkkJ
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 11, 2023 at 03:34:24PM -0700, Atish Patra wrote:
> On Thu, May 11, 2023 at 2:47=E2=80=AFPM Conor Dooley <conor@kernel.org> w=
rote:
> > On Thu, May 11, 2023 at 02:27:44PM -0700, Atish Patra wrote:

> > That's more than last year at this point, and nothing has changed in the
> > documentation! Talk's cheap, ehh?
> >
>=20
> Yup. I will poke RVI folks to check if it still is the plan or changed !!

Sounds good, thanks!

> We will likely have a vendor specific string parsing logic.

Complicating the parsing logic is the exact sort of crap that I want
to avoid.

--y28Ar8z5vXm+hkkJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZF1uUgAKCRB4tDGHoIJi
0oHoAQDsXD1xVu2MRd7UgGS3hGkcLGRIhge63XwoUWoFuEli4QD+NSZ0BPZnA2gn
UVfDoVPZ/htjd8KkbCW/Ui+aa3piEws=
=2bn2
-----END PGP SIGNATURE-----

--y28Ar8z5vXm+hkkJ--
