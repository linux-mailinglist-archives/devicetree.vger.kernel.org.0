Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0338562BCB7
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 12:56:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233895AbiKPL4L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 06:56:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233759AbiKPLzp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 06:55:45 -0500
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAF354AF10
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 03:46:51 -0800 (PST)
Received: by mail-ej1-x632.google.com with SMTP id f18so10421298ejz.5
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 03:46:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UGh6LEw9sD5U1ZV9P+A40VyRZW/b0s7lkJhlbNsJWyg=;
        b=tZydqGulJDpbofkvCx9ifk/cC0D8/C+Fu15MacnEuX0mdETX8lAC3SF6p0xtEqoJlL
         WU42q1qwx3G1rKm6dQITYgp1ZE6UISGQVP3xfhkPly+9f2CyYiwMp6n2OmQAwq6Jt3gE
         aiwcUOzlxFJ13JUymym54LLuupcXfvr8Yr8yqaOuzKfgI6TASPO1AZQKgjbsK0SZ9zpl
         42Q+xU2WdlD86p3L4OGF1MAIvWRwmXLNyAq/8wo+Io/74a+0RVU6Cm3tK+PEWl7wSp9y
         xMsj3a+9Sj3GlWyPbPug6sdIdBG9xnNgth2dkIbo1HIlWxuWO3s/8y+UORJu0LiyZEQq
         gYVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UGh6LEw9sD5U1ZV9P+A40VyRZW/b0s7lkJhlbNsJWyg=;
        b=sJ1/xe+G9K2tDOq5bn+jygpBclQR3Hu+4AtLuJkEA+v+AfCOv3rWx8K5L4pvPJT2pp
         I5c72+olN6wzpvGGvksboDUIwCmAbd6KvpRArYYmPuppxxXI2Dfy5VyfqaKgLpdFstdX
         G+trGqTWOUdU2hGKVXpZCOYNal5EFUCqRw+w1fkI5hgUv4fr2X+2ECuUfsE/zh7CJbr3
         5XBGF8Lx4Y63uT2k/DvMRle5X7li7xLmxQfPiEF6gtc6Tdu5X1HqzDAhD/tCDzbOszYV
         XvaAgLXJ3xDRhYToVqYf2Th/qAtXgBPvnU8zBaTiYWmva+EERJUh/Gt7nz7D+coBjrZ0
         X/Yg==
X-Gm-Message-State: ANoB5pmEHg5iOtke2VGjrhaRWzfo1fUVLn/Pib55aIBzAzYj7Hgr6cp6
        CtvuCtNqC6MxlOTm2GOes3nJMw==
X-Google-Smtp-Source: AA0mqf4TLWE3qa0twFDb2mzsNtdutyTOUdBepJumOUQKoCYkEeueUI5CbVEuzzmyZJ9+U4hvCuZAjg==
X-Received: by 2002:a17:907:7659:b0:7a0:3125:f1e5 with SMTP id kj25-20020a170907765900b007a03125f1e5mr17056326ejc.314.1668599210470;
        Wed, 16 Nov 2022 03:46:50 -0800 (PST)
Received: from [192.168.31.208] ([194.29.137.22])
        by smtp.gmail.com with ESMTPSA id bf28-20020a0564021a5c00b004643f1524f3sm7373522edb.44.2022.11.16.03.46.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Nov 2022 03:46:50 -0800 (PST)
Message-ID: <b8404a1e-9171-0b64-f879-beac62bac92c@linaro.org>
Date:   Wed, 16 Nov 2022 12:46:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.4.2
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm8550-mtp: enable adsp, cdsp &
 mdss
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20221115-topic-sm8550-upstream-dts-remoteproc-v1-0-379eec11d841@linaro.org>
 <20221115-topic-sm8550-upstream-dts-remoteproc-v1-3-379eec11d841@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221115-topic-sm8550-upstream-dts-remoteproc-v1-3-379eec11d841@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
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



On 16/11/2022 11:43, Neil Armstrong wrote:
> Add the aDSP, cDSP and MPSS firmware and "Devicetree" firmware paths
> for the SM8550 MTP platform.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8550-mtp.dts | 18 ++++++++++++++++++
>   1 file changed, 18 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
> index d4c8d5b2497e..be06e25409c3 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
> @@ -376,6 +376,24 @@ &qupv3_id_0 {
>   	status = "okay";
>   };
>   
> +&remoteproc_adsp {
> +	status = "okay";
> +	firmware-name = "qcom/sm8550/adsp.mbn";
> +	qcom,dtb-firmware-name = "qcom/sm8550/adsp_dtb.mbn";
status should go last. I missed that in the review of the patchset 
introducing this DTS, please fix it over there as well.

Konrad
> +};
> +
> +&remoteproc_cdsp {
> +	status = "okay";
> +	firmware-name = "qcom/sm8550/cdsp.mbn";
> +	qcom,dtb-firmware-name = "qcom/sm8550/cdsp_dtb.mbn";
> +};
> +
> +&remoteproc_mpss {
> +	status = "okay";
> +	firmware-name = "qcom/sm8550/modem.mbn";
> +	qcom,dtb-firmware-name = "qcom/sm8550/modem_dtb.mbn";
> +};
> +
>   &sdhc_2 {
>   	status = "okay";
>   
> 
