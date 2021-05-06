Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7AFD437525E
	for <lists+devicetree@lfdr.de>; Thu,  6 May 2021 12:32:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234378AbhEFKdN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 May 2021 06:33:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234393AbhEFKdM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 May 2021 06:33:12 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61C3DC0613ED
        for <devicetree@vger.kernel.org>; Thu,  6 May 2021 03:32:13 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id o16so6421057ljp.3
        for <devicetree@vger.kernel.org>; Thu, 06 May 2021 03:32:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CO6hp7+jjo2iwhz+Us2x3qq2lqayYac9jn7GVF93Eck=;
        b=Z+WdpPau49MhZKAmAk25uSLdLiGwVy1svhI7afA3PnRv89a2AEjVovgOWVcbjwN0qs
         IiXBuqy787YTMXnI2OxbsMh/WgGk78teisS+phOimTwSWC2fLLicJ1vDbiq6zhC8aZTi
         fI7ydRXm8tafcwpBV5EkuIW1+lxr+81DKNi3utImROo8kWDivJRY3KSLKFTtDlGZTMDf
         2Fs7p3+XQurndEZqkM9DhEHBqTfbEntk18Fs4365MtrV9/h5kyA6RRu+65NJqGLX9WFb
         BqsW2ofsBcNI2yh3HQlFi7qHfGQPnnhL+xBGm6mbQzExtl1G13cxmzDfAwRdj88cQ3cS
         0+2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CO6hp7+jjo2iwhz+Us2x3qq2lqayYac9jn7GVF93Eck=;
        b=HH/g9kzL2FQ58qYDBz0jg7gH3u+CC7wpixZDvz7SoqlNNP8nklxQXnNfXzp//2H57C
         ei+cqMtYNLk9iU5nvQ/EvCRPwJvkGrzSRXwTzVaJLWdu7JE2fn0r6Td+nqCvVrIOBeqC
         YsGWpqITPB9Fgp2ql06CIlGjWQIpopAWvEBYYXjSCDupNoj63j0k/QuBhPlc3ZwLgxr8
         Aps9uhLgFUTrZtI1aFCkl5Mx7nu4Fmi5OK/Pn1qm3b+mtF7tDTodr7VpzBVUGF10emgY
         dLlyWMJAVPpM0EvwK6dkYTX6r3er2LM7WxJLoeEMiax+GcYeT5JmVhc5Yh486QYQiedS
         x8ZQ==
X-Gm-Message-State: AOAM533THR2KEO+QsSQdCCDaGnUI+EMcDTD6g+vAgKBfGFoFb6m4VJlS
        Z7eEwFXB2dNJWPcdA8plQ2CjADNuAXfofWKU7x88JQ==
X-Google-Smtp-Source: ABdhPJy629XqkraW6pK+wU+groCxJVkbvvEqgSn24Im7YzBJunJPs/1AUsNWtNhGA5pM58sSUnawA/uUHqauyvN65hk=
X-Received: by 2002:a2e:81d0:: with SMTP id s16mr2954883ljg.74.1620297131799;
 Thu, 06 May 2021 03:32:11 -0700 (PDT)
MIME-Version: 1.0
References: <20210503185228.1518131-1-clabbe@baylibre.com>
In-Reply-To: <20210503185228.1518131-1-clabbe@baylibre.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 6 May 2021 12:32:00 +0200
Message-ID: <CACRpkda4cMaDKU7ro4-q=-A3Y_AhiniV5=wK-3cnFynRxttavw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: pci: convert faraday,ftpci100 to yaml
To:     Corentin Labbe <clabbe@baylibre.com>
Cc:     Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring <robh+dt@kernel.org>,
        Hans Ulli Kroll <ulli.kroll@googlemail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        linux-pci <linux-pci@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 3, 2021 at 8:52 PM Corentin Labbe <clabbe@baylibre.com> wrote:

> Converts pci/faraday,ftpci100.txt to yaml.
> Some change are also made:
> - example has wrong interrupts place
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

Looks correct to me!

> +#I/O space considerations:
> +
> +#The plain variant has 128MiB of non-prefetchable memory space, whereas the
> +#"dual" variant has 64MiB. Take this into account when describing the ranges.

(...)

I would just move this in under the top level description. YAML
has this funky syntax for pre-formatted text that you can use,
but I don't know it off the top of my head, Rob?

With that fix:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
