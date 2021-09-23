Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A12B7415467
	for <lists+devicetree@lfdr.de>; Thu, 23 Sep 2021 02:08:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238588AbhIWAKX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Sep 2021 20:10:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232944AbhIWAKW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Sep 2021 20:10:22 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D32D5C061574
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 17:08:51 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id g41so18924964lfv.1
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 17:08:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=c61zkWeyMKH6LL6icsQDLy8x0upVKK9C7hT0bg7V0+0=;
        b=a3bNOYwHCLWdW+uqIZMVyLPdTmYFfQZhZmd3R+ig/T+TGpkI56Mz3an74YjRDGlRNz
         4OMn2AggkvbmO9CcqQfZHCvjZE49E4yUXJVgznbBxZ6Qg+OEBop5fGwIIel7kSDiaAO8
         iJsU3iWZiFA8pAMYgEYTEjVx8HbxxGrYNfPm4r0ed6K+9mrKpELqbgtgzuMfiI/KlX6M
         8U3pVpD4hosSgSFiNBcGAERmiOabbMaV0nBih9Tc3n0CxT2/vW9P4Lzk5uVgqyYL+i3t
         3qpP4z2hoMnrKgdSKhfI7Az6HoUgVH02p6NXReo4R1I3n0dyRAD23M9ot2Wigemntxzj
         1/dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=c61zkWeyMKH6LL6icsQDLy8x0upVKK9C7hT0bg7V0+0=;
        b=zsAvQ2wioYRD+eVkwQ+rwu1jgQeNFgR2e86MSx0zVU9NfvatxE9SMReP3Wsk8ZGGrm
         trLEJgAycv+Yn1pHaH6z4qUvS/XdJy9hSYvWy790h0HjsrZG88DkeiIkK+aOEe/+cQD8
         pWTzbXN3LeMBaNvsOoVwIvJXICBN4SFBgZw1yP698ieVty8yz2RZ4k31zq8AtF3hu3gD
         lJ8jJsQ+RVKGXCxUcN0nVRD0OcHNylhqBYo2+LKEI3bw8/39ltty1vTtl1wVZDcGG+8A
         6Sie1fT6Uf0PcvNkfgsXkkiRKOqU7lnNiiiOcvBRDaYpL8w8gGBjeBRVNtEKNWEfYVVc
         rHLQ==
X-Gm-Message-State: AOAM53342vg0K7bSXKhFlM+/mqCxB+++wDpwLM7ymLm20JoxG//Dfjrq
        PH1re5unkA9N5WdyJVKFDhUfu2M0cT65nlBXeCs/V5HVbwQ=
X-Google-Smtp-Source: ABdhPJz4Ci6g8dCkCq4XBU9PsIJJ1SdIpTHPhKpirwmfjE1wusAbSTN0oycwv5f7LjI5SDD/W2sq6wAKPAFhkFqsWBw=
X-Received: by 2002:a05:6512:10cb:: with SMTP id k11mr1649114lfg.72.1632355730261;
 Wed, 22 Sep 2021 17:08:50 -0700 (PDT)
MIME-Version: 1.0
References: <0de07021e49ac26a8f9386f62f3e15e947d0f6d0.1631709384.git.geert+renesas@glider.be>
In-Reply-To: <0de07021e49ac26a8f9386f62f3e15e947d0f6d0.1631709384.git.geert+renesas@glider.be>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 23 Sep 2021 02:08:39 +0200
Message-ID: <CACRpkdZzz5_oVSXPwuwpqMDYvzwTkHvmy6ua6yoJqOOSuZb4xg@mail.gmail.com>
Subject: Re: [PATCH v6] ARM: uncompress: Parse "linux,usable-memory-range" DT property
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     Russell King <linux@armlinux.org.uk>,
        Nicolas Pitre <nico@fluxnic.net>,
        Ard Biesheuvel <ardb@kernel.org>,
        Lukasz Stelmach <l.stelmach@samsung.com>,
        Simon Horman <horms@verge.net.au>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        kexec@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 15, 2021 at 3:20 PM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:

> Add support for parsing the "linux,usable-memory-range" DT property.
> This property is used to describe the usable memory reserved for the
> crash dump kernel, and thus makes the memory reservation explicit.
> If present, Linux no longer needs to mask the program counter, and rely
> on the "mem=" kernel parameter to obtain the start and size of usable
> memory.
>
> For backwards compatibility, the traditional method to derive the start
> of memory is still used if "linux,usable-memory-range" is absent.
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Very nice patch!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
