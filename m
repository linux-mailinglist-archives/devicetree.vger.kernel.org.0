Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF4AB72600C
	for <lists+devicetree@lfdr.de>; Wed,  7 Jun 2023 14:50:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239550AbjFGMuy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jun 2023 08:50:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239106AbjFGMur (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jun 2023 08:50:47 -0400
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com [IPv6:2607:f8b0:4864:20::112b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5D0E1FF3
        for <devicetree@vger.kernel.org>; Wed,  7 Jun 2023 05:50:21 -0700 (PDT)
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-565cfe4ece7so82013467b3.2
        for <devicetree@vger.kernel.org>; Wed, 07 Jun 2023 05:50:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1686142188; x=1688734188;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8AxgroMuIH5NoBbtLc+ad3Qph59KMeN5Cm1Y0j7Ly7E=;
        b=ZbKfKcjvgFXKqwj0h5Tewi1lK9Xd76DukZKwpNIXejMBEEIVgX1ml9V5uECiRVpV9C
         qpIGXKmcNrTBr1q1m39Ibv5tpSIkf8YqnsD3sVX2jKG2S8whdARNgj06BRqknITaqsfU
         xRKVeXzvJSMs4tI9tPs9ap5Lf66e2PkfUr6L8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686142188; x=1688734188;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8AxgroMuIH5NoBbtLc+ad3Qph59KMeN5Cm1Y0j7Ly7E=;
        b=cxDJ4ym2ugP2vFeFZkJyaLnYg25wbhZzx7h96KMG+TcydxRFOsawluyjCp8UxbgjC2
         +cEsMTclMPWIdKTUcDt5Yi65IYk+wU1JnFA6+XVLQ/M30KItMo1l4j6JA6a3jghdCp4L
         YcwpviYJHXEn7pROLLJ6keul1ZcjKw8lcmJSjuOkqw6gR+iPerSvzMC11lSbMMoDqcUW
         M4WtRMW7Rx8WttOlBVbvPxXGWtSvnpOIO9/7yRc54fIsnHtkQu9dEkHe/cHyuXro2/7o
         As0vCyptH9/KmY5wEtHK7sVM6YGKCnfom+jWKethLZCUHyZSjI7k7ENTYdeB50tiYGZw
         U1+Q==
X-Gm-Message-State: AC+VfDyMkjSrB7xnH06B6yTwZbKzY1D+rhg3kJLFXIkfvhjIy1QwJa0b
        xV6QC4AQp+Fi0m74uGwHHl8MvEF3BSzP+wI1tdXr6LJCLIpQo2ITOz2L5A==
X-Google-Smtp-Source: ACHHUZ7hBI1yQy3hOqMs3IywMmiWVgkBaT4CmmHgTUdbu1gUndSUOaqBclPy1zulKt9pLMxC7qjpriQ1ztOABz2tp58=
X-Received: by 2002:a81:834b:0:b0:568:b6a5:9100 with SMTP id
 t72-20020a81834b000000b00568b6a59100mr6838026ywf.42.1686142188079; Wed, 07
 Jun 2023 05:49:48 -0700 (PDT)
MIME-Version: 1.0
References: <20230607063139.621351-1-dario.binacchi@amarulasolutions.com>
 <20230607063139.621351-4-dario.binacchi@amarulasolutions.com> <CAMty3ZDCkQ_T+j96iXtMAhkOLFBm=hZHk=sZzSGA=MOQQUOv7g@mail.gmail.com>
In-Reply-To: <CAMty3ZDCkQ_T+j96iXtMAhkOLFBm=hZHk=sZzSGA=MOQQUOv7g@mail.gmail.com>
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
Date:   Wed, 7 Jun 2023 14:49:36 +0200
Message-ID: <CABGWkvq_DevgJeR+KfBy-4ME+u-iORW93BAT4FTMVRuG0KU1Zg@mail.gmail.com>
Subject: Re: [RESEND PATCH v2 3/6] ARM: dts: stm32: support display on
 stm32f746-disco board
To:     Jagan Teki <jagan@amarulasolutions.com>
Cc:     linux-kernel@vger.kernel.org,
        Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>,
        linux-arm-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org,
        Philippe Cornu <philippe.cornu@foss.st.com>,
        Amarula patchwork <linux-amarula@amarulasolutions.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        michael@amarulasolutions.com,
        linux-stm32@st-md-mailman.stormreply.com,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jagan,

On Wed, Jun 7, 2023 at 8:43=E2=80=AFAM Jagan Teki <jagan@amarulasolutions.c=
om> wrote:
>
> On Wed, Jun 7, 2023 at 12:01=E2=80=AFPM Dario Binacchi
> <dario.binacchi@amarulasolutions.com> wrote:
> >
> > Add support to Rocktech RK043FN48H display on stm32f746-disco board.
> >
> > Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> > ---
> >
> > (no changes since v1)
> >
> >  arch/arm/boot/dts/stm32f746-disco.dts | 51 +++++++++++++++++++++++++++
> >  1 file changed, 51 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/stm32f746-disco.dts b/arch/arm/boot/dts/=
stm32f746-disco.dts
> > index c11616ed5fc6..cda423b6a874 100644
> > --- a/arch/arm/boot/dts/stm32f746-disco.dts
> > +++ b/arch/arm/boot/dts/stm32f746-disco.dts
> > @@ -60,10 +60,41 @@ memory@c0000000 {
> >                 reg =3D <0xC0000000 0x800000>;
> >         };
> >
> > +       reserved-memory {
> > +               #address-cells =3D <1>;
> > +               #size-cells =3D <1>;
> > +               ranges;
> > +
> > +               linux,cma {
> > +                       compatible =3D "shared-dma-pool";
> > +                       no-map;
> > +                       size =3D <0x80000>;
> > +                       linux,dma-default;
> > +               };
> > +       };
>
> This looks unrelated to display enablement, isn't it?

Without the "reserved-memory" node, it is not possible to allocate
memory for the framebuffer.
I got this error:
stm32-display 40016800.display-controller: [drm] *ERROR* failed to
allocate buffer with size 139264

Thanks and regards,
Dario

>
> Jagan.



--

Dario Binacchi

Senior Embedded Linux Developer

dario.binacchi@amarulasolutions.com

__________________________________


Amarula Solutions SRL

Via Le Canevare 30, 31100 Treviso, Veneto, IT

T. +39 042 243 5310
info@amarulasolutions.com

www.amarulasolutions.com
