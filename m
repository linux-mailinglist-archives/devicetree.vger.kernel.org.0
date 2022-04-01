Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50CC14EEAE7
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 12:02:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344881AbiDAKEk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 06:04:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344878AbiDAKEj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 06:04:39 -0400
Received: from mail-qv1-xf30.google.com (mail-qv1-xf30.google.com [IPv6:2607:f8b0:4864:20::f30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43BA726D124
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 03:02:50 -0700 (PDT)
Received: by mail-qv1-xf30.google.com with SMTP id gi14so1678487qvb.0
        for <devicetree@vger.kernel.org>; Fri, 01 Apr 2022 03:02:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dowhile0-org.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=aqMK4M1InDYThrQysEp5iPweZrSJ1BirpP75Fhn0bLE=;
        b=v8pyYAOBtFNUDrQbtm5WA+p9a1vinNfC2F10aFHIj0fPcQ7Odqioc9KSe2vi1Xh2Zk
         IXSf+HVtEib8GLDe+fl1POvfPzjEsLV6iWpPPARSJRMvXGlYl4oe27z1bQIL6ae0muVt
         AGmCMQU/mhFbMky9EUDeAogRmG2zy1+xFMjrLTi3xkI8z5LaOzKp3b7dsYPZsiNBTuHM
         c8k+IDBe7fJlKDOdZV7vElHPsYdEcmgHllGd4gGJQlFsiFdpx752OZHlVfWWo3vWeICF
         bmMbq3d0wbEP3LzUUvf1tvGOXwd61dKCPUQ9c6xnFW2xEUblSGdmk9LkcZZY8ibVBe7W
         Pf1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=aqMK4M1InDYThrQysEp5iPweZrSJ1BirpP75Fhn0bLE=;
        b=DUBhOaUG2xEMi/ILo4iUhRwc/666cSGRX2i23DkxKiqVmz8OUWLa9p0rWlscq7NQc7
         jcvpPdEhY/AjqwNzOGKoojAHuR/HaCR144e3egLvhLMn3ajkqEIIl1SQhBe/JzyJF58Y
         jLiDP5AuNlpbUYEJjjONO2zB/C1R7fpEHW/PJwwD1o3bp4IKuDugD0a6Vd4Hb9oYK9L5
         45gq8hF0jDu6TpVNBhyGGW0r0BpJXq0BkEiywmCBTfMYMlC5d9zLj0764yZmMdGgQESY
         lLDILWleL8y0xS+WZIDJGjQPm1H2VF4PxJUa1oxbjZiPaFpbCvUqc+kGFThFDNi7fQ80
         n0oQ==
X-Gm-Message-State: AOAM530AKW32Vxq1GJ5rnbPM13mVBG2A89hq+6hMEn+SOBN3fn2KQvR8
        amwpkB4/crL7OiWqC/ECKGHZVXxQ5N8mjcHF1WSHeA==
X-Google-Smtp-Source: ABdhPJx3kDfdp/cLod8RhpuczJxKeYyi+MMYeDn2oKD/KNzazZRboLRNTTeZkBYev9if54aHevFDIq9tAYpuoOnSZ5Y=
X-Received: by 2002:a05:6214:2a8e:b0:443:8a10:c1ca with SMTP id
 jr14-20020a0562142a8e00b004438a10c1camr9900126qvb.88.1648807369348; Fri, 01
 Apr 2022 03:02:49 -0700 (PDT)
MIME-Version: 1.0
References: <20220330190846.13997-1-wens@kernel.org> <20220330190846.13997-4-wens@kernel.org>
In-Reply-To: <20220330190846.13997-4-wens@kernel.org>
From:   Javier Martinez Canillas <javier@dowhile0.org>
Date:   Fri, 1 Apr 2022 12:02:38 +0200
Message-ID: <CABxcv=nFBmgQaoG6u_kW2v60yhPSi3wH_MSd7T9tS0cXqvCNKQ@mail.gmail.com>
Subject: Re: [PATCH 3/4] drm: ssd130x: Support page addressing mode
To:     Chen-Yu Tsai <wens@kernel.org>
Cc:     Javier Martinez Canillas <javierm@redhat.com>,
        Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, devicetree@vger.kernel.org,
        Chen-Yu Tsai <wens@csie.org>,
        Linux Kernel <linux-kernel@vger.kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 30, 2022 at 9:09 PM Chen-Yu Tsai <wens@kernel.org> wrote:
>
> From: Chen-Yu Tsai <wens@csie.org>
>
> On the SINO WEALTH SH1106, which is mostly compatible with the SSD1306,
> only the basic page addressing mode is supported. This addressing mode
> is not as easy to use compared to the currently supported horizontal
> addressing mode, as the page address has to be set prior to writing
> out each page, and each page must be written out separately as a result.
> Also, there is no way to force the column address to wrap around early,
> thus the column address must also be reset for each page to be accurate.
>

Thanks for including this explanation, it's very informative.

> Add support for this addressing mode, with a flag to choose it. This
> flag is designed to be set from the device info data structure, but
> can be extended to be explicitly forced on through a device tree
> property if such a need arises.
>

Agreed. Unless an OLED controller supports both page addressing modes,
I don't see what could be an advantage of having that property in the
device tree. And even if that's the case, we could just always make it
default to use horizontal addressing mode.

[snip]

> +/* Set address range for horizontal/vertical addressing modes */

Thanks for adding these comments.

>  static int ssd130x_set_col_range(struct ssd130x_device *ssd130x,
>                                  u8 col_start, u8 cols)
>  {
> @@ -166,6 +173,26 @@ static int ssd130x_set_page_range(struct ssd130x_device *ssd130x,
>         return 0;
>  }
>
> +/* Set page and column start address for page addressing mode */
> +static int ssd130x_set_page_pos(struct ssd130x_device *ssd130x,
> +                               u8 page_start, u8 col_start)
> +{
> +       int ret;
> +       u32 page, col_low, col_high;
> +
> +       page = SSD130X_START_PAGE_ADDRESS |
> +              SSD130X_START_PAGE_ADDRESS_SET(page_start);
> +       col_low = SSD130X_PAGE_COL_START_LOW |
> +                 SSD130X_PAGE_COL_START_SET(col_start & 0xf);
> +       col_high = SSD130X_PAGE_COL_START_HIGH |
> +                  SSD130X_PAGE_COL_START_SET((col_start >> 4) & 0xf);

Maybe instead we should define
SSD130X_PAGE_COL_START_{HIGH,LOW}_{MASK,SET} to be consistent with how
the other fields are set and not using bitwise operations explicitly
here ?

Other than that, the patch looks good to me.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

Best regards,
Javier
