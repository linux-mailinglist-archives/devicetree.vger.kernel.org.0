Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F87A5E7768
	for <lists+devicetree@lfdr.de>; Fri, 23 Sep 2022 11:41:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231800AbiIWJkx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Sep 2022 05:40:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232042AbiIWJiw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Sep 2022 05:38:52 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEC7DF187A
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 02:38:34 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id o2so18883913lfc.10
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 02:38:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=kUkKnSToWBiAp7jFJoJfzt/vyDxgquAmqUaAVPpyLJo=;
        b=o8tltaqBCnETP2nIc7yxtqe2HACJeknkObRZc8S2S1AYjjxb0AJ14zw2/jaalhEFqj
         sRAYv4Q+8L1lDh8qcnY5bxF0nsBUOnoN5viGa7/VrgBGOojkC2388NkhOB6SZtyuB52u
         OkicU7Q3xZqS36+ZRHWpUUeHzWIPhVSbpar1k9bziM5SRSXc2KrKTj9sTRHz/uECDVRd
         y58JrHvDMhbl5035Ls49F95QFXJ3auOINZp5lSGfZMAacCeYnZneaVXOWZTivPzwKqkp
         wpAzPdEkMWlx7raEbhWmdrwuJjh1M0dJS+6cHB8WUfGjrtgJljFeUTfHSJHXdwK45aiE
         8k5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=kUkKnSToWBiAp7jFJoJfzt/vyDxgquAmqUaAVPpyLJo=;
        b=3W3UBWH+aKvTvZZav5IDb929c/Gt4W4RTpcQ3mXVWAsNfwpZa6I0xhwlyxkAQAAhOn
         RfdUl5p9teov/zLrxF/bG4gwPm3oQpTOxHZwz5+W6BV/Qco2CG05VStPWkwTPebYbSWj
         9AUVni9O63EHVZwl7Hfqf1Xtq4wzMpSF2XGXGo5Ujli9VO7jRbx+XqVVDyUE30gN/BxX
         ItM8sAgCqQQG34mfVlFdjnWIO9ffiBNjVAiJdeN4fJhDoYSSVwIfiDSMFNhDUYVQLJtJ
         JkiKHLt0zN66LK+iYhDjy6mCNez0T5TBl3AvepINOd5GousKWM7+pmqjnvAB/s8DGun/
         Dd0A==
X-Gm-Message-State: ACrzQf2m9srcct1ImHDTFXVGaAh5u3ps8YU5IGth5C/X5B3VmU24EtNX
        wAH5IdhesJQg314jOc0aBXvS3icdL9FhNw==
X-Google-Smtp-Source: AMsMyM6PSJE5Ve/XZ7OKQb0FHJiZgYISJoAOwRQqG4fNfNeQ7YdMKUWmDEjNEJJRm3W+kEo7ChCOeA==
X-Received: by 2002:ac2:4c50:0:b0:49a:3768:da81 with SMTP id o16-20020ac24c50000000b0049a3768da81mr2750254lfk.247.1663925913003;
        Fri, 23 Sep 2022 02:38:33 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id x15-20020a19e00f000000b00498fc3d4d15sm1363465lfg.190.2022.09.23.02.38.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Sep 2022 02:38:32 -0700 (PDT)
Message-ID: <e9860dfc-061d-4ab4-c7e3-d0b062cb9eda@linaro.org>
Date:   Fri, 23 Sep 2022 11:38:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 2/2] mmc: sdhci-msm: add compatible string check for
 sdm670
Content-Language: en-US
To:     Richard Acayan <mailingradian@gmail.com>,
        linux-arm-msm@vger.kernel.org
Cc:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org
References: <20220923014322.33620-1-mailingradian@gmail.com>
 <20220923014322.33620-3-mailingradian@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220923014322.33620-3-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/09/2022 03:43, Richard Acayan wrote:
> The Snapdragon 670 has the same quirk as Snapdragon 845 (needing to
> restore the dll config). Add a compatible string check to detect the need
> for this.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>  drivers/mmc/host/sdhci-msm.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/mmc/host/sdhci-msm.c b/drivers/mmc/host/sdhci-msm.c
> index dc2991422a87..3a091a387ecb 100644
> --- a/drivers/mmc/host/sdhci-msm.c
> +++ b/drivers/mmc/host/sdhci-msm.c
> @@ -2441,6 +2441,7 @@ static const struct of_device_id sdhci_msm_dt_match[] = {
>  	 */
>  	{.compatible = "qcom,sdhci-msm-v4", .data = &sdhci_msm_mci_var},
>  	{.compatible = "qcom,sdhci-msm-v5", .data = &sdhci_msm_v5_var},
> +	{.compatible = "qcom,sdm670-sdhci", .data = &sdm845_sdhci_var},
>  	{.compatible = "qcom,sdm845-sdhci", .data = &sdm845_sdhci_var},
>  	{.compatible = "qcom,sc7180-sdhci", .data = &sdm845_sdhci_var},

Probably we should make them a family of compatible devices, because the
list grows. For three items:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

If you want to add fourth, I propose to make it a family.


Best regards,
Krzysztof

