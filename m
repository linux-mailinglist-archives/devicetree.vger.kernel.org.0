Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E585B3996AA
	for <lists+devicetree@lfdr.de>; Thu,  3 Jun 2021 02:05:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229726AbhFCAHb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Jun 2021 20:07:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229719AbhFCAH3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Jun 2021 20:07:29 -0400
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com [IPv6:2607:f8b0:4864:20::733])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 872C0C061756
        for <devicetree@vger.kernel.org>; Wed,  2 Jun 2021 17:05:32 -0700 (PDT)
Received: by mail-qk1-x733.google.com with SMTP id u30so4288807qke.7
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 17:05:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mjcG7yb0p2PCjeChIEZx/qwcbpSV6pjnKIr2LM5z6DM=;
        b=NrcYLu/c53UvNnWkwbC+Vo+HdEds3SEb3xPgCuHxo4K2YM1dbNKZNmSzwYZHDBimzc
         /HlEvWxgkdSDYuT61IXOSAgsufEDnEsWcHBZGATvUQlpot1ws1yWvFR0PLqUAmoWOF2Z
         O4ys4RorI7/0D48LzE7XFm+v2Hdo8l1d1u9rY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mjcG7yb0p2PCjeChIEZx/qwcbpSV6pjnKIr2LM5z6DM=;
        b=mJXdNNHLXr/ClxMkifyACkaG6r8MeCCs5+F9aVdg95+rmb7atNziFAKddNfHfC8ipu
         F4dI7AT5GHNkv7aoGlhG/ZWXaLwMDLywBohwbBw+zYVPj4VCG3PSybg5Yanb0YZ3TbV1
         k3z/I+YVjsREhxvLYq7+DWALrVpumlrwB/vtdQjvmjcl9z6JhAH2GRDg/qQ0FNP6CoyI
         AOVrLNOagyy13Fgs88tX319UtU5fgM6GfBOVX5BwK4CrgfbfFZES5NgiqkAzwGcjSl8S
         u/ykDpjgd3WI5VfV8by2YUet8MuHNdUdMki7NVU5h8UeZCoRVl9ODL7V4dgQpLwWXOZv
         4Egw==
X-Gm-Message-State: AOAM531dHFEWMVfIjFktCRK0Yd6T8+obKmtHZ74ydBE5DG1AmzZqB31y
        C1SpQ5WB8/s5sq6HSQgnE6m9J98i2426xg==
X-Google-Smtp-Source: ABdhPJzsTAxeX6V4I2d33ToF+UrCAfN/zR/50YSOvfh3jECvih+QvnnVItEicqTgo/lf+17L/gTeIA==
X-Received: by 2002:a37:b0a:: with SMTP id 10mr30486924qkl.67.1622678730511;
        Wed, 02 Jun 2021 17:05:30 -0700 (PDT)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com. [209.85.219.181])
        by smtp.gmail.com with ESMTPSA id h21sm767374qth.10.2021.06.02.17.05.29
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jun 2021 17:05:29 -0700 (PDT)
Received: by mail-yb1-f181.google.com with SMTP id b9so6263941ybg.10
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 17:05:29 -0700 (PDT)
X-Received: by 2002:a25:8191:: with SMTP id p17mr50542159ybk.405.1622678728912;
 Wed, 02 Jun 2021 17:05:28 -0700 (PDT)
MIME-Version: 1.0
References: <1622390172-31368-1-git-send-email-rajeevny@codeaurora.org> <1622390172-31368-3-git-send-email-rajeevny@codeaurora.org>
In-Reply-To: <1622390172-31368-3-git-send-email-rajeevny@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 2 Jun 2021 17:05:17 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WuWKHo1YLRTtN_dcMDuoc9erpwaGTb6WNgwHeDLuz8qw@mail.gmail.com>
Message-ID: <CAD=FV=WuWKHo1YLRTtN_dcMDuoc9erpwaGTb6WNgwHeDLuz8qw@mail.gmail.com>
Subject: Re: [v5 2/5] drm/panel-simple: Support DP AUX backlight
To:     Rajeev Nandan <rajeevny@codeaurora.org>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Clark <robdclark@gmail.com>, Lyude Paul <lyude@redhat.com>,
        Jani Nikula <jani.nikula@intel.com>,
        Rob Herring <robh@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Daniel Thompson <daniel.thompson@linaro.org>,
        "Kristian H. Kristensen" <hoegsberg@chromium.org>,
        Abhinav Kumar <abhinavk@codeaurora.org>,
        Sean Paul <seanpaul@chromium.org>,
        Kalyan Thota <kalyan_t@codeaurora.org>,
        Krishna Manikandan <mkrishn@codeaurora.org>,
        Lee Jones <lee.jones@linaro.org>,
        Jingoo Han <jingoohan1@gmail.com>, linux-fbdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Sun, May 30, 2021 at 8:57 AM Rajeev Nandan <rajeevny@codeaurora.org> wrote:
>
> If there is no backlight specified in the device tree and the panel
> has access to the DP AUX channel then create a DP AUX backlight if
> supported by the panel.
>
> Signed-off-by: Rajeev Nandan <rajeevny@codeaurora.org>
> ---
>
> This patch depends on [1] (drm/panel: panel-simple: Stash DP AUX bus;
> allow using it for DDC) and the previous patch (2/5) of this series.
>
> Changes in v4:
> - New
>
> Changes in v5:
> - Address review comments and move backlight functions to drm_panel.c (Douglas)
> - Create and register DP AUX backlight if there is no backlight specified in the
>   device tree and panel has the DP AUX channel. (Douglas)
> - The new drm_panel_dp_aux_backlight() will do the drm_edp_backlight_supported() check.
>
> [1] https://lore.kernel.org/dri-devel/20210524165920.v8.7.I18e60221f6d048d14d6c50a770b15f356fa75092@changeid/
>
>  drivers/gpu/drm/panel/panel-simple.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index b09be6e..047fad5 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -800,6 +800,12 @@ static int panel_simple_probe(struct device *dev, const struct panel_desc *desc,
>         if (err)
>                 goto disable_pm_runtime;
>
> +       if (!panel->base.backlight && panel->aux) {
> +               err = drm_panel_dp_aux_backlight(&panel->base, panel->aux);
> +               if (err)
> +                       goto disable_pm_runtime;
> +       }

It's so nice now!

Reviewed-by: Douglas Anderson <dianders@chromium.org>
