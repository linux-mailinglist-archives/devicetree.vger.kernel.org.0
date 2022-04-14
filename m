Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 35BDE501C15
	for <lists+devicetree@lfdr.de>; Thu, 14 Apr 2022 21:42:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345715AbiDNTnB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Apr 2022 15:43:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345890AbiDNTm4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Apr 2022 15:42:56 -0400
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 195D94A3DC
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 12:40:31 -0700 (PDT)
Received: by mail-ot1-x32d.google.com with SMTP id c21-20020a056830001500b005f8f6757c22so2314579otp.1
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 12:40:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=IZs+lSCZqoVK/AKlAjq1EPKE7N59AQDgaVEofEcz/4k=;
        b=ETgEm9IDuhcJCpRZjCKvwitdHctDrYi29lxjTbWawEHjmBCyLjRt4MYCErwWxyIiIU
         9oGWk2XpMi1dM7n5ZXoIhJ0xbZW+2UzdP/epWdGbxtw72AUKBsEqN300BmeuFGb6JktJ
         WiZk4JZpzp/44sQgTfDviIGsknHKZQ6/7y4R4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=IZs+lSCZqoVK/AKlAjq1EPKE7N59AQDgaVEofEcz/4k=;
        b=il7N2MEOA4BsmTasKKVPS2lZn0+SAlQAT8x7ftUOgN3DkCLUwR8lbrSVU6zNQYLwld
         jOkcQK+/Nr6teYwTcHA8bAdpB8m9Ryn4OViSExd7uUpkeXf+H0tmRbZE6IseSSrUu7aN
         1q+HU0Mv4BJ7y3/bZSC1A5tpO/0LjD5irAFm1NenWnc3X8e2Sx2H5KbEuvyceLi6/w1B
         L03e+AnQTNajChg3ZObjq70BBjeuoihu1JstTHyKIVIY3kEnYD6GIW+oA8cRFxGt8pMR
         8fGr2gD/leMoGWR4873O3bx9ts6vAE50nYW7/aZELEM+s/AGJk7QUldjtRUKQVQVK6ZY
         oROQ==
X-Gm-Message-State: AOAM5318NRH02ojto5sZcRGUeK7QEi2czieHJm0c+dQYgCNhonoNdgDs
        EvyfTKhTCh4bRpUJvAHk7oeGpmNuxNiRg5e9iG2tag==
X-Google-Smtp-Source: ABdhPJzlgZCJ3S0otpiIbEsDjjXXeYSCOZF8aExMi2XEL/qGTFsnoTp0g7uybuwoqYnKkMyfeBWPcXWlvFAuimKyVBc=
X-Received: by 2002:a9d:20a1:0:b0:5e8:d2b6:f63f with SMTP id
 x30-20020a9d20a1000000b005e8d2b6f63fmr1455625ota.159.1649965230478; Thu, 14
 Apr 2022 12:40:30 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 14 Apr 2022 12:40:29 -0700
MIME-Version: 1.0
In-Reply-To: <81c3a9fb-4c92-6969-c715-ca085322f9c6@linaro.org>
References: <1649938766-6768-1-git-send-email-quic_sbillaka@quicinc.com>
 <1649938766-6768-2-git-send-email-quic_sbillaka@quicinc.com>
 <CAD=FV=Wmiv2WGhFCLYmXbWESNOh5FfobjNme85aU6YtN1SLVDA@mail.gmail.com> <81c3a9fb-4c92-6969-c715-ca085322f9c6@linaro.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Thu, 14 Apr 2022 12:40:29 -0700
Message-ID: <CAE-0n50obe_aqzwQY-X1yH4emjjOErOJ_wj9sQe=HoWEZ3vjTw@mail.gmail.com>
Subject: Re: [PATCH v7 1/4] drm/msm/dp: Add eDP support via aux_bus
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Doug Anderson <dianders@chromium.org>,
        Sankeerth Billakanti <quic_sbillaka@quicinc.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        LKML <linux-kernel@vger.kernel.org>, devicetree@vger.kernel.org,
        Rob Clark <robdclark@gmail.com>,
        Sean Paul <seanpaul@chromium.org>,
        quic_kalyant <quic_kalyant@quicinc.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        quic_vproddut <quic_vproddut@quicinc.com>,
        Aravind Venkateswaran <quic_aravindh@quicinc.com>,
        Steev Klimaszewski <steev@kali.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Dmitry Baryshkov (2022-04-14 12:16:14)
>
> I think it's too verbose and a bit incorrect.
> This is a bit saner:
> /*
>   * These ops do not make sense for eDP, since they are provided
>   * by the panel-bridge corresponding to the attached eDP panel.
>   */
>
> My question was whether we really need to disable them for eDP since for
> eDP the detect and and get_modes will be overridden anyway.

And to go further, I'd expect that a bridge should expose the
functionality that it supports, regardless of what is connected down the
chain. Otherwise we won't be able to mix and match bridges because the
code is brittle, making assumptions about what is connected.
