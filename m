Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C834F68F0D6
	for <lists+devicetree@lfdr.de>; Wed,  8 Feb 2023 15:30:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231395AbjBHOaz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Feb 2023 09:30:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230393AbjBHOay (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Feb 2023 09:30:54 -0500
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C31EF3A9E
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 06:30:52 -0800 (PST)
Received: by mail-ej1-x632.google.com with SMTP id u22so7046061ejj.10
        for <devicetree@vger.kernel.org>; Wed, 08 Feb 2023 06:30:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xv/iB69rY5MDb5hV5n9uwKuD5gimFsR45T01z2ZZ+d0=;
        b=fRjJOhiNjdNfSD6yqiiAmA+P6IXUOtpIvMuZNsZPOdJl4VideDYpQIcH7mRY3Pt7nk
         ESXoz1egOJvuv8e6ZdWiCFGN9GGZenSpnzsU2fMDeSLQiAd9kGW9oukeBQI/ofypfA8b
         XJlX3GnSlBN4KHxrCpUQ+ioyo7koc+XceoYo35pNQG1FQ5qZG5acAlcgbQcbXCZFnUb+
         dKTp07QKU7H9RqoRhhqd+/bKIVrrdCC/3DU4cJtYEq0mGZu8WOcI4Q3pEs4pLUt+r2qu
         QJQoLp64LFTUDMhShbRh0Dw3xj9D5fW5YQeBO183UpTZJydq4m7cUE3UK5vv2LMtB3lH
         P2rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xv/iB69rY5MDb5hV5n9uwKuD5gimFsR45T01z2ZZ+d0=;
        b=is6KENWjrFS2RSRVe1utWoyJ+8LZt5vsrt5l7xODnTV5oKyi9vPCbs84nH98IgwRb1
         uKe9l6gR8E160pK7F9qwv+NCNkZVK9Qm5nJhCM0UPaRKSoUTTZZTiZDL5LB7fEqIrfKO
         zBGXoIBM54hPrjhK/bi+OaxmVCbdiugKTQO3B2boIGf+VvH7Emnonx2FPLYHqQVtvmSk
         IxiRjnJ1l/kU9eXeIybKwvX9mXgRa1WrsfDvL+otn7LAgTaEmoL1yZSkUPHGHjs87lN4
         RYRgYEGrqx9YHMJ+IM4cJobr/YIK46LZpQLlOWXGmYbhq7bictQsK1ES+S4U3LjsPlQ6
         cRmg==
X-Gm-Message-State: AO0yUKUN7ODonD+ke4pWWAQYjpEgymrDoPyVNntPDVKOb5mXeu/MqOv2
        VFr+NmMwlNC6jagH+l4uQdIEdw==
X-Google-Smtp-Source: AK7set/x2EDXjkMHYEQ6OzaRfTTMLZbpxjwchkhKBdHZQ4ZwIulS4CtS3mq/FdWV0ffPIP835Uo65w==
X-Received: by 2002:a17:907:8d6:b0:8aa:1634:ba2a with SMTP id zu22-20020a17090708d600b008aa1634ba2amr5819792ejb.18.1675866651357;
        Wed, 08 Feb 2023 06:30:51 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id lv3-20020a170906bc8300b00883410a786csm8258763ejb.207.2023.02.08.06.30.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 06:30:50 -0800 (PST)
Message-ID: <ead8db2f-71bd-1b64-c663-faa0ce3bcc3e@linaro.org>
Date:   Wed, 8 Feb 2023 16:30:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3 4/4] drm/msm/dpu: reserve the resources on topology
 change
Content-Language: en-GB
To:     Kalyan Thota <quic_kalyant@quicinc.com>,
        dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org
Cc:     linux-kernel@vger.kernel.org, robdclark@chromium.org,
        dianders@chromium.org, swboyd@chromium.org,
        quic_vpolimer@quicinc.com, quic_abhinavk@quicinc.com,
        marijn.suijten@somainline.org
References: <1675863724-28412-1-git-send-email-quic_kalyant@quicinc.com>
 <1675863724-28412-5-git-send-email-quic_kalyant@quicinc.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <1675863724-28412-5-git-send-email-quic_kalyant@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/02/2023 15:42, Kalyan Thota wrote:
> Some features like CTM can be enabled dynamically. Release
> and reserve the DPU resources whenever a topology change
> occurs such that required hw blocks are allocated appropriately.
> 
> Signed-off-by: Kalyan Thota <quic_kalyant@quicinc.com>
> ---
> Changes in v1:
> - Avoid mode_set call directly (Dmitry)
> 
> Changes in v2:
> - Minor nits (Dmitry)
> 
> Changes in v3:
> - avoid unnecessary modeset check call (Dmitry)
> ---
>   drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.h    |  2 ++
>   drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c | 24 +++++++++++++++++++-----
>   2 files changed, 21 insertions(+), 5 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

