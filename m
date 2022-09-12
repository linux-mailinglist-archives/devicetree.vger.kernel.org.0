Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8BA615B5C56
	for <lists+devicetree@lfdr.de>; Mon, 12 Sep 2022 16:38:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229643AbiILOiE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Sep 2022 10:38:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230213AbiILOh6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Sep 2022 10:37:58 -0400
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com [IPv6:2607:f8b0:4864:20::f2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C12312ED7B
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 07:37:57 -0700 (PDT)
Received: by mail-qv1-xf2c.google.com with SMTP id l5so6833617qvs.13
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 07:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=Gma6d5BlyXEKnjQsnnu5KmSUsV/V+0uYpySeCVOzahM=;
        b=mb1F1tRoLU+2X2uBFEA5tHgs0j28pnRartJzBt0Ow8kcF8BxzHePc/0cnIxzE6PYv1
         RDNTI7aA4u0OaXC1ns9sywci1oQ3dibmRtBsRyeAGvxUzduBPeKzXsmZtCbH+MnitP4u
         SA7NHFNHWRU6quzuVh+Fc2m2BmYzPa9EhiVNY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=Gma6d5BlyXEKnjQsnnu5KmSUsV/V+0uYpySeCVOzahM=;
        b=ImUmO6MGw42LdmD1T0yp73t3IsXULtcGSmaMQbgaio1SLIcebOmaUa19OYTTzjr9m6
         f+dRMAydhe1PaaAVNyuzjoCFECw0I/ubG8XI6HODMK7quBVJCydIRVM2f5iH9RjTknSk
         urH/sN+iTWqY4ExSvRWQuNNrLOx/v3DtTtSLswcsxynAVM4KlrfFymptXeYa6sNWIILY
         24MB5IxdMWUpHnBSP8Uy33Jrd2nxQhTRERzcDUtC9YWmelqeOl0ootzmxn0XtFe9Y+7g
         WK9BIPoEEU0xS21awPjyWROYc81oIJoEN3nXbr3gLSomAwtyN+E5wTmZYbqgmYJVK7WS
         2cNQ==
X-Gm-Message-State: ACgBeo1bYSfBlas2IKjNgNl7WngC1Bi8nTdMMmSC04VbqhwMbvSrqzqp
        3McBOt9iF1we4Sc6jYfzYpAzW67Fz4cxcLre
X-Google-Smtp-Source: AA6agR6euOwog3ibJZ2yEH1zP+AItQmPyh1Qzmfynezop2oQajircosC5i8o65q2KforqeWforDVog==
X-Received: by 2002:a05:6214:62a:b0:4ac:b768:ac53 with SMTP id a10-20020a056214062a00b004acb768ac53mr4007602qvx.120.1662993476648;
        Mon, 12 Sep 2022 07:37:56 -0700 (PDT)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com. [209.85.160.175])
        by smtp.gmail.com with ESMTPSA id g21-20020ac84695000000b0035ba5db657esm6168760qto.76.2022.09.12.07.37.56
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Sep 2022 07:37:56 -0700 (PDT)
Received: by mail-qt1-f175.google.com with SMTP id cb8so6334946qtb.0
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 07:37:56 -0700 (PDT)
X-Received: by 2002:a05:6638:1c17:b0:35a:151b:c726 with SMTP id
 ca23-20020a0566381c1700b0035a151bc726mr6077471jab.66.1662993004103; Mon, 12
 Sep 2022 07:30:04 -0700 (PDT)
MIME-Version: 1.0
References: <20220912113856.817188-1-robert.foss@linaro.org> <20220912113856.817188-3-robert.foss@linaro.org>
In-Reply-To: <20220912113856.817188-3-robert.foss@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 12 Sep 2022 15:29:52 +0100
X-Gmail-Original-Message-ID: <CAD=FV=WrH2AAFxV72FZqk-=xU8jzCn6KtcbZRYJAaCwhmvSWmg@mail.gmail.com>
Message-ID: <CAD=FV=WrH2AAFxV72FZqk-=xU8jzCn6KtcbZRYJAaCwhmvSWmg@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] Revert "drm/bridge: ti-sn65dsi86: Implement bridge
 connector operations for DP"
To:     Robert Foss <robert.foss@linaro.org>
Cc:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lubomir Rintel <lkundrak@v3.sk>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Chris Morgan <macromorgan@hotmail.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Javier Martinez Canillas <javierm@redhat.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Robert,

On Mon, Sep 12, 2022 at 12:43 PM Robert Foss <robert.foss@linaro.org> wrote:
>
> As reported by Laurent in response to this commit[1], this functionality should
> not be implemented using the devicetree, because of this let's revert this series
> for now.
>
> This reverts commit c312b0df3b13e4c533743bb2c37fd1bc237368e5.
>
> [1] https://lore.kernel.org/all/20220902153906.31000-2-macroalpha82@gmail.com/
>
> Signed-off-by: Robert Foss <robert.foss@linaro.org>
> ---
>  drivers/gpu/drm/bridge/ti-sn65dsi86.c | 28 ---------------------------
>  1 file changed, 28 deletions(-)

Any chance you got confused and reverted the wrong patch? This
ti-sn65dsi86 patch doesn't seem relevant to the problems talked about
in the commit or the cover letter. Maybe I'm missing something?

-Doug
