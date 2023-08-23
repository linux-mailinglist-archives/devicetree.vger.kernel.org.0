Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B16797859D7
	for <lists+devicetree@lfdr.de>; Wed, 23 Aug 2023 15:54:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233912AbjHWNye (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Aug 2023 09:54:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233771AbjHWNyd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Aug 2023 09:54:33 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E982CEC
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 06:54:32 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id B6EA064D4F
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 13:54:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E991C433C8;
        Wed, 23 Aug 2023 13:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692798870;
        bh=KMu12C5LLeqze6dwa+CbBzfeHdiOagjjDvFIirem8DU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=IuaW65Imdj+Z4gUImwBwZx+/G83UKug87f3mbHsr/QT5lTOyG04HIr7MdFVFuRrCT
         7EDVvQiCJV1hdfwj3G9LFl4Q1aOcFAgEHgqQDqvhpAyuchzmn4+cCcfHoUFXeLh1V8
         t4bt3Fpcdhjcil0ARuUlN/r86yMvSzEDUvACUjvyfOKPw4jFm0np5n9VwgFmiZ35vi
         H4COby2+8kjwweDcIMMpcL4wYpxucsxA61zsnknzqTcaLQ3mZjmhXU49mR5qO0NWq8
         1CqqjQ53PjUFT89RXdYGmAzxbJtQnykyQIGGTb0oLo+95g57w385auU+kBkuoTH3lG
         GlDAkQsy8x6UQ==
Date:   Wed, 23 Aug 2023 14:54:24 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Binbin Zhou <zhoubinbin@loongson.cn>
Cc:     Binbin Zhou <zhoubb.aaron@gmail.com>,
        Huacai Chen <chenhuacai@loongson.cn>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        Huacai Chen <chenhuacai@kernel.org>,
        loongson-kernel@lists.loongnix.cn, Xuerui Wang <kernel@xen0n.name>,
        loongarch@lists.linux.dev, Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Hongliang Wang <wanghongliang@loongson.cn>
Subject: Re: [PATCH v4 1/7] dt-bindings: loongarch: Add CPU bindings for
 LoongArch
Message-ID: <20230823-brunch-splendor-83b5989e67a1@spud>
References: <cover.1692783907.git.zhoubinbin@loongson.cn>
 <702d1fb6b14eac7ffdc7085ee3a4a1b7ee35a1cb.1692783907.git.zhoubinbin@loongson.cn>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="hLRT4P0+1uNkrdn7"
Content-Disposition: inline
In-Reply-To: <702d1fb6b14eac7ffdc7085ee3a4a1b7ee35a1cb.1692783907.git.zhoubinbin@loongson.cn>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--hLRT4P0+1uNkrdn7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 23, 2023 at 05:54:49PM +0800, Binbin Zhou wrote:
> Add the available CPUs in LoongArch binding with DT schema format using
> json-schema.
>=20
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--hLRT4P0+1uNkrdn7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZOYPkAAKCRB4tDGHoIJi
0oPvAQCbpwul1uwIsptbT+ZN12lCnmFqN7OnndyumhBANOI+iwEAz8zi9csV5rOr
Kof3W6h8539CEU1a6/MEKNgKk56StA0=
=aTnp
-----END PGP SIGNATURE-----

--hLRT4P0+1uNkrdn7--
