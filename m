Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 905586FB19B
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 15:34:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234213AbjEHNe3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 May 2023 09:34:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234144AbjEHNe1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 May 2023 09:34:27 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E60E18916
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 06:34:26 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2ac785015d7so50811601fa.1
        for <devicetree@vger.kernel.org>; Mon, 08 May 2023 06:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683552864; x=1686144864;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eW/Xoqha7GvBVNQCr94/Unb8pBuTnqvx5e8HgXob2Oo=;
        b=wJd4cqFfFV75jLA/Bhv7JNVO5fuEgKDqWirW5VEJrET7t3hR0MbMzgzUeXWsOpEPLd
         R0L/Kpn+iuBMNVoHV8HKH38IR9+2ldkfPK0UFfPM4HhUno/X5wnULovpv4cfagdBdKFa
         B/7k4KFEnzam5zJB3doByobCwiddoPKC+p2ZqiEniwbEoVP28Kl6WearB8I7rRxa2S21
         mFpL0M+NNDa+v+b+wuaYvkSlZpQiUuZ2EizFhacA5PHBXe7Z9MN7595FF5XVlOJAwK5r
         76UfEJ2b5R4wz9ewWlrMDXD+52ViORbjsewrS4iD4Ww7phVO2zogWYkVOYN1xLc+xJsz
         NIBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683552864; x=1686144864;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eW/Xoqha7GvBVNQCr94/Unb8pBuTnqvx5e8HgXob2Oo=;
        b=XdgZ9YAYQmjttbKiL2HunwFCzxiYj/qNHbAkGMZn1LpZrf0jqKzQMjWuzqdu3a3TyB
         /R+VWkEnAO2wKATbFrbUjHrbgEObFJsZfEBaoPrgaIJ5U5+/x/B7X9Upl24OPqqaZz+O
         4z8+TPyMtqLhwfPz1Cpq0QkKo4eL58nb6huY9dGqg8tePl6rQZhAR5AIb9oBgm5NClBa
         kEmtNjTnG5KJAosZ+g+lakmW+LiRo87IZSBh5yoIDtcpOzGYJV0hS3qjRiAQUihLUx3a
         vV2rnrEzALnftKvgGCfDnHH2bfsfQ55WSFtG/FnfWDXk+7MBpOYO9KAaucbWpKTj2yQf
         ttyA==
X-Gm-Message-State: AC+VfDwMgNW9nSKBxioY3S8/CY8WvOgZl9nnKUpY9M7fdAyWxD7NVbQZ
        Zc42efjHQwDGmPUL0FMhqlXH1A==
X-Google-Smtp-Source: ACHHUZ4J+LcBj3M5C1NolVZpuen3mKtDTUse1h5L6FRgxhDI2fJm3BTsEpnVqe/qeQ5wDsKuyT+13g==
X-Received: by 2002:a2e:8619:0:b0:2a8:bc05:ab4 with SMTP id a25-20020a2e8619000000b002a8bc050ab4mr3182611lji.34.1683552864352;
        Mon, 08 May 2023 06:34:24 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id d7-20020a2e3607000000b002a9ef98116asm1192691lja.49.2023.05.08.06.34.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 May 2023 06:34:23 -0700 (PDT)
Message-ID: <ce6007b2-5e07-3bb8-6f88-4035ad1fe854@linaro.org>
Date:   Mon, 8 May 2023 16:34:23 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v4 6/6] thermal: qcom: tsens-v0_1: Add MSM8909 data
Content-Language: en-GB
To:     Stephan Gerhold <stephan.gerhold@kernkonzept.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>
Cc:     Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20230508-msm8909-tsens-v4-0-d9119622cb19@kernkonzept.com>
 <20230508-msm8909-tsens-v4-6-d9119622cb19@kernkonzept.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230508-msm8909-tsens-v4-6-d9119622cb19@kernkonzept.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/05/2023 16:13, Stephan Gerhold wrote:
> The MSM8909 SoC has 5 thermal sensors in a TSENS v0.1 block. Like
> MDM9607 it uses a non-standard default slope value of 3000 [1] and needs
> per-sensor "correction factors" to workaround issues with the factory
> calibration [2].
> 
> [1]: https://git.codelinaro.org/clo/la/kernel/msm-3.18/-/blob/LA.UM.7.7.c26-09100-8x09.0/arch/arm/boot/dts/qcom/msm8909.dtsi#L476
> [2]: https://git.codelinaro.org/clo/la/kernel/msm-3.18/-/commit/6df022c6d0c2c1b4a5a6c2124dba4d57910c0911
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Stephan Gerhold <stephan.gerhold@kernkonzept.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>   drivers/thermal/qcom/tsens-v0_1.c | 36 +++++++++++++++++++++++++++++++++++-
>   drivers/thermal/qcom/tsens.c      |  3 +++
>   drivers/thermal/qcom/tsens.h      |  2 +-
>   3 files changed, 39 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/thermal/qcom/tsens-v0_1.c b/drivers/thermal/qcom/tsens-v0_1.c
> index e69889dd524a..f97d313f0536 100644
> --- a/drivers/thermal/qcom/tsens-v0_1.c
> +++ b/drivers/thermal/qcom/tsens-v0_1.c
> @@ -207,6 +207,27 @@ static int calibrate_8974(struct tsens_priv *priv)
>   	return 0;
>   }
>   
> +static int __init init_8909(struct tsens_priv *priv)
> +{
> +	int i;
> +
> +	for (i = 0; i < priv->num_sensors; ++i)
> +		priv->sensor[i].slope = 3000;
> +
> +	priv->sensor[0].p1_calib_offset = 0;
> +	priv->sensor[0].p2_calib_offset = 0;
> +	priv->sensor[1].p1_calib_offset = -10;
> +	priv->sensor[1].p2_calib_offset = -6;
> +	priv->sensor[2].p1_calib_offset = 0;
> +	priv->sensor[2].p2_calib_offset = 0;
> +	priv->sensor[3].p1_calib_offset = -9;
> +	priv->sensor[3].p2_calib_offset = -9;
> +	priv->sensor[4].p1_calib_offset = -8;
> +	priv->sensor[4].p2_calib_offset = -10;
> +
> +	return init_common(priv);
> +}
> +
>   static int __init init_8939(struct tsens_priv *priv) {
>   	priv->sensor[0].slope = 2911;
>   	priv->sensor[1].slope = 2789;
> @@ -243,7 +264,7 @@ static int __init init_9607(struct tsens_priv *priv)
>   	return init_common(priv);
>   }
>   
> -/* v0.1: 8916, 8939, 8974, 9607 */
> +/* v0.1: 8909, 8916, 8939, 8974, 9607 */
>   
>   static struct tsens_features tsens_v0_1_feat = {
>   	.ver_major	= VER_0_1,
> @@ -292,6 +313,19 @@ static const struct reg_field tsens_v0_1_regfields[MAX_REGFIELDS] = {
>   	[TRDY] = REG_FIELD(TM_TRDY_OFF, 0, 0),
>   };
>   
> +static const struct tsens_ops ops_8909 = {
> +	.init		= init_8909,
> +	.calibrate	= tsens_calibrate_common,
> +	.get_temp	= get_temp_common,
> +};
> +
> +struct tsens_plat_data data_8909 = {
> +	.num_sensors	= 5,
> +	.ops		= &ops_8909,
> +	.feat		= &tsens_v0_1_feat,
> +	.fields	= tsens_v0_1_regfields,
> +};
> +
>   static const struct tsens_ops ops_8916 = {
>   	.init		= init_common,
>   	.calibrate	= calibrate_8916,
> diff --git a/drivers/thermal/qcom/tsens.c b/drivers/thermal/qcom/tsens.c
> index 065d0f9728a5..1d7c149038e0 100644
> --- a/drivers/thermal/qcom/tsens.c
> +++ b/drivers/thermal/qcom/tsens.c
> @@ -1109,6 +1109,9 @@ static const struct of_device_id tsens_table[] = {
>   	}, {
>   		.compatible = "qcom,mdm9607-tsens",
>   		.data = &data_9607,
> +	}, {
> +		.compatible = "qcom,msm8909-tsens",
> +		.data = &data_8909,
>   	}, {
>   		.compatible = "qcom,msm8916-tsens",
>   		.data = &data_8916,
> diff --git a/drivers/thermal/qcom/tsens.h b/drivers/thermal/qcom/tsens.h
> index 880be6be5c3f..c88287dede96 100644
> --- a/drivers/thermal/qcom/tsens.h
> +++ b/drivers/thermal/qcom/tsens.h
> @@ -639,7 +639,7 @@ int get_temp_common(const struct tsens_sensor *s, int *temp);
>   extern struct tsens_plat_data data_8960;
>   
>   /* TSENS v0.1 targets */
> -extern struct tsens_plat_data data_8916, data_8939, data_8974, data_9607;
> +extern struct tsens_plat_data data_8909, data_8916, data_8939, data_8974, data_9607;
>   
>   /* TSENS v1 targets */
>   extern struct tsens_plat_data data_tsens_v1, data_8976, data_8956;
> 

-- 
With best wishes
Dmitry

