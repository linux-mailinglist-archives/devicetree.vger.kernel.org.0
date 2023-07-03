Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 43719745B70
	for <lists+devicetree@lfdr.de>; Mon,  3 Jul 2023 13:44:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231292AbjGCLos (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jul 2023 07:44:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231215AbjGCLoq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jul 2023 07:44:46 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B90F3115
        for <devicetree@vger.kernel.org>; Mon,  3 Jul 2023 04:44:44 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2b6985de215so69152701fa.2
        for <devicetree@vger.kernel.org>; Mon, 03 Jul 2023 04:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf.com; s=google; t=1688384683; x=1690976683;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yaNHFGtqidFFoc879AcjoyLmp2ttt/EsaJvpqNaeTBg=;
        b=tG+WDuV6RlFBC96XU0zrBQAAznnNTMP26skrKr0lEq/LIRouxE23HHH8iDMF4HOaXP
         hv3CqtSeblorPsoUJGIMgX7Oir0zrOLXdgvaNSB+w0Wqw3SZxROIFKgYSZHaqRbrVAaQ
         TcSpQp9U0PtgaAXgUwZqPFJsb9TwF4HGqi45jUzgW5lBGeXnMOUQySyltDC9Waalxbcg
         4tMW/i5QTGtZFcFEysu+wWvFktGkmSr8vucZV3vdv2dLXXoA4mqPGcU2vi5vr2wFwaq2
         q6ep/ns6phzhjdHnjjs0PC1VfilxQ3rwxQOgQfzMi2Rt/kkjFMzyN4dBi/Kh6v+SZZsE
         lIdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688384683; x=1690976683;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yaNHFGtqidFFoc879AcjoyLmp2ttt/EsaJvpqNaeTBg=;
        b=aHal2+D04ZqP2dhIUQSyjWGiuN2/9lHL19CVXwsEdrzMoz04FBdHjA+Ga9TQlrgBlf
         KEeUMiYiuqfZaPFznfcwXiW9WTkvLw0QpC8MHtMrdMOKgl5M0hUDKL8qwSuWfTgC8pZZ
         m6rAfhg4RkeXW/nhl952f8Eotdhpb0/LL5Vg2+zBJJtdKsfX5Dkf5+jWfXpJFCn+ddMd
         8TqqlTiapE7uCgk6TKXd3n7ROGIion1tuuVDkhEq/oI7KflACaEyc0OZWnWOtO2145wD
         aUSGxi78C6hsSnSEuCgS94bUCGr8Zac6WS1Kon+AONX5eGv1r2W4gC3Ye6vLhA4L0FPe
         x7UA==
X-Gm-Message-State: ABy/qLb11H+UkSC9fqXbuPVSSv9wio0YYXtTePlAifqnL9p5al9ARruD
        2DdVVSwNBBdpUMNeBQLhIMx2YTkUM/wl2I8L9m60wg==
X-Google-Smtp-Source: APBJJlGbheteHmbNZEDEkZHAuIEEMQkHMHMiMY31fEaVpgo1N30lf/fgRzYRxG7UFIccv4g/oQFL+6AtzrHyfgR4dtI=
X-Received: by 2002:a2e:98d6:0:b0:2b6:9930:871 with SMTP id
 s22-20020a2e98d6000000b002b699300871mr6735718ljj.13.1688384682883; Mon, 03
 Jul 2023 04:44:42 -0700 (PDT)
MIME-Version: 1.0
References: <20230630144006.1513270-1-pan@semihalf.com> <20230630144006.1513270-4-pan@semihalf.com>
 <20230630-scrimmage-antelope-7d1f82d491fc@spud>
In-Reply-To: <20230630-scrimmage-antelope-7d1f82d491fc@spud>
From:   =?UTF-8?Q?Pawe=C5=82_Anikiel?= <pan@semihalf.com>
Date:   Mon, 3 Jul 2023 13:44:31 +0200
Message-ID: <CAF9_jYT1Fz4hBQrNtgkM6mU-JVH=ZxsJnkaLDsa5uoEV_hTLVA@mail.gmail.com>
Subject: Re: [RFC PATCH 3/3] ARM: dts: Add Chameleon v3 video node
To:     Conor Dooley <conor@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, dinguyen@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, mchehab@kernel.org, upstream@semihalf.com,
        amstan@chromium.org, ribalda@chromium.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 30, 2023 at 8:26=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Fri, Jun 30, 2023 at 04:40:06PM +0200, Pawe=C5=82 Anikiel wrote:
> > Add node for the video system device.
> >
> > Signed-off-by: Pawe=C5=82 Anikiel <pan@semihalf.com>
> > ---
> >  .../socfpga/socfpga_arria10_chameleonv3.dts   | 54 +++++++++++++++++++
> >  1 file changed, 54 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_chameleonv=
3.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_chameleonv3.dts
> > index 422d00cd4c74..5e66363d4ab5 100644
> > --- a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_chameleonv3.dts
> > +++ b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_chameleonv3.dts
> > @@ -10,6 +10,60 @@ / {
> >       compatible =3D "google,chameleon-v3", "enclustra,mercury-aa1",
> >                    "altr,socfpga-arria10", "altr,socfpga";
> >
> > +     soc {
> > +             video@c0060500 {
> > +                     compatible =3D "google,chv3-video";
>
> This compatible does not seem to be documented & I did not see a comment
> about the lack of a binding in the cover letter. What am I missing?

Yes, the compatible is not documented for now (I'll do that in a later
patchset), sorry for not mentioning that in the cover letter.
