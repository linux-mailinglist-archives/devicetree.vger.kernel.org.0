Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 74CDF1660F
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2019 16:53:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726505AbfEGOxA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 May 2019 10:53:00 -0400
Received: from mail-yw1-f66.google.com ([209.85.161.66]:36937 "EHLO
        mail-yw1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726429AbfEGOw7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 May 2019 10:52:59 -0400
Received: by mail-yw1-f66.google.com with SMTP id 186so4603496ywo.4
        for <devicetree@vger.kernel.org>; Tue, 07 May 2019 07:52:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QsBH3/6csQjaE99mExw7IfFXVrloklkX9pCxbhdLh74=;
        b=mbgXMp/1KMUq1BUS9eZLhL8CKZK/DoGo3oNSSBQJjt5C4AfCcTEo8K03NsU2Qd7zzv
         i1JRhvOPD5EL2ftJF3As7EK4mS+lN0tF4wt28QOUQat71TEp+O+AuxHLdfo4pqZKsaEd
         kwR2mE/Oz3X/WeLW9csTbepgqy+SZfKktXiKawhU/AxNsXlehFKBMzYpLLbfwq8wBYcz
         C2+skA0IsJ2gBWmzmU85JpXxQZkyi8l/i5u9L8phzZl2jm+x0qtnOgKdyIOEnO/xl7tL
         ND6f+VSi2LXKf/z2y7f+hft23H3mSAVeIp51nrNe0AOI9ArlI8ew29HZIOTIyj5ziZeU
         T58w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QsBH3/6csQjaE99mExw7IfFXVrloklkX9pCxbhdLh74=;
        b=XyujUVBQhmNDTF/otDMIR3YCDEJAKdjtn8HOUWSQuCeYlOvUeG97VbLZJsgqV4YwJ8
         nzKdlq7/72a9yzKVicusBhT8kQ594a2OoMKTwqtN5akZ91h/nTq6NVHdftIQvs+/gSCy
         xEAmBxgcZ6wSUZieQouKlyGl60X936+TbYjlIvpktPX+7bn+qG+L3SbaWK3yvYxw09JV
         WD1xb8m+Kp6Fh3LSNu7QiqhlGiw2RpBJT8v9JUunj/8NmpqDE00Ahy2BHp/yUoK3TvUW
         7DRLf2vn4taAio1GywH136+rJc82/b/YF2fomGQ/NIQFlH6BjZsiqqsYGwk+1tsYeNlK
         Ej2g==
X-Gm-Message-State: APjAAAXx8qtaKcZulTU4nTAP4pUmdwOW0XMgrVSKLPb7b8Khwv/oZaf9
        cEbzR0J+j2RcpAvm2ZAIelCfXRbKyhLDPLaReQiIrA==
X-Google-Smtp-Source: APXvYqwSOyNWaXXqAR64Yl6lra7e1M+E9ZK/56Uz24VtVymWObkhiXt0imSNWCiPDevrgTPeJxA2O5ZLVLoebp5pxmc=
X-Received: by 2002:a25:5145:: with SMTP id f66mr20397598ybb.151.1557240778588;
 Tue, 07 May 2019 07:52:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190507044801.250396-1-dianders@chromium.org>
In-Reply-To: <20190507044801.250396-1-dianders@chromium.org>
From:   Guenter Roeck <groeck@google.com>
Date:   Tue, 7 May 2019 07:52:47 -0700
Message-ID: <CABXOdTcsDU5dSAFWZBAvrOGRa+BokgKi9huGfs=fO4ObCOvnHQ@mail.gmail.com>
Subject: Re: [PATCH] of: Add dummy for of_node_is_root if not CONFIG_OF
To:     Douglas Anderson <dianders@chromium.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Kees Cook <keescook@chromium.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Julius Werner <jwerner@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Brian Norris <briannorris@chromium.org>,
        Frank Rowand <frowand.list@gmail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 6, 2019 at 9:48 PM Douglas Anderson <dianders@chromium.org> wrote:
>
> We'll add a dummy to just return false.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Guenter Roeck <groeck@chromium.org>

> ---
>
>  include/linux/of.h | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/include/linux/of.h b/include/linux/of.h
> index 0cf857012f11..62ae5c1cafa5 100644
> --- a/include/linux/of.h
> +++ b/include/linux/of.h
> @@ -653,6 +653,11 @@ static inline bool of_have_populated_dt(void)
>         return false;
>  }
>
> +static inline bool of_node_is_root(const struct device_node *node)
> +{
> +       return false;
> +}
> +
>  static inline struct device_node *of_get_compatible_child(const struct device_node *parent,
>                                         const char *compatible)
>  {
> --
> 2.21.0.1020.gf2820cf01a-goog
>
