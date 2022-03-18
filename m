Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6A1D4DD1D1
	for <lists+devicetree@lfdr.de>; Fri, 18 Mar 2022 01:14:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230451AbiCRANe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Mar 2022 20:13:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230471AbiCRANd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Mar 2022 20:13:33 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFFDD14146A
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 17:12:14 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id bi12so14038628ejb.3
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 17:12:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GlfqT3gCisJBMTAg9owO2Ux8q0knKebgrHQt0YZbpxI=;
        b=nBDhznL6GSZim3PdexrPGQqpwQ4fFBAapWTmPPNrAt0uN427dmLC1mJrI8HXE1C1kx
         upaggKMpoTVkewUUN8f4G2ccK2tUnREtzjnOO9fkjvE2aXhO73VuvMgL2JxHG1mUNou7
         E4BgOMO9zLLV6AZpoxwm0FAG5//90kHjahP1c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GlfqT3gCisJBMTAg9owO2Ux8q0knKebgrHQt0YZbpxI=;
        b=cXXyhfZNCRSLyJ8+vkHSzn9jfVwzqBsU/OepIlbGQRZ/WWG7JCHEolRiTduvTLsGfG
         /QH4VjXUmOvHXL5qZ++w7oHGi7vMvaP+wVR3vmhCuoWTwnBwZC0hkQM3FFvpTZt1Q2W1
         SwwmZWSx9FbyHfP0n8r0mFWBeAI/2AZnapqXJcCe+H5VBWcelmUgXoYc5+CnR2L++yn+
         IV/T8CbipIy+f6Aa6TIv1dc/jvYJmzeri9bbv29/jOE/D6jTBJLHwGGriAvVM76XnZhZ
         ze24VuYBL6s7LdgrBSyIohmdTD2m4KLU+mWgEM1CXpDoBLzIIeftyGjm0NnICpYZtK8x
         M43Q==
X-Gm-Message-State: AOAM533dwCVCGaf/iedq7uWuSe9P/+KYv2npysiGDK0WMRMKMSv6jgKz
        zzVB7LIhAZZvqQ9YEB3VBhVsUmlz955i8G4U4O0=
X-Google-Smtp-Source: ABdhPJwEXxX1xJBUNaT79FxSRx5bw/RBwH0hWX4YE114b7tgggI9+cHc4X9U5/zrymLCkIkLSPthHQ==
X-Received: by 2002:a17:906:49d4:b0:6d6:e5ec:9a23 with SMTP id w20-20020a17090649d400b006d6e5ec9a23mr6732730ejv.79.1647562333067;
        Thu, 17 Mar 2022 17:12:13 -0700 (PDT)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com. [209.85.221.54])
        by smtp.gmail.com with ESMTPSA id a102-20020a509eef000000b0041614c8f79asm3268812edf.88.2022.03.17.17.12.12
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Mar 2022 17:12:12 -0700 (PDT)
Received: by mail-wr1-f54.google.com with SMTP id t11so9655079wrm.5
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 17:12:12 -0700 (PDT)
X-Received: by 2002:adf:fc47:0:b0:203:dda1:4311 with SMTP id
 e7-20020adffc47000000b00203dda14311mr6191933wrs.301.1647562331786; Thu, 17
 Mar 2022 17:12:11 -0700 (PDT)
MIME-Version: 1.0
References: <1647269217-14064-1-git-send-email-quic_vpolimer@quicinc.com> <1647269217-14064-2-git-send-email-quic_vpolimer@quicinc.com>
In-Reply-To: <1647269217-14064-2-git-send-email-quic_vpolimer@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 17 Mar 2022 17:11:58 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V4SWtyz4fFEmvKD_N-2ioS4R65UDZRU7utQm=0CSzp=g@mail.gmail.com>
Message-ID: <CAD=FV=V4SWtyz4fFEmvKD_N-2ioS4R65UDZRU7utQm=0CSzp=g@mail.gmail.com>
Subject: Re: [PATCH v6 1/5] drm/msm/disp/dpu1: set mdp clk to the maximum
 frequency in opp table during probe
To:     Vinod Polimera <quic_vpolimer@quicinc.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Rob Clark <robdclark@gmail.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        quic_kalyant <quic_kalyant@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Mar 14, 2022 at 7:47 AM Vinod Polimera
<quic_vpolimer@quicinc.com> wrote:
>
> use max clock during probe/bind sequence from the opp table.
> The clock will be scaled down when framework sends an update.
>
> Fixes: 25fdd5933("drm/msm: Add SDM845 DPU support")

The "Fixes:" format is a little wrong. Should have more digits and a
space before the parenthesis. AKA:

Fixes: 25fdd5933e4c ("drm/msm: Add SDM845 DPU support")

> Signed-off-by: Vinod Polimera <quic_vpolimer@quicinc.com>
> ---
>  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c | 8 ++++++++
>  1 file changed, 8 insertions(+)

This looks good to me now other than the bad Fixes tag. I presume
you'll want to spin with the extra verbosity in the CL description
that Stephen asked for, though.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
