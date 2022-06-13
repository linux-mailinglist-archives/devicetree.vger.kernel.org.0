Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD7485483AD
	for <lists+devicetree@lfdr.de>; Mon, 13 Jun 2022 11:45:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234766AbiFMJam (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jun 2022 05:30:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230266AbiFMJal (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jun 2022 05:30:41 -0400
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EACF31835F
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 02:30:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
        s=20170329; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
        Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
        Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
        :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
        List-Post:List-Owner:List-Archive;
        bh=Wp0HK8YdI7KmNbhDD+gqBVosNPJF2+aXMYjq8zovvUA=; b=eGjVfaM+FRRPtXqUGMY9AYnjIS
        +e3RLU5K1M25G4ybYWU5PiJHHhdL5xxZyr7utq3BG4WfOaCmxlRUDtod+HwQEcMnlwyxY11de8wy2
        PzIDC7y0McgrRXJOBTTeCBAqOWm3NOTJhoHngLli4zpSEdb+p45eFYeyNd3gWkNmuX7vmdvGRb/co
        +c7he0wpJP0wOZ/Ee5+pp3aR6mSmW1t7mlfoc4b26SH9/+64FDE+Kr+J7yM3+QKz8NATkYPKUNL1L
        Swsl0vU80Xr+5xWXe3nMep55NQ70Oj/cZEs663v6Nf1KAqwxjnkpDLPsZvu4v9BcwYa+upZI/lEuk
        N3g3CtEA==;
Received: from [165.90.126.25] (helo=mail.igalia.com)
        by fanzine2.igalia.com with esmtpsa 
        (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
        id 1o0gOu-000P1j-4W; Mon, 13 Jun 2022 11:30:24 +0200
Date:   Mon, 13 Jun 2022 08:30:02 -0100
From:   Melissa Wen <mwen@igalia.com>
To:     Javier Martinez Canillas <javierm@redhat.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Peter Robinson <pbrobinson@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>,
        bcm-kernel-feedback-list@broadcom.com,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Emma Anholt <emma@anholt.net>,
        linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org, maxime@cerno.tech,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Subject: Re: [PATCH v6 0/6] Raspberry PI 4 V3D enablement
Message-ID: <20220613093002.moc4wbskh4b6rhdj@mail.igalia.com>
References: <20220603092610.1909675-1-pbrobinson@gmail.com>
 <cadecbfd-e174-eadb-276c-577bb2bf70f2@gmail.com>
 <9aaaaa29-11c0-d494-11dd-0bbf5d384364@redhat.com>
 <20220608155130.w4piz2g3obp7qnx7@mail.igalia.com>
 <40f27e32-720a-2f51-2164-5e152f53443a@redhat.com>
 <20220610110556.63mddbye7vxq6mzb@mail.igalia.com>
 <0ac368d9-efe6-ab98-a695-292bca8febf8@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="xzlwgxaye7mwmzza"
Content-Disposition: inline
In-Reply-To: <0ac368d9-efe6-ab98-a695-292bca8febf8@redhat.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--xzlwgxaye7mwmzza
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 06/10, Javier Martinez Canillas wrote:
> Hello Melissa,
>=20
> On 6/10/22 13:05, Melissa Wen wrote:
> > On 06/08, Javier Martinez Canillas wrote:
>=20
> [snip]
>=20
> >=20
> > Hi Javier,
> >=20
> > Thanks for waiting a little.
> >=20
> > Stefan guided me to the missing part and I'm okay on this serie.
> >
>=20
> No worries and thanks for the testing.
> =20
> > If there's any r-b missing for drm/v3d, you can add mine:
> > Reviewed-by: Melissa Wen <mwen@igalia.com>
> >=20
> > But if you prefer that I applied them, just let me know.
> >=20
>=20
> If you can apply them that's even better since you are more involved
> with this driver. I was just trying to be helpful and that's why I
> volunteered to push, to prevent this effort to get stalled :)
Hi all,

I applied the first three patches to drm-misc-next yesterday.

Thanks,

Melissa

>=20
> --=20
> Best regards,
>=20
> Javier Martinez Canillas
> Linux Engineering
> Red Hat
>=20

--xzlwgxaye7mwmzza
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEd8WOo/JViG+Tu+XIwqF3j0dLehwFAmKnA5QACgkQwqF3j0dL
ehxsNhAAodOjILSXsF7K7A89h473tkRlgDlYSPFoSwZcqKaLCS9cp+c2v7pDyctk
UmUXlzvOqWr2mMptVOW1cbhzqSHremlTiX1QO7ISP1OxgqnX+YscUInLuwUsdebn
ECJqxbcyX6MUuFpEdhtpviMPAfgzCsyGA7A0KJIJAS26xqTG185mILr/TuBaUDEt
2lhsQ6WAEfpu5PYEI7sIDsifA9wA5R8nvcIlYZ22bqlEZXBr/06fpNNcrYNfm8+L
wWvYUxoPNF0TSYJZQ174PrarlE9mdgzH3QkP0DvVKaUzsEg1nWNC+bIZF2K0BvtX
M1SxGjS+VAjw/04FMaIbsXG5tUEdGLyijgppRfCAQzZAYe6Wkw5FT1ZuuwFJG3Ag
YDbMym9Y05wXqurLVmRYFpJD4aUXjNWc8Ia/B2cibKTlfC0oZsPNik7VXzwNwPbQ
rfuG8ew9MlZd5O4cnX0TxljkNIWZ1Qyz1cQ9a4AvAZwN9dzlSmKZlMumyg4APa94
0RUTegFz/uurxKbV+7ljg3zr+ab/zbEaDtDddsc/eX7CWmgoPyam46f/8xGlv0WS
LebQ7JqXH865ZdYoORm1vwE/C9ts8HcnLJcKPPkKRoZkMJBXjKNPAE8AZ7BUhD/3
5SBa8rjWCFVPSerU+PVDBQXLEgR0Vrh7+guCbGqU4/jm8P6qnHQ=
=M5Rk
-----END PGP SIGNATURE-----

--xzlwgxaye7mwmzza--
