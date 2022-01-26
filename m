Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F284649CECA
	for <lists+devicetree@lfdr.de>; Wed, 26 Jan 2022 16:43:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236009AbiAZPnE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jan 2022 10:43:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243164AbiAZPnC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jan 2022 10:43:02 -0500
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com [IPv6:2607:f8b0:4864:20::d29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6BC3C06161C
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 07:43:02 -0800 (PST)
Received: by mail-io1-xd29.google.com with SMTP id s18so11279336ioa.12
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 07:43:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yAKLAxMEs2s6OrJ3pa4cx9PTkR+o5F/ZiccP0DlaJjY=;
        b=U3rXYwAr7EUCDTiIcY4gOCab99RYN1iHfQmfjJicIYZksZtQmg/cChGiZ8WtTbEYMN
         kFoan3HFEAaZI7XDJRVeB9sQwohId0ITWtX9z9laolWmpOE0khd2vvSYZAbtD8Hf/Kjt
         +1p6Q8Y0CvOUr5jcV3Bd1P5fseAkngVdrooBE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yAKLAxMEs2s6OrJ3pa4cx9PTkR+o5F/ZiccP0DlaJjY=;
        b=SXESO/OTetT/uaK/BKkL5APU/zG5Si5vtyDGJIuIK6vSgC1PKbqIXrKpGVQcFB2Jj2
         5HNgyloBv4uL+UyksPwxmUvwJXV6KPqD/+U49Tjlu+i8KRivDkcfPyUF7bTYXAqQq+aW
         X0ydI9zuTZKuyCoT8ohwrjWD4H9vLhM/L4BQZEhP0m6p4Xw39exzp/m5EdDNGa5QhoLu
         PV0AIr4GXe+Ky27luxLisFY2SsuRUuYDo/9QhzsKJwmAcPtZVANfgpBc2rYLZPtwr33q
         zFPZm2IXNlRclVBc+uAWcvVcZwH5ighNcH2aD1i3OUmPIqksYty/l5lPmPJlpm1DvrID
         dJyQ==
X-Gm-Message-State: AOAM5328gjs2vlIVip4OZGolkPrZIJYxDbRIPvgNWwESlEle2/tEqPqm
        TDfhp7hX6qSP4h/ByzrOePEFRxNVLU2yJw==
X-Google-Smtp-Source: ABdhPJwgCyU5wxy7BR0SS6qrL3fg3qIywEasUvpHXj/KnZrbn+8YjhFLvDCW603ucf80yLpXgSb10A==
X-Received: by 2002:a05:6638:3295:: with SMTP id f21mr521153jav.97.1643211781962;
        Wed, 26 Jan 2022 07:43:01 -0800 (PST)
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com. [209.85.166.43])
        by smtp.gmail.com with ESMTPSA id d8sm10062083ilg.81.2022.01.26.07.43.00
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jan 2022 07:43:00 -0800 (PST)
Received: by mail-io1-f43.google.com with SMTP id e79so27764225iof.13
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 07:43:00 -0800 (PST)
X-Received: by 2002:a05:6638:ec8:: with SMTP id q8mr8000709jas.44.1643211779964;
 Wed, 26 Jan 2022 07:42:59 -0800 (PST)
MIME-Version: 1.0
References: <20220126145549.617165-1-s.hauer@pengutronix.de> <20220126145549.617165-10-s.hauer@pengutronix.de>
In-Reply-To: <20220126145549.617165-10-s.hauer@pengutronix.de>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 26 Jan 2022 07:42:48 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VCWW4c3iqfzezU5=KKVFNP+EhPGTBZ7uZdQ=bSCJHQVA@mail.gmail.com>
Message-ID: <CAD=FV=VCWW4c3iqfzezU5=KKVFNP+EhPGTBZ7uZdQ=bSCJHQVA@mail.gmail.com>
Subject: Re: [PATCH 09/27] drm/rockchip: dw_hdmi: Set cur_ctr to 0 always
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sascha Hauer <kernel@pengutronix.de>,
        Yakir Yang <ykk@rock-chips.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Jan 26, 2022 at 6:58 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> From: Douglas Anderson <dianders@chromium.org>
>
> Jitter was improved by lowering the MPLL bandwidth to account for high
> frequency noise in the rk3288 PLL.  In each case MPLL bandwidth was
> lowered only enough to get us a comfortable margin.  We believe that
> lowering the bandwidth like this is safe given sufficient testing.
>
> Changes since v3:
> - new patch
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Yakir Yang <ykk@rock-chips.com>
> (am from https://patchwork.kernel.org/patch/9223301/)

Probably remove the "am from" line? It's not standard in upstream and
that link doesn't seem to go anywhere anymore...


> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 16 ++--------------
>  1 file changed, 2 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> index c44eb4d2e2d5..77f82a4fd027 100644
> --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> @@ -176,20 +176,8 @@ static const struct dw_hdmi_mpll_config rockchip_mpll_cfg[] = {
>  static const struct dw_hdmi_curr_ctrl rockchip_cur_ctr[] = {
>         /*      pixelclk    bpp8    bpp10   bpp12 */
>         {
> -               40000000,  { 0x0018, 0x0018, 0x0018 },
> -       }, {
> -               65000000,  { 0x0028, 0x0028, 0x0028 },
> -       }, {
> -               66000000,  { 0x0038, 0x0038, 0x0038 },
> -       }, {
> -               74250000,  { 0x0028, 0x0038, 0x0038 },
> -       }, {
> -               83500000,  { 0x0028, 0x0038, 0x0038 },
> -       }, {
> -               146250000, { 0x0038, 0x0038, 0x0038 },
> -       }, {
> -               148500000, { 0x0000, 0x0038, 0x0038 },
> -       }, {
> +               600000000, { 0x0000, 0x0000, 0x0000 },
> +       },  {

This is what we did for rk3288. I can't personally vouch for the
effects on other SoCs.

-Doug
