Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E27D45A271A
	for <lists+devicetree@lfdr.de>; Fri, 26 Aug 2022 13:52:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343625AbiHZLwP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Aug 2022 07:52:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229940AbiHZLwO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Aug 2022 07:52:14 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88DA1D5723
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 04:52:13 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id lx1so2654637ejb.12
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 04:52:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=F7c+2Gbw+Qrd9gUvCwl0Pftu63yApmzA2ACZpPC3f3I=;
        b=xJDmZVXMoghuYMQU9CAN/JMpsept6H1O606c2yubrHk9qwI/LKvKWgyRUEGABZV9ng
         mGqSnqQVCWMzCNNjfC1nglkL7+odXUHU54vEwBdWCqG0fFjXOXEoUglhnBp/RSXKar32
         n4snURvpTP1ML6PK08dPPQ9Cu4P7FPSIru8yZBytk1xvf/MIpWwP7+Hgfp+Mh7fA4IFf
         1VbmB6MkguWtfm1i3FNXF18QwEebgQtxMfwYEp0FRh/sHKVT/CoPEeTVLMgQL6UNTTVH
         v6tVVNjFoYNabFp/5fV5wtMIgVjmaZd/Ff5lroG1S3QcNGYay2v0FRrQS7Wm3WsNGAI/
         s6Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=F7c+2Gbw+Qrd9gUvCwl0Pftu63yApmzA2ACZpPC3f3I=;
        b=oH8zy6JSx1iC0EVFF8OHS0iTbc8Nv0PfeUB3blOrqa9drBAJ9QXNU0yG7oybWloIxb
         1+HD5T0zMZy5k5dtYsy7CvUZ7waVfqHYU4tkxvgYE+v2WuqkKpRHlB6xXkQSv22NGcNq
         FZpn9kyrYpLN8yqVqaGNIv4ljScndJIvChud3D6G3YO1fhwToLv0KuMi7afB3+pz+JQj
         bIb6++PPlyAeaHMySVJ7onboKpgA/CF+o2aJHzNVMJp2s4qfeEo7RHm0fPHjy5d/Zh+r
         RoQO/CydTOjFFf8DdqLHVY7gVbJ0XZG5A+xeN4Q6zkf3mYvNFMVxLm5UOV6ldZxUDLjn
         Bq/g==
X-Gm-Message-State: ACgBeo1zjeRdnoTGGWEzbdZnNtMcWzB9TPUDNyIZq+Vf/snmCNcvxNcs
        ot4bH4Re2GzNjuKtqDpFnOvBU9aA2T+JZRITKmwOyg==
X-Google-Smtp-Source: AA6agR5KEHIgpEYIj0xtbLXaCUUOqVHAM5t99tMYaMyFe1+CXyW9FUvMSfvvBNw68iA0QfddcJfhTLvP8OZlz24N1o4=
X-Received: by 2002:a17:906:478f:b0:73d:7919:b23 with SMTP id
 cw15-20020a170906478f00b0073d79190b23mr4905970ejc.690.1661514731763; Fri, 26
 Aug 2022 04:52:11 -0700 (PDT)
MIME-Version: 1.0
References: <20220801131901.183090-1-marex@denx.de> <20220801163238.GA1130127-robh@kernel.org>
 <4d917546-23a2-a33a-1f59-ec78305aa854@denx.de> <CAL_JsqLHKnL80spDSAqMq0cOkVNztv0MjVsR-Rs83qd_q7_MQg@mail.gmail.com>
 <4788af3e-b36d-fbe9-bd17-db1db85f1b7f@denx.de>
In-Reply-To: <4788af3e-b36d-fbe9-bd17-db1db85f1b7f@denx.de>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 26 Aug 2022 13:52:00 +0200
Message-ID: <CACRpkdZ9ZbspO8HGwsp+vhH5TZwwCOZ0n_wh7uJ8F14aaYtJjw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: display: bridge: icn6211: Add support
 for RGB/BGR swap
To:     Marek Vasut <marex@denx.de>
Cc:     Rob Herring <robh@kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Robert Foss <robert.foss@linaro.org>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 8, 2022 at 3:57 AM Marek Vasut <marex@denx.de> wrote:
> On 8/4/22 00:41, Rob Herring wrote:
> > On Tue, Aug 2, 2022 at 5:33 AM Marek Vasut <marex@denx.de> wrote:
> >>
> >> On 8/1/22 18:32, Rob Herring wrote:
> >>> On Mon, Aug 01, 2022 at 03:19:00PM +0200, Marek Vasut wrote:
> >>>> The ICN6211 is capable of swapping the output DPI RGB/BGR color channels,
> >>>> document a DT property to select this swap in DT. This can be useful on
> >>>> hardware where such swap happens.
> >>>
> >>> We should ensure this series[1] works for you instead.
> >>
> >> [...]
> >>
> >>> Rob
> >>>
> >>> [1] https://lore.kernel.org/r/20220628181838.2031-3-max.oss.09@gmail.com
> >>
> >> I'm still not convinced that we should encode this pixel format value
> >> directly into the DT instead of trying to describe the DPI bus color
> >> channel width/order/shift in the DT instead. I think I mentioned that
> >> before in one of the previous versions of that series.
> >
> > I worry that it gets pretty verbose, but worth having the discussion.
> > In any case, let's have that discussion and not add yet another one
> > off property.
>
> Done, I replied

So what is the verdict? Is this patch set dropped or shall it be
applied?

Yours,
Linus Walleij
