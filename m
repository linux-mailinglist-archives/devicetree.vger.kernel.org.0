Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC1E25FA283
	for <lists+devicetree@lfdr.de>; Mon, 10 Oct 2022 19:14:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229502AbiJJROC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Oct 2022 13:14:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229541AbiJJROA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Oct 2022 13:14:00 -0400
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com [IPv6:2607:f8b0:4864:20::72f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F51C6B8E9
        for <devicetree@vger.kernel.org>; Mon, 10 Oct 2022 10:13:59 -0700 (PDT)
Received: by mail-qk1-x72f.google.com with SMTP id o22so6639444qkl.8
        for <devicetree@vger.kernel.org>; Mon, 10 Oct 2022 10:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Elz3iaXNXUp5dHO3MWMk44DJpNa69CI6RqpXARj/0os=;
        b=ALGTGcnWcjwRlURyZv0bvtiN1LyWAyHV4mGXxM4mbbe3Hmc36HEDVkgerYD11Ml4oI
         hHznnn7yCmprS3PRB22xnGdKtLf8FbEYxN70StNBREE3OK2/zMIal7l97I11opSer5lU
         5SSyhGbTH0Za59GNijFQQR9vJJgYaLpt8ID1g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Elz3iaXNXUp5dHO3MWMk44DJpNa69CI6RqpXARj/0os=;
        b=Qie/ZbG9tOgrRjK1jLsDxY5LXlkpgGw8Pxd9LSI5hRyEPg6hrAOXxjI+cvnW9hYkez
         gxPfYekG44jEGDH1+xKiqxmpDtO5niM3UnpIIL9coywLb92EfBMCU5GjC88GkuXggd7B
         i8HMAhnM2kDMFCIFOaDNLi7kpymYUzgzruhXxbx45T5i9bFK5sjINtYstB+VopxHfKZ3
         BHprz3N/hbrTeX7/FJkxGzlUyM18SyW1jn/rB8GnbHDy5onth6d9XSTfByCe7aTaqAli
         eACXmDEL0pFCBLpc4z4d4bIZZ7hIc5SWRbeo6iVphT06WKv538jCyH/frOYnn4xk5Kzh
         qIdA==
X-Gm-Message-State: ACrzQf2cAMJNHMpM5WlYujso+vRTNL9fEvKqGfaOfSAt/ky815mrcdtC
        nkkfM0Z4p8Y8fQzgrcvSZkU23zjOB2Bn+w==
X-Google-Smtp-Source: AMsMyM5q3ebL+1oQqao8Gp0O6U2cFtrimVGLJOBTm3zx3JUX8afU9qEB78wYZsSLGqnxMn0h4fEARg==
X-Received: by 2002:a05:620a:2591:b0:6c9:cc85:87e3 with SMTP id x17-20020a05620a259100b006c9cc8587e3mr13796427qko.577.1665422038264;
        Mon, 10 Oct 2022 10:13:58 -0700 (PDT)
Received: from bill-the-cat (2603-6081-7b00-6400-9534-07b5-32fb-791d.res6.spectrum.com. [2603:6081:7b00:6400:9534:7b5:32fb:791d])
        by smtp.gmail.com with ESMTPSA id m19-20020a05620a24d300b006cbb8ca04f8sm11228364qkn.40.2022.10.10.10.13.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Oct 2022 10:13:57 -0700 (PDT)
Date:   Mon, 10 Oct 2022 13:13:55 -0400
From:   Tom Rini <trini@konsulko.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Simon Glass <sjg@chromium.org>, devicetree@vger.kernel.org,
        U-Boot Mailing List <u-boot@lists.denx.de>,
        David Gibson <david@gibson.dropbear.id.au>
Subject: Re: [PATCH v3] schemas: Add schema for U-Boot driver model 'phase
 tags'
Message-ID: <20221010171355.GO2020586@bill-the-cat>
References: <20221004232246.239237-1-sjg@chromium.org>
 <CAL_JsqLF4J1UeuYtE_SHUVsFTuwd-THK6KX=E1wU03hnZB7X9A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="gBYU9MM4gf8jKg2V"
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


--gBYU9MM4gf8jKg2V
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
>=20
> What's the pain point precisely? I can think of several. Syncing dts
> files from Linux tree, running schema validation on a dtb from u-boot,
> or ...?

So, we have a few related pain points. As background, one thing we do
today is have a "-u-boot.dtsi" file and then cmd_dtc in
scripts/Makefile.lib (which is +- the same as Linux) has logic to find
and -include it. This file is supposed to include all of the properties
that U-Boot needs added (and this patch schema is intended to start
addressing) to produce the dtb we need. This information can't be
accepted in the upstream dts files as there's no binding schema
associated with it. It's only a pain point during re-sync when trees
have been fixed upstream and now node names change and so forth. But it
does mean that we can't just drop in new dts files. We aren't attempting
to run validation ourselves right now, but getting something like this
merged means we can change our new dts requirement from "must be in
Linus' tree or at least linux-next" to "must be in Linus' tree or at
least linux-next and passing the dtschema check".

[snip]
> > - Some U-Boot phases needs to run before the clocks are properly set up,
> >   where the CPU may be running very slowly. Therefore it is important to
> >   bind only those devices which are actually needed in that phase
> > - Unlike Linux or UEFI, U-Boot uses lazy initialisation for its devices,
> >   with 'bind' and 'probe' being separate steps. Even if a device is bou=
nd,
> >   it is not actually probed until it is used. This is necessary to keep
> >   the boot time reasonable, e.g. to under a second
>=20
> Linux could do this now if we wanted. There's a full dependency graph.
> Once you have that, it's just an implementation decision whether you
> probe top down or bottom up. We have this graph because Linux specific
> probing hint properties in DT was rejected. (Not saying u-boot needs
> to go implement a dependency graph, but rather u-boot is not unique
> here and there's more than one way to solve it.)

Further points in the commit message that need to be reworded as what
U-Boot does and not what other projects might not be doing.

--=20
Tom

--gBYU9MM4gf8jKg2V
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEEGjx/cOCPqxcHgJu/FHw5/5Y0tywFAmNEUswACgkQFHw5/5Y0
tyyG5Av+KJ8skOYAYcIYZgziJUyXDwBxwWCNL6CJkUZ8n2R8CsvhE1h9w9F9CL3E
4FzWn+hHkj/z7yscJ+gU9sqFKF+5kDam6rgbLsha+OEH4kP8gqx+0K6+w2DAcDNr
vf7UqK6tO0f+7eAz+AsCqLsw7yEOxFnXUnws+9yITeLiqnYQdbzzqBofBav3O1oN
3jTtijvTUo7K08AjVCu+bht5Oqd0QExqs858YlDzGCwkTAzKaYehYt9HzhAkwgHp
UIiAV6UifR94CDirKwVuEuXn4nOLxJf4yi1Gj6KMacKgmAzUDFeiimYb4K2mnD0a
oWbuxgqDgin6Z9JtxnPrBBcbus8oiDBapkCuaWcaV+rnfRfmx+au6QLTr34XrfFX
+q1ZvWJL4KWQ+2J72FGSBscoy1MFfac/l5MxzMJrnLX2OmoMPROUKLemT/2/b57B
waBdb5MdLCebLqRH1PdovWYVicKFB9fEaOxipaqMu0MwRqAe3hEvCf3k12nldtZk
XJz63wsY
=Oavt
-----END PGP SIGNATURE-----

--gBYU9MM4gf8jKg2V--
