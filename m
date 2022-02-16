Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2550C4B9168
	for <lists+devicetree@lfdr.de>; Wed, 16 Feb 2022 20:40:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233990AbiBPTkO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Feb 2022 14:40:14 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:41760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229554AbiBPTkM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Feb 2022 14:40:12 -0500
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4D8E2B0489
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 11:39:59 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id h18so5722672edb.7
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 11:39:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ciKM8JCmOjTFWsSXmArs9c1a9jxN6MlNWKsQdAvB9wQ=;
        b=S+Sj3p+F2dgiPbzCoR+LfRa53UtOXeFacCuEW1Mf2T3LAZQOHiwOq/wfozB3rRsSqp
         6m6F0YJx/DExHK3yJTw89l8Pd7sxcn9PMPbCsGt0Ox3DmNKQkRvhTzpZDwlLeXof1rUL
         5XWlIRBhJyKQu5JehUO7HjJMozFEjKnd9VuGE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ciKM8JCmOjTFWsSXmArs9c1a9jxN6MlNWKsQdAvB9wQ=;
        b=1w6vxprmtUigNk/aQ9zpKl2NWyOy8zB4Qluh0Y35i3BTWAWYf3/K+7nwL5KSSRajQ2
         i8l8+XJIVyfLW5AOZsxL39VKLPzrZTwhjLJ+LiIwQ9iGWYIR3u6OdL8SkjOwtPSxt1Ii
         QyUtY3fRU08M3VrTzxfPPjFulgYamb5lNeZn4DqKlaIt+YXNuNqDtXV98FUnlqDCzvTg
         tup/FMokcbBIOgtl+PrqIORH/in2Nq4IWkF4LTQ55Z0L1C5pDQISFE0p0tYrt+zlPvs8
         j51JIicypKVS7FqjOICDOZ+hnbu2af1mXvQp0J7R2orRtPOfaYNJiAAgkkAOcZ5bcE0Z
         bSbw==
X-Gm-Message-State: AOAM532mn9e18rZ9Q+sG1ZQkExRYR4kJ+p/0XS/CTAUOPlfhdRobFZDv
        NncLEzpSh+Dc0fsHhdHywV3EMjomftAEI9/O
X-Google-Smtp-Source: ABdhPJz5/ij588ASRZEh3b/h+HJHry1ODtMaW7zWDuHCPezckw7z0FlvJpfWnFxxp55LiEYkicU6FA==
X-Received: by 2002:a05:6402:26cb:b0:3fa:3817:1f78 with SMTP id x11-20020a05640226cb00b003fa38171f78mr4666291edd.219.1645040398170;
        Wed, 16 Feb 2022 11:39:58 -0800 (PST)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com. [209.85.221.53])
        by smtp.gmail.com with ESMTPSA id b7sm266017ejl.145.2022.02.16.11.39.55
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Feb 2022 11:39:56 -0800 (PST)
Received: by mail-wr1-f53.google.com with SMTP id d27so5172589wrc.6
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 11:39:55 -0800 (PST)
X-Received: by 2002:adf:e4c2:0:b0:1e3:3e5d:bd65 with SMTP id
 v2-20020adfe4c2000000b001e33e5dbd65mr3549580wrm.422.1645040395241; Wed, 16
 Feb 2022 11:39:55 -0800 (PST)
MIME-Version: 1.0
References: <1644494255-6632-1-git-send-email-quic_sbillaka@quicinc.com>
 <1644494255-6632-2-git-send-email-quic_sbillaka@quicinc.com> <CAD=FV=UZwuYRMNOxX6_W_z1PC-UNqvN=Mdtskn=djPPMRE122w@mail.gmail.com>
In-Reply-To: <CAD=FV=UZwuYRMNOxX6_W_z1PC-UNqvN=Mdtskn=djPPMRE122w@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 16 Feb 2022 11:39:43 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UvTXLEuKbkVHeiP=djzFscGJxL5iP+cafGnvjMXhmFKA@mail.gmail.com>
Message-ID: <CAD=FV=UvTXLEuKbkVHeiP=djzFscGJxL5iP+cafGnvjMXhmFKA@mail.gmail.com>
Subject: Re: [PATCH v4 1/5] dt-bindings: display: simple: Add sharp
 LQ140M1JW46 panel
To:     Sankeerth Billakanti <quic_sbillaka@quicinc.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Rob Clark <robdclark@gmail.com>,
        Sean Paul <seanpaul@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, quic_kalyant@quicinc.com,
        quic_abhinavk@quicinc.com, quic_khsieh@quicinc.com,
        quic_mkrishn@quicinc.com, quic_vproddut@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Feb 16, 2022 at 11:26 AM Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Thu, Feb 10, 2022 at 3:58 AM Sankeerth Billakanti
> <quic_sbillaka@quicinc.com> wrote:
> >
> > Add support for sharp LQ140M1JW46 display panel. It is a 14" eDP panel
> > with 1920x1080 display resolution.
> >
> > Signed-off-by: Sankeerth Billakanti <quic_sbillaka@quicinc.com>
> > Acked-by: Rob Herring <robh@kernel.org>
> > Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> > ---
> >
> > Changes in v4:
> >   None
> >
> > Changes in v3:
> >   None
> >
> >  Documentation/devicetree/bindings/display/panel/panel-simple.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>

...and pushed to drm-misc-next:

122365cfe9de dt-bindings: display: simple: Add sharp LQ140M1JW46 panel

So v5 shouldn't include this patch.

-Doug
