Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1EAF370CD7C
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 00:07:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234578AbjEVWHo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 18:07:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229835AbjEVWGu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 18:06:50 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0A779E
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 15:06:49 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 4E2B462C22
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 22:06:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2BA5C433D2;
        Mon, 22 May 2023 22:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684793208;
        bh=0v+aGcsWkmuoWIX4YunokxnkGJYmy/1lnAER165Ej20=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=hrQdG0xX1/nJwxUwZMhYyX1qsuQmy/D7ORIa9c+3sbGKfDe6jPkbLKb8aglWScaFT
         eGExf7EpOmVE9PpYGrD1OfKLwBN5NP+xL5FvIz2TCwAaJtJMKGazoSgVBd/UR0L7io
         6ehN8IK4n3+4cOznFwksP882ouQt1mrRzGcYuc0IoznVgive+hGbrTSn3NnDd9OzN/
         4/SVamGLA3bpDrIzTuX0vMKPlkIRm9mQxicsQulyNDN48RDvV4os+SfqK9pVs0R+FL
         XKqzoFg1el/ivuEBeI/AIk9bUCNoilbQAiQ5SzbHUdcPoL4apn15ZWLbu71Rse6k2F
         C2IUdeDl05pmg==
Date:   Mon, 22 May 2023 23:06:44 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     shawnguo@kernel.org, marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
        bhelgaas@google.com, Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH v6 2/5] dt-bindings: display: bridge: ldb: Adjust imx6sx
 entries
Message-ID: <20230522-shaky-gulf-39d341592d6c@spud>
References: <20230522201404.660242-1-festevam@gmail.com>
 <20230522201404.660242-2-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="DO38DdtUwEWWVyMY"
Content-Disposition: inline
In-Reply-To: <20230522201404.660242-2-festevam@gmail.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--DO38DdtUwEWWVyMY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 22, 2023 at 05:14:01PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
>=20
> On the i.MX6SX there is a single entry for 'reg', so add some logic to
> reflect that.
>=20
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--DO38DdtUwEWWVyMY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZGvndAAKCRB4tDGHoIJi
0lNtAP4jWKpwSiUc3TZPcuyjhOwA6l7XVsDcrN6HFMPhrwSduQEA6mNqO80chhF8
SbvgNASI8bW2r4eEhjZKwMmdWz1JbQg=
=UOdD
-----END PGP SIGNATURE-----

--DO38DdtUwEWWVyMY--
