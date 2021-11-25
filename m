Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BCF9E45DE3A
	for <lists+devicetree@lfdr.de>; Thu, 25 Nov 2021 17:03:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356387AbhKYQGp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Nov 2021 11:06:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232650AbhKYQEo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Nov 2021 11:04:44 -0500
Received: from mail-oo1-xc35.google.com (mail-oo1-xc35.google.com [IPv6:2607:f8b0:4864:20::c35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E266AC061A11
        for <devicetree@vger.kernel.org>; Thu, 25 Nov 2021 07:50:42 -0800 (PST)
Received: by mail-oo1-xc35.google.com with SMTP id v19-20020a4a2453000000b002bb88bfb594so2197063oov.4
        for <devicetree@vger.kernel.org>; Thu, 25 Nov 2021 07:50:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AVHFn4pvQ57s87RuMlHiBuxgtL5CNCcNeKT5ib6MEyo=;
        b=GhBkYeXA78uyXC+yLqbJwX4KtwqiJeflNGNTb/z7Ijhhe4s9VdcI5z6K/puS7Rw2mb
         ankYD0w70SeM4FxjAtubHAWXg9v8WcePaAm4d95tYLRSZrSKqUW1iIwNXvP/emqmQzXY
         352LFlC/eloskssNo83XTqHgPVaZ3Q7vG1oUp+uTNV5QmOnhNvBgARrrRsvvUXDLYNuu
         WPaghyLOmvkUoj5mIZ3KbjYPQVgfqSWXLJXrq1jeYFX59JoBcfaLIreDDCYDrMGS/ays
         Dh6vwsslt4DVdHGnG3WmUiuWqsvhZZv+NKU6KHF1CofF3UoGgGN4imGDbXGzwV6/uK2m
         pang==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AVHFn4pvQ57s87RuMlHiBuxgtL5CNCcNeKT5ib6MEyo=;
        b=JS6vkOkx34YKjQFfYwPqoYx1IAZ/KIji5GNtywjtnclKp7PGgwFeXMBNLx/UVGL2Ax
         CYmBXm1fzuHTBGnn5cWI6ysJtysVaPCJMWVdiCQuv+HnkWzjbapSKhKXXiCubGQSOSX2
         aAbEgWSPrKVrZ5ETa5Rl8ckT8bVlwd3vtwS4ovhJv05D8zBdd1o6GKqxFOCWDeoqlGVB
         nD3C9uvF1k47odJzdt9qqN9BlpIKC2dshloix7yIXy1o2sMZXyQ2eiPEGaWlXOYRb9Fl
         qZ2L2ygxmZRYuh8zOtyC4bZq7oIRQpVjh3A8Y91aomXkPPc2eVDklY6roRlBg1I4gDuT
         8Myw==
X-Gm-Message-State: AOAM531dmQCqgBm7LtFxvbOx8/KAkrx5cEcMPvqbV2MbiLF+meFZpjgL
        ZfawrLv3H/CrCJPp2JGoCnClCXiBkH7Pzmq/bjnfi/n74JM=
X-Google-Smtp-Source: ABdhPJwnrU63IwJ0IC0mJHOP3P2NLtbrILPch0ESN77ylPQ03yg5iGgYl9R7ewbzrCsd7+wghhdlMusSvKDBb5cKx8s=
X-Received: by 2002:a4a:e155:: with SMTP id p21mr2600093oot.84.1637855439972;
 Thu, 25 Nov 2021 07:50:39 -0800 (PST)
MIME-Version: 1.0
References: <20211122225807.8105-1-j@jannau.net> <20211122225807.8105-4-j@jannau.net>
 <5f16c962-72a1-21ec-9651-744053f74365@marcan.st> <d48d2e85-42f1-570a-bd8f-e3834147c8b8@marcan.st>
 <CACRpkdZghfRvox4aY4ROXYwFqiV6mnXZgw+42ZWYisXXgQ5+jQ@mail.gmail.com> <f13b54bd-d776-0d06-113a-5ca2bcbccfcd@marcan.st>
In-Reply-To: <f13b54bd-d776-0d06-113a-5ca2bcbccfcd@marcan.st>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 25 Nov 2021 16:50:28 +0100
Message-ID: <CACRpkdZ4==HvMYrJe2jQMzeYqh65OKLEo9WEWDGZAZ8u7jkxFw@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] arm64: dts: apple: t8103: Add i2c nodes
To:     Hector Martin <marcan@marcan.st>
Cc:     Janne Grunau <j@jannau.net>, Sven Peter <sven@svenpeter.dev>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 24, 2021 at 6:42 AM Hector Martin <marcan@marcan.st> wrote:

> Pulling down an I2C bus between transactions is not legal; the idle
> state has to be high.

Oh right.

> Apple are actually not very good at configuring GPIOs for power saving;
> e.g. the I/Os for that unused i2c bus still have their input buffers
> turned on, which is a waste of power. If they wanted to save the
> smallest drop of power they'd turn that off. But the effect of this is
> so trivial it probably makes no difference in the context of a laptop,
> nevermind a desktop like the Mac Mini.

Hm that's true. The saying is that 99% is the backlight, the remaining 1% isn't
so significant after that.

Yours,
Linus Walleij
