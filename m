Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1732F6CFD79
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 09:55:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229945AbjC3Hzt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 03:55:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229883AbjC3Hzk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 03:55:40 -0400
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com [IPv6:2607:f8b0:4864:20::b34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 435B559FA
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 00:55:38 -0700 (PDT)
Received: by mail-yb1-xb34.google.com with SMTP id f188so3979145ybb.3
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 00:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1680162937;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8TRAXBRH6vuNDmz4+Ct5vgKbo/mRjVW2gW1RnB3gDdg=;
        b=TYnTo8X28PQN/bpZVTbpJIirV8lHodZlY8A0dbT1xp3tSgoMVv6qmx7oSoQnauJ4Px
         2BEx1WulTod+AN0I4AlznepNZBjtBfgGzxaajHZ2uShUx1sirLZ5IjrYm2yUXHLoYkNi
         OCVvhvgFNWXn2SgSUxT9FoSDH2uLn1GPSFrio=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680162937;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8TRAXBRH6vuNDmz4+Ct5vgKbo/mRjVW2gW1RnB3gDdg=;
        b=OSoXxkZdN+uzQQNdW6xEn+qC7Vd2m0liSDOb324lCne4yrSjScAZCyv3eJuEHIUepV
         xnN9ZTTxscjmmtP7IXyxbOW7dG9DFHA+AvZpASpWBvNyuoqttSWv09Vv4XiZXFqDJP6W
         mwVr594UCSsgpOJdxqeQCNwsVGIewj+JL133KjZb1B1hAI2BZPj93y5TOwLUK5yZOdOE
         OROV/mhqCTzETGojbQz8nfVQwre5KAeUsFKvXeZ6xV4CY+ayQBeZemBQC2BT/Hfn7h71
         sewdZIF8TLArR9D3QGiiNHPAHLb5QsDopmTvH3B8CVMpmoNB+qj25MDfHUlJot4A5SFx
         hbuw==
X-Gm-Message-State: AAQBX9fbc6EUXyluEs1i9CXXxOkI47+rXKetHAh7/2oA1JjtBRkczylK
        /2Ze83r4UNF/EX9tMWVVQldlqLEboTi9/OOxgGXV6A==
X-Google-Smtp-Source: AKy350bxyUd9g6l4vGryZzbI7Jfljfwd11D0eLMkzSrJUJiOJ/KA63QBnHaVdrHOYG2aLouktTsZ0y9EkQu3jaiYmv4=
X-Received: by 2002:a05:6902:920:b0:b76:ae61:b68b with SMTP id
 bu32-20020a056902092000b00b76ae61b68bmr11595302ybb.5.1680162937296; Thu, 30
 Mar 2023 00:55:37 -0700 (PDT)
MIME-Version: 1.0
References: <20230329144155.699196-1-festevam@gmail.com> <ff66c8b9-c7f7-1eb2-c730-4812b7ff6824@linaro.org>
In-Reply-To: <ff66c8b9-c7f7-1eb2-c730-4812b7ff6824@linaro.org>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Thu, 30 Mar 2023 13:25:25 +0530
Message-ID: <CAMty3ZBHvR8OxgNgKG--TA_LQF41vjPiruHx-Pw2PwbjNKMFog@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: display: exynos: dsim: Add 'lane-polarities'
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Fabio Estevam <festevam@gmail.com>, neil.armstrong@linaro.org,
        inki.dae@samsung.com, marex@denx.de,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Fabio Estevam <festevam@denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 30, 2023 at 1:08=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 29/03/2023 16:41, Fabio Estevam wrote:
> > From: Fabio Estevam <festevam@denx.de>
> >
> > The Samsung DSIM IP block allows the inversion of the clock and
> > data lanes.
> >
> > Add an optional property called 'lane-polarities' that describes the
> > polarities of the MIPI DSI clock and data lanes.
> >
> > This is property is useful for properly describing the hardware
> > when the board designer decided to switch the polarities of the MIPI DS=
I
> > clock and/or data lanes.
> >
> > Signed-off-by: Fabio Estevam <festevam@denx.de>
> > ---
> >  .../devicetree/bindings/display/exynos/exynos_dsim.txt      | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/display/exynos/exynos_ds=
im.txt b/Documentation/devicetree/bindings/display/exynos/exynos_dsim.txt
> > index 2a5f0889ec32..65ed8ef7aed7 100644
> > --- a/Documentation/devicetree/bindings/display/exynos/exynos_dsim.txt
> > +++ b/Documentation/devicetree/bindings/display/exynos/exynos_dsim.txt
> > @@ -29,6 +29,12 @@ Required properties:
> >
> >  Optional properties:
> >    - power-domains: a phandle to DSIM power domain node
> > +  - lane-polarities: Array that describes the polarities of the clock =
and data lanes.
> > +    1: inverted polarity
> > +    0: normal polarity
> > +    The first entry corresponds to the clock lanes. Subsequent entries=
 correspond to the data lanes.
> > +    Example of a 4-lane system with only the clock lanes inverted:
> > +    lane-polarities =3D <1 0 0 0 0>;
>
> First, please convert to DT schema.

I have a previous iteration of this conversion. Can I resend it on top
of drm-misc-next?
https://lore.kernel.org/all/20210704090230.26489-9-jagan@amarulasolutions.c=
om/

Jagan.
