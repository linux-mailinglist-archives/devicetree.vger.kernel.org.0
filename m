Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB5C66B0E3E
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 17:10:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229938AbjCHQKl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 11:10:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232149AbjCHQKQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 11:10:16 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FC02468B
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 08:09:49 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id j19-20020a05600c191300b003eb3e1eb0caso1682465wmq.1
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 08:09:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678291788;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L+dYWSqa/ZOUrUL1r8q0LpgzDp7Tt9DA2CXNGpPqdso=;
        b=azSMzAOW9FuJWqRn2SbptxwSUxQXTBWdLmGq+oIfVbGZoebTgMTqP58raNghgqTiIi
         nHVo450JZWQ8UxhfZOlgB6IYO/+j/y1aYFtMElOp9MC5KQ9EJZ5WqjV+U3dZiLrHaMU/
         82hhMkxhmo6FdFxTHQMDuulwtQpYIGVO4wV+f0nUxq+sTXs2lis6RAIaDgQ0syc+26In
         5HKaJirzKA3I6gk+VQmM4GbBRV38/R+7KPrtasf+orr1MUAjEykSik/eenj/kUPBUhLk
         Pz8dm3JUEgBbJ8CZiApJgYXkNuSSDSWR0rPYAIVJjchySpWKVUmfVxUYFzpqEkIDiGw8
         wTmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678291788;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L+dYWSqa/ZOUrUL1r8q0LpgzDp7Tt9DA2CXNGpPqdso=;
        b=ipqZ+RBxhgaPPsnb6ViRXB0N+eDbx5DSpR84B5mfi2L8kFF+x3oqseec1sO5FjslQl
         W0j4zO1NDK+c8/6Fge+X8bmhRf4sagmfSc/0L/hvGoW+zKxddzDscJ5n+8mlurU5jfLy
         nEiwj39czxwLFdpFghZVt2JIZBUZXdGYw3lUkWbHw0Oq57hzCz++Qz2ewYFYuOeUKRKj
         uIbHGmVOFp4xB9sEQJW5EK8G7ACRnRprKYkWPouTG5a0zi9lsokCjyl5dDnXj0GpbjFq
         r+JQKn+H1V4YobbfNyB8J+ayHUGjtfoYy0Jxb5bbZyIwkdNufbxSF0AGPh4F6hwTs0E2
         UmZA==
X-Gm-Message-State: AO0yUKWf97j/N/OcEORiAlQ2757dkmxkpcTD5OKSuG0gU82rWWbqgmHs
        ynUUHSk/+R8MUxvS8jA+j4VrUkSVWTZ4XQhXgXM=
X-Google-Smtp-Source: AK7set9z6R4A9KaMfNYvy1lKGvlnpbKKO6hcw1gFadDpG1l9Ii+ICzQ/NIFpZr3WgwWhxV0xv4eaIFcX7T21ikloZuA=
X-Received: by 2002:a05:600c:16c6:b0:3eb:2e68:5c86 with SMTP id
 l6-20020a05600c16c600b003eb2e685c86mr4385123wmn.6.1678291787690; Wed, 08 Mar
 2023 08:09:47 -0800 (PST)
MIME-Version: 1.0
References: <20230308063240.107178-1-anarsoul@gmail.com> <4204317f-6715-cdeb-343d-611aea0d554a@linaro.org>
In-Reply-To: <4204317f-6715-cdeb-343d-611aea0d554a@linaro.org>
From:   Vasily Khoruzhick <anarsoul@gmail.com>
Date:   Wed, 8 Mar 2023 08:09:20 -0800
Message-ID: <CA+E=qVepknVmYjC8+uxp+TUF=uqvm3t4rLk8yjs+h5zYm6HiSw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R5S
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Peter Geis <pgwipeout@gmail.com>, Andy Yan <andyshrk@163.com>,
        Chris Morgan <macromorgan@hotmail.com>,
        Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
        Brian Norris <briannorris@chromium.org>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Maya Matuszczyk <maccraft123mc@gmail.com>,
        Chukun Pan <amadeus@jmu.edu.cn>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        Tianling Shen <cnsztl@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 8, 2023 at 3:31=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
> > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Docu=
mentation/devicetree/bindings/arm/rockchip.yaml
> > index 35f74eda30ae..0813ad22dc76 100644
> > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > @@ -201,6 +201,11 @@ properties:
> >                - friendlyarm,nanopi-r4s-enterprise
> >            - const: rockchip,rk3399
> >
> > +      - description: FriendlyElec NanoPi R5S board
> > +
>
> Does not look like ordered alphabetically. Are you sure this is correct
> place for it?

Hmm, strictly speaking, "FriendlyElec NanoPi R5S board" should go in
between of "FriendlyElec NanoPi R2S" and "FriendlyElec NanoPi4 series
boards" if we want it in alphabetical order, not after "FriendlyElec
NanoPi4 series boards" like in this patch. But it doesn't look nice
(because R5S will go before R4S).

There is already similar ordering (alphabetical/chronological for
model) for Radxa Rock Pi - "Radxa ROCK Pi S", "Radxa Rock2 Square",
"Radxa ROCK3 Model A", "Radxa ROCK 5 Model A".

However if you want me to sort it strictly alphabetically, I can send a v2.

Regards,
Vasily
