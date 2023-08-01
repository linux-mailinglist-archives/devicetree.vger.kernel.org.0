Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A02C76B8E1
	for <lists+devicetree@lfdr.de>; Tue,  1 Aug 2023 17:42:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234971AbjHAPmY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Aug 2023 11:42:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234967AbjHAPmX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Aug 2023 11:42:23 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D97D4BF
        for <devicetree@vger.kernel.org>; Tue,  1 Aug 2023 08:42:20 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 44D596160D
        for <devicetree@vger.kernel.org>; Tue,  1 Aug 2023 15:42:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A6CFC433C9;
        Tue,  1 Aug 2023 15:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690904539;
        bh=SHVhw9HvXwaezqu60GF2nIB9S98q5r6biy/LMA0uFUg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ehPXkd2v6ltImtj/9QJihxdG7v5K8sdBPJipN4LxWPzP1M7z091bCY6KpZKlPLWNp
         CxITtBSzexoKNvHytrvDNv2cvL8ZoryM3CLl7CBvU868uTg1WIZTP2lIcL+qXNc51r
         avBjfabSydNWsMfG0flsbwmx2hP2RMV8mTiyax6Cn+WcSQc/oSxlICYtilk3UOhPy9
         jOCCzxtnQZS9SUSWzdmMShMVKjhmZA4AYN4J7+lAckn82rpzt2rgk1Zy7xPhOT0YdF
         mNrO8dFHEvOkDLt2y8+yebREYJ0Oi7fFJl7/2dVbip4Q/Rg7xBc/sndBfGnCyF6mGt
         Xsj3FFtnqz6Ow==
Date:   Tue, 1 Aug 2023 16:42:15 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org,
        Conor Dooley <conor+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: display: simple: Add Innolux
 G156HCE-L01 panel
Message-ID: <20230801-apostle-blurt-db4683b4cf95@spud>
References: <20230731210258.256152-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="jjUB96C1fTz4exbo"
Content-Disposition: inline
In-Reply-To: <20230731210258.256152-1-marex@denx.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--jjUB96C1fTz4exbo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 31, 2023 at 11:02:57PM +0200, Marek Vasut wrote:
> Add entry for Innolux G156HCE-L01 15.6" 1920x1080 24bpp
> dual-link LVDS TFT panel. Documentation is available at [1].
>=20
> [1] https://www.distec.de/fileadmin/pdf/produkte/TFT-Displays/Innolux/G15=
6HCE-L01_Rev.C3_Datasheet.pdf
>=20
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Conor Dooley <conor+dt@kernel.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--jjUB96C1fTz4exbo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZMkn1gAKCRB4tDGHoIJi
0mSNAQCmJf/MDKi8E5ssDuJ72CzVx+gx8YKDAbBj/bMAKdbrJQD+LuFAEB7F78lt
MV8IpJsczC6qnz8ZzLQix5kvxtBkfgk=
=HghL
-----END PGP SIGNATURE-----

--jjUB96C1fTz4exbo--
