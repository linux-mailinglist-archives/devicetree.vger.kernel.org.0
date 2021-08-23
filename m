Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 87D353F4527
	for <lists+devicetree@lfdr.de>; Mon, 23 Aug 2021 08:42:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234706AbhHWGnh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Aug 2021 02:43:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234561AbhHWGnh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Aug 2021 02:43:37 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4FE0C061756
        for <devicetree@vger.kernel.org>; Sun, 22 Aug 2021 23:42:54 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id y6so29585155lje.2
        for <devicetree@vger.kernel.org>; Sun, 22 Aug 2021 23:42:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FFJ5qArshzVHf3q7jRlOWQagxpfLOrv79VSjCdNEbCA=;
        b=Zf7g29E3w/mMGEQGTHke0IP1vIqXBP/xGjiHyLab7RfdnbLe9ZNKiyevv6kO2oi89n
         3wsWr3eIiIFkS8ODwd2HPqhiTr/XmNhM2RqeP8M7oo/E8+KI1mkd/dwW5x0YHqVVg7ii
         Gbc8dt9O4AM7OBaotSD53oVjK7yj0Ezk2OaJg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FFJ5qArshzVHf3q7jRlOWQagxpfLOrv79VSjCdNEbCA=;
        b=buCjxzz4uLHhRJfVtaNK1D5zqST0xInu4U4G4tBRc0oZVOCLhT8KKH9Lqe/4FArs/S
         i3H4yEGehLkqnjDbl+cxhltax0XrrlAyTyYEqYJheCEUTnBBijMZ2+4IJbags+2NZX+N
         ZKnymUuCArzAZN/6j15W0Gp4Kkz/XsK49zUkJi0kY2KThG31l5qPb2fMaMl4s9O4NhvN
         dQXG72W9viUfJIpheuPvGWWE6YshJRpwBCzSIaejfa4NZkWKY+JFaWnHUPtre6GcINX6
         1RtByS6CS6w91/jaNjsdKETWuIxVheiw8NrSvpSnvTxRW8jD+6Bp+8GUwcJ7DDlLDz47
         fwaQ==
X-Gm-Message-State: AOAM531v5S8favAQeMJ2KC+jzGx59MS0+aSklLvb0Kd8P00rpRO1intf
        Be4KndoaZxGWHtNF7SABhrfJ5tXrgK/3IYv4AVQnCw==
X-Google-Smtp-Source: ABdhPJxTuOEDNkFKHBotXobJuIjH4Z7qG0KV3mS8Xf0E+WOygl2HTPZPkLpJ47L2eJAse8NeczQkwyQsSN8xFb81ERI=
X-Received: by 2002:a05:651c:211a:: with SMTP id a26mr12902308ljq.305.1629700973307;
 Sun, 22 Aug 2021 23:42:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210820111504.350-1-chun-jie.chen@mediatek.com> <20210820111504.350-6-chun-jie.chen@mediatek.com>
In-Reply-To: <20210820111504.350-6-chun-jie.chen@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Mon, 23 Aug 2021 14:42:42 +0800
Message-ID: <CAGXv+5EReMTGS02SgVO_yrpChOiw++3rwfc0Jx66CBzuDHOXAQ@mail.gmail.com>
Subject: Re: [v2 05/24] clk: mediatek: Fix resource leak in mtk_clk_simple_probe
To:     Chun-Jie Chen <chun-jie.chen@mediatek.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>, linux-clk@vger.kernel.org,
        Devicetree List <devicetree@vger.kernel.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        Project_Global_Chrome_Upstream_Group 
        <Project_Global_Chrome_Upstream_Group@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 20, 2021 at 7:19 PM Chun-Jie Chen
<chun-jie.chen@mediatek.com> wrote:
>
> Release clock data when clock driver probe fail to fix
> possible resource leak.
>
> Signed-off-by: Chun-Jie Chen <chun-jie.chen@mediatek.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

> ---
>  drivers/clk/mediatek/clk-mtk.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/clk/mediatek/clk-mtk.c b/drivers/clk/mediatek/clk-mtk.c
> index c3d385c0cfcb..74890759e98c 100644
> --- a/drivers/clk/mediatek/clk-mtk.c
> +++ b/drivers/clk/mediatek/clk-mtk.c
> @@ -314,7 +314,15 @@ int mtk_clk_simple_probe(struct platform_device *pdev)
>
>         r = mtk_clk_register_gates(node, mcd->clks, mcd->num_clks, clk_data);

Note for future reference: there is no unregister counterpart for
mtk_clk_register_*.


>         if (r)
> -               return r;
> +               goto free_data;
>
> -       return of_clk_add_provider(node, of_clk_src_onecell_get, clk_data);
> +       r = of_clk_add_provider(node, of_clk_src_onecell_get, clk_data);
> +       if (r)
> +               goto free_data;
> +
> +       return r;
> +
> +free_data:
> +       mtk_free_clk_data(clk_data);
> +       return r;
>  }
> --
> 2.18.0
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek
