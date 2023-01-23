Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5D4E677876
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 11:06:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230074AbjAWKGm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 05:06:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231487AbjAWKGm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 05:06:42 -0500
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com [IPv6:2607:f8b0:4864:20::1133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F8545594
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 02:06:40 -0800 (PST)
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-4fd37a1551cso139783927b3.13
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 02:06:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VicuVzYu4s6fn4J013oQR8HfGltLPxIwfCDN/KofZV4=;
        b=Y6ClXDCRtaM0NFUm2exFLL9k/94ruQcZKAH6AGrXv44azxyMt5YFlavlrXbinR0jop
         DU1fhE18zgcsGj0kmkI7OSQG0EO9+VmIZkKZKxAS8wXy8sjQvRsgvTKwT7m3D2FCvglL
         /ecwm2GbkU4KzTay2o7Wd8BbgsXxXmBnjks0x1u0tI3kWXpz26bluupkbvQJ0jPZjHgW
         mLdP3xYta2Xv/cnV2L7H7nWAJCnqiXx7CxqSgj/LFGP6HO33lWP5jO1eS4ToRmEbZ9Ff
         XNcfYlfwf3Pt2yTdGcISpX9AQTPWMF9p+ZUTYaEdhthXOTtNnHcMJgzXA1vWJ92BdEvg
         qbtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VicuVzYu4s6fn4J013oQR8HfGltLPxIwfCDN/KofZV4=;
        b=IyP1FBTC0FqYCeWAEXJ0wuUgnwWFtTuArnTl0bSaBjO73lepQDDJdEL9/HerHuughJ
         1LHr0OOrAg5K48E8KnfDPHHGvQ9ks0S4621DhzC+x7EQhFnezrUoXGmnQnF581jth9nk
         4/fTQ+wxLGSTT/mWSVO1KLI+m3s2TUym84nopGnE4esZwCyY5dp/XL/HrTTnDRKuzh6P
         wesEG3BeLx+hHUqqyfhmpwTvZvBI31gkj3BNGerGvhoqw4j2SGQo1w28l3fZ7T7WXdGO
         /R1dOf8Ag7n+isj1zfNzMeO3se4xq3boVlDPZQeppBCSaG+eQh8r0uw4VgGDlTy1VF9R
         qBBA==
X-Gm-Message-State: AFqh2kp85Nn+73JamG4YNLm0SJ0bxiuTqj8TF8Yi2NofrPIuhBmrxSeY
        ydEkNnNWY7OmdKgzFpECF33O5BVZC6rYDagn3fDNNw==
X-Google-Smtp-Source: AMrXdXu00x2BMrHmuqKFdmwf8soxBKobdwtYbxJRewGUxxnrJfPYQTlkT0upDkADd3uCyDg9kDJIpyrZS/Q3hl4Q2C8=
X-Received: by 2002:a81:4006:0:b0:46b:c07c:c1d9 with SMTP id
 l6-20020a814006000000b0046bc07cc1d9mr827028ywn.56.1674468399283; Mon, 23 Jan
 2023 02:06:39 -0800 (PST)
MIME-Version: 1.0
References: <20230118-mt8365-spi-support-v1-0-842a21e50494@baylibre.com>
 <20230118-mt8365-spi-support-v1-2-842a21e50494@baylibre.com>
 <60766c7b-abb2-3afb-aa16-0e1385b88a73@linaro.org> <CAFGrd9rtO0B2XWEEU6gtv39PndjdjLL6tbRWimWT3RvLu1GFrQ@mail.gmail.com>
 <259d738b-5717-8fda-22f0-c61db4660e95@linaro.org>
In-Reply-To: <259d738b-5717-8fda-22f0-c61db4660e95@linaro.org>
From:   Alexandre Mergnat <amergnat@baylibre.com>
Date:   Mon, 23 Jan 2023 11:06:27 +0100
Message-ID: <CAFGrd9qENTZV2fs52HPv291=AJdcBHpd2L_uoc9PhbO1vcKw=w@mail.gmail.com>
Subject: Re: [PATCH 2/2] spi: spidev: add new mediatek support
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

 Because there are no logical order:
    { .compatible =3D "rohm,dh2228fv", .data =3D &spidev_of_check },
    { .compatible =3D "lineartechnology,ltc2488", .data =3D &spidev_of_chec=
k },
    { .compatible =3D "semtech,sx1301", .data =3D &spidev_of_check },
    { .compatible =3D "lwn,bk4", .data =3D &spidev_of_check },
    { .compatible =3D "dh,dhcom-board", .data =3D &spidev_of_check },
    { .compatible =3D "menlo,m53cpld", .data =3D &spidev_of_check },
    { .compatible =3D "cisco,spi-petra", .data =3D &spidev_of_check },
    { .compatible =3D "micron,spi-authenta", .data =3D &spidev_of_check },
    { .compatible =3D "mediatek,genio", .data =3D &spidev_of_check },

I can put it first then before "rohm", or before
"micron,spi-authenta" you prefer.

I can also introduce another patch in my serie to re-order everything.

Le ven. 20 janv. 2023 =C3=A0 08:47, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> a =C3=A9crit :
>
> On 19/01/2023 20:18, Alexandre Mergnat wrote:
> > Le jeu. 19 janv. 2023 =C3=A0 17:49, Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> a =C3=A9crit :
> >>
> >> On 19/01/2023 17:28, Alexandre Mergnat wrote:
> >>>       { .compatible =3D "micron,spi-authenta", .data =3D &spidev_of_c=
heck },
> >>> +     { .compatible =3D "mediatek,genio", .data =3D &spidev_of_check =
},
> >>
> >> Please run scripts/checkpatch.pl and fix reported warnings.
> >
> > Actually I did.
> > I saw: "WARNING: DT compatible string "mediatek,genio" appears
> > un-documented -- check ./Documentation/devicetree/bindings/"
> > But there are no bindings for spidev. I've made some grep on already
> > supported compatible devices like "micron,spi-authenta", but I didn't
> > find documentation to add "mediatek,genio".
>
> Another point - why is this after "micron"? Don't add entries to the end
> but in order.
>
> Best regards,
> Krzysztof
>
