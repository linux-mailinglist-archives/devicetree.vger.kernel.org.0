Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBEB54EE4B6
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 01:25:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243101AbiCaXZd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 19:25:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242115AbiCaXZ3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 19:25:29 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDDEA46B29
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 16:23:22 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id i16so2313604ejk.12
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 16:23:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7juVurgjLt3GvUzI9U9c+xp5sahJ/Uk+aOlgugxy0EM=;
        b=RtJix/BsoQj0ELH2OMFl7dwsORWQLL0UBqSXWJr5KoYLICZZbVFRb/zdCkHwWWysN5
         3b5vtLz0FaF+JGho0PKGYaYoz18U0Fy53xtgtIwoMITco5McP4KTTF/FQkbhfbr91SR4
         pxJraAJYBLjynqhNcmQ0n9QTPBRiLktURUGCg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7juVurgjLt3GvUzI9U9c+xp5sahJ/Uk+aOlgugxy0EM=;
        b=2dzMUqbngurr7x6Jwa+C8BAa8fns2EJWM66QDveW0/+dU4PvQpdRg/J5c9xuZu3tgp
         vAENd3gW/5Kum7WrZw8/zj5PQv/aoCv4sZAGIx67pUeTL4FZLWUcafIiaUP7GLo7oRfi
         G8vRAWI5F/wql2sgbx4isekPfnkymZBUsT5C2ysSeJGdowdjLh0eEKs+tDKLVxyu84w+
         zMPDkEm7jDZtZy+rUYATYPKG2D/h57fECPuu8gyQaDF7VqjJg9YP39tfm+bROJmV4YxB
         nq85WtIkW3byEFVUM6clrGyd6aFqZMzLp+F1yWoW0IOn/LzBTqF4IB84SjkLjb5l5Fth
         mFMg==
X-Gm-Message-State: AOAM532LRh5juV+eN38/L3ZvcXyXAOLplqq1WbP/39Z8f2fLe9JHq8mS
        X4KDqLKn0K3ZvzwiYEwMK4ec7QuuDjp+VmAB
X-Google-Smtp-Source: ABdhPJzoCpz4zXAfl2W3n1N3cny6ggSzuD9XwN65I1KFJjnX4z4tCrd1UC8RZMKvQiXZRtRXShiXpg==
X-Received: by 2002:a17:907:160b:b0:6e1:116e:7a59 with SMTP id hb11-20020a170907160b00b006e1116e7a59mr6859593ejc.579.1648769001097;
        Thu, 31 Mar 2022 16:23:21 -0700 (PDT)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com. [209.85.221.49])
        by smtp.gmail.com with ESMTPSA id kb28-20020a1709070f9c00b006d5d8bf1b72sm314954ejc.78.2022.03.31.16.23.18
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Mar 2022 16:23:19 -0700 (PDT)
Received: by mail-wr1-f49.google.com with SMTP id r13so1787939wrr.9
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 16:23:18 -0700 (PDT)
X-Received: by 2002:adf:e7cd:0:b0:204:ba2:b106 with SMTP id
 e13-20020adfe7cd000000b002040ba2b106mr5551021wrn.679.1648768998053; Thu, 31
 Mar 2022 16:23:18 -0700 (PDT)
MIME-Version: 1.0
References: <1648656179-10347-1-git-send-email-quic_sbillaka@quicinc.com> <1648656179-10347-6-git-send-email-quic_sbillaka@quicinc.com>
In-Reply-To: <1648656179-10347-6-git-send-email-quic_sbillaka@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 31 Mar 2022 16:23:05 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wn-XypjRcw-D0VtBHZbuTz=RHiMq6RCHCa=CWmZM42nQ@mail.gmail.com>
Message-ID: <CAD=FV=Wn-XypjRcw-D0VtBHZbuTz=RHiMq6RCHCa=CWmZM42nQ@mail.gmail.com>
Subject: Re: [PATCH v6 5/8] drm/msm/dp: prevent multiple votes for dp resources
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
        quic_aravindh@quicinc.com
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

Hi,

On Wed, Mar 30, 2022 at 9:04 AM Sankeerth Billakanti
<quic_sbillaka@quicinc.com> wrote:
>
> The aux_bus support with the dp_display driver will enable the dp
> resources during msm_dp_modeset_init. The host_init has to return early
> if the core is already initialized to prevent putting an additional vote
> for the dp controller resources.
>
> Signed-off-by: Sankeerth Billakanti <quic_sbillaka@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_display.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)

I'm not a huge fan of this but I'll leave it up to Dmitry. In general
it feels like there should be _a_ place that enables these resources.
Checks like this make it feel like we just scattershot enabling
resources in a bunch of random places instead of coming up with the
design for enabling them in the right place.

In any case, if we do end up landing this patch, it sure feels like it
needs to move earlier in the patch series, right? This patch shouldn't
hurt even without the other patches in the series but if you apply the
earlier patches in the series without this one then you'll have a bug,
right? That means this needs to come earlier.

-Doug
