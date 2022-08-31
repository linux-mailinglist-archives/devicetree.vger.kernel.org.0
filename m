Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B27995A7D32
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 14:24:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230527AbiHaMYg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 08:24:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229761AbiHaMYf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 08:24:35 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5707ED31DC
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 05:24:34 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id og21so28016999ejc.2
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 05:24:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=d/DkMUjTdMomMJf5rVhOiI6dZsbYvSKsejrfxvMBkrw=;
        b=IZbkCBDlD2yZikmABwomfPbGhFv6e1y7S8FQMmyDvWIuqUKMkv1O/E00WYfkuOpjRM
         CXmvaestXjM9qa+rJK8klDJwdKb6DMJa2Dx8NIHuSel8xsGdgt5fu4gJuiTExIHBKNNU
         qq9F/wh7vTYKvyK3K9RbzdE1bNh2YtFBjL3bgJXfGkbadVUmQVfwG4O4kcUNa1/qN1A9
         /dxE4W6Ir72CDklHMDoD29Pqs+R8riIQjQAEvu3cnYV6oOFBAgbcUvbFIpU16pogRzj8
         l1zG7W6dAk2BUTxdVv3Oqdt+PhAHdCfLkN0aCZRguiXyDpD7S9mUvYyuwdIFFWeQoHDV
         RnpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=d/DkMUjTdMomMJf5rVhOiI6dZsbYvSKsejrfxvMBkrw=;
        b=qxmLKTOVSYZbFyMD2LXQej242AkH96G88gi5RRJB4oWcX/2h//KKi1lOVQLEqSdH3M
         Yb2a6yIPo7eZeUfF7Jg2KMkHZUsq8foSnasn8j3gvuVjxOtQJVAKvnyMEMAi9f6V9OSQ
         ZC/toizMUtRKXEfAlJKishEj32B2/c/0DeCr2HOnO8SY7sTeEBhyK1XgSGNiBskuI090
         OX2/BIisVs0ZSNWZDSBz2W4Ty3V/xNVnkNlScat4AH2zqJDXnvHU6HLkSoYAW77tymhv
         ToMUJVkt9HF6nz4MqyNAVEMZYoeXeFnZQeVwcvKvgvHgtzjyHd4X7r0qsG+aHwhfWC73
         t9YQ==
X-Gm-Message-State: ACgBeo1k2F6gbJx5bDxbSS7RxXsh6MJBs9MW7hk4QuJX2bbBokdrU3U+
        cy/8YGUPmKZc98+wN9+I70nL9w5XpXZ0jeB6eaPRkg==
X-Google-Smtp-Source: AA6agR5izs6tnqvgW4eyyWsCi84a2iwJAdOhTqjxBaJxSEljGmHTq6tlL8j7CvsYYM/9lcCbu4i98k26D1gPXT18YK4=
X-Received: by 2002:a17:907:1c89:b0:741:4453:75be with SMTP id
 nb9-20020a1709071c8900b00741445375bemr14248253ejc.208.1661948672945; Wed, 31
 Aug 2022 05:24:32 -0700 (PDT)
MIME-Version: 1.0
References: <20220721080423.156151-1-nuno.sa@analog.com> <20220721080423.156151-2-nuno.sa@analog.com>
In-Reply-To: <20220721080423.156151-2-nuno.sa@analog.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 31 Aug 2022 14:24:22 +0200
Message-ID: <CACRpkdas=ENpdkQbc-1LOG_zRroo4dAFgMfmVzd4=ZK_6jRuRA@mail.gmail.com>
Subject: Re: [PATCH v3 01/10] input: keyboard: adp5588-keys: support gpi key
 events as 'gpio keys'
To:     =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>
Cc:     linux-input@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michael Hennerich <michael.hennerich@analog.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>
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

On Thu, Jul 21, 2022 at 10:03 AM Nuno S=C3=A1 <nuno.sa@analog.com> wrote:

> This change replaces the support for GPIs as key event generators.
> Instead of reporting the events directly, we add a gpio based irqchip
> so that these events can be consumed by keys defined in the gpio-keys
> driver (as it's goal is indeed for keys on GPIOs capable of generating
> interrupts). With this, the gpio-adp5588 driver can also be dropped.
>
> The basic idea is that all the pins that are not being used as part of
> the keymap matrix can be possibly requested as GPIOs by gpio-keys
> (it's also fine to use these pins as plain interrupts though that's not
> really the point).
>
> Since the gpiochip now also has irqchip capabilities, we should only
> remove it after we free the device interrupt (otherwise we could, in
> theory, be handling GPIs interrupts while the gpiochip is concurrently
> removed). Thus the call 'adp5588_gpio_add()' is moved and since the
> setup phase also needs to come before making the gpios visible, we also
> need to move 'adp5588_setup()'.
>
> While at it, always select GPIOLIB so that we don't need to use #ifdef
> guards.
>
> Signed-off-by: Nuno S=C3=A1 <nuno.sa@analog.com>

Is there any input-related content in the driver after this or
should the whole driver just be moved over to drivers/gpio
and replace the old GPIO driver that you delete in patch
2?

Yours,
Linus Walleij
