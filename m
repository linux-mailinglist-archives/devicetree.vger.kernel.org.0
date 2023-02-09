Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D9814690F74
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 18:46:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230076AbjBIRqA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 12:46:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229468AbjBIRp6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 12:45:58 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 872815C8A1
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 09:45:57 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id BE04DB82222
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 17:45:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60AC0C433D2;
        Thu,  9 Feb 2023 17:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1675964754;
        bh=wsKWY5mniDEA1VyD/3e1Ls9PGad1tG04MhtLT/kvItI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=asShUOZaxIoVjnLISWa1NaM0y/ECxHF7AhpbLfLkijADdE0m19CCOaHARRzydFFk+
         B8yi2Nr3LByleOHHc5htw90M1loC1peaiDrAWiGT9dDHdnlvuFBgD0IDTvPtjndm+z
         frlh1CG/Grj/f+0C3Gz/t6oCPkGLlvvTvI/NFvAsWhnMqNyPVa5SXSiAEhGDQcKqOe
         fS9ZfZuVeIF8j2KIO14pmMis8f8AkX7sZZYhKWVUUDCeNYCkYitjfh6K6fk4pRljzI
         wGWAh9kDYTjtZWMRfUIq/HqyEs1oezg3KcdsO49eH8yjzJS2lKSxbj49KCFaXkxQDg
         MFzkXKGZ4KGhg==
Date:   Thu, 9 Feb 2023 17:45:48 +0000
From:   Conor Dooley <conor@kernel.org>
To:     Andrew Jones <ajones@ventanamicro.com>
Cc:     linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        devicetree@vger.kernel.org,
        'Anup Patel ' <apatel@ventanamicro.com>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>,
        'Atish Patra ' <atishp@rivosinc.com>,
        'Heiko Stuebner ' <heiko@sntech.de>,
        'Jisheng Zhang ' <jszhang@kernel.org>,
        'Rob Herring ' <robh@kernel.org>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Conor Dooley ' <conor.dooley@microchip.com>
Subject: Re: [PATCH v4 0/8] RISC-V: Apply Zicboz to clear_page
Message-ID: <Y+UxTBmegHqqHDCQ@spud>
References: <20230209152628.129914-1-ajones@ventanamicro.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="9mBYdTmiZ9WKdOsk"
Content-Disposition: inline
In-Reply-To: <20230209152628.129914-1-ajones@ventanamicro.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--9mBYdTmiZ9WKdOsk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey Drew,

On Thu, Feb 09, 2023 at 04:26:20PM +0100, Andrew Jones wrote:
> When the Zicboz extension is available we can more rapidly zero naturally
> aligned Zicboz block sized chunks of memory. As pages are always page
> aligned and are larger than any Zicboz block size will be, then
> clear_page() appears to be a good candidate for the extension. While cycle
> count and energy consumption should also be considered, we can be pretty
> certain that implementing clear_page() with the Zicboz extension is a win
> by comparing the new dynamic instruction count with its current count[1].
> Doing so we see that the new count is just over a quarter of the old count
> (see patch4's commit message for more details).
>=20
> For those of you who reviewed v1[2], you may be looking for the memset()
> patches. As pointed out in v1, and a couple follow-up emails, it's not
> clear that patching memset() is a win yet. When I get a chance to test
> on real hardware with a comprehensive benchmark collection then I can
> post the memset() patches separately (assuming the benchmarks show it's
> worthwhile).
>=20
> Based on riscv-linux/for-next plus the dependencies listed below.
>=20
> Dependencies:
> https://lore.kernel.org/all/20230108163356.3063839-1-conor@kernel.org/
> https://lore.kernel.org/all/20230105192610.1940841-1-heiko@sntech.de/

I've had a short (due to FOSDEM) & busy week since we discussed the
automagic dependency collection. I'll try to get to it in the next few
days.

> The patches are also available here
> https://github.com/jones-drew/linux/commits/riscv/zicboz-v4
>=20
> To test over QEMU this branch may be used to enable Zicboz
> https://gitlab.com/jones-drew/qemu/-/commits/riscv/zicboz
>=20
> To test running a KVM guest with Zicboz this kvmtool branch may be used
> https://github.com/jones-drew/kvmtool/commits/riscv/zicboz
>=20
> Thanks,
> drew
>=20
> [1] I ported the functions under test to userspace and linked them with
>     a test program. Then, I ran them under gdb with a script[3] which
>     counted instructions by single stepping.
> [2] https://lore.kernel.org/all/20221027130247.31634-1-ajones@ventanamicr=
o.com/
> [3] https://gist.github.com/jones-drew/487791c956ceca8c18adc2847eec9c60
>=20
> v4:
>   - Rebased on latest for-next which allowed dropping one dependency
>   - Added "RISC-V: alternatives: Support patching multiple insns in assem=
bly"
>     since I needed to use more than one instruction in an ALTERNATIVE call
>     from assembly. I can post this patch separately as a fix if desired.
>   - Improved the dt-binding patch commit message [Conor]
>   - Picked up some tags from Conor and Rob (I kept Conor's a-b on the
>     clear_page patch, even though there are several changes to it, because
>     I interpreted the a-b as "OK by me to implement a Zicboz clear_page")

Yea, it was a "I am far from qualified to review your implementation,
but I am okay with it existing and the remainder of the patch".

Cheers,
Conor.


--9mBYdTmiZ9WKdOsk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCY+UxSQAKCRB4tDGHoIJi
0nXrAP9VAQ3j262sR5fkIWgKXnnVcwlk0HxuhiGpu+7dH1JcTQD/e+mZEdP1X1PR
UiYGOGgLZYOVDwTZVxkkf9gZ5EzcGAI=
=k+w3
-----END PGP SIGNATURE-----

--9mBYdTmiZ9WKdOsk--
