Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8DA4D5F7378
	for <lists+devicetree@lfdr.de>; Fri,  7 Oct 2022 06:02:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229541AbiJGECT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Oct 2022 00:02:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229579AbiJGECR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Oct 2022 00:02:17 -0400
Received: from mail-ua1-x92a.google.com (mail-ua1-x92a.google.com [IPv6:2607:f8b0:4864:20::92a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2D76C45A3
        for <devicetree@vger.kernel.org>; Thu,  6 Oct 2022 21:02:15 -0700 (PDT)
Received: by mail-ua1-x92a.google.com with SMTP id h25so1296297uao.13
        for <devicetree@vger.kernel.org>; Thu, 06 Oct 2022 21:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ONW7pwCwlyGXd37ijro89iqfnw+jYXGvO6QktN1KnzE=;
        b=R0eQUb2ifkNhm9A7a9ekJr6xeRJsCe9k4FPFdSRJvuvSCC3kvYNPM0A7FvfZd+1jkT
         /K9TmzB2R0/GUXenPY0dId6zMfRXw884b3zoxVzFQXvNdYTo8U0nVaji2AJGmRBJ2/2n
         vJDnRKk4bBtC0iMqBcSUiHdD92g7OYBuXu5R8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ONW7pwCwlyGXd37ijro89iqfnw+jYXGvO6QktN1KnzE=;
        b=23AQHQQQDBWGyJC8hfJz1VFis3g4W6ZQKCZk9Dfwl9Kxu+cso0tdQw89bfhL/7uKHl
         fMwsGu0S1snM7b1rlDYn3pLd/jA409+uTC4ZzuM+bs8nRzDtuADV6Jlgn5tpT5DiL2t6
         FvuMSW0AhhqPrv5mcf1T7Y88r2XchphvSd55X/Bt5paOJA6aqJc1cIKJ2+vEaFylqB1z
         YliT1YCyySpQqOCzuqjXn7s8I0+6EfzIKNO8yFTvqzvxIuWE07hor3hOQYRKFwr0gXsd
         uROW7XSKldHnS9qI83DVtXbJl7dwCzsYPdkJrOpQv/Yk2RzLoiSMXSxTjrU1TD5lY7kM
         m54Q==
X-Gm-Message-State: ACrzQf0Nbhi8dr4T+MHJDxXqWwAwAhjJnhg7OE8S+qcFlIhLp3VSprlR
        Hf4iQwytM4HvZXdCGx4njH8lmFftqtiJKTSGMgU8qw==
X-Google-Smtp-Source: AMsMyM4l1ulp/7lmSsZbh8zin/EMci1G3NMqRlBHpokLnB623aj1PQZYjLxHUSfOPtH8F6WLdv5y+ZxfqbbrdM67/lA=
X-Received: by 2002:ab0:38c5:0:b0:383:eed8:dd45 with SMTP id
 l5-20020ab038c5000000b00383eed8dd45mr2157129uaw.11.1665115334922; Thu, 06 Oct
 2022 21:02:14 -0700 (PDT)
MIME-Version: 1.0
References: <20221006212528.103790-1-nfraprado@collabora.com>
 <20221006212528.103790-6-nfraprado@collabora.com> <CAGXv+5GmJOYnfLsovO_+piuJ1ry1R0ZQqALRGK3MNp=nUO-TNw@mail.gmail.com>
In-Reply-To: <CAGXv+5GmJOYnfLsovO_+piuJ1ry1R0ZQqALRGK3MNp=nUO-TNw@mail.gmail.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 7 Oct 2022 12:02:03 +0800
Message-ID: <CAGXv+5HGodRWbawEpDppZWM_EiuzdvZC9h4XBoAPo=FQ7yNotA@mail.gmail.com>
Subject: Re: [PATCH v2 5/5] arm64: dts: mediatek: asurada: Add aliases for i2c
 and mmc
To:     =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>, kernel@collabora.com,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 7, 2022 at 11:51 AM Chen-Yu Tsai <wenst@chromium.org> wrote:
>
> On Fri, Oct 7, 2022 at 5:25 AM N=C3=ADcolas F. R. A. Prado
> <nfraprado@collabora.com> wrote:
> >
> > Add aliases for the i2c and mmc nodes on the Asurada platform DT to
> > ensure that we get stable ids for those devices on userspace.
> >
> > Signed-off-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
> >
> > ---
> >
> > Changes in v2:
> > - Added this commit
> >
> >  arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi b/arch/ar=
m64/boot/dts/mediatek/mt8192-asurada.dtsi
> > index dac2d4f5e670..758ca42a6156 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
> > @@ -11,6 +11,18 @@
> >
> >  / {
> >         aliases {
> > +               i2c0 =3D &i2c0;
> > +               i2c1 =3D &i2c1;
> > +               i2c2 =3D &i2c2;
> > +               i2c3 =3D &i2c3;
> > +               i2c4 =3D &i2c4;
> > +               i2c5 =3D &i2c5;
> > +               i2c6 =3D &i2c6;
> > +               i2c7 =3D &i2c7;
> > +               i2c8 =3D &i2c8;
> > +               i2c9 =3D &i2c9;
>
> You should only add aliases for interfaces that are actually enabled.
>
> Also, I think we can disable i2c6. None of the current products use it.
>
> ChenYu
>
> > +               mmc0 =3D &mmc0;
> > +               mmc1 =3D &mmc1;

Also, Spherion does not have an SD card slot. It might be better to move
the mmc aliases to the end .dts files.

ChenYu
