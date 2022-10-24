Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A6AA60B1C6
	for <lists+devicetree@lfdr.de>; Mon, 24 Oct 2022 18:37:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233231AbiJXQhL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Oct 2022 12:37:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233239AbiJXQgq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Oct 2022 12:36:46 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43FE91DDD6
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 08:24:22 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id g7so17293220lfv.5
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 08:24:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8GmmEDLhPtDYGFH5uDa8ewun8HTtWaYq8inIclFrr34=;
        b=GUTUlgJsaHA4De+mJhZ+UmmvwF1ZwXh+aFlXzXw1Uu4YOSsKtA8lSWxzWzqwCsvU0Z
         0W9ubaTYraX0YXrqxMJo8XFG00LMRq2xkz1EMOEcyav4RH0VPoDsyw9ITOOlvZIcxarm
         LwlLO6dKyVXgUrdQCHGaotCIYgicdqB31t4+7XplhZ733ZuBWc3ZihwOliQFIuc/o/RF
         aPPZIMoKikhNUUEgc2EQ6iUNWNtnkYRPLhVyMTeD71ZwVN3pVKHuwikMotGnLICTcDZ3
         jOhoFcYkd/11Mz9N9lwn9OmKsNteueGXfzSicazT1Q+NkvHaBK/gwiLoG6wqL3u3CNPJ
         tu1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8GmmEDLhPtDYGFH5uDa8ewun8HTtWaYq8inIclFrr34=;
        b=DApkdqYrIBRlnuvevYlTDKkRr/gtUmVLKddBbzWVp1o/d0Uzt4V92XiMhqbM1X6HNE
         V6Dlz5Z+JqTuUEVQ8jLekP9OkBWcnuHLkfklfzLKxvCeSx1I1qR4r5gdPPSbWeqZgGVz
         3XrW+bDcKkrngpOZEid2NZIPv51vkRUl+O/yx6rx7EqsevlIYMw2I1fu9B/7O13arBQv
         Cq8mp+BSCzxUmkIkpTllqWiqSE1OIaB2mBJeM5hNAGbUpHoEmb39wDxU0nmD3h+cbBuN
         lY/k0sxjS0ixtAuqqKhoBUXu9+ja50vriroJ9LjV8+o096uSTf8lduKQrzKAjjhoQ6EI
         j0NQ==
X-Gm-Message-State: ACrzQf0M0rO3bU/aEFA49pO/bY76qBT9BoJWaLUvCuVDzLWruxp5AxRJ
        5Adfm688QMUuDckLhSdZIT5DRg==
X-Google-Smtp-Source: AMsMyM7TKRK5p/7QPJQNylGLX09PsYQBF/7sdHc8UeGpUuXeCeh4znls4acnCbTNBWbBWtUevXTOrw==
X-Received: by 2002:a05:6512:a8c:b0:4a2:10f1:6e06 with SMTP id m12-20020a0565120a8c00b004a210f16e06mr11369220lfu.415.1666624940562;
        Mon, 24 Oct 2022 08:22:20 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id v14-20020a2ea44e000000b0026dfd1fb1aesm6080ljn.25.2022.10.24.08.22.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 08:22:20 -0700 (PDT)
Message-ID: <52e7a83b-bd83-ba63-55f9-a75cf549546d@linaro.org>
Date:   Mon, 24 Oct 2022 18:22:19 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v8 01/15] drm/msm/disp/dpu: clear dpu_assign_crtc and get
 crtc from connector state instead of dpu_enc
Content-Language: en-GB
To:     Vinod Polimera <quic_vpolimer@quicinc.com>,
        dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org
Cc:     linux-kernel@vger.kernel.org, robdclark@gmail.com,
        dianders@chromium.org, swboyd@chromium.org,
        quic_kalyant@quicinc.com, quic_khsieh@quicinc.com,
        quic_vproddut@quicinc.com, quic_bjorande@quicinc.com,
        quic_aravindh@quicinc.com, quic_abhinavk@quicinc.com,
        quic_sbillaka@quicinc.com
References: <1665576159-3749-1-git-send-email-quic_vpolimer@quicinc.com>
 <1665576159-3749-2-git-send-email-quic_vpolimer@quicinc.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <1665576159-3749-2-git-send-email-quic_vpolimer@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/10/2022 15:02, Vinod Polimera wrote:
> Update crtc retrieval from dpu_enc to dpu_enc connector state,
> since new links get set as part of the dpu enc virt mode set.
> The dpu_enc->crtc cache is no more needed, hence cleaning it as
> part of this change.
> 
> Signed-off-by: Vinod Polimera <quic_vpolimer@quicinc.com>
> ---
>   drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c    |  4 ---
>   drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c | 42 +++++++++--------------------
>   drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.h |  8 ------
>   3 files changed, 13 insertions(+), 41 deletions(-)
> 
> diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
> index 13ce321..8ec9a13 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
> @@ -1029,7 +1029,6 @@ static void dpu_crtc_disable(struct drm_crtc *crtc,
>   		 */
>   		if (dpu_encoder_get_intf_mode(encoder) == INTF_MODE_VIDEO)
>   			release_bandwidth = true;
> -		dpu_encoder_assign_crtc(encoder, NULL);
>   	}
>   
>   	/* wait for frame_event_done completion */
> @@ -1099,9 +1098,6 @@ static void dpu_crtc_enable(struct drm_crtc *crtc,
>   	trace_dpu_crtc_enable(DRMID(crtc), true, dpu_crtc);
>   	dpu_crtc->enabled = true;
>   
> -	drm_for_each_encoder_mask(encoder, crtc->dev, crtc->state->encoder_mask)
> -		dpu_encoder_assign_crtc(encoder, crtc);
> -
>   	/* Enable/restore vblank irq handling */
>   	drm_crtc_vblank_on(crtc);
>   }
> diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
> index 9c6817b..d05b353 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
> @@ -132,11 +132,6 @@ enum dpu_enc_rc_states {
>    * @intfs_swapped:	Whether or not the phys_enc interfaces have been swapped
>    *			for partial update right-only cases, such as pingpong
>    *			split where virtual pingpong does not generate IRQs
> - * @crtc:		Pointer to the currently assigned crtc. Normally you
> - *			would use crtc->state->encoder_mask to determine the
> - *			link between encoder/crtc. However in this case we need
> - *			to track crtc in the disable() hook which is called
> - *			_after_ encoder_mask is cleared.
>    * @connector:		If a mode is set, cached pointer to the active connector
>    * @crtc_kickoff_cb:		Callback into CRTC that will flush & start
>    *				all CTL paths
> @@ -181,7 +176,6 @@ struct dpu_encoder_virt {
>   
>   	bool intfs_swapped;
>   
> -	struct drm_crtc *crtc;
>   	struct drm_connector *connector;
>   
>   	struct dentry *debugfs_root;
> @@ -1288,7 +1282,7 @@ static void dpu_encoder_vblank_callback(struct drm_encoder *drm_enc,
>   		struct dpu_encoder_phys *phy_enc)
>   {
>   	struct dpu_encoder_virt *dpu_enc = NULL;
> -	unsigned long lock_flags;
> +	struct drm_crtc *crtc;
>   
>   	if (!drm_enc || !phy_enc)
>   		return;
> @@ -1296,12 +1290,13 @@ static void dpu_encoder_vblank_callback(struct drm_encoder *drm_enc,
>   	DPU_ATRACE_BEGIN("encoder_vblank_callback");
>   	dpu_enc = to_dpu_encoder_virt(drm_enc);
>   
> -	atomic_inc(&phy_enc->vsync_cnt);
> +	if (!dpu_enc->connector || !dpu_enc->connector->state ||
> +	    !dpu_enc->connector->state->crtc)
> +		return;
>   
> -	spin_lock_irqsave(&dpu_enc->enc_spinlock, lock_flags);
> -	if (dpu_enc->crtc)
> -		dpu_crtc_vblank_callback(dpu_enc->crtc);
> -	spin_unlock_irqrestore(&dpu_enc->enc_spinlock, lock_flags);
> +	atomic_inc(&phy_enc->vsync_cnt);
> +	crtc = dpu_enc->connector->state->crtc;
> +	dpu_crtc_vblank_callback(crtc);

So, what if the user commits the mode setting change on another CPU, 
while we are handling the vblank callback here? Can this happen?

>   
>   	DPU_ATRACE_END("encoder_vblank_callback");
>   }
-- 
With best wishes
Dmitry

