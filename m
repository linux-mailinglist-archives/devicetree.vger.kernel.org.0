Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 199FC713657
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 22:07:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229593AbjE0UHF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 16:07:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229472AbjE0UHE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 16:07:04 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8318CC9
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 13:07:01 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 16A6A60A55
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 20:07:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88AF1C433EF;
        Sat, 27 May 2023 20:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685218020;
        bh=umEHzLb9dBlQzgxXlomlwv2XjVHxEkF939pih+t3U5c=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=VCkghnKuhWABOguUwVGayJKSwfiPSMOqawn24Ot+0oeWZoueDaP9epg4h5T7LIGAU
         9CCHkW/bQ4aey4oAwfRT2ck32WcH0shISZ4dcK06aS4xIfkRzlnqkMoxu5uqigrgLU
         KA6ZMqVw4ZewnEH+5HakyxmVlVShs8jK0Uc2i9emNB0A0xdSv+jt9jK3tKQnkeOYrH
         QgMGnPJJIFRbd1f+499PMuOlthlbesmTFWhlYwKHcVby87jYskmNPFc+RyicQOLfCs
         oRNsCsLo5oIjY9bXBWN9J9dBJN/VKdNReVqz8pYM2guDZBrxFiNZjaycGZIO9PyJXx
         4VDz5S+PjjboA==
Date:   Sat, 27 May 2023 21:06:56 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     shawnguo@kernel.org, broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 1/3] dt-bindings: pfuze100.yaml: Add an entry for
 interrupts
Message-ID: <20230527-promenade-strep-67108e9f4c36@spud>
References: <20230527195005.398815-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="eGti7QmZlj2Sufvo"
Content-Disposition: inline
In-Reply-To: <20230527195005.398815-1-festevam@gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--eGti7QmZlj2Sufvo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, May 27, 2023 at 04:50:03PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
>=20
> The PFUZE100 PMIC has an interrupt pin that can be connected to
> the host SoC. Describe it in the dt-bindings to avoid warnings like:
>=20
> imx6q-zii-rdu2.dtb: pmic@8: 'interrupt-parent', 'interrupts' do not match=
 any of the regexes: 'pinctrl-[0-9]+'
> From schema: Documentation/devicetree/bindings/regulator/pfuze100.yaml
>=20
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--eGti7QmZlj2Sufvo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZHJi3wAKCRB4tDGHoIJi
0lN+AP9QkJ4a0C4j8WNCO94GqA6rGd8dtEO5+/sPd2612RcKBQEAjKOw9aacuQ4W
LFcihMUH25c42c38avCma7iL0sKH8w0=
=Eiu6
-----END PGP SIGNATURE-----

--eGti7QmZlj2Sufvo--
