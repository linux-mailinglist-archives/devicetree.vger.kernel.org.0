Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 255F15FA23C
	for <lists+devicetree@lfdr.de>; Mon, 10 Oct 2022 18:55:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229662AbiJJQzT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Oct 2022 12:55:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229865AbiJJQzL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Oct 2022 12:55:11 -0400
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com [IPv6:2607:f8b0:4864:20::729])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC9133679B
        for <devicetree@vger.kernel.org>; Mon, 10 Oct 2022 09:55:06 -0700 (PDT)
Received: by mail-qk1-x729.google.com with SMTP id d13so676270qko.5
        for <devicetree@vger.kernel.org>; Mon, 10 Oct 2022 09:55:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=u++Vyajz3Nuh0PLJEIZoTN8qrFrMRkL9f8/Y/xryy3I=;
        b=EbjQTr8fdEfqarg6BI0wVM09khQoF+3qFBbnDsEl+jBHipnlr1MT0rDaAOXB3g2czi
         31eZqigWrxVK6wXj6Yjwv0rMQdDc6R+W/HhPCSFBHTH7lts0FNY0Im3hbnaAXzFW9Kz8
         mRM/kPF8pnQeLiF8HD1fXae7g5y+HUyFLZdNw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u++Vyajz3Nuh0PLJEIZoTN8qrFrMRkL9f8/Y/xryy3I=;
        b=FunxzLwEX+YGbsFPWsBLDpyTIiW/CObLjxnrbPHn2LU5PCA39xWz9t8I1ZtkTtOKln
         2ACCmaKcGan5sn65eTYX5bOeuQvH1iXMWcYqfxiuTeJy548gl/FJo7d9Nrc7c/cIn1ae
         HS98WRNpfOXETtoinXAqByhSojqrWuSP5AOq1PxUPqhHIpiFUb3eAbjWwPW4sXQi5x2t
         /w6Zi5FZF17J5X4gQF0MIh6lWuXuGFpgua0nfT2FCfFHJqCqGpKTXIkuiDAQfgWnXnDx
         Z8uLNVpQu01y9xWa+b+lLg34BQ0rP8jCAQRxIaKfPdj+lqU+NQaaJKB7cOdLLP9wy5Oc
         oC0Q==
X-Gm-Message-State: ACrzQf2zC5MGmpX+JQ/Nal85cfdNgKfBUyTyH3Lp2oNpjnUGLqpvn/Be
        Y9foyif6l4cIWa4et4eh/Kt5JQ==
X-Google-Smtp-Source: AMsMyM4gsVEa2gMOBDM9MSEHVlAFJyF4UwqCXPfnkzuXi2extjuDS73IScO1cRtbE04Y1ibs8gKJhw==
X-Received: by 2002:a05:620a:16d5:b0:6ec:52ab:e8bd with SMTP id a21-20020a05620a16d500b006ec52abe8bdmr6454096qkn.424.1665420905686;
        Mon, 10 Oct 2022 09:55:05 -0700 (PDT)
Received: from bill-the-cat (2603-6081-7b00-6400-9534-07b5-32fb-791d.res6.spectrum.com. [2603:6081:7b00:6400:9534:7b5:32fb:791d])
        by smtp.gmail.com with ESMTPSA id cn12-20020a05622a248c00b0035bb6c3811asm8787789qtb.53.2022.10.10.09.55.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Oct 2022 09:55:05 -0700 (PDT)
Date:   Mon, 10 Oct 2022 12:55:03 -0400
From:   Tom Rini <trini@konsulko.com>
To:     Rob Herring <robh@kernel.org>, Simon Glass <sjg@chromium.org>
Cc:     devicetree@vger.kernel.org,
        U-Boot Mailing List <u-boot@lists.denx.de>,
        David Gibson <david@gibson.dropbear.id.au>
Subject: Re: [PATCH v3] schemas: Add schema for U-Boot driver model 'phase
 tags'
Message-ID: <20221010165503.GN2020586@bill-the-cat>
References: <20221004232246.239237-1-sjg@chromium.org>
 <CAL_JsqLF4J1UeuYtE_SHUVsFTuwd-THK6KX=E1wU03hnZB7X9A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="wHh0aNzodMFDTGdO"
Content-Disposition: inline
In-Reply-To: <CAL_JsqLF4J1UeuYtE_SHUVsFTuwd-THK6KX=E1wU03hnZB7X9A@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--wHh0aNzodMFDTGdO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 10, 2022 at 11:34:00AM -0500, Rob Herring wrote:
> On Tue, Oct 4, 2022 at 6:22 PM Simon Glass <sjg@chromium.org> wrote:
> >
> > Until recently it has not been possible to add any U-Boot-specific
> > properties to the device tree schema. Now that it is somewhat separated
> > from Linux and people are feeling the enormous pain of the bifurcated
> > schema, it seems like a good time to add this and other U-Boot-specific
> > bindings.
>=20
> It's been possible provided there was agreement on the properties.
> There just wasn't in this case.

To jump on this part at least, I feel (but human memory is not the
most reliable) it being a bit more than that, but, that's history and
we're all moving forward now.  I think for v4 the commit message needs
to be edited to remove the historical sentiment and just state what
we're adding and why / who it's useful for.

--=20
Tom

--wHh0aNzodMFDTGdO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEEGjx/cOCPqxcHgJu/FHw5/5Y0tywFAmNETmMACgkQFHw5/5Y0
tyz+tAwAt3rJcQW9sjfW2wasIm6RubVvdmZt4JN5em6IPot0KZiFmClbmuHGLqgl
LK57jECHef3+7P2fJp5jrp8lDOuIe1quyBNPXpCmXtMMof/Cow1rDQX5gTIgH5zT
fxmyAwjDW9p8PuoiQPqGMEW7iqG58Z1PY0vf+qALifDGeuwVpCO94BzN+VvyO3o9
ha9KHP5kLdcwt9+KMT3LYjawG4bNXcQWA4jdIG6uSo75LAGy06aD9ZpUEm+4A4SN
7f1RMjoOaIk3R7FsIEbwFW/9LuVdG03kiF6UWLhmrPpthhtlL3C6LtUN9EfbVrm7
+fKp6SYaz4fdVukYeoQPA9/WHedgHUq2AWAidrV2GT4IHtL7uGLDkiBg8NSlu3+X
9eDSPq1XUXO1kxO4OgYfVajjmb0SmGOKweuD0iJfjE+4cXM8OguhbTvU5CA7enhv
+KDZsj5jLp6UNgZAN7jbP4azKuTkiqMx0kJb3fib+fBBGwXMm2rbyzE58pT/x1/D
+WvV4R/e
=Sa+9
-----END PGP SIGNATURE-----

--wHh0aNzodMFDTGdO--
