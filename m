Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3B8D5599E6
	for <lists+devicetree@lfdr.de>; Fri, 24 Jun 2022 14:52:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231946AbiFXMwx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Jun 2022 08:52:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231945AbiFXMwx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Jun 2022 08:52:53 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2151738AF
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 05:52:51 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 59BB1B827FC
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 12:52:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C63F4C34114;
        Fri, 24 Jun 2022 12:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1656075169;
        bh=ggsOaY+fSKt3PTe28f1Wmr/wTw3Af4qywUmG3HCcJWM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=O8+ncaxI1U+fu7vw1l+3IDVRvBZStnGXR9fVHgColjjNPV1X9Xp3x91F2LwoZAPgR
         20SVL35XE1jyVKyMFz3u/982lLGWhcTP0p8qanlvJccgk3xasKeKvW7q389+wRxs+5
         YvJHxUqXrAP7UbwdweXtQuikSsqmKVjHK9KBEW4JgtYME/Ze6Uq9uEipoOTgTG5OUp
         P7LYA19i29HrYD+DSLhB49qewVIfU1RKJ9bnplCfdTfosi+5jXZPUlYjdrKloM4Xpb
         xKHwsUipkV+H2BzjOj5DI/16vxqW628zmyAhL5lzKlxVv4G6xDNYCNY2S59D0EFfjW
         c8hNnQOQCABXg==
Date:   Fri, 24 Jun 2022 13:52:44 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Daniel Mack <daniel@zonque.org>
Cc:     ryan.lee.analog@gmail.com, robh+dt@kernel.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 6/8] ASoC: max98396: Fix register access for PCM format
 settings
Message-ID: <YrWznD63aJvCLkXO@sirena.org.uk>
References: <20220624104712.1934484-1-daniel@zonque.org>
 <20220624104712.1934484-7-daniel@zonque.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="RSuues7emqihzUON"
Content-Disposition: inline
In-Reply-To: <20220624104712.1934484-7-daniel@zonque.org>
X-Cookie: Help!  I'm trapped in a PDP 11/70!
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--RSuues7emqihzUON
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 24, 2022 at 12:47:10PM +0200, Daniel Mack wrote:
> max98396_dai_set_fmt() modifes register 2041 and touches bits in the mask
> 0x3a. Make sure to use the right mask for that operation.

This is a fix so should be at the start of the series, ensuring it has
no dependencies on anything else in the series.

--RSuues7emqihzUON
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmK1s5sACgkQJNaLcl1U
h9CSQgf/YjLcTh4wZoZ4Qu7+0mKj4S7VSNdinnVymTIQHiNfn8ZPbhxMGev5mJHk
iB1ot2TSl9pKeV9ugrmaL7H5XZLrBVTOypIEGXiKumIAHnBdIVwE3n6sZeCNtjAh
fE6gsTVpCIPrxwV/Uwbrvf89+HdxEuCjDAv0u4Qo1Ra88aqUQkkArF/00w8uSYEa
9wA4mSGJLcPk74tuzKtRAZRMstolZcCpVIdev+fQHnu2KoRKi4rMWPo32Llg46vI
UNJqb/BdJkLiNoGGnfOjmnXrzvFlWqpOjTojJx0WLhUe7OH+97pAdBb6Yp++viP/
gzuvaPdj0y4r3eBIHMRNf0hrvBBCKg==
=v9F8
-----END PGP SIGNATURE-----

--RSuues7emqihzUON--
