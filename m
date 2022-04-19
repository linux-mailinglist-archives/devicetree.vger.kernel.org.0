Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F63F507CCA
	for <lists+devicetree@lfdr.de>; Wed, 20 Apr 2022 00:47:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358324AbiDSWtl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 18:49:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348030AbiDSWtk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 18:49:40 -0400
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CA9F3055E
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 15:46:55 -0700 (PDT)
Received: by mail-yb1-xb2a.google.com with SMTP id h8so33679105ybj.11
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 15:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NQ0ZlCBfLIaeShdjzTYSygfV13RjcJgPJ7CXYizgpCQ=;
        b=FGFYWIZ04CCV8ztbKRGzvwRYgJdM2X2X/exeme+rEEMfoSrr1bgTHMT/epk6OoQuhi
         N64zTZGkr1hifKRi+OMxWckHFciH8cOrJ4lA/wCJI9gJWRTf+f4MrSTFsahKs8UJOMNs
         YVLV7+ZDfxey96RUtIHpK9Z4ftJ3BMmXaHO05XB3IDFjSyPWT24hT28JWF8esuCt4Nx3
         r/ph0t0/qk9GGbRS8p8lVQ3XZmV+vBP5nfgI7vpW1ADF19RV7zgDj1IWwH0zmByEq3qH
         fOkBlvUixw3c1hyGdvMgMt9Kogqq/qpShsSDIfVjVOUYPZP/227XbI6nmg5VpixY9tdY
         acww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NQ0ZlCBfLIaeShdjzTYSygfV13RjcJgPJ7CXYizgpCQ=;
        b=6kUXKuk4ofd5A7cKfr8rzkZvORtvfysUKJXnHJmkiTFL8Os/FjfW7IOhE75F4iRg0p
         sP7JoGdsowgzkbOiTRToexfeyIUAVnHGPWHJHj04wtThB6wxYjfCxFPz58BOzh0Bjcvz
         3j7hddikk/XfUtEbyLNmBxjaxOb6PU0c9+EV8bgpkdouXdxsXTwItpLrcaKoKN+5yfiD
         0osZKPYZBXSx3RuwSw+XkyYwuPEGFan3qIazsdermiwgw4HkpIbFJjer9C0Neah/yfCf
         gShnmO3w+JmIJRESZIJjIsYBqoPVhjuXTjCXjEbtmLV24W9MYVMQ3IiMXxzQokn5ss/r
         t9uw==
X-Gm-Message-State: AOAM533k6sbpeUCF2gb27HxGfgaEKudX4ZlMgoD4/9XFQM1DwuiGGvcR
        oPJKLwJPvBPT08yJZdzxL6rYDBCnfD5P4s6uw/MdrLYKwgw=
X-Google-Smtp-Source: ABdhPJzL1ZMzGRF0eQBZ7PUfu61f5JoJrxbPpEb6s7UVIgvJVwImWmYItXwnN0X+wwcRlvyNP0KhXn4m3KRIcON6pnU=
X-Received: by 2002:a25:cf4c:0:b0:641:15d2:54a3 with SMTP id
 f73-20020a25cf4c000000b0064115d254a3mr16840709ybg.626.1650408414361; Tue, 19
 Apr 2022 15:46:54 -0700 (PDT)
MIME-Version: 1.0
References: <20220329054521.14420-1-dipenp@nvidia.com>
In-Reply-To: <20220329054521.14420-1-dipenp@nvidia.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 20 Apr 2022 00:46:43 +0200
Message-ID: <CACRpkdbGyrRU9DDTmNDpU52rECAKY3wfi2y3jo9FMypDG=pmJQ@mail.gmail.com>
Subject: Re: [PATCH v5 00/11] Intro to Hardware timestamping engine
To:     Dipen Patel <dipenp@nvidia.com>
Cc:     thierry.reding@gmail.com, jonathanh@nvidia.com,
        smangipudi@nvidia.com, linux-kernel@vger.kernel.org,
        linux-tegra@vger.kernel.org, linux-gpio@vger.kernel.org,
        bgolaszewski@baylibre.com, warthog618@gmail.com,
        devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
        robh+dt@kernel.org
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

On Tue, Mar 29, 2022 at 7:45 AM Dipen Patel <dipenp@nvidia.com> wrote:

> This patch series introduces new subsystem called hardware timestamping
> engine (HTE). It offers functionality such as timestamping through hardware
> means in realtime. The HTE subsystem centralizes HTE provider and consumers
> where providers can register themselves and the consumers can request
> interested entity which could be lines, GPIO, signals or buses. The
> HTE subsystem provides timestamp in nano seconds, having said that the provider
> need to convert the timestamp if its not in that unit. There was upstream
> discussion about the HTE at
> https://lore.kernel.org/lkml/4c46726d-fa35-1a95-4295-bca37c8b6fe3@nvidia.com/

I like this.

Can you put it in a public git and make it eligible for Stephen Rothwell to
pull into linux-next and ask him to do so, as we intend to merge this for
v5.19?

Yours,
Linus Walleij
