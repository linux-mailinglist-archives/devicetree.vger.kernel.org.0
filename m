Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 742FA50B969
	for <lists+devicetree@lfdr.de>; Fri, 22 Apr 2022 16:03:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1448294AbiDVOGW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 10:06:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1448182AbiDVOGT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 10:06:19 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4EA6D5A160
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 07:03:26 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id el3so5746318edb.11
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 07:03:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XXfqebKK5B9iW+cuu7Wrx8oyDP/rWO517FbDuh8GYTA=;
        b=EwnC0F+Pg4MtRzeeWPuywGVVfrIfoQpkjZejmyOOhaV3NRtb5XzudpYoMW98fIdcAm
         NUM6hR06S3J+6kzWZeWdVcyZdI0Toqj/vsaUJ+zpNTbPAQhBWPEucmWtE0wTHtBDsJ05
         p7cS3QW5VSa1GBar/5aair5GlO7o2wDtoN4xo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XXfqebKK5B9iW+cuu7Wrx8oyDP/rWO517FbDuh8GYTA=;
        b=DK5zBaZXA/R95i2rzgyXbO4u/9YXx958Nz3iY371gGOqTe8DDGRJJUFgcT5rgj/20O
         DQZe4pe3gzgZkqQXfG0BHDcq1QFJuJwu8gEsrZJzFnRURTfGaGqDfOLKpbwtG4HYmb0/
         IjtFHfA6I4fM0fG1UlS5x3ypbfI6een+Z9bLRCM63w9TChjc9V3BjtBtVSeFpYBTl8NB
         TYHOVdATi7SeMde95pgRA83e9nhpUYhCtVlPlFoknaVFWOHgJZXTbRxxfIvkbjZgyyD5
         1QoWYisw5R5XqWUvZ5LnQcv8Gbw/H15qaqjWiVf9CIv7oYdqgb8oKVOporXeSzjW22yk
         gOdQ==
X-Gm-Message-State: AOAM531mdjYOYbrNhPsAzmtXRk0YX8HXjwFDQ/nPkXnOQcaaUm7a1dYs
        q2vOKuCAfEZtjuP42iqB1M3Gb2slfEdJTxXBjEU=
X-Google-Smtp-Source: ABdhPJxBszzdVfrE14SYlrd2x6u5vQlCC1ExIl8o8sLuVusIuqNWm8eAJGvlGjLj1c7C4250EQ6HIw==
X-Received: by 2002:a05:6402:2547:b0:423:f342:e0e3 with SMTP id l7-20020a056402254700b00423f342e0e3mr5075662edb.371.1650636204606;
        Fri, 22 Apr 2022 07:03:24 -0700 (PDT)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com. [209.85.221.50])
        by smtp.gmail.com with ESMTPSA id b23-20020a05640202d700b00422da9b980esm937058edx.22.2022.04.22.07.03.22
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Apr 2022 07:03:22 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id t6so7775350wra.4
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 07:03:22 -0700 (PDT)
X-Received: by 2002:a5d:6506:0:b0:20a:c240:90e2 with SMTP id
 x6-20020a5d6506000000b0020ac24090e2mr3855081wru.342.1650636201140; Fri, 22
 Apr 2022 07:03:21 -0700 (PDT)
MIME-Version: 1.0
References: <1650618666-15342-1-git-send-email-quic_sbillaka@quicinc.com> <1650618666-15342-2-git-send-email-quic_sbillaka@quicinc.com>
In-Reply-To: <1650618666-15342-2-git-send-email-quic_sbillaka@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 22 Apr 2022 07:03:07 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U9M_qsEacBHundgZAHMg7NEnW1LKZX6niN4fmsKUwt6A@mail.gmail.com>
Message-ID: <CAD=FV=U9M_qsEacBHundgZAHMg7NEnW1LKZX6niN4fmsKUwt6A@mail.gmail.com>
Subject: Re: [PATCH v9 1/4] drm/msm/dp: Add eDP support via aux_bus
To:     Sankeerth Billakanti <quic_sbillaka@quicinc.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Clark <robdclark@gmail.com>,
        Sean Paul <seanpaul@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        quic_kalyant <quic_kalyant@quicinc.com>,
        "Abhinav Kumar (QUIC)" <quic_abhinavk@quicinc.com>,
        "Kuogee Hsieh (QUIC)" <quic_khsieh@quicinc.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        quic_vproddut <quic_vproddut@quicinc.com>,
        "Aravind Venkateswaran (QUIC)" <quic_aravindh@quicinc.com>,
        Steev Klimaszewski <steev@kali.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Apr 22, 2022 at 2:11 AM Sankeerth Billakanti
<quic_sbillaka@quicinc.com> wrote:
>
> This patch adds support for generic eDP sink through aux_bus. The eDP/DP
> controller driver should support aux transactions originating from the
> panel-edp driver and hence should be initialized and ready.
>
> The panel bridge supporting the panel should be ready before the bridge
> connector is initialized. The generic panel probe needs the controller
> resources to be enabled to support the aux transactions originating from
> the panel probe.
>
> Signed-off-by: Sankeerth Billakanti <quic_sbillaka@quicinc.com>
> ---
> Changes in v9:
>   - add comments for panel probe
>   - modify the error handling checks
>
> Changes in v8:
>   - handle corner cases
>   - add comment for the bridge ops
>
> Changes in v7:
>   - aux_bus is mandatory for eDP
>   - connector type check modified to just check for eDP
>
> Changes in v6:
>   - Remove initialization
>   - Fix aux_bus node leak
>   - Split the patches
>
>  drivers/gpu/drm/msm/dp/dp_display.c | 73 +++++++++++++++++++++++++++++++++++--
>  drivers/gpu/drm/msm/dp/dp_display.h |  1 +
>  drivers/gpu/drm/msm/dp/dp_drm.c     | 21 +++++++++--
>  drivers/gpu/drm/msm/dp/dp_parser.c  | 23 +-----------
>  drivers/gpu/drm/msm/dp/dp_parser.h  | 13 ++++++-
>  5 files changed, 101 insertions(+), 30 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
