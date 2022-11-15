Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F358629ADC
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 14:43:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230503AbiKONm7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 08:42:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229760AbiKONm6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 08:42:58 -0500
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33D221B1E3
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 05:42:57 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id h12so17543007ljg.9
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 05:42:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fCqAsBzIYqwnKg+sxRUK0clUHkV80l++z9LwleH3TLc=;
        b=AUHd9Vl5XP7LwggKtY0uN5sgsYZiCX11QgiYSD/c+2+rtQ6+Jout/Ghg6QdWN2Qbo9
         x5sSBRJ5fWqochfRzBHxwpEJ3eWCKo0vZ0EJkYX0sXssEZul7nrA+GuFTiRVN+Cc+drY
         zGeVJUBf4HXYPi+Ry4d0vSfJWJznx2ZPxGh9CAA+98EdXmjm17QHoPIHllnON+AA1NXp
         QJZmkTvQJUALIfdpm/INLAuq6SFbvq75Z2AYmM7cLD9I5q5qVrcWZ9hPZpbJ/T6fljgw
         CPm00n1HJQDmrJG8PqqJxutx3LaeUVa0R4f7IFQ6q9VZPQVnSDtV+kEn+Zw5muVgjdRR
         USgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fCqAsBzIYqwnKg+sxRUK0clUHkV80l++z9LwleH3TLc=;
        b=tl5PNEGe/nHloSxAgt/Bq9uCeMjY+D7tvxmmL1QVeaOQy1AmfTSuuUEzZLuu7jXsXy
         d/wwMGUWIrcNxe4/RYnt/aA+IWWydG5SlWgcbjfFxbdurO9+bFVeSHgpZvCa2GWa+jmX
         qvAkYlp/V7d7/+4wwRxgVbh40ARjZPrseXWOGATjp2af3EDih0bLmRWWB1iPIdSQCkp6
         IpRKercfsLZTSRxoUOi81aoFW3m/Smn8t+gsO6E3OYY2hiwDXtV6hm+4m3w1T6m9mRzC
         BqBKCzC45FA7+PTx0xdESZk95I95xMdnwu5vU+ukv3Vmd95H/WA087meolU6wgylqgh1
         J2dw==
X-Gm-Message-State: ANoB5pmk26HLCFNcFpHoMbIT6714Ea1l+Zw3s9lZQloPa60Qjwk50ntd
        iWTvkkJN1EhRv0vVMK7L3TKVGg==
X-Google-Smtp-Source: AA0mqf4jM/aaIEgxVl/vgYByJ08SwHmGqaXCY2GmD+dfUWrVFiHIuOPXAH4wPeBOtq/q5Y2zoAogbA==
X-Received: by 2002:a2e:9a88:0:b0:276:b134:b04c with SMTP id p8-20020a2e9a88000000b00276b134b04cmr5684299lji.492.1668519775520;
        Tue, 15 Nov 2022 05:42:55 -0800 (PST)
Received: from [192.168.31.208] ([194.29.137.22])
        by smtp.gmail.com with ESMTPSA id d13-20020ac244cd000000b004ac980a1ba1sm2215836lfm.24.2022.11.15.05.42.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Nov 2022 05:42:55 -0800 (PST)
Message-ID: <fed78af8-015b-e57d-76c7-68c8ba317952@linaro.org>
Date:   Tue, 15 Nov 2022 14:42:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.4.2
Subject: Re: [PATCH v2 06/12] drm/msm: Add support for SM8350
To:     Robert Foss <robert.foss@linaro.org>, robdclark@gmail.com,
        quic_abhinavk@quicinc.com, dmitry.baryshkov@linaro.org,
        sean@poorly.run, airlied@linux.ie, daniel@ffwll.ch,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        agross@kernel.org, bjorn.andersson@linaro.org,
        quic_kalyant@quicinc.com, swboyd@chromium.org,
        angelogioacchino.delregno@somainline.org, loic.poulain@linaro.org,
        quic_khsieh@quicinc.com, quic_vpolimer@quicinc.com,
        vkoul@kernel.org, dianders@chromium.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Jonathan Marek <jonathan@marek.ca>,
        vinod.koul@linaro.org, quic_jesszhan@quicinc.com,
        andersson@kernel.org
References: <20221115133105.980877-1-robert.foss@linaro.org>
 <20221115133105.980877-7-robert.foss@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221115133105.980877-7-robert.foss@linaro.org>
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



On 15/11/2022 14:30, Robert Foss wrote:
> Add compatibles string, "qcom,sm8350-mdss", for the multimedia display
> subsystem unit used on Qualcomm SM8350 platform.
> 
> Signed-off-by: Robert Foss <robert.foss@linaro.org>
> ---
>   drivers/gpu/drm/msm/msm_mdss.c | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
> index a2264fb517a1..39746b972cdd 100644
> --- a/drivers/gpu/drm/msm/msm_mdss.c
> +++ b/drivers/gpu/drm/msm/msm_mdss.c
> @@ -293,6 +293,9 @@ static int msm_mdss_enable(struct msm_mdss *msm_mdss)
>   		/* UBWC_2_0 */
>   		msm_mdss_setup_ubwc_dec_20(msm_mdss, 0x1e);
>   		break;
> +	case DPU_HW_VER_700:
> +		msm_mdss_setup_ubwc_dec_40(msm_mdss, UBWC_4_0, 6, 1, 1, 1);
> +		break;
Shouldn't the second-last argument be 2 or 3 depending on DDR type?

Konrad
>   	case DPU_HW_VER_720:
>   		msm_mdss_setup_ubwc_dec_40(msm_mdss, UBWC_3_0, 6, 1, 1, 1);
>   		break;
> @@ -530,6 +533,7 @@ static const struct of_device_id mdss_dt_match[] = {
>   	{ .compatible = "qcom,sc8180x-mdss" },
>   	{ .compatible = "qcom,sm8150-mdss" },
>   	{ .compatible = "qcom,sm8250-mdss" },
> +	{ .compatible = "qcom,sm8350-mdss" },
>   	{ .compatible = "qcom,sm8450-mdss" },
>   	{}
>   };
