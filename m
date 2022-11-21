Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B45D0632395
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 14:31:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229749AbiKUNa5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 08:30:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230340AbiKUNar (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 08:30:47 -0500
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA6A2BFF6A
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 05:30:42 -0800 (PST)
Received: by mail-yb1-xb2f.google.com with SMTP id 205so13555792ybe.7
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 05:30:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GrD43smjCY3nWkLYSNjoj38of5EV+w5nYaqRZQqu6Z8=;
        b=TUNYh4I3FrTN2Qk4H0EaCgVdh6VtCUkHQrl7IF/WS7A8JSbSrytMpvO9LkK9Chb/uQ
         h9GLIhg4dMaSzvngUjH18KAVt1yZoCFimILjVFl+dkm1tcVzFl4XBl55R+EfA4twK5Ke
         gYoxXpoho+NKdd3nXtxHF6h0GjlyIWZ0OAKcvzgF0MIpF6dOinFEk36siwVhJValvUyc
         pueO/pGQ7t8JbKNXg4JSPMLpASYMygIVKHIG8S7hscoi39Di4OM/PV1uTKa10eaeqj5R
         UQRz5lOvq6w2vbh0ZmtgIp+lsq0Y3AkQwctNRFuHzu8YKxkvctDEQvbADmqbEAxKtIVt
         Kocw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GrD43smjCY3nWkLYSNjoj38of5EV+w5nYaqRZQqu6Z8=;
        b=D4d6t/PotHNBfEX28BhRZjB2StYMh7HgIeVhROZ+uGk5NfnRmlADFFVu72JkReVP1J
         X5HWb7AskrpIavTsbbLQ7Ky6+20RCDB16ARUldadwUuWfICq9tBnVFKJa/jdvimUe7KX
         Ys+7J0bsrMFdY9M0DWNTH99jOhyoizS5L7k5V2M2hdoAd41v4msMb/nrrOrjD5RdQXB7
         6sy0YqReCCjJGHuwUUtn0Kl+N4rO0IQ9mDtEdbIj7pqJwG+7285gsNWTu7t4cu0zr0fo
         JdaUxNDjcHJy/LTmF1jxR/AI5d/PESBnyk+LSVj5kNcQ9VNdolN6M1SbGCOitLN29FjM
         s0TQ==
X-Gm-Message-State: ANoB5pli9UBnQRpKCq/CsSirZm6A02LGJv7wpNOUBhY6rG6rodKGJZkP
        gGZ3I4Ol8Hn1utyNOGJyJ9Qgl5byazf5cJBNxv2B8A==
X-Google-Smtp-Source: AA0mqf534R8JnjgMAXUcVtn2pda2CXoOXsQXeOnwXivkvGmMe/kxz+dylSUO0uREdlZBWzAUitBn5prW6/5teaSJXAg=
X-Received: by 2002:a25:1843:0:b0:6dc:b9ec:7c87 with SMTP id
 64-20020a251843000000b006dcb9ec7c87mr563702yby.322.1669037441964; Mon, 21 Nov
 2022 05:30:41 -0800 (PST)
MIME-Version: 1.0
References: <20221121123803.3786-1-zhuyinbo@loongson.cn>
In-Reply-To: <20221121123803.3786-1-zhuyinbo@loongson.cn>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 21 Nov 2022 14:30:30 +0100
Message-ID: <CACRpkdbZS1HCvnTPnEHS6WSBvHUHmHOHs1YejuMcN9STn0+uPA@mail.gmail.com>
Subject: Re: [PATCH v5 1/3] gpio: loongson2ef: move driver to original location
To:     Yinbo Zhu <zhuyinbo@loongson.cn>
Cc:     Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        WANG Xuerui <kernel@xen0n.name>,
        Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Juxin Gao <gaojuxin@loongson.cn>,
        Bibo Mao <maobibo@loongson.cn>,
        Yanteng Si <siyanteng@loongson.cn>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        loongarch@lists.linux.dev, linux-mips@vger.kernel.org,
        Arnaud Patard <apatard@mandriva.com>,
        Huacai Chen <chenhuacai@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 21, 2022 at 1:38 PM Yinbo Zhu <zhuyinbo@loongson.cn> wrote:

> This gpio driver doesn't cover CPU_LOONGSON64 platforms, because
> of gpio address was wrong and I don't plan to support it thus
> move this driver to arch/mips/loongson2ef/ so that I can drop the
> shackles of the legacy driver and add a new driver that supports
> dts/acpi to support LoongArch platforms.
>
> Signed-off-by: Yinbo Zhu <zhuyinbo@loongson.cn>

Don't do this, we spent a lot of time to collect drivers in
in drivers/gpio this is counter to our ambitions to have the
drivers under drivers/* and only arch code under arch/*.

Create a new file named loongson2-64bit.c or so and just
ignore that this one exist is an option, as is actually
integrating this driver properly.

Yours,
Linus Walleij
