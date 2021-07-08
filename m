Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 892883C1A49
	for <lists+devicetree@lfdr.de>; Thu,  8 Jul 2021 22:04:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230129AbhGHUHU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jul 2021 16:07:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229768AbhGHUHU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Jul 2021 16:07:20 -0400
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com [IPv6:2607:f8b0:4864:20::833])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46E70C061574
        for <devicetree@vger.kernel.org>; Thu,  8 Jul 2021 13:04:38 -0700 (PDT)
Received: by mail-qt1-x833.google.com with SMTP id z12so5833143qtj.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jul 2021 13:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=2tis/C0UqjD1liYeV/9bMo7ufMIoxp5d9o+L0SuTnWs=;
        b=RHXdaBuqa3OJyiICnd7gf3m1qaVIoxCbA/3OKJw9OC1afjnH5B3IzyVjEKjd9obVC4
         oCZSj3wz9V+Eh8wQobsRIY5Nj8sCBeOHniUIJ/FKMQBGMWtzbnf6uMNppMjPGgKc0HDf
         6TtbAOulin63zapccYSnuPM8QlByvJcQNHjms=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=2tis/C0UqjD1liYeV/9bMo7ufMIoxp5d9o+L0SuTnWs=;
        b=jN4RhIFKPUXijm5NNxSm+W6V8ZvKuGPaJiGa6o0lM6F2K5BZUrJqShubmhvxVKMtjz
         7Fg1IWIPVhec8+aMuoTz+DIKk3YdscwPwAWzFKJa7qlaV90lT2yxbDImLD2IfhER2LGb
         3GpudAuosyREhl2/jvmBwJYt6FioPEDmipcdVflSavwV9ZVZc0G77wkZpqOExgKYyZ+f
         KJ+Tsj/80xwng1ZhlE5wo6ZHX7MpYIT0lb3NPwq5tfZ+H+5LL0gfU5UhmPMijClmgzvB
         OWoPGmU8Q/pOfFk+cOOB1rqqwuqZ2um4cXHHCKiypSsF4e4JsOcaIuSiC/NvBkVvNfG4
         /hPg==
X-Gm-Message-State: AOAM5312AO5VeyfFYl+uImJ/F0h0qdNkFtowi/eHK3ShgtrpmLXlEKWy
        u/ZzE1a9+gDLs/7mWN4GQsfeEK0qwXBRFg==
X-Google-Smtp-Source: ABdhPJyN5n9Ru/7fdxHMOf1IpsWAiqTwC4nv1XE3vLkKSI01umQbm9Qk4Fj1jWSIoJUUdwNlm7e1oQ==
X-Received: by 2002:ac8:5657:: with SMTP id 23mr30023533qtt.98.1625774677356;
        Thu, 08 Jul 2021 13:04:37 -0700 (PDT)
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com. [209.85.219.182])
        by smtp.gmail.com with ESMTPSA id v15sm1504780qkp.96.2021.07.08.13.04.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jul 2021 13:04:36 -0700 (PDT)
Received: by mail-yb1-f182.google.com with SMTP id g19so10897439ybe.11
        for <devicetree@vger.kernel.org>; Thu, 08 Jul 2021 13:04:36 -0700 (PDT)
X-Received: by 2002:a25:80d4:: with SMTP id c20mr41020230ybm.345.1625774676301;
 Thu, 08 Jul 2021 13:04:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210707234315.242663-1-linus.walleij@linaro.org>
In-Reply-To: <20210707234315.242663-1-linus.walleij@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 8 Jul 2021 13:04:24 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X9tOrwu_vFyYy_uyA+BM2sPPx+erS9Atdw72-m9v68ig@mail.gmail.com>
Message-ID: <CAD=FV=X9tOrwu_vFyYy_uyA+BM2sPPx+erS9Atdw72-m9v68ig@mail.gmail.com>
Subject: Re: [PATCH 1/2 v3] drm/panel: Add DT bindings for Samsung LMS380KF01
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, phone-devel@vger.kernel.org,
        =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Jul 7, 2021 at 4:45 PM Linus Walleij <linus.walleij@linaro.org> wro=
te:
>
> This adds device tree bindings for the Samsung Mobile Displays
> LMS380KF01 RGB DPI display panel.
>
> Cc: devicetree@vger.kernel.org
> Cc: phone-devel@vger.kernel.org
> Cc: Douglas Anderson <dianders@chromium.org>
> Cc: Noralf Tr=C3=B8nnes <noralf@tronnes.org>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ChangeLog v2->v3:
> - No changes just resending with the series.
> ChangeLog v1->v2:
> - Expect SPI bindings to be pulled in for the client and state
>   spi-cpha: true etc.
> - Make port a required node.
> - Update the example to use a proper SPI controller (spi-gpio)
>   so we get full validation of the example.
> ---
>  .../display/panel/samsung,lms380kf01.yaml     | 97 +++++++++++++++++++
>  1 file changed, 97 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
