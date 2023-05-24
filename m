Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 711D170FF30
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 22:27:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229650AbjEXU11 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 16:27:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229469AbjEXU10 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 16:27:26 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9780910B
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 13:27:25 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 2F91764089
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 20:27:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 566BBC433D2;
        Wed, 24 May 2023 20:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684960044;
        bh=3KEdcds8pktgrixeF2rUQnEoZP6caZdUbI+fhN+eseY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=V2aiUqYd8DKFelba3RUMedUwC26vmwdlBh4gGM9/y0u+Hzn3fFoKSlrMc03cHi2XB
         tKD9/fyUJ9Z5RapszWokWkZgUO6AaqaF1AN8ls90VnScb8N+pUcy2xdNlu73iT2yBR
         Cz4rz1mZZtQtjPdLVTXQ1Nk02J1IxXxwR2Fu64ttmws+YaFoR8YHRe6X8C318L9YUX
         aIWX1dXdsyEtWWGoZHulSqD2w0hAwI9DEfAPl7kT1gOVdj3ewtx2P98FDa8eIdOvi9
         1uTmjyWp+t/SydxdPG+3ePfQiJrNxSuxabHsaguGLJZ2WuF68i+zVOU89eYlniks5K
         n7m+x+SJxjefA==
Date:   Wed, 24 May 2023 21:27:18 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, zyw@rock-chips.com,
        sebastian.reichel@collabora.com, andyshrk@163.com,
        jagan@amarulasolutions.com, broonie@kernel.org, perex@perex.cz,
        tiwai@suse.com, lgirdwood@gmail.com, heiko@sntech.de,
        conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 5/6] dt-bindings: arm: rockchip: Add Indiedroid Nova
Message-ID: <20230524-uncommon-coroner-5a4d9c339837@spud>
References: <20230523213825.120077-1-macroalpha82@gmail.com>
 <20230523213825.120077-6-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="7yud7buBms0aJE1s"
Content-Disposition: inline
In-Reply-To: <20230523213825.120077-6-macroalpha82@gmail.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--7yud7buBms0aJE1s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 23, 2023 at 04:38:24PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Add Indiedroid Nova, an rk3588s based single board computer.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--7yud7buBms0aJE1s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZG5zJgAKCRB4tDGHoIJi
0kkAAQDSQ39pj7YaiCc3FVNbMWl5Gp5U3oOWKezpcy0eTzLgGAD+MSTxq4WlDB+B
uhJPLc3tOTyQ8Ym9YKaOgJrsHNrJgwI=
=rAUF
-----END PGP SIGNATURE-----

--7yud7buBms0aJE1s--
