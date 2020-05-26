Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C309E1D7386
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2020 11:11:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726497AbgERJLJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 May 2020 05:11:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726040AbgERJLJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 May 2020 05:11:09 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 600C1C061A0C
        for <devicetree@vger.kernel.org>; Mon, 18 May 2020 02:11:09 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id k12so8477486wmj.3
        for <devicetree@vger.kernel.org>; Mon, 18 May 2020 02:11:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=UT/NakiOz79TTv31SXoxdGWEN3c4jFqpw85qdC2FHJc=;
        b=VFzKOHJHnVBl5TytrLIvbXK9Wh5weDcaD3pQVtqaH9sMpErbACKPEA45cmEeb9yFEu
         5gCq9BsgrwHQEp9RsVyRsAQWwTHfKLboS08+qN19kTAxSvG8axIyJ+nquEDA5sj6besl
         wZ7D+cveTRhOZiDkiQEWP3VOWKzDw0KMqd692r7xS9YmTK8t04xm4IqCAuAoCsAmZA+I
         u6Dq45rts4ZrspP27Ok/oHa9exUHGT6CqzGddOE/hS4xUyEV+rbm8eJpDsm2NPUjl84g
         GGh8AouJuW5OvhQXrkyXJOxSPwoHkoyqChNn+tt5O2CZeCcZnbHBfNNF/Elqm1C8Vumz
         1pRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:content-language:content-transfer-encoding;
        bh=UT/NakiOz79TTv31SXoxdGWEN3c4jFqpw85qdC2FHJc=;
        b=UyKixnvo4nWVpk3ZpzB2HERIJsiuw4aPRVWhYy27lQGcxxAEoCwbsz5qDha8DmeLnA
         9lp0T8oW1Pm5sZ0xnUIsvRaOIWuc8s6lF6FmaDfZiT2dRvapf0hv49FkrbzctgtGO5aQ
         q77DcfOSuQy/l/xc7xUkYlHFC3NePQ4Z7YsaU9TvlFITIYUd7//VdlQzQVAOn/e/LU+Q
         YpJIcdzo07sCF/48neGRDb5x9thCX4509glFOdc3MuuJJPbKk34OnOVersfF1ctHBDUT
         N9aBBtM1U5OatdDNzJ+EY8nTlCRvVKbeYtfkBxuFzy52H4fjL2SD5asnQngaJLhSfU+o
         C1rA==
X-Gm-Message-State: AOAM533XXTRV7pT0/pAic5t0mA/qgsYBkVzHx876fu1s9Uh/qlYfjC89
        d/z2sr6c9UrGKyRuWfjMgMWzzQ==
X-Google-Smtp-Source: ABdhPJy/RHkH0eD1Wy1QiYVZABv/3WZw1Ug7pLTpaJvHX1SxniVJV7s4jHtULcilesmqqthGQ2LFqQ==
X-Received: by 2002:a1c:ed08:: with SMTP id l8mr13276236wmh.169.1589793068120;
        Mon, 18 May 2020 02:11:08 -0700 (PDT)
Received: from [192.168.86.34] (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.googlemail.com with ESMTPSA id h1sm16515430wme.42.2020.05.18.02.11.07
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 May 2020 02:11:07 -0700 (PDT)
Subject: Re: [PATCH v2 2/7] ASoC: qcom: Add common array to initialize soc
 based core clocks
To:     Ajit Pandey <ajitp@codeaurora.org>, broonie@kernel.org,
        plai@codeaurora.org, bgoswami@codeaurora.org
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: =?UTF-8?Q?=3c=1c1586592171-31644-1-git-send-email-ajitp=40codeau?=
 =?UTF-8?Q?rora=2eorg=1d=3e_=3c1589474298-29437-1-git-send-email-ajitp=40cod?=
 =?UTF-8?Q?eaurora=2eorg=3e_=3c1589474298-29437-4-git-send-email-ajitp=40cod?=
 =?UTF-8?Q?eaurora=2eorg=3e?=
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <aa1ad5a5-94e8-0a6a-1937-e9d2abbb67f7@linaro.org>
Date:   Mon, 18 May 2020 10:11:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 14/05/2020 17:38, Ajit Pandey wrote:
> AHB-I/X bus clocks inside LPASS coreis not a mandatory clocks for
> SC7180 soc lpass variants, hence make it an optional one.
> 
> Signed-off-by: Ajit Pandey <ajitp@codeaurora.org>
> ---

For some reason patch subject seems messed up!

I see two patches with same subject "[PATCH v2 2/7] ASoC: qcom: Add 
common array to initialize soc based core clocks" and totally different 
content and PATCH v2 3/7 is missing as well!

--srini




>   sound/soc/qcom/lpass-cpu.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/sound/soc/qcom/lpass-cpu.c b/sound/soc/qcom/lpass-cpu.c
> index e00a4af..729ca78 100644
> --- a/sound/soc/qcom/lpass-cpu.c
> +++ b/sound/soc/qcom/lpass-cpu.c
> @@ -594,7 +594,7 @@ int asoc_qcom_lpass_cpu_platform_probe(struct platform_device *pdev)
>   		}
>   	}
>   
> -	drvdata->ahbix_clk = devm_clk_get(dev, "ahbix-clk");
> +	drvdata->ahbix_clk = devm_clk_get_optional(dev, "ahbix-clk");
>   	if (IS_ERR(drvdata->ahbix_clk)) {
>   		dev_err(dev, "error getting ahbix-clk: %ld\n",
>   			PTR_ERR(drvdata->ahbix_clk));
> 
