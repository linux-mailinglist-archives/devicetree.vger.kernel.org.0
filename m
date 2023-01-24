Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81FFB678CD7
	for <lists+devicetree@lfdr.de>; Tue, 24 Jan 2023 01:28:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232349AbjAXA21 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 19:28:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231228AbjAXA21 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 19:28:27 -0500
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E00022796
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 16:28:25 -0800 (PST)
Received: by mail-ej1-x62a.google.com with SMTP id ss4so34871923ejb.11
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 16:28:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tjyTsMDmt31BlHBQvSSudpSDBFGEGpfCK49ak+UpW5k=;
        b=P515i+qerySP0rO8132vsKoOq+GVeAoI15L9AMuVLVTM4+ZZh8VsLaByOg14BfyHYX
         tW+MEBsmfDdWXrS6sKL4v+c9OS5NfQhT2Pz4VQF5q4V6uYvgab/D/1b63zid9e6D5IDp
         N9EvUdDcVMo/En+2u/2CleaVoWbYdsq2+bpfk8luk96Tz0QpsU2fVovteieiE62zF0MG
         pnLtJxFnFsl0rtH0g2VbZP/iRjKpQt8fzuG83JXDBF1XwaNbCJt0828rn08C2Mag7jBW
         3rIGOLxYYTIN27BQBviNIYo3cnHA/4KeTRCTyPQJeFdbsMkF6QIVEV3M5OpaWKBM0H39
         Rnlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tjyTsMDmt31BlHBQvSSudpSDBFGEGpfCK49ak+UpW5k=;
        b=i6QiKGkM3yEWCVli8RRButVhD0efjxQi3vYHW2ICSocZxlIUO8vQFVtrw8xwBoIjKr
         nOsLmhoItMzuX01Z3QuIJee4+uT0QxiRXHCFeEBh1X2PCvp+52v+So4VxMRdiXij82q0
         lG/vDe1DsHTGqLMWBOIa3rAQF8zvVKb+fdANo8QPqFCJBSgb8uLe4FVisidJ1YeR0KyT
         20YfWwioc8eP9kOpBCpG8XKdPyEe3D/jxs/X6o5pkE4aGmK28Y1AwR2vVMFl/wijhrLz
         v68xf0AGkfpw7FC/DDr7D/wMdgpYk7k311kVtL2ldbj2vNEfRphJugutk8Lhk8gx3uxD
         Urlw==
X-Gm-Message-State: AFqh2kqOQ8DVhAo+QmcLZ8HmnZsH6X3NwomvREo+qIBidpy1Y/NEN93G
        dlh+woJcGWu632md/PtgyeNsvA==
X-Google-Smtp-Source: AMrXdXtJNgmulgrS5IsJGPMlnQVhgsp5jvWOBziGMmwq1XGGY9/FU/MrN1uBYi0aVJN6/hYj/TMTag==
X-Received: by 2002:a17:906:5f82:b0:871:45b2:19fb with SMTP id a2-20020a1709065f8200b0087145b219fbmr26389997eju.25.1674520103910;
        Mon, 23 Jan 2023 16:28:23 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id ko26-20020a170907987a00b00846734faa9asm121355ejc.164.2023.01.23.16.28.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jan 2023 16:28:23 -0800 (PST)
Message-ID: <69a62eb8-a7dd-3a73-e02d-b4bc332e2aef@linaro.org>
Date:   Tue, 24 Jan 2023 02:28:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH Resend v11 14/15] drm/msm/disp/dpu: clear active interface
 in the datapath cleanup
Content-Language: en-GB
To:     Vinod Polimera <quic_vpolimer@quicinc.com>,
        dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org
Cc:     linux-kernel@vger.kernel.org, robdclark@gmail.com,
        dianders@chromium.org, swboyd@chromium.org,
        quic_kalyant@quicinc.com, quic_khsieh@quicinc.com,
        quic_vproddut@quicinc.com, quic_bjorande@quicinc.com,
        quic_abhinavk@quicinc.com, quic_sbillaka@quicinc.com
References: <1674138393-475-1-git-send-email-quic_vpolimer@quicinc.com>
 <1674138393-475-15-git-send-email-quic_vpolimer@quicinc.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <1674138393-475-15-git-send-email-quic_vpolimer@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/01/2023 16:26, Vinod Polimera wrote:
> Clear interface active register from the datapath for a clean shutdown of
> the datapath.
> 
> Signed-off-by: Vinod Polimera <quic_vpolimer@quicinc.com>
> ---
>   drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
> index 9cf1263..30dee50 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
> @@ -2085,6 +2085,9 @@ void dpu_encoder_helper_phys_cleanup(struct dpu_encoder_phys *phys_enc)
>   	if (phys_enc->hw_pp->merge_3d)
>   		intf_cfg.merge_3d = phys_enc->hw_pp->merge_3d->idx;
>   
> +	if (phys_enc->hw_intf)
> +		intf_cfg.intf = phys_enc->hw_intf->idx;
> +
>   	if (ctl->ops.reset_intf_cfg)
>   		ctl->ops.reset_intf_cfg(ctl, &intf_cfg);
>   

This is already handled as a part of the commit
9811913a6dd0 ("drm/msm/dpu: populate wb or intf before reset_intf_cfg")
-- 
With best wishes
Dmitry

