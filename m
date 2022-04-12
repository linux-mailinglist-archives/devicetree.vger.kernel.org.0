Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 006014FDE5B
	for <lists+devicetree@lfdr.de>; Tue, 12 Apr 2022 13:45:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242537AbiDLLga (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Apr 2022 07:36:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352251AbiDLLff (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Apr 2022 07:35:35 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F73A3A5C5
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 03:14:45 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id b21so31342471lfb.5
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 03:14:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=0Umzz/3orNHQpIevU9VMNB3lNCISCl1rxzO7PoUg9Jg=;
        b=frXOkEGTVdQfOBPfLo6/U0msIHVopok9BHPAtF9BQG1TpY/8Z9un/BUw3V1HIweJtQ
         W6cwDOA4s0H5XvVvDw9BGqxg4jzaE0YSB3GzP/jCtgDxNAOxuTmfnQJDVmGGozoPHeMP
         kaz0p8cgw2KUhZ5WDmsEE8oO62rgooT0CNAVJBL7X9KzGr4HNRwzn/PawukIcVGVgs/l
         SwykZ/+EX7cx0wWI38cyz1IYSSL80HQmf7P6nI9LxqevAeYqMfolVrMhsSHPJpJj9liT
         IcLv92fLQTmCKZzXOVSn4xnDP9gfrRMONo4NXJ0d2NgTAXFo1cVpizBH3I56rwNZZsU1
         aOGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=0Umzz/3orNHQpIevU9VMNB3lNCISCl1rxzO7PoUg9Jg=;
        b=HF66Q41OtX6dkabMTXS5uT70IhDB5lK+C+MhjS474hA7thiIn3rybH7UIiyN8fV287
         TuYfRJlspjVdG+ZWHFnXTIpFRQ7vZzZ5Yxol7Fim0QS3JJlxZfkXPxEG+IwozsU8VW+j
         Bc9otbihqY4K65SRd7l/MSGP59q9Dj3yTQsI3OHDLVCSd0gW7tZdtUYgJZq0vtImaMHp
         FGsZPgcp+7k6iL+h1otRLXsjEDCVsBfY8P9oTO9WaT+kkXaBSx4P4QfxPdVQSIjs9JLK
         18ysKKcUQvj1FBZXJJU3t+KczJjizYWZivtPafrqxHrXZQIo67UgbGigUH6HVfQbkhaf
         jLxw==
X-Gm-Message-State: AOAM533pJ+vD2JiYnGdfAlQbVBAJoeKlBg9/gqJJCF71hKtLu6nG72tP
        4LtmG4DfZOyLR+TNaMmsoew=
X-Google-Smtp-Source: ABdhPJyjygbNhDD5y/Nf2J02dsGMY17yvI0Q9aBaT9AoENk7aTCfqMn5oHs0B7C5tuon17rQnB7g3Q==
X-Received: by 2002:a05:6512:3403:b0:448:5f92:7b0c with SMTP id i3-20020a056512340300b004485f927b0cmr23864868lfr.237.1649758483494;
        Tue, 12 Apr 2022 03:14:43 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl. [31.178.191.245])
        by smtp.gmail.com with ESMTPSA id y14-20020a2eb00e000000b0024b55cda2eesm1119589ljk.30.2022.04.12.03.14.41
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Apr 2022 03:14:42 -0700 (PDT)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
From:   Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <e2ef484b60fe9c5fc077240a26bd18275974dc4a.camel@pengutronix.de>
Date:   Tue, 12 Apr 2022 12:14:41 +0200
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Lucas Stach <lst@pengutronix.de>
Content-Transfer-Encoding: quoted-printable
Message-Id: <EF0F8E87-2618-4E5E-807D-259FEEC0FB24@gmail.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220401125205.GL4012@pengutronix.de>
 <5420D26D-34FD-4637-B602-F6271E38BB8D@gmail.com>
 <BA4C591F-D115-43D2-BF59-A75B29889E50@gmail.com>
 <20220408080748.GA2387@pengutronix.de> <20220408120021.GO4012@pengutronix.de>
 <B3E76A7A-9B62-4E6F-9472-00B6298689C5@gmail.com>
 <20220411090800.GR4012@pengutronix.de>
 <5929E7A7-776E-4BCB-92C8-A1CE05774FE3@gmail.com>
 <20220412075034.GS4012@pengutronix.de>
 <e2ef484b60fe9c5fc077240a26bd18275974dc4a.camel@pengutronix.de>
To:     Lucas Stach <l.stach@pengutronix.de>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



> Wiadomo=C5=9B=C4=87 napisana przez Lucas Stach =
<l.stach@pengutronix.de> w dniu 12.04.2022, o godz. 10:10:
>=20
> This could be both a Mesa/Panfrost or application issue. The
> application is supposed to try to allocate with a arbitrary chosen
> format and the valid modifiers queried from the plane it wants to put
> the surface on. However I'm not sure if all applications have a
> fallback path in place to try another format swizzling if the surface
> allocation fails.

This is good remark imho.
I think we have this fallback.
I'll try verify this.

Generalising a bit - I think we my consider following cases:

a\ format is correctly negotiated and signalled to consumer/provider but =
we don't see expected results (=3Dcorrect screen seen by user)
b\ format was correctly negotiated but consumer/provider failed using =
signalled format (i.e. due bug in implementation)
c\ consumer or provider advertising - in reality unsupported format =
(false positive) - so negotiation resulting with signalling efficiently =
non-working format
 =20
Sascha says (in today's email):

"Here is your problem. The cluster windows only allow AFBC compressed
formats. AR24 is supported by the cluster windows, but not by the GPU,
see panfrost_afbc_format() in Mesa:"

I'm reading this as case c\ as Sascha said "negotiated format is not =
supported by GPU" ....but this format was negotiated.

......but for sure Sascha is much better than me here in subject - so =
i'm might be wrong here
   =20

> Now there are two possible failures here:
>=20
> 1. The application feeds a wrong modifier list to the GBM
> implementation, as it may have queried another plane in the assumption
> that supported modifiers are uniform across all planes.
>=20

This will be cardinal design error.
(keeping in mind we have multiple producers (GPU/video decoder) and =
multiple consumers (base & overlay DRM planes)
 =20

> 2. The GBM implementation (Panfrost) actually allocates a surface
> instead of failing the allocation, even if it does not support any
> combination of the provided format and modifier list.
>=20

Testing Sacha patch (see today's email from Sascha) i'm getting

Qt: EGL Error : Could not create the egl surface: error =3D 0x3009

i'm reading this as: Qt tries allocate EGL surface and EGL returns =
error.

or i'm wrong?

