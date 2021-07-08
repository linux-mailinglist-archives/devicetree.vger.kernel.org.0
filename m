Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 92BA03C1A48
	for <lists+devicetree@lfdr.de>; Thu,  8 Jul 2021 22:04:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230155AbhGHUHO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jul 2021 16:07:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229768AbhGHUHN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Jul 2021 16:07:13 -0400
Received: from mail-qv1-xf36.google.com (mail-qv1-xf36.google.com [IPv6:2607:f8b0:4864:20::f36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81DC9C061574
        for <devicetree@vger.kernel.org>; Thu,  8 Jul 2021 13:04:31 -0700 (PDT)
Received: by mail-qv1-xf36.google.com with SMTP id f5so3426592qvu.8
        for <devicetree@vger.kernel.org>; Thu, 08 Jul 2021 13:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=fCKQmPRqidSrEdK1oF2NTwicJdS0fQ73GVZ7z6e07fE=;
        b=NVdfCg/fngNZMBrRcVwI7V+y8yniNPNHjgSSpuZBgMwwM8pN5dLPVxFJenSSmc77DB
         OzR4Pzjv6ntdN+ik8+pmc8V8SH2T4PbL6ztjmr8xVZGjn2hs8Z74KUxHYe/j+dL42zQj
         l85uBYbzLHt/KDrLp2G6+pP2Vt9Di+FRDz0fU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=fCKQmPRqidSrEdK1oF2NTwicJdS0fQ73GVZ7z6e07fE=;
        b=jmmtDPnyEa/VhK5IJw6dygPw34R1b+AeWISfzQXwvPtu+LRJv2vmyai07hlTE350OY
         DKcmM/yUkf9TdZrMCZAqtYLVJ2tZUJUdh0G5y/Y6NWs65vU02GsTz6NSf8xTe4IvNVMR
         MdWC23SoN7l78hv5HpPUgOxwURAMhcXkMafYdkd73c1w7qdSR+kNge+QNt2c7zwyvuWQ
         KTdBudCyOX0kTVR0C7nB8xlY171iMHZ0ePOgppDs5Bodcm+XK+Q4heavSape8z0YXJwn
         Mov3XrNZCSnXs+0Dy0gfhTuUtqhhBpy4/6wUTuwq2ZNlTyhYG2LsVVkIcLPOxhw+zUtM
         VzAQ==
X-Gm-Message-State: AOAM530NIoKaOSExAnXDuS0rHs32ji0X15eOesyLGhxfpJNOtSDq6SQ8
        /ACHFHpxelv4iYg8CB8V7BWQ2+p/bvZGKQ==
X-Google-Smtp-Source: ABdhPJywmV4WRn4eCbfV5tSuLvforioj9kNQi22L67toaXMcZguljUeI2+BHXYPj8844kKXP6ScGzQ==
X-Received: by 2002:a0c:d792:: with SMTP id z18mr2304980qvi.18.1625774669696;
        Thu, 08 Jul 2021 13:04:29 -0700 (PDT)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com. [209.85.219.181])
        by smtp.gmail.com with ESMTPSA id m3sm1467136qke.37.2021.07.08.13.04.29
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jul 2021 13:04:29 -0700 (PDT)
Received: by mail-yb1-f181.google.com with SMTP id g19so10896838ybe.11
        for <devicetree@vger.kernel.org>; Thu, 08 Jul 2021 13:04:29 -0700 (PDT)
X-Received: by 2002:a25:cc52:: with SMTP id l79mr40125274ybf.476.1625774668579;
 Thu, 08 Jul 2021 13:04:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210701213618.3818821-1-linus.walleij@linaro.org>
In-Reply-To: <20210701213618.3818821-1-linus.walleij@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 8 Jul 2021 13:04:17 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VwtO=KL-abv87HNZ3wHjDd2rRVF68j4JURj0MB7gw2sg@mail.gmail.com>
Message-ID: <CAD=FV=VwtO=KL-abv87HNZ3wHjDd2rRVF68j4JURj0MB7gw2sg@mail.gmail.com>
Subject: Re: [PATCH] drm/panel: Fix up DT bindings for Samsung lms397kf04
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Jul 1, 2021 at 2:38 PM Linus Walleij <linus.walleij@linaro.org> wro=
te:
>
> Improve the bindings and make them more usable:
>
> - Pick in spi-cpha and spi-cpol from the SPI node parent,
>   this will specify that we are "type 3" in the device tree
>   rather than hardcoding it in the operating system.
> - Drop the u32 ref from the SPI frequency: comes in from
>   the SPI host bindings.
> - Make spi-cpha, spi-cpol and port compulsory.
> - Update the example with a real-world SPI controller,
>   spi-gpio.
>
> Cc: Douglas Anderson <dianders@chromium.org>
> Cc: Noralf Tr=C3=B8nnes <noralf@tronnes.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  .../display/panel/samsung,lms397kf04.yaml      | 18 ++++++++++++++++--
>  1 file changed, 16 insertions(+), 2 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
