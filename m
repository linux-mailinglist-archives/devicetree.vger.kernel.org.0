Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D223A5848F6
	for <lists+devicetree@lfdr.de>; Fri, 29 Jul 2022 02:18:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230007AbiG2ASn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Jul 2022 20:18:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233421AbiG2ASl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Jul 2022 20:18:41 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2251B78201
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 17:18:36 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id ss3so5756852ejc.11
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 17:18:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=PyBgADkFmRZGD19YV3bJfXKekitzQhA7zmplwDjvl4A=;
        b=EBDfKbN161jfJ2QBSHpfJwdM19oVk8aVJ4xikkdC2kuXRN+8QRATaPmhq8E7nW+CwY
         0BgTL+iXQpYb3/SFbGQJMC8MumsErqG7MH3njWLFzrqPP1pRCjSDD9mvh9NlaP21SyHV
         gJmZF+TK74SlIlGljuDFIZFOnwtouZg04HSZI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=PyBgADkFmRZGD19YV3bJfXKekitzQhA7zmplwDjvl4A=;
        b=SLBIA7oAQOK3rIkaBEmtkWtmHmiNPS7vS9MlmfUVS6zXgSZAU5CZaVt5UTlcRRYcyw
         ti69GjJFepCjQCfVR4Ch/YzbKyKGhPQHEGoA5LwOx8dTzYb9nVdTAi1IOEwThBYPj58r
         L9c3Q2kyBBA1y6kSLqE69yAt6dqMa8Lq4Be/knwsDjWKNJqROAFgBnBNOJ5dSY7Pp9Rp
         LJq8hI1XsBj5krZj+rfXNYc6LR1lWjpsy11CrJeq8r1Q/iCH+KSTeYDhuu4OhFze2ARB
         CajYM9IHaCXnE68xVwURjnjwGN7xMTTKWOCdargaT8uJUMBYoPE41NJr8JzYlR2Vm/NM
         dgNw==
X-Gm-Message-State: AJIora8WigimYRkOhO+WLf/ehL185SgDAGp/s10GA+3Fr0Kzf4s1MzV/
        rUkooTLvnzrsGohkCbQRGQcQWZXAYKJHYIPB
X-Google-Smtp-Source: AGRyM1t5M3KCS9OePlEZM1udQebtFdNQpb0fuZQ8iPSb3uv0MSdkCI/PGdzWPU6hcIs99/e+nioFeg==
X-Received: by 2002:a17:907:d26:b0:72b:8311:a167 with SMTP id gn38-20020a1709070d2600b0072b8311a167mr942896ejc.89.1659053914532;
        Thu, 28 Jul 2022 17:18:34 -0700 (PDT)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com. [209.85.221.45])
        by smtp.gmail.com with ESMTPSA id v14-20020a170906380e00b007262b9f7120sm948893ejc.167.2022.07.28.17.18.33
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jul 2022 17:18:33 -0700 (PDT)
Received: by mail-wr1-f45.google.com with SMTP id bn9so4156125wrb.9
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 17:18:33 -0700 (PDT)
X-Received: by 2002:a5d:6843:0:b0:21f:1114:fc54 with SMTP id
 o3-20020a5d6843000000b0021f1114fc54mr146662wrw.138.1659053913662; Thu, 28 Jul
 2022 17:18:33 -0700 (PDT)
MIME-Version: 1.0
References: <1657544224-10680-1-git-send-email-quic_vpolimer@quicinc.com> <1657544224-10680-3-git-send-email-quic_vpolimer@quicinc.com>
In-Reply-To: <1657544224-10680-3-git-send-email-quic_vpolimer@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 28 Jul 2022 17:18:20 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X2Ci6G5c4LNibKTWu5ZC962j8QeHpG2nn7uCCoRCuFdw@mail.gmail.com>
Message-ID: <CAD=FV=X2Ci6G5c4LNibKTWu5ZC962j8QeHpG2nn7uCCoRCuFdw@mail.gmail.com>
Subject: Re: [PATCH v6 02/10] drm: add helper functions to retrieve old and
 new crtc
To:     Vinod Polimera <quic_vpolimer@quicinc.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Rob Clark <robdclark@gmail.com>,
        Stephen Boyd <swboyd@chromium.org>,
        quic_kalyant <quic_kalyant@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        "Kuogee Hsieh (QUIC)" <quic_khsieh@quicinc.com>,
        quic_vproddut <quic_vproddut@quicinc.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        "Aravind Venkateswaran (QUIC)" <quic_aravindh@quicinc.com>,
        "Abhinav Kumar (QUIC)" <quic_abhinavk@quicinc.com>,
        Sankeerth Billakanti <quic_sbillaka@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Jul 11, 2022 at 5:57 AM Vinod Polimera
<quic_vpolimer@quicinc.com> wrote:
>
> Add new helper functions, drm_atomic_get_old_crtc_for_encoder
> and drm_atomic_get_new_crtc_for_encoder to retrieve the
> corresponding crtc for the encoder.
>
> Signed-off-by: Sankeerth Billakanti <quic_sbillaka@quicinc.com>
> Signed-off-by: Vinod Polimera <quic_vpolimer@quicinc.com>
> ---
>  drivers/gpu/drm/drm_atomic.c | 60 ++++++++++++++++++++++++++++++++++++++++++++
>  include/drm/drm_atomic.h     |  7 ++++++
>  2 files changed, 67 insertions(+)

I don't have a lot of intuition about the code here since I haven't
messed much at this level, but what you have here looks right and
matches other similar helpers. I'm happy enough with:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
