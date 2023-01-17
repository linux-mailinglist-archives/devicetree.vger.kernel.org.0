Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0345166E3AD
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 17:35:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232754AbjAQQfp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 11:35:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232077AbjAQQfR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 11:35:17 -0500
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F9F543458
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 08:35:16 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id ss4so69377424ejb.11
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 08:35:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SKt6FUbs0NRTdylWMz2ns+XH+sssUdEr8LiKsXM1UOA=;
        b=IONHL8M211hbqnvHJxhpzV+DBFTwMzWtBVbmOPsSS8ORin6BOLQpdh8nIh8ieg2vr6
         /f3kq87LpUlDR0iI22hK6hBpwRHBQTwWhiQYbXHExWcYCnpzHXd4m3kxyoqlpvbp44W/
         RMkUDbU8yFK2iQ611Rlt7md+mq4Sdw1ZWuVjVXNk5vjReROJ4f832nd735JNRluMHFJZ
         n8Dht7hxfenVzjd1HCrW6OjavSCxjsqPAcEaF+mbykBFM2kCLxnuRaDQRc4nUNdau7vd
         O+ENqN9cOLLdkVrH3h3no6ginShLIOsGoNucPoq8kRBuZO9j0ZO2xPXF3IiUkUl5xTmv
         nopg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SKt6FUbs0NRTdylWMz2ns+XH+sssUdEr8LiKsXM1UOA=;
        b=3nLFdFbSxle93AfBSpV+StFTrgSpcMXg0ewWVRRgd82PCQfaqhKMUYmjNetuYWtDRD
         JRwkH8+sxmsAXYbKa8vTwrYa4rZdeaddeHK5E+MmYp2pvnOpXI6svUeC2bIOWqFKnOfA
         2UIjdDMyXtUUC8TZhu0wdzAuXjtIUNOX/7I3qrhQ85o8R05O2/f2NvScocjj2VYqdkzG
         EQiUZLOKj2L1UhG8vaSfqaUEfxZuO/TyM0Ytz0d042E9G6+WACJQ/c0Ps0JXiB0jJbh2
         BuX5fU/fHUDLVIV+AJmGniNctQBwuKwJagVubXDP+hzgoNfq2R4zNDQF3NPL11bBUaqf
         KkAA==
X-Gm-Message-State: AFqh2kozA4ctKU9YY3fyWBDHjCAqCmm7z7lj5ufY/i1kBKLBtYysGaTS
        yZ6134XC9HN3Dm7NZRRTEFtfFw==
X-Google-Smtp-Source: AMrXdXs5AVHAIlz7sxihSBRcrZGbFCUjXMBelpA5amhed2x0+IJYDSZ+Pgu3xgl9UUHwffn6H0R2xw==
X-Received: by 2002:a17:907:a2cb:b0:871:dd2:4af0 with SMTP id re11-20020a170907a2cb00b008710dd24af0mr3566417ejc.26.1673973314968;
        Tue, 17 Jan 2023 08:35:14 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id ss5-20020a170907038500b00856ad9108e7sm9201315ejb.70.2023.01.17.08.35.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 08:35:14 -0800 (PST)
Message-ID: <0a845c24-b1a5-a961-103f-0d8840a8f17d@linaro.org>
Date:   Tue, 17 Jan 2023 18:35:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 1/3] drm/msm/disp/dpu1: allow reservation even if dspps
 are not available.
Content-Language: en-GB
To:     Kalyan Thota <quic_kalyant@quicinc.com>,
        dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org
Cc:     linux-kernel@vger.kernel.org, robdclark@chromium.org,
        dianders@chromium.org, swboyd@chromium.org,
        quic_vpolimer@quicinc.com, quic_abhinavk@quicinc.com
References: <1673972488-30140-1-git-send-email-quic_kalyant@quicinc.com>
 <1673972488-30140-2-git-send-email-quic_kalyant@quicinc.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <1673972488-30140-2-git-send-email-quic_kalyant@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/01/2023 18:21, Kalyan Thota wrote:
> if any topology requests for dspps and catalogue doesn't have the
> allocation, avoid failing the reservation.
> 
> This can pave way to build logic allowing composer fallbacks
> for all the color features that are handled in dspp.
> 
> Signed-off-by: Kalyan Thota <quic_kalyant@quicinc.com>
> ---
>   drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c | 8 +++++++-
>   1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c
> index 73b3442..c8899ae 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c
> @@ -343,7 +343,13 @@ static bool _dpu_rm_check_lm_and_get_connected_blks(struct dpu_rm *rm,
>   		return true;
>   
>   	idx = lm_cfg->dspp - DSPP_0;
> -	if (idx < 0 || idx >= ARRAY_SIZE(rm->dspp_blks)) {
> +
> +	if (idx < 0) {

The change doesn't correspond to commit message.

> +		DPU_DEBUG("lm doesn't have dspp, ignoring the request %d\n", lm_cfg->dspp);
> +		return true;
> +	}
> +
> +	if (idx >= ARRAY_SIZE(rm->dspp_blks)) {
>   		DPU_ERROR("failed to get dspp on lm %d\n", lm_cfg->dspp);
>   		return false;
>   	}

If you'd like to remove duplicate for the (idx >= ARRAY_SIZE) check, I'd 
suggest dropping the second one


-- 
With best wishes
Dmitry

