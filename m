Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DC7DE388252
	for <lists+devicetree@lfdr.de>; Tue, 18 May 2021 23:43:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236158AbhERVoq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 May 2021 17:44:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236192AbhERVop (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 May 2021 17:44:45 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 017DBC061760
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 14:43:27 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id r5so16001974lfr.5
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 14:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9W8CG42kAAwkhvgorWzkgl2HDP2DkVdnYaRY02J71Bs=;
        b=uNTgtOUlmnxpNkiXuhNVaEaI+mym1NHTPnngxZrWzShoDImoaVBo4fUB4Ttv2KLd58
         CZSzwugn8LcRRojl5bxNAU/JXg+vFA327UfuZnNFHH6JwUO0rXwDPkaRrRcpZBSV/Lp5
         i2FLsHQbOpo0DsA29NdLARZF3jGpEzOE4pd1Ey82TJr3YdrswYzMIng43aGGv3i74OY3
         OzNhXN0/JTjkQPdIiif8MKB0FV0aUjhpUuwT6DCynt2aB1tTYB/3jI1d5puNNMmuAVxU
         kaclZPke/UVkfFSsb9TcP8GGfTO3fzI+GDnXsNfalCnH5VINfC8OiVZzdqewT5CInNvo
         zx6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9W8CG42kAAwkhvgorWzkgl2HDP2DkVdnYaRY02J71Bs=;
        b=TmCyBoxfGHm1vNPWmKbFK/0nqEt33L5CZ2HqdencXDf4vpAsavgUVga7UHdoxq/QmA
         onEDc3EaCcLUSKErcKsy+ietvNDq6qEeAduJBZoDJTxCrRsoAXmWR/5rYov5H7+xKWE2
         r9gtnvTDi0uOZCif3+Xm/2mDXQYHhyOjqpwll4tPZAvGWa+BnBN/qXPhn7w0CPlHyeSs
         1yTkvmLY7HB2Ye4pRutK7BOK0KqJOgXK6Vm1G2lPYF/TUJEDs6vYnPBdZK1EDQazD9EM
         V7MuL85qdDDJl0F5pajz1lv8uUgAmw3zC0k0r4yk0N0fVsABzn9/w5P2cOt73qqOUEEj
         k8wA==
X-Gm-Message-State: AOAM531FD3sz99JO9L9P2kpvcOtqM3kyHcC5+bM5TTONJ9RtTxM2HOe1
        5nhzU1f60SKOWZhxlqK/SO6Czk3mhkJnzqmvG4OQxA==
X-Google-Smtp-Source: ABdhPJxiQ3bmMsEgGknfvRhvTLU6Jz2UZqabLd+SRMPufcllZQf1K+8AtkRfkP47bpUsSgIFtiajY6O3HSKHCIkPtiw=
X-Received: by 2002:a19:a418:: with SMTP id q24mr5417009lfc.649.1621374205507;
 Tue, 18 May 2021 14:43:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210518151655.125153-1-clabbe@baylibre.com> <20210518151655.125153-4-clabbe@baylibre.com>
In-Reply-To: <20210518151655.125153-4-clabbe@baylibre.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 18 May 2021 23:43:14 +0200
Message-ID: <CACRpkdZ2LH9zKgbs7ci=7paOF6KRsQhMNSOJ_5qjzr=KKFnV+w@mail.gmail.com>
Subject: Re: [PATCH 3/5] ARM: dts: gemini: add crypto node
To:     Corentin Labbe <clabbe@baylibre.com>
Cc:     "David S. Miller" <davem@davemloft.net>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Russell King <linux@armlinux.org.uk>,
        Rob Herring <robh+dt@kernel.org>,
        Hans Ulli Kroll <ulli.kroll@googlemail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 18, 2021 at 5:17 PM Corentin Labbe <clabbe@baylibre.com> wrote:

> The SL3516 SoC has a crypto offloader IP.
> This patch adds it on the gemini SoC Device-tree.
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

Looks good to me, as soon as the bindings are accepted I will apply
this patch to my gemini DTS branch.

Yours,
Linus Walleij
