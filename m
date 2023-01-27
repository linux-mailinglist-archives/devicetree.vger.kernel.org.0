Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3FA4867DFD8
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 10:16:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232909AbjA0JQj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 04:16:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232925AbjA0JQh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 04:16:37 -0500
Received: from mail-vk1-xa31.google.com (mail-vk1-xa31.google.com [IPv6:2607:f8b0:4864:20::a31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7AC377DEC
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 01:16:31 -0800 (PST)
Received: by mail-vk1-xa31.google.com with SMTP id v81so2162167vkv.5
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 01:16:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aaD6dIV1gsVv+4gc6ahYMn8/UYyHqgHNmcCgd6nynwI=;
        b=Ci7RLYkb/VW6daieLc6bXUHa0FKFL5uTPQgc0OCRCSQWChPSS2hCE/+JohARsY6lQM
         b2axTrsCd9tj2rq5tEBa3PmPYVKkrxgPiMN6N/UY+/M0hYffKDnA/2C2000pySvPMki0
         SXx7Oju2lfywBSapFMocZZcv3naTAe/CcuYr/qrLxNHGkblQkp29EfUSl5AuXJiKI1Sh
         wJS5bav7RFII2jNxFbplVQxK4seXuhm7wgg6EoJZwGBGjAY3qAC0wNQF2zBqnnEj//DR
         IGKZx1Atk+T3qnxvnRTUTa+7m/p7u+onGBL5WK/hyyHnbnPiR9+zozw9sMqEv1XSi6n1
         pCig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aaD6dIV1gsVv+4gc6ahYMn8/UYyHqgHNmcCgd6nynwI=;
        b=OrjsMYHq1voM1F6EUeAmu8p0ePRB7h13ZosJ8EBqX0MPBW2XbzfNYRnNvis3rvkPmq
         065yqfbS0K3toMh5OTQnRmz+eFYGDWHKwuUnOAVs5ssYUIE3VZ7ZlQdTI8KzBMZk0G36
         x3nA00qn4mqqODhqUuk9NiMCgcqGHz2s4g7engOf1pbS98Ugpprntui+lSknfUT9RGyF
         cY+co2UTwjwapnjDsFu7rk43jo2oCco74yIbZkHpT7vRFEb3PuCK7K1K5pk/GMb0qh3N
         jvJSjcmxGsyhBA2QP6f+1QtbbEmpQX7RZwMFp0LZZzbscTJ1h6tO5wEDbs8fMbF8g8/b
         YtIA==
X-Gm-Message-State: AFqh2kqCH5O3YdmcCnklkjXbQwrebYrfQN8mbN0ENzB5roTC4olmvxHo
        6Wo+5QvYmpi3nsP2YwttoP7wvC3/3T+CK3Ms+RvYog==
X-Google-Smtp-Source: AMrXdXt+pm6BC48848ASCGbtuGQ/JZZ7o2YMf3wuxOcXaeJZ59tdocyfrew1oO5ABdFz1Jv5paOkDu/WRD3kr/8Yea0=
X-Received: by 2002:a1f:9b53:0:b0:3e1:db78:6cd9 with SMTP id
 d80-20020a1f9b53000000b003e1db786cd9mr3921810vke.25.1674810990878; Fri, 27
 Jan 2023 01:16:30 -0800 (PST)
MIME-Version: 1.0
References: <20230112145140.67573-1-andriy.shevchenko@linux.intel.com>
 <0805b351-1661-4c90-89e1-2fea2fc98867@app.fastmail.com> <Y9OQEzbMMMUSVblf@smile.fi.intel.com>
In-Reply-To: <Y9OQEzbMMMUSVblf@smile.fi.intel.com>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Fri, 27 Jan 2023 10:16:19 +0100
Message-ID: <CAMRc=Mc-RLHjA=JKVzEgJAzSfs5=wath5nLZ-MgDPLE0N-CYuw@mail.gmail.com>
Subject: Re: [PATCH v1 1/1] gpiolib: of: Move enum of_gpio_flags to its only user
To:     Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc:     Arnd Bergmann <arnd@arndb.de>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jan 27, 2023 at 9:49 AM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Thu, Jan 26, 2023 at 03:46:32PM +0100, Arnd Bergmann wrote:
> > On Thu, Jan 12, 2023, at 15:51, Andy Shevchenko wrote:
> > > GPIO library for OF is the only user for enum of_gpio_flags.
> > > Move it there.
> > >
> > > Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> >
> > I made the same patch independently, but you sent it first, so
> >
> > Reviewed-by: Arnd Bergmann <arnd@arndb.de>
>
> Thank you!
>
> Bart, I guess we have a consensus to proceed with this, the worries I have
> can be addressed later on, i.e. as a followup patch.
>

Sounds good, applied!

Bart
