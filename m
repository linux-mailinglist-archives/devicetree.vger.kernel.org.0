Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3885767FDF
	for <lists+devicetree@lfdr.de>; Sat, 29 Jul 2023 16:01:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231578AbjG2OBE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Jul 2023 10:01:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231379AbjG2OBD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Jul 2023 10:01:03 -0400
Received: from mail-vs1-xe36.google.com (mail-vs1-xe36.google.com [IPv6:2607:f8b0:4864:20::e36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7172D1730
        for <devicetree@vger.kernel.org>; Sat, 29 Jul 2023 07:01:02 -0700 (PDT)
Received: by mail-vs1-xe36.google.com with SMTP id ada2fe7eead31-447805165e9so75688137.1
        for <devicetree@vger.kernel.org>; Sat, 29 Jul 2023 07:01:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1690639261; x=1691244061;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MZVAQTl/KJwMx5MiWB8LXWVD/Og4xmNjpD5ZpeSnK7c=;
        b=ln2TgybqxMOQuiLgVhRhLYsqCFV+8HwlugaM1KqCgC8XMYyjTTJNTczBAf5RteyRiu
         EnUxo6Gpx7MnahdGEifLBxDmjnoVDHsU27yOxV0EIgSw/JqfZgF2ut6XolsFdcpXFgY/
         NLRO6vNtbqi4z7Wb2HqwcIQnCUk/VasMlHM5rjHx0EsvjMseLj2EFhhA3Ge2jCMmxm1p
         JwExs0c8Fz+1a7PfrbKqaeukn5dPUJ5eMgKPTD1GYc3f3LXY6uta9uVlq9eSrmmni1iB
         pTg1bU2dZouz/HV0Hh7D1+Qsgbzk6Lg2vxhW0bCyG6Ok0JRfsIhDE5Sl1s+eJc6EU1R8
         skIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690639261; x=1691244061;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MZVAQTl/KJwMx5MiWB8LXWVD/Og4xmNjpD5ZpeSnK7c=;
        b=C4vMFeaoy/0z7hPjg+mLaiGxU6vd85UpJSS3oZzXXcJBR2TDXFoJAACaBDivBQ/WTb
         CIu167AVz08p6SoPOHqd3jtHb3BglT+TvNh1jGSzR8L/tr/TSssGp6+M6s2R2UwPhFLw
         1q1tNi8UJKybcYZ8NPxVprU90zZLRdWCx9Xd2APIg2TArNXoQHoK62V/zHzq0pTAVtRS
         uGwGG6gSRbQCSN9m1WI5n4ufZuM3pU4EgPaZMub6NwUyOaD+0/19/kebfQ1V+xPkNLWN
         8yQFXuLlMFLLyaK+u47OOjJBDPIsGoF36GSDo8cK5Ru6WkCQe0pAc9LG60jTaDZoybz5
         h8dg==
X-Gm-Message-State: ABy/qLY2osIGz2XUP6LSDjkWQUueJZbFpSVtvMX1gRNQWHUVNAGJ48Dh
        awnIJroVM6foUtczEFymw4zqnprEtM53pCH5jEOwKQ==
X-Google-Smtp-Source: APBJJlEi2RKDbITIjmlsevHI7wqEnXUgQewcF8UvMqd3GbsnOxKtGzuN1hsrPvplsPt4ahSEpNWCfRcs3dx1OhXil1E=
X-Received: by 2002:a1f:ed83:0:b0:471:1785:e838 with SMTP id
 l125-20020a1fed83000000b004711785e838mr3717737vkh.2.1690639261551; Sat, 29
 Jul 2023 07:01:01 -0700 (PDT)
MIME-Version: 1.0
References: <20230724063520.182888-1-alexander.stein@ew.tq-group.com>
In-Reply-To: <20230724063520.182888-1-alexander.stein@ew.tq-group.com>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Sat, 29 Jul 2023 16:00:50 +0200
Message-ID: <CAMRc=Me3PAf7vuBS9MbLDh1t2MMWiTjA1CTW38UyMLmioYEowg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: gpio: Add gpio-line-names to STMPE GPIO
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Andy Shevchenko <andy@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-leds@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 24, 2023 at 8:35=E2=80=AFAM Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:
>
> This is a gpio-controller, so gpio-line-names should be allowed as well.
> stmpe2403 supports up to 24 GPIOs.
>
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
> Changes in v2:
> * Add min/maxItems
>
>  Documentation/devicetree/bindings/gpio/st,stmpe-gpio.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/gpio/st,stmpe-gpio.yaml b/=
Documentation/devicetree/bindings/gpio/st,stmpe-gpio.yaml
> index 22c0cae73425..4555f1644a4d 100644
> --- a/Documentation/devicetree/bindings/gpio/st,stmpe-gpio.yaml
> +++ b/Documentation/devicetree/bindings/gpio/st,stmpe-gpio.yaml
> @@ -28,6 +28,10 @@ properties:
>
>    gpio-controller: true
>
> +  gpio-line-names:
> +    minItems: 1
> +    maxItems: 24
> +
>    interrupt-controller: true
>
>    st,norequest-mask:
> --
> 2.34.1
>

Applied, thanks!

Bart
