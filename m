Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0DC2C5916CC
	for <lists+devicetree@lfdr.de>; Fri, 12 Aug 2022 23:43:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234164AbiHLVnb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Aug 2022 17:43:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233836AbiHLVna (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Aug 2022 17:43:30 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D87FB0B0C
        for <devicetree@vger.kernel.org>; Fri, 12 Aug 2022 14:43:28 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id i14so4066251ejg.6
        for <devicetree@vger.kernel.org>; Fri, 12 Aug 2022 14:43:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=VvRFceTANJWQeLG+LoGv/yVOevHtvwLrEgSV4FirR5w=;
        b=J9cNAKCkzLz4gHqE62ACXGjorUEOL5wrzetBYv50p1cLZtpOhDMC8s7D9e8BOcsHkR
         0TwGB6fPE287eLSlhEtlmy3YimW4uGzDFN0wz+WY2vwOnTaSuRfxT+2I6jgBptmIubHd
         eogHj6RH9rWTNkaNfebzrbgS5glLb0E3CGiqYaN8fUzHiU+4cLt7wIMyUStMqeG30CQw
         xxPznY26NbSM5YYDIrNQsrKrdkpWvtZbbbiRysmYex9p66LBH9rnlUulQefzb6qJis1t
         ZreDDEtazo9VTB/MQEPNgNGL0Zmxwcw815XFrEUa2cUjof0IEo/lTZFLDzWADsl1RDf1
         k/tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=VvRFceTANJWQeLG+LoGv/yVOevHtvwLrEgSV4FirR5w=;
        b=FCwCVtXNaTYVDJW7ZWxKS5kj822XQLDOhToflI34Ix/60NyPSqPUGHPZC7BYbWhwA6
         ok2Ydqekwj3INruyXEWKeSnvdBgvoSP7bGfoevYLlleClynkRi+Nx+ewVLD7EHVOoysJ
         HrhQlc18GdGgFSp5LZVbG254+0pCB8/1gwcFO6qQ0IGSbgA8vFWS9eTcwz3m1ek21Fkp
         wYwRKmqHoiLEYgIfSNzJgZY1BjyAQpkTpEpQnGFCH4WEIuV3ahj98L4jqE8gDF+8T0uc
         ocPNDPtzay0hIrrV/GTFRr41PzGFGSGzllyefXxz3PF4bu0DMxbYW/pvudTcJDNi+fMe
         p4qg==
X-Gm-Message-State: ACgBeo1gItkArKfBig8zPhOE0SDyIgfzdS1hjaC3lpeJd0VYZrL8Gg7L
        5ZuJbcZ4uh9dhJufB7MYaQOMlGsirNCDlT4ZvIIf7g==
X-Google-Smtp-Source: AA6agR6X712x7TRB9fPQH2VDoUCEy1+d1Q7vla31HwrkzpfwMH7RbpdF1avnqsBEW4N6wKOcuAkn2F3m+b4FpR6Gi64=
X-Received: by 2002:a17:907:3dab:b0:730:933d:ae69 with SMTP id
 he43-20020a1709073dab00b00730933dae69mr3899423ejc.500.1660340606911; Fri, 12
 Aug 2022 14:43:26 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1659909060.git.jahau@rocketmail.com> <a7bc9d7a7bb12a76fb217a1709fb09abd2b45892.1659909060.git.jahau@rocketmail.com>
 <CAHp75VegA6zzvQXEi_9-K3832o+j48Af3X8LivYY47Xav+w-xQ@mail.gmail.com> <850de937-8fe6-ebce-4e9d-35a617c3ade6@rocketmail.com>
In-Reply-To: <850de937-8fe6-ebce-4e9d-35a617c3ade6@rocketmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 12 Aug 2022 23:43:15 +0200
Message-ID: <CACRpkdbXNE17cOM2Kd+mUf7JMefZE+NBWxyHt4vkQWEF_3BtjA@mail.gmail.com>
Subject: Re: [PATCH v5 14/14] iio: magnetometer: yas530: Add YAS537 variant
To:     Jakob Hauser <jahau@rocketmail.com>
Cc:     Andy Shevchenko <andy.shevchenko@gmail.com>,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Hans de Goede <hdegoede@redhat.com>,
        linux-iio <linux-iio@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 10, 2022 at 1:41 AM Jakob Hauser <jahau@rocketmail.com> wrote:
> On 08.08.22 13:47, Andy Shevchenko wrote:

> > P.S. Do you see now how your series and the end result become better?
>
> The driver improves. Though we kind of get lost in details, I have the
> impression we could go on like this forever.

I think at one point Jonathan mentioned the phenomenon "perfect is the
enemy of good", which even has its own Wikipedia article:
https://en.wikipedia.org/wiki/Perfect_is_the_enemy_of_good

When I feel (for some intuitive definition of "feeling") that a patch
series to my subsystem is getting over-reviewed, I usually just
merge it and tell everyone involved to write and/or request
additional patches if they are troubled by the result. It's a fine line,
admittedly, it's not like I can define the trigger point.

I wished some core parts of the kernel get as much attention
and review as some IIO drivers get.

Yours,
Linus Walleij
