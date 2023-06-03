Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B9723720F1E
	for <lists+devicetree@lfdr.de>; Sat,  3 Jun 2023 12:10:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229875AbjFCKKh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 3 Jun 2023 06:10:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229475AbjFCKKg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 3 Jun 2023 06:10:36 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FD9D1B4
        for <devicetree@vger.kernel.org>; Sat,  3 Jun 2023 03:10:34 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 05792611AC
        for <devicetree@vger.kernel.org>; Sat,  3 Jun 2023 10:10:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 053BBC433D2;
        Sat,  3 Jun 2023 10:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685787033;
        bh=iithJnx/7MSraXSjIugO6eQUP4lR2W2gUPWdCMZjZCk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=mnO+RvTrP3rBinV0b2EiLlFhWQaLC9b6hI+X8wzUdMdPTSnXjP0WWrLZvq6jXWj9u
         D/tmvtLrYOZRxR9B7BJqwW06fR5RUr1gNVCcLUs64bW3nwPs8aVy0lUKuatAOPYwWb
         5K3mXWZ72on5K2Yv/3tLSywgnuxiUsrVn57n3/pxourTDJ0R9VqB51viU5iQQB1z6B
         gLAn4r7nPP672cTsjyAFdGBwTc6u3l/BLU5BxRZeBO6ukHBoK0yIwo9Q++OqIdSZtF
         VCBWbyzC9Eu58aMdQ6ykgYvo73/C9tycamuIkX6jLdMDKHAbIezRvfFmYzmSN0Ko7K
         2jyw9VHIBa9ng==
Date:   Sat, 3 Jun 2023 11:10:28 +0100
From:   Conor Dooley <conor@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Pratyush Yadav <ptyadav@amazon.de>,
        Dhruva Gole <d-gole@ti.com>, linux-mtd@lists.infradead.org,
        devicetree@vger.kernel.org,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH V2] dt-bindings: mtd: partitions: Include TP-Link
 SafeLoader in allowed list
Message-ID: <20230603-flyover-amperage-83a3d3bc7d85@spud>
References: <20230602215629.2568-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="LVKWzCCf69Kpk2Ti"
Content-Disposition: inline
In-Reply-To: <20230602215629.2568-1-zajec5@gmail.com>
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--LVKWzCCf69Kpk2Ti
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 02, 2023 at 11:56:29PM +0200, Rafa=C5=82 Mi=C5=82ecki wrote:
> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>=20
> It's supposed to be there and it's needed for proper validation of DTS
> files.
>=20
> This fixes following errors for Northstar based TP-Link routers:

>         bcm47081-tplink-archer-c5-v2.dtb: flash@0: partitions:compatible:=
 'oneOf' conditional failed, one must be fixed:
>                 ['tplink,safeloader-partitions'] is too short
>                 'fixed-partitions' was expected
>                 'sercomm,sc-partitions' was expected
>         'arm,arm-firmware-suite' was expected
>         'brcm,bcm4908-partitions' was expected
>         'brcm,bcm947xx-cfe-partitions' was expected
>         'linksys,ns-partitions' was expected
>         'qcom,smem-part' was expected
>         'redboot-fis' was expected

Something like this would have been sufficient, dumping the whole error
into the commit message bloats it for no real gain, but I was asking for
you to say what the issue was, not asking for a resubmission (yet anyway).

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--LVKWzCCf69Kpk2Ti
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZHsRlAAKCRB4tDGHoIJi
0vhLAP0XvUo/Qaukfkh0NYWY1wQa4gxDl47frZzEtnYBbBEEOwEA3tI6rIcMZOtV
acxwk9hpf+82Ajz+8QkOjqUsUmPpAg0=
=W5Ig
-----END PGP SIGNATURE-----

--LVKWzCCf69Kpk2Ti--
