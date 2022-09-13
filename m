Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E4A85B7C2F
	for <lists+devicetree@lfdr.de>; Tue, 13 Sep 2022 22:27:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229667AbiIMU1k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Sep 2022 16:27:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229734AbiIMU1i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Sep 2022 16:27:38 -0400
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC2096582C
        for <devicetree@vger.kernel.org>; Tue, 13 Sep 2022 13:27:31 -0700 (PDT)
Received: by mail-ot1-x32a.google.com with SMTP id t8-20020a9d5908000000b0063b41908168so8892704oth.8
        for <devicetree@vger.kernel.org>; Tue, 13 Sep 2022 13:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kali.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=sd09jo0vinU2vK2o8/yrN23HI18zGOuWxqMbvOB7wRs=;
        b=CQy6pis+Tou3j65IkWqcMQo35a9QcNpx/q7R3bqi4rD+7tcux7PjQLgD0kIw3Mulju
         C1+kT/ef+KH3iqqSnUU9yPFiNrBhNji2hiaSVzDJl+ygUARG5Yowb8QWvf731fTd6I6T
         3xcl44JmI0U0dEJJchctTxuIzW+ttMZHvNzN3qHNM6Rn3OB5LtzKa7XfVXO5mJY7WHOJ
         gsZSddfYDlrhdCzYltCXajUfXoH8Sy0oBnsmy3+Y2kBzCb9ootY7xTIVNpewz0+CFgEV
         tIUCHUKtkTrfoX+vGgARURq1oBW387YK+uFGVpb31m/KaPydD+uc9ggQ2u3NvVHJ+8N3
         UygQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=sd09jo0vinU2vK2o8/yrN23HI18zGOuWxqMbvOB7wRs=;
        b=4rxDzwsFV9BDgF9BjTUQvitI50x7VfuTbedYbMkKs0jyFBzhx9e9Jebh+0oWNeeEbb
         eCTt4odt9FLkBBhnAXZei2YdoPOrq0Le1Tx+KHGuwpX4girg2h71IsvM6zdS4DC13ist
         b+LErHRpKW7vHanfC1hnVlK0UiBH5BLqZ9MR4rqEzkG0yzO8RsIiHwnQwKZ9hRbQi31b
         Dv6eGU9djerhWBy1E2MHTchhtty9B6cagcvYEFvVzKV3VlydLsSsYlcIbPrh1z9ixbHy
         HQHk0XT12T6YqrmxYa0IDNoQLSUNamVSUWgQmj55UvReazD+j+2/hjAqiedVEvLB71u5
         a8NQ==
X-Gm-Message-State: ACgBeo2DWTEmSuAtmcs3yOwaz7bXmDF3oYDNl1tVmaQozIi7DyPOLPdO
        MPsv642M4LnLaQu8NoVk9maMBg==
X-Google-Smtp-Source: AA6agR5yqk0Aoygu4IpOLvaWK7cx/fJpurED9WzQK82KoiaNsYXza4MQSPgbpOtQLm5a1q8Pjy3T9w==
X-Received: by 2002:a05:6830:3910:b0:63b:2195:31a9 with SMTP id br16-20020a056830391000b0063b219531a9mr13485906otb.91.1663100851331;
        Tue, 13 Sep 2022 13:27:31 -0700 (PDT)
Received: from [192.168.11.16] (cpe-173-173-107-246.satx.res.rr.com. [173.173.107.246])
        by smtp.gmail.com with ESMTPSA id e81-20020aca3754000000b00344851ea0ddsm5542786oia.56.2022.09.13.13.27.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Sep 2022 13:27:30 -0700 (PDT)
Message-ID: <a5eb555b-487e-28bc-3a0f-81412e143014@kali.org>
Date:   Tue, 13 Sep 2022 15:27:28 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.13.0
Subject: Re: [PATCH] arm64: dts: qcom: thinkpad-x13s: Update firmware location
Content-Language: en-US
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        bjorn.andersson@linaro.org
Cc:     konrad.dybcio@somainline.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, johan+linaro@kernel.org
References: <20220913054030.3234-1-manivannan.sadhasivam@linaro.org>
From:   Steev Klimaszewski <steev@kali.org>
In-Reply-To: <20220913054030.3234-1-manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 9/13/22 12:40 AM, Manivannan Sadhasivam wrote:
> The firmware location in linux-firmware has been changed to include the
> SoC name. So use the updated location in Thinkpad devicetree.
>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> index c379650e52b1..3b7943d6e164 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> @@ -554,13 +554,13 @@ keyboard@68 {
>   };
>   
>   &remoteproc_adsp {
> -	firmware-name = "qcom/LENOVO/21BX/qcadsp8280.mbn";
> +	firmware-name = "qcom/sc8280xp/LENOVO/21BX/qcadsp8280.mbn";
>   
>   	status = "okay";
>   };
>   
>   &remoteproc_nsp0 {
> -	firmware-name = "qcom/LENOVO/21BX/qccdsp8280.mbn";
> +	firmware-name = "qcom/sc8280xp/LENOVO/21BX/qccdsp8280.mbn";
>   
>   	status = "okay";
>   };

Tested-by: Steev Klimaszewski <steev@kali.org>

