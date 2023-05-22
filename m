Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4DED470CD88
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 00:10:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234560AbjEVWKK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 18:10:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232143AbjEVWKI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 18:10:08 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA85B9E
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 15:10:07 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 66C93629F0
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 22:10:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2DCFC433D2;
        Mon, 22 May 2023 22:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684793406;
        bh=6J/Ql6ajiW9SF5H+lCaeuOffM+i5ejRk6fjwejZy8QM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=nynC/4QkcgIY73ITWP/vkgypCS0/rjuLPQ98PzfFfGaWR3102AHOmsd1r7COJcbcu
         XqKTr3RMk1pdv3apFxMJ+bF22nsTYpEfVSEPWrDVaZM1I/skvFAGqlr0GOvXik/k3D
         R2COAYUELNsECWV7KcSUfKRt3/Q4chVE0c+nkb3Aa2x9G1wtQ5KL7IztFdIVriKxWq
         auccH2Yq52LHwzqf2qY0B/8YMp2DuYKoicZpC9RiZD7IxJ+vaHLh4++AOhS8+IyYGd
         MixcjV+TZXeosKdAoM+z6psElYHV+n2yEvjP05q379BSMsMRzaQ16UlFc6gdBPRue1
         a0UDasYSPABgg==
Date:   Mon, 22 May 2023 23:10:02 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     shawnguo@kernel.org, marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
        bhelgaas@google.com, Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH v6 3/5] dt-bindings: soc: Add i.MX6SX General Purpose
 Register
Message-ID: <20230522-swizzle-scarf-634b0766400a@spud>
References: <20230522201404.660242-1-festevam@gmail.com>
 <20230522201404.660242-3-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="wWBJE1qdVNUchOVE"
Content-Disposition: inline
In-Reply-To: <20230522201404.660242-3-festevam@gmail.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--wWBJE1qdVNUchOVE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 22, 2023 at 05:14:02PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
>=20
> The i.MX6SX General Purpose Registers is a set of register that serves
> various different purposes and in particular, IOMUXC_GPR_GPR6, at
> offset 0x18, can be used to configure the LDB block.
>=20
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> Changes since v5:
> - Dropped "fsl,imx6q-iomuxc-gpr" and "reg-names" (Marek).

Please, especially when sending more than one version in a day, keep
the changelogs from all of the versions in here.
What you have seems grand,
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--wWBJE1qdVNUchOVE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZGvoOgAKCRB4tDGHoIJi
0keRAQCHHNHjqd8xuCZ7ifWPNchdilWJJtivmGFn2I2D2UzhwQEA6Ovb8WWzn/uQ
7J4p4m7BYDveoNNDkmTQsOG7Kfi1LQY=
=GT7w
-----END PGP SIGNATURE-----

--wWBJE1qdVNUchOVE--
