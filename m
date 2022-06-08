Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CEEB2542EAE
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 13:05:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237658AbiFHLEx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 07:04:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237761AbiFHLEv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 07:04:51 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A4D42010E2
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 04:04:47 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id m39-20020a05600c3b2700b0039c511ebbacso4155303wms.3
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 04:04:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=GgaoEba9JTX/8rf6MhX/IHFUfnxIpKajZjqqNMcI1dE=;
        b=R8OVVjXXNfqwmr4RyFvKq0FPMbmCY6x1lamR22m6KbEUlP7j7PiSI2KIoeppC4SkTI
         xaybNffpGSQdTqY6jkv0esrcL16DP7F2oOTT+qLXyRwxrFbguHkD09ewOgbWQ/rPmHud
         jMrp6CRBomTmGje13S+DV2aqBpfwVbrIAglqc9Me4Rtp1obrnEhJARd2O5DPSnViuzqb
         3xY3IScRh2j2EBctqFn2xvlX12ZW8LRDfozoH8yEyhBIDARBqQwkQ59fNGGhRUeWp8BO
         MaUxfLQ1yAArzMEkbK1T/G1lyoOrxFOAbuFGW5tqxSMQxol8P5lPdyRcvsRW8qv4M0eb
         Nc7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=GgaoEba9JTX/8rf6MhX/IHFUfnxIpKajZjqqNMcI1dE=;
        b=q9Se2P+g/uxHFv+JSLqP+it87NU0TGRsa9S91oh0rvzs9EgpJ8uwGjZI6068BUVlfR
         vwcBAlVw6SzuFvOb+cPGrAFhBAyXaFIbJ66cAh+xxAEVSey1lzHIb6pqYJyOf5d0GeKB
         NAH1mmO5FilZj47s1smQzXlPfOQHbumj8jz8tRhMbDOyHtGHNlSnwEw1GnQMVVvi/68Q
         MjNQEqMW88SrqtjlUmZlKOdomrkxIZ+2K5t/dQ3yhpyVU71JHuRzHUv/jyemjoP2vslA
         DMeRzRu8EGOJSa8GVWawrY3xktNDZZfPjvq3WJm/6u2Cv6p3YqJj3w0DIAsqMcCvejs1
         owqg==
X-Gm-Message-State: AOAM532bjQxDpMpX1uLIh5mxGo/mXZCVpQEbFdbAq5/kG99obhgyoLEj
        TUjDd20+ET6Z0nQCEGrnSx/v4g==
X-Google-Smtp-Source: ABdhPJz/cEPCAdCYd2kfWJjqjQ45KHiD/unWUtPlJ67tPiMmmF9NpW0vtFwO0pisM7jXeHZSa+zt6A==
X-Received: by 2002:a7b:c3cd:0:b0:39c:474b:2056 with SMTP id t13-20020a7bc3cd000000b0039c474b2056mr22726329wmj.30.1654686285787;
        Wed, 08 Jun 2022 04:04:45 -0700 (PDT)
Received: from [192.168.86.238] (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.googlemail.com with ESMTPSA id o12-20020a5d58cc000000b0020c6b78eb5asm21212543wrf.68.2022.06.08.04.04.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jun 2022 04:04:45 -0700 (PDT)
Message-ID: <adb12452-dacd-7fb7-5153-220a2324fa71@linaro.org>
Date:   Wed, 8 Jun 2022 12:04:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v2 1/2] soundwire: qcom: Add flag for software clock
 gating check
Content-Language: en-US
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        agross@kernel.org, bjorn.andersson@linaro.org, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org, quic_plai@quicinc.com,
        bgoswami@quicinc.com, perex@perex.cz, tiwai@suse.com,
        quic_rohkumar@quicinc.com, linux-arm-msm@vger.kernel.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, swboyd@chromium.org,
        judyhsiao@chromium.org, vkoul@kernel.org
References: <1654667824-3760-1-git-send-email-quic_srivasam@quicinc.com>
 <1654667824-3760-2-git-send-email-quic_srivasam@quicinc.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <1654667824-3760-2-git-send-email-quic_srivasam@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 08/06/2022 06:57, Srinivasa Rao Mandadapu wrote:
> Add flag in qcom_swrm_data private data structure for validating
> software colck gating control requirement.
> 
> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> ---

Reviewed-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


>   drivers/soundwire/qcom.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/soundwire/qcom.c b/drivers/soundwire/qcom.c
> index a3fccf0..38c3bf5 100644
> --- a/drivers/soundwire/qcom.c
> +++ b/drivers/soundwire/qcom.c
> @@ -181,6 +181,7 @@ struct qcom_swrm_ctrl {
>   struct qcom_swrm_data {
>   	u32 default_cols;
>   	u32 default_rows;
> +	bool sw_clk_gate_required;
>   };
>   
>   static const struct qcom_swrm_data swrm_v1_3_data = {
