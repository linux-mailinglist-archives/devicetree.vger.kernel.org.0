Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 587BA58269B
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 14:30:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232810AbiG0Maz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 08:30:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233125AbiG0Mam (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 08:30:42 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 545FEE2C
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 05:30:13 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id m12so25791597lfj.4
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 05:30:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ps/+5VPVaYevdh/6gOs5F1hcVnusMTfNaW2Z1T8LP+A=;
        b=aneJs51DgGyKe9+lAleeq51Nfv17XMEKNKoFAMBIFEhU+PzxuRLX7O3yCmBYWHpHGA
         UUtuAYipA+JLfIwHYEYndPbayzRJU037rJv2XVArk57C7iO8aD92FJ1RPFTNvPaQ0WbL
         nTahfc/XfkSTifQIxmxyejZdwUUjONq5RpnZX/w2WeXaV2AbPLFuK58K7Oer3tYocPQC
         9MYWf6/Fe+cCzHpNc3JR6oKbgNgfqhbrPDKnzK+2njD+iRo+IEK1pScOX+9byFS3o31k
         OXS911hCdbaxYyanxSRLF0De0Mwg9dnxElewjqurL8zRgOjTe6nZYnVJd/yQPPSN0Oz/
         zfRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ps/+5VPVaYevdh/6gOs5F1hcVnusMTfNaW2Z1T8LP+A=;
        b=L5VNzw4cb7yJ5/QQAbcgwctR41KNdD5xVGdTVIR2tynPBYVUOTyUHal5KB+kuR8Tuz
         Xq6SM7zKh8WVC799doYFQgXMY5ckY6oma+ZoAKJ6vXWCcL18TrP2fvO6I0lzYb9BnEy/
         JOgFN21uLMpNMhzRkQy2f3mUJGgWWYnMqky6n7dHEfKfPwwhsqUmPpFJVoRaIYkL3yHQ
         jASRQrdekurYxOy6lJwVgP6fwCc081IQUC5X9gfYZS/LgFI2AaZM6Y24ZAnqWLyPZPzh
         sCOy8b4f0YxuSHQidtuA4MwBZt+h1lO0wAOninAt4jZyo84LQUB6vEbcpyZQ0rI//+a6
         WvOw==
X-Gm-Message-State: AJIora/hmxhBp9POHwgflG6tKHTeTKfvBnUlhiOAhesm7Fs02oJjWl/W
        x9lG8LxUASn0jaSMPT2AMfDSup8Rf1wBJmXLMNQItQ==
X-Google-Smtp-Source: AGRyM1usi3VvuAE9QHArHqPE+QINC2fW0qFj7SnfxJ0dIbBnMc/9ltEW0eEe8ey9YdP9hysi5LJxlZnjzcb87Fg6NAo=
X-Received: by 2002:ac2:44af:0:b0:48a:9e9f:74e5 with SMTP id
 c15-20020ac244af000000b0048a9e9f74e5mr3058834lfm.100.1658925011234; Wed, 27
 Jul 2022 05:30:11 -0700 (PDT)
MIME-Version: 1.0
References: <20220727114302.302201-1-apatel@ventanamicro.com>
 <20220727114302.302201-2-apatel@ventanamicro.com> <20220727121838.tpy55twdkuasjab7@bogus>
In-Reply-To: <20220727121838.tpy55twdkuasjab7@bogus>
From:   Anup Patel <apatel@ventanamicro.com>
Date:   Wed, 27 Jul 2022 17:59:59 +0530
Message-ID: <CAK9=C2UFgZv5T433S6EVVa+4V2Uaffg6Xq1e2zLKbdFVFYhf0Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: riscv: Add optional DT property riscv,timer-can-wake-cpu
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Andrew Jones <ajones@ventanamicro.com>,
        Atish Patra <atishp@atishpatra.org>,
        Samuel Holland <samuel@sholland.org>,
        Anup Patel <anup@brainfault.org>, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 27, 2022 at 5:48 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Wed, Jul 27, 2022 at 05:13:01PM +0530, Anup Patel wrote:
> > We add an optional DT property riscv,timer-can-wake-cpu which if present
> > in CPU DT node then CPU timer is always powered-on and never loses context.
> >
>
> I don't have much idea on idle states on RISC-V but associating this
> property in just CPU node seems like not so good idea.
>
> This will be applicable for all CPU idle states which means you
> can't use this even if one of the deepest idle state switches off
> the timer.
>
> We have local-timer-stop in each idle states node. IIRC RISC-V uses the
> binding which is now not arm specific[0] and IIRC you moved the binding
> yourself. Any reason why not can't be used and any specific reason for
> needing this extra property.

Indeed, the "local-timer-stop" property should be used. I guess,
Allwinner D1 should use this property in idle state and we should
not unconditionally set CLOCK_EVT_FEAT_C3STOP in the timer
driver.

@Samuel Holland Can you confirm that the "local-timer-stop" property
works for Allwinner D1 ? If yes, then please send a patch to remove
CLOCK_EVT_FEAT_C3STOP from timer driver.

Regards,
Anup
