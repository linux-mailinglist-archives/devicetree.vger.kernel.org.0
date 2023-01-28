Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D52AB67F60C
	for <lists+devicetree@lfdr.de>; Sat, 28 Jan 2023 09:18:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229619AbjA1ISD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Jan 2023 03:18:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233816AbjA1ISC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 28 Jan 2023 03:18:02 -0500
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B72A113D9
        for <devicetree@vger.kernel.org>; Sat, 28 Jan 2023 00:17:59 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id c3so7886189ljh.1
        for <devicetree@vger.kernel.org>; Sat, 28 Jan 2023 00:17:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shruggie-ro.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=53nqeNoFm5cGW/b7SjrZlk+jdyxOpAxbJL7zhFYFgng=;
        b=Bqj2Jiku5i7gmtnF+rBxhhCNZ6hSlVXKz9RuTUEcPFB2SRyR7BZ4x40U1e1kAPAb0U
         A+pcQ/aU8Ebp53WyC2MWkz9gp+n7sEl+razU425ITcXy0/XnaRPuhCxzFtri38pKhcKI
         eYVoPEsTVWMuo65xRS+4mZn5PYB1QYSW8E3kvXiUZA50dfW+xwo78EM9PPraM3aZvRgG
         cX5kWbQCbfAS+IBIOXgYX6cET2FdojgS/DSXMp1XCENnVvAhPLZQ9n1CMv1eILFie3+V
         2fa1oVZaNSz4JTPdCdyoZZvI4zV83IdLaDrO00zadmttEZqkCyzFoRqP/AS9CxYsOJKC
         3oNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=53nqeNoFm5cGW/b7SjrZlk+jdyxOpAxbJL7zhFYFgng=;
        b=c8sWTPauQc09yTZ67teYk4ttoihTj6ttcJi3vDXffFnTbJXd2WaePvRJjgCfh4jt+1
         b9BI/NOdRdZrnU29bJiZV9WYiq08ydbVFtlFrZ5p2f+Ux75vvhn5IsJL5iXBEJGwCHXx
         YlMFCeHWETWt5oDU2+tEfn3IxkBmOW0yjbWuq3fgZbuslJ5VdxLYuGm33nrFh+KcMemy
         304xw57tFovmz9RljfANfQmXd3Osi1EiaNd/41qYc0Wnw9zlh+Wg6S8NV2lxNxbmlb4G
         wQJML0+kjDHwHTAUw7t5dNUQKWWtcYmmOGXAZZHi75YWbxAQoXQNdZhOcHXO1yynfQTU
         ap5A==
X-Gm-Message-State: AFqh2koNsOvKF4ywSmApcOgvt0wFnxLJigWelVyj7FEZTqJu0fmSvhKa
        dTZGJvJqLWFGTZ00WQYGMu/sOIuEJWUOD04alPvMmg==
X-Google-Smtp-Source: AMrXdXssLxSDXeddk6+bRROQjB6xuqS120gYZH0VMMqt1w7Ces3q+6jLsUbYVjU8C8WHNC7OZWrGFoTW8NUayh85rP4=
X-Received: by 2002:a2e:8e84:0:b0:289:ae03:644b with SMTP id
 z4-20020a2e8e84000000b00289ae03644bmr2867874ljk.66.1674893877620; Sat, 28 Jan
 2023 00:17:57 -0800 (PST)
MIME-Version: 1.0
References: <20230115193347.24190-1-alex@shruggie.ro> <20230115193347.24190-2-alex@shruggie.ro>
 <Y9E7a/erXV/xd3lz@sirena.org.uk>
In-Reply-To: <Y9E7a/erXV/xd3lz@sirena.org.uk>
From:   Alexandru Ardelean <alex@shruggie.ro>
Date:   Sat, 28 Jan 2023 10:17:46 +0200
Message-ID: <CAH3L5QrvuRuSi_5dOHSrhe6mK0ZTM3e7BzCUfR_Dx8uxkBKdhQ@mail.gmail.com>
Subject: Re: [PATCH 2/4] ASoC: codecs: tas5720: add support for TAS5720A-Q1
 (automotive) variant
To:     Mark Brown <broonie@kernel.org>
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        lgirdwood@gmail.com, krzysztof.kozlowski+dt@linaro.org,
        perex@perex.cz, tiwai@suse.com, steffen.aschbacher@stihl.de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 25, 2023 at 4:23 PM Mark Brown <broonie@kernel.org> wrote:
>
> On Sun, Jan 15, 2023 at 09:33:45PM +0200, Alexandru Ardelean wrote:
>
> >  static int tas5720_mute_soc_component(struct snd_soc_component *compon=
ent, int mute)
> >  {
> > +     unsigned int reg, mask, val;
> >       int ret;
> >
> > -     ret =3D snd_soc_component_update_bits(component, TAS5720_DIGITAL_=
CTRL2_REG,
> > -                               TAS5720_MUTE, mute ? TAS5720_MUTE : 0);
> > +     switch (tas5720->devtype) {
> > +     case TAS5720A_Q1:
>
> This doesn't build:

My bad.
Will fix

>
> /build/stage/linux/sound/soc/codecs/tas5720.c:217:17: error: =E2=80=98tas=
5720=E2=80=99 undeclare
> d (first use in this function); did you mean =E2=80=98TAS5720=E2=80=99?
>   217 |         switch (tas5720->devtype) {
>       |                 ^~~~~~~
>       |                 TAS5720
> /build/stage/linux/sound/soc/codecs/tas5720.c:217:17: note: each undeclar=
ed iden
> tifier is reported only once for each function it appears in
> /build/stage/linux/sound/soc/codecs/tas5720.c:214:33: error: unused varia=
ble =E2=80=98va
> l=E2=80=99 [-Werror=3Dunused-variable]
>   214 |         unsigned int reg, mask, val;
>       |                                 ^~~
> cc1: all warnings being treated as errors
