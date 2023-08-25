Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 06992788578
	for <lists+devicetree@lfdr.de>; Fri, 25 Aug 2023 13:18:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230168AbjHYLSU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Aug 2023 07:18:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233966AbjHYLSC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Aug 2023 07:18:02 -0400
Received: from mail-vs1-xe31.google.com (mail-vs1-xe31.google.com [IPv6:2607:f8b0:4864:20::e31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E15310F
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 04:18:00 -0700 (PDT)
Received: by mail-vs1-xe31.google.com with SMTP id ada2fe7eead31-44e86f3e4b6so281307137.0
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 04:18:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1692962279; x=1693567079;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tVBvWGIx0J6gjaJv6/fpMatRyh7moH4juddmleDwCWc=;
        b=tGHvNl5TgnXTwHoQmaJvDb+jU/gVieHiPM1C1fVtx0biLmYYARhu/5it4G1+Ad+kcK
         79MQRz3JntogmwW0ZmU+I0i5U0cwHRcZ8adR7/J0URJEPjPe+ouCFPdSulDQjVHIttS9
         vU1Zbk9zsg8RGKJtnh71Nw8n5MqOO8FFBGgbulk7VrJY13j3uIgoo4ZFxSeFhXfCrNU1
         /juNeb5TLjk7M1C3jte5TvBEyryNrugWjzSGOmHIDQOt/iZR1NsDzi2NJc1wbzPWYfdp
         eL295Doy5oMsW+Lb3lUY2m1YPEs37VY0qLT0DHeNv/UqAENoGPFdsHe8fXt1ChqxsAhR
         XUbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692962279; x=1693567079;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tVBvWGIx0J6gjaJv6/fpMatRyh7moH4juddmleDwCWc=;
        b=NwALgi2R+yQfd+2BvQXmDa3Sn/eftx04A2n2iWTj47N9LR60AJ85hDP4ZmOvspeXDe
         fbd70cbpX59yXaXZRmBVx01lmFJD2FfxDnsgfHSp+09p3j+UM2ZSjk98uKTZ24y1AA0b
         YqvSlAaUTIPuLpEQU+nb6PqlhEaq+y30qQnnik5wiL72WcVeHB2CAuE40cFct0+Tx31z
         Qz94y7FaCjla7ia9qBU/T/dxY3zjUBv/Z0sSTigKvimvXOsg7C1c4AtCWk5Hq6TyLcRd
         dxEkjK+yBO/HHTBX2XfnB7v7SI69bi6bVSToDOX4vbfN0qWlf413ckyjGlfJX59Daw/3
         wvBA==
X-Gm-Message-State: AOJu0Yy8umD0pipAU2qT2U6I9sUcXIdU14JaYjjEP/EIVcJZNCBmiX1g
        z8UUo5wWPYPAbXSNpoId8aZfpiHm2wNpihHs7++Ffw==
X-Google-Smtp-Source: AGHT+IFrsh4nH0axFm6B30a2vIPLZ9mvamfoMJCkPypS2B7UyvDDG3R+endcC6Z0M2T6ivTDDBAbdW7w1sz9pQGSX40=
X-Received: by 2002:a05:6102:4ae:b0:44e:9113:ac58 with SMTP id
 r14-20020a05610204ae00b0044e9113ac58mr4630476vsa.6.1692962279430; Fri, 25 Aug
 2023 04:17:59 -0700 (PDT)
MIME-Version: 1.0
References: <20230824-tca9538-v1-0-ee3bf2065065@gmail.com> <20230824-tca9538-v1-2-ee3bf2065065@gmail.com>
In-Reply-To: <20230824-tca9538-v1-2-ee3bf2065065@gmail.com>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Fri, 25 Aug 2023 13:17:48 +0200
Message-ID: <CAMRc=MedSOpY-n_pZ7ZECc=xEPMz-VNXFfWRvQ7-zM_YHfECNw@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: gpio: pca95xx: document new tca9538 chip
To:     Liam Beguin <liambeguin@gmail.com>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Andy Shevchenko <andy@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 25, 2023 at 1:16=E2=80=AFAM Liam Beguin <liambeguin@gmail.com> =
wrote:
>
> The previous patch added support for this chip. Add its name to the list
> of allowed compatibles.
>
> Signed-off-by: Liam Beguin <liambeguin@gmail.com>
> ---
>  Documentation/devicetree/bindings/gpio/gpio-pca95xx.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/gpio/gpio-pca95xx.yaml b/D=
ocumentation/devicetree/bindings/gpio/gpio-pca95xx.yaml
> index fa116148ee90..99febb8ea1b6 100644
> --- a/Documentation/devicetree/bindings/gpio/gpio-pca95xx.yaml
> +++ b/Documentation/devicetree/bindings/gpio/gpio-pca95xx.yaml
> @@ -66,6 +66,7 @@ properties:
>                - ti,tca6408
>                - ti,tca6416
>                - ti,tca6424
> +              - ti,tca9538
>                - ti,tca9539
>                - ti,tca9554
>
>
> --
> 2.39.0
>

Applied with commit message tweaked.

Bart
