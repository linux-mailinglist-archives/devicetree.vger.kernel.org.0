Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0191750BB85
	for <lists+devicetree@lfdr.de>; Fri, 22 Apr 2022 17:17:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357069AbiDVPUF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 11:20:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1449352AbiDVPUB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 11:20:01 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CEAF5DA12
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 08:17:08 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id lc2so16953521ejb.12
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 08:17:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bCYg7vAuheGkarssmttLzV2pY8DshumVmOA1bng63AI=;
        b=MEHquvyCw0wwPt7kCehis+PVhTx3pdKhV9pM8R14d3I84H9iWWWE6KzzCxSsYQhhsl
         c83Cbt0ZGqEK5noq0q1nj6TCqfNagjRO4ZvehG7CajbMG52gB3gjedYjBEbc1tmEBrbI
         A/ZhHFcuM+kMPol4W5p8CvCk05gkvpyT0o8xg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bCYg7vAuheGkarssmttLzV2pY8DshumVmOA1bng63AI=;
        b=B0DuegRIcTGtGJZbkiRhVH62rcgoDCAPnXneLeGqUa7SajobUdMnTYsY/WxNzzRdn2
         UJl5j11FrI+WhuOLuCZ+OX8NOyDbWW55EpNVsqIFfQ/LezGaHvPSJu44wnAC1Yj+zNCJ
         Q2umihBbJlecYn4pwrkacx7uhDXqUa5ro74ZJQW8g4628nuNfcdxqxER9GqtFrrUET8e
         xnuFC1hVed5FqLpXS/zSTk+ddzeZj+Ck9H/FRGgTHPDos4GomnsGQB6GlGMCopDGhkBe
         9BSos9ni+SLnb67rvnkLEW87oRYSvp0t8pnjY9THIp2iB2UEYON6YK0jYGDwGIcCm+4s
         Mmjg==
X-Gm-Message-State: AOAM533WjmMXHL9uTNB0QbYuwbtoPt1msmPVcr9jF8z0zLaHOadLVA3l
        zIk/6nXIFuzIPoAGhe1THYUM6uOXc4LoYOY2GZ8=
X-Google-Smtp-Source: ABdhPJzAC9Ih3Ioo/Hu/xrx71fveKURbCiFJk+luSxoKN9BbOo+F1r0hI8h5k9L1DOS4hZJHg5Pijg==
X-Received: by 2002:a17:907:2144:b0:6e8:78c1:8c61 with SMTP id rk4-20020a170907214400b006e878c18c61mr4619543ejb.89.1650640626625;
        Fri, 22 Apr 2022 08:17:06 -0700 (PDT)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com. [209.85.128.54])
        by smtp.gmail.com with ESMTPSA id q9-20020a170906770900b006d20acf7e2bsm833845ejm.200.2022.04.22.08.17.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Apr 2022 08:17:06 -0700 (PDT)
Received: by mail-wm1-f54.google.com with SMTP id u17-20020a05600c211100b0038eaf4cdaaeso8174950wml.1
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 08:17:05 -0700 (PDT)
X-Received: by 2002:a05:600c:3c99:b0:392:b49c:7b79 with SMTP id
 bg25-20020a05600c3c9900b00392b49c7b79mr4569863wmb.199.1650640625481; Fri, 22
 Apr 2022 08:17:05 -0700 (PDT)
MIME-Version: 1.0
References: <1647919631-14447-1-git-send-email-quic_vpolimer@quicinc.com> <1647919631-14447-2-git-send-email-quic_vpolimer@quicinc.com>
In-Reply-To: <1647919631-14447-2-git-send-email-quic_vpolimer@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 22 Apr 2022 08:16:51 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Xe1bOuiG0T7Y3rRN0cmsjdUK-sDvE-E02eDfSdKih9MA@mail.gmail.com>
Message-ID: <CAD=FV=Xe1bOuiG0T7Y3rRN0cmsjdUK-sDvE-E02eDfSdKih9MA@mail.gmail.com>
Subject: Re: [PATCH v7 1/5] drm/msm/disp/dpu1: set mdp clk to the maximum
 frequency in opp table during probe
To:     Vinod Polimera <quic_vpolimer@quicinc.com>,
        Rob Clark <robdclark@gmail.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        quic_kalyant <quic_kalyant@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Mar 21, 2022 at 8:27 PM Vinod Polimera
<quic_vpolimer@quicinc.com> wrote:
>
> Set mdp clock to max clock rate during probe/bind sequence from the
> opp table so that rails are not at undetermined state. Since we do not
> know what will be the rate set in boot loader, it would be ideal to
> vote at max frequency. There could be a firmware display programmed
> in bootloader and we want to transition it to kernel without underflowing.
> The clock will be scaled down later when framework sends an update.
>
> Fixes: 25fdd5933e4c ("drm/msm: Add SDM845 DPU support")
> Signed-off-by: Vinod Polimera <quic_vpolimer@quicinc.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> ---
>  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c | 8 ++++++++
>  1 file changed, 8 insertions(+)

Just wanted to confirm that this patch will be queued up somewhat
soon. I think it's good to go but I don't see it in any trees yet. ;-)

FWIW, I can also say that I've tested this patch and it fixes the
underrun issues on sc7280-herobrine-rev1.

Tested-by: Douglas Anderson <dianders@chromium.org>

-Doug
