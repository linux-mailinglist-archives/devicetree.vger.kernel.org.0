Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 70BCA3D6D6F
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 06:27:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234862AbhG0E1S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 00:27:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234745AbhG0E1Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jul 2021 00:27:16 -0400
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DD78C061764
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 21:27:16 -0700 (PDT)
Received: by mail-pj1-x102a.google.com with SMTP id gv20-20020a17090b11d4b0290173b9578f1cso1913272pjb.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 21:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sdwvl61i5SSr72A1wNEXSigDuGMlyueFRl9jC5UcLTM=;
        b=fiCAH13QQvfQEiBIFIxPs62RPX5gqegSZMdKrGdTslIr/gcABKuuikkT5JCWwZp+T9
         KqYRzosKgBxoJp3aXqSuElWpqpOERGxmphtHmJGaWky9MseC/DxrXFMEh7vO78ST2GCd
         PbbpBGktrk1CecGCiigahfhpWmPaNeHoWiiRg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sdwvl61i5SSr72A1wNEXSigDuGMlyueFRl9jC5UcLTM=;
        b=chmu7zPWcVGyio9TP69q+M4JrpZRligdEa2G1gaYbXpXx7j5DlGQ2t5t8X0kIVCBa9
         +okMaFsoBy5ezLx5rIYtsikXylvYG9lZJTs/L/9w2VcPgk95bOeXS3has/eFE5+0CPri
         lOzdOupHhGD0ECGDu23G7fsGLHMT7gGJC16UWugzyVnYoIsBAwYKC4/+KptVYe1sLzIX
         P5NJsusJsV1wBJQMtX+beAhsSiK4d1naA4YSv5wrwVoYmoJjbulG3ZR82BAXYNo88adh
         7AubvzQYzF4gdzFAo9cpegtTBnO/eDKLo656i4UWyTauLdtiavX6fLNiIcgO0AvEW98r
         VvIA==
X-Gm-Message-State: AOAM531BkUYFbJusxqy93aj7fwXZgy69Mi68TUNkZdL4X6wPVAjIbivg
        LdGkzhcJQBARQjomnQJ1tFWram8hNmB8kfoTeNVj4g==
X-Google-Smtp-Source: ABdhPJyqsyW0xGABCf/mom9fkaS3LgNNSRqGblYnv/wzrO7YNfrjvXDqeqf1bKoDmJ00ZYmCj0KiIsXT33Vxw0gtfUo=
X-Received: by 2002:a63:8f04:: with SMTP id n4mr21040588pgd.317.1627360035875;
 Mon, 26 Jul 2021 21:27:15 -0700 (PDT)
MIME-Version: 1.0
References: <20210706061920.16013-1-chun-jie.chen@mediatek.com> <20210706061920.16013-6-chun-jie.chen@mediatek.com>
In-Reply-To: <20210706061920.16013-6-chun-jie.chen@mediatek.com>
From:   Ikjoon Jang <ikjn@chromium.org>
Date:   Tue, 27 Jul 2021 12:27:05 +0800
Message-ID: <CAATdQgB5XoO_oEW-CQC1JsFGPJj+PL_K9myvnhDo5H1NxEpF8A@mail.gmail.com>
Subject: Re: [v13 05/21] clk: mediatek: Get regmap without syscon compatible check
To:     Chun-Jie Chen <chun-jie.chen@mediatek.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-arm-kernel@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>, linux-clk@vger.kernel.org,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        Project_Global_Chrome_Upstream_Group 
        <Project_Global_Chrome_Upstream_Group@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 6, 2021 at 2:28 PM Chun-Jie Chen <chun-jie.chen@mediatek.com> wrote:
>
> Not all clock providers need to be marked compatible with "syscon"
> for system configuration usage, so use device_node_to_regmap() to
> skip "syscon" check.
>
> Signed-off-by: Chun-Jie Chen <chun-jie.chen@mediatek.com>

Reviewed-by: Ikjoon Jang <ikjn@chromium.org>

> ---
>  drivers/clk/mediatek/clk-cpumux.c | 2 +-
>  drivers/clk/mediatek/clk-mtk.c    | 2 +-
>  drivers/clk/mediatek/clk-mux.c    | 2 +-
>  drivers/clk/mediatek/reset.c      | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/clk/mediatek/clk-cpumux.c b/drivers/clk/mediatek/clk-cpumux.c
> index 79fe09028742..61eeae4e60fb 100644
> --- a/drivers/clk/mediatek/clk-cpumux.c
> +++ b/drivers/clk/mediatek/clk-cpumux.c
> @@ -84,7 +84,7 @@ int mtk_clk_register_cpumuxes(struct device_node *node,
>         struct clk *clk;
>         struct regmap *regmap;
>
> -       regmap = syscon_node_to_regmap(node);
> +       regmap = device_node_to_regmap(node);
>         if (IS_ERR(regmap)) {
>                 pr_err("Cannot find regmap for %pOF: %ld\n", node,
>                        PTR_ERR(regmap));
> diff --git a/drivers/clk/mediatek/clk-mtk.c b/drivers/clk/mediatek/clk-mtk.c
> index cec1c8a27211..37d2aa32175e 100644
> --- a/drivers/clk/mediatek/clk-mtk.c
> +++ b/drivers/clk/mediatek/clk-mtk.c
> @@ -106,7 +106,7 @@ int mtk_clk_register_gates_with_dev(struct device_node *node,
>         if (!clk_data)
>                 return -ENOMEM;
>
> -       regmap = syscon_node_to_regmap(node);
> +       regmap = device_node_to_regmap(node);
>         if (IS_ERR(regmap)) {
>                 pr_err("Cannot find regmap for %pOF: %ld\n", node,
>                                 PTR_ERR(regmap));
> diff --git a/drivers/clk/mediatek/clk-mux.c b/drivers/clk/mediatek/clk-mux.c
> index b0c61709bacc..e97d58db28cc 100644
> --- a/drivers/clk/mediatek/clk-mux.c
> +++ b/drivers/clk/mediatek/clk-mux.c
> @@ -165,7 +165,7 @@ int mtk_clk_register_muxes(const struct mtk_mux *muxes,
>         struct clk *clk;
>         int i;
>
> -       regmap = syscon_node_to_regmap(node);
> +       regmap = device_node_to_regmap(node);
>         if (IS_ERR(regmap)) {
>                 pr_err("Cannot find regmap for %pOF: %ld\n", node,
>                        PTR_ERR(regmap));
> diff --git a/drivers/clk/mediatek/reset.c b/drivers/clk/mediatek/reset.c
> index cb939c071b0c..e562dc3c10a4 100644
> --- a/drivers/clk/mediatek/reset.c
> +++ b/drivers/clk/mediatek/reset.c
> @@ -98,7 +98,7 @@ static void mtk_register_reset_controller_common(struct device_node *np,
>         int ret;
>         struct regmap *regmap;
>
> -       regmap = syscon_node_to_regmap(np);
> +       regmap = device_node_to_regmap(np);
>         if (IS_ERR(regmap)) {
>                 pr_err("Cannot find regmap for %pOF: %ld\n", np,
>                                 PTR_ERR(regmap));
> --
> 2.18.0
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek
