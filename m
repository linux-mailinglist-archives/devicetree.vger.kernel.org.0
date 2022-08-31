Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B1235A7D2B
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 14:22:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230496AbiHaMWu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 08:22:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230507AbiHaMWq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 08:22:46 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACB28D34E8
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 05:22:45 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id h5so16424544ejb.3
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 05:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=s8MYTRyURyvJAWeVUKCjiLvHOGuujwI4X7v0OftBbSA=;
        b=bCj8f8OX2CyOZiIpq8J8A/Ifd7bsDf/xNLsrjZ8V4EOdYAPVNVWDa6zeMCuytSBBSp
         KYztvO1x9Nykquj7sde5MgS9FVjLgrENEvoDtDNwe6KCZbsdgWGW6tV+2Rsu2qCK58jS
         ducpWhhNzD+1XNHFQ4bbCa6CT3kuPhX8Gw1MUWKGF34TMRLX6vftiJd93LuD/VLEWUTd
         j221YKuf+LWL1TND5OunKsjJsmYjze+Swfx/6Bf4pljSK2V5x/hXGFh5BwmJwt+jttoW
         t5mGxQFpjegqZ4QFXtd3Wjafc2RHR7qwO+dVpOPDekBl1SGz/YV3B1IayQuXxWbE3Mt/
         x2oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=s8MYTRyURyvJAWeVUKCjiLvHOGuujwI4X7v0OftBbSA=;
        b=CSbAos6KX09j2IeFNCMkj3rHEk0H80ZBSrpeEtfs8N05LMDvYzctCeVzDJfSfmbAyo
         Smy613Kj4j5JHS9QscSInVIPaJ+VrGxNO+E/2kNnb3PnfKk+XQWYuvk8Bh9kGRozskVe
         iNhmpji5K1qY2XOwDARut09ebth8C1MnTaJlnEVDqtOJwguxQZY93+lFV3ceqm3MSW0h
         dW9TAw2F9IDvWlPE41TEYPlAUlZV06WqOr3mEIC7sgIrqpnzEnqe3PzzdhMczgy+bsa6
         fnmga3Uu1xgF5XROgy93M9wWgnXqZnrbsgKzU8YZRcm6oqp5jLZ/OUrn3sAgJ3M2kP7m
         vJPQ==
X-Gm-Message-State: ACgBeo1Rld2PO1q94ilzxIWM1xbaMY9hATAUm/uNXY/UVqfC2FqunFlO
        912zGp8hMfyY01zsdigZwXLHN+h6WVDUjcEou44rLQ==
X-Google-Smtp-Source: AA6agR7hE2pVJv1Px0ddBlK4AIprmiIxvrzf1e3G6G/qNrWzbzKTCPLpdSrH4NFZ+2kAiFXgpCB6TyrjxpVWP7fBJl8=
X-Received: by 2002:a17:907:2707:b0:741:7c18:4e76 with SMTP id
 w7-20020a170907270700b007417c184e76mr10005539ejk.690.1661948564196; Wed, 31
 Aug 2022 05:22:44 -0700 (PDT)
MIME-Version: 1.0
References: <20220829131553.690063-1-nuno.sa@analog.com> <20220829131553.690063-3-nuno.sa@analog.com>
 <CACRpkdZYNhmqGPED0ghcT+y9uCeEVsPzHRxG9GyXt=r2pAPQKg@mail.gmail.com>
In-Reply-To: <CACRpkdZYNhmqGPED0ghcT+y9uCeEVsPzHRxG9GyXt=r2pAPQKg@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 31 Aug 2022 14:22:32 +0200
Message-ID: <CACRpkdYL=-mny=tqmMmQVNKpPHVmQheEtVOd1uLKBaTbhjdAbA@mail.gmail.com>
Subject: Re: [PATCH v4 02/10] gpio: gpio-adp5588: drop the driver
To:     =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>
Cc:     linux-kernel@vger.kernel.org, Bartosz Golaszewski <brgl@bgdev.pl>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-input@vger.kernel.org,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michael Hennerich <michael.hennerich@analog.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 31, 2022 at 2:21 PM Linus Walleij <linus.walleij@linaro.org> wr=
ote:
> On Mon, Aug 29, 2022 at 3:15 PM Nuno S=C3=A1 <nuno.sa@analog.com> wrote:
>
> > With commit 70466baac3de
> > ("input: keyboard: adp5588-keys: support gpi key events as 'gpio keys'"=
),
>
> This commit isn't in the upstream kernel.
>
> Are you using some Analog devices internal tree? Upstream
> those changes first.

Aha I see that is patch 1, OK the hash will change all the time so you
can't include that when doing a patch series. Just use the title of
the previous patch if you need to.

Yours,
Linus Walleij
