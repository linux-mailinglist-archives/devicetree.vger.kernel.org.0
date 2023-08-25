Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA847788C26
	for <lists+devicetree@lfdr.de>; Fri, 25 Aug 2023 17:09:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230375AbjHYPJR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Aug 2023 11:09:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229448AbjHYPJA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Aug 2023 11:09:00 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 618D12127
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 08:08:58 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 009D764A03
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 15:08:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91253C433C8;
        Fri, 25 Aug 2023 15:08:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692976137;
        bh=9vNizx1+9O0KC3M0H0J5rAKXThJFEy55qKjjq7BwuPw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=h62atMn+qoh4TUlPmUGCC3+68ax31VdF7m4QXHSI8Dopd1FUg9Tbob9gxp6twCIyj
         LfhsyqSS0pTnXPqxgBMzO3tkMiBw2vU22dbHxPea3tH2BmJ/XVJPLe79uvtxI5W6dT
         wDMBbF/1ZbvDukEiL4n0Wnc6qQeqYMA9Cj8CYjUcuRl7dXqPHxcIYqY0w6kLH3FgjS
         y1DJIiy1mg49HnQUNcyIvkmXGB5dINN1/CJ51XVb4+43cPMVYXUXC5Wk3rvwjoX4N5
         I3oDljGFz3F9s/1mBI9dlm79sM5ygraR9zgqYdNXOfUo2yQFWJMwIkivbvnvZ+jHJa
         xRNxoKS4sucfw==
Date:   Fri, 25 Aug 2023 16:08:52 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Huacai Chen <chenhuacai@kernel.org>
Cc:     Conor Dooley <conor.dooley@microchip.com>,
        Binbin Zhou <zhoubinbin@loongson.cn>,
        Binbin Zhou <zhoubb.aaron@gmail.com>,
        Huacai Chen <chenhuacai@loongson.cn>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        loongson-kernel@lists.loongnix.cn, Xuerui Wang <kernel@xen0n.name>,
        loongarch@lists.linux.dev, Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Hongliang Wang <wanghongliang@loongson.cn>
Subject: Re: [PATCH v4 0/7] LoongArch: Add built-in dtb support
Message-ID: <20230825-exorcist-periscope-045ad906d919@spud>
References: <cover.1692783907.git.zhoubinbin@loongson.cn>
 <CAAhV-H7hi=yc=PfDBafXVS5CSwEeE2WmbAAhnnDm6iYFF3YzkQ@mail.gmail.com>
 <20230825-doubling-waltz-6444e26152db@wendy>
 <CAAhV-H7FAKa2_+rfyboVYxvQA0sJmaWnKj3yCJZkqe_FEx9J2Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="1pDqvKmd8N2geUhn"
Content-Disposition: inline
In-Reply-To: <CAAhV-H7FAKa2_+rfyboVYxvQA0sJmaWnKj3yCJZkqe_FEx9J2Q@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--1pDqvKmd8N2geUhn
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 25, 2023 at 11:06:40PM +0800, Huacai Chen wrote:
> Hi, Conor,
>=20
> On Fri, Aug 25, 2023 at 7:59=E2=80=AFPM Conor Dooley <conor.dooley@microc=
hip.com> wrote:
> >
> > On Fri, Aug 25, 2023 at 07:38:31PM +0800, Huacai Chen wrote:
> > > This series looks good enough to me now, if no one has objections, I
> > > will queue it to loongarch-next.
> >
> > Have you not read Rob's replies?
> I'm sorry, I have read but I thought Binbin's reply has answered Rob's qu=
estion.

As far as I can tell, it didn't - but there were was a reply from Rob
about dtbs_check issues too IIRC.

--1pDqvKmd8N2geUhn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZOjEBAAKCRB4tDGHoIJi
0raOAP0UwLxEnXtbN9grQbymd9p1UoXvDccNBGkF/eb9t4F9FwD9Hf1N4jR7loX7
B9yhkVb11Cgjsz5Kox0NN02UFECO1gk=
=VK0e
-----END PGP SIGNATURE-----

--1pDqvKmd8N2geUhn--
