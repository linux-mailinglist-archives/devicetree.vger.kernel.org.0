Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB9216F68D5
	for <lists+devicetree@lfdr.de>; Thu,  4 May 2023 12:08:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229988AbjEDKI5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 May 2023 06:08:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229577AbjEDKIz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 May 2023 06:08:55 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDBAD4C04
        for <devicetree@vger.kernel.org>; Thu,  4 May 2023 03:08:53 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-4f139de8cefso8150961e87.0
        for <devicetree@vger.kernel.org>; Thu, 04 May 2023 03:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683194932; x=1685786932;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jfq4Q0bzKgqrrdmGoknn8Gs1xzMa+RN+wrvnwiQJFjM=;
        b=cSyFFQbvDN3WMuHAWCxfwE8GIqkKZ2xDrgeCKigzBghlDNPxcVEPKbZitXUsUPmgjD
         PLh1yVu99pW7I1KjB7wNs3LebkD+4TymZRwylcxhj8RgdkcpawQxGSFN32ZetVaJBG8u
         5TDmGIi3rLctyZrmXmVGKlWpz8ZyGdmAMTYoW+UZXuHercyRCxpgd9YbYh1jub883fRI
         Y7M+tEKbV89W8fa5t+TDKGemGjc84/Uqn2Eklx/4fZnG1okOPAW0ONplIG7vwmpUQciv
         fhSVoF96Neg1+uCMWWfgtBKJkFOohrqxnlmyzc/5sxI/We33grIu7gaSMIIQkzX5Lphe
         6bEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683194932; x=1685786932;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jfq4Q0bzKgqrrdmGoknn8Gs1xzMa+RN+wrvnwiQJFjM=;
        b=FqOYcvsyrstFlkyYCEVbyHzjuZTcusn9jzkIWPw7+SsU/VpF+d8rHtPEYuPoDdN3vD
         x98XVQTVliPvAiuDOABUmu1YFOfODAxj0IsmqIp2SPpZOH4T36EiMShqMkl37l1JSW22
         flqbpOFuM3CrmzWgD9pc7Q/ycRdiYThoWYu0evqXcHMilYQCSQH1DcYIqlAinjfrl4fP
         V+uWSwIZRfqo2BreiLeHLFzNaCIabRw1hTJuUa4YJmbZxctvB0rhTL6ciqu2ZoiqRhM0
         hZH80zFuhJXyhxqIpKxOWs3X+jBmolIDllRsnZzeBTm1t4M6UIHlFTkXdh2B7oBLXYqh
         JPlg==
X-Gm-Message-State: AC+VfDwp7nBQGRdLiITMPgvswL7PggCSFE8hpvbZPkVX7nRbCYp0pJ3z
        UdzCVo1ZmwgsH0ybZhoRLFNruA==
X-Google-Smtp-Source: ACHHUZ6Cq/N2Z10u4/9KpdPELT4RkD+I/Ruwf4DKPzXnq0qBktOAKbyATb7vY1fXJ1VKdyn8ZgZiog==
X-Received: by 2002:a2e:721a:0:b0:2a4:fada:edd1 with SMTP id n26-20020a2e721a000000b002a4fadaedd1mr669030ljc.16.1683194932007;
        Thu, 04 May 2023 03:08:52 -0700 (PDT)
Received: from [192.168.1.101] (abyl248.neoplus.adsl.tpnet.pl. [83.9.31.248])
        by smtp.gmail.com with ESMTPSA id u22-20020a2ea176000000b002ab1216de44sm5108191ljl.71.2023.05.04.03.08.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 May 2023 03:08:51 -0700 (PDT)
Message-ID: <37603081-e41a-2977-7905-2063abed98cc@linaro.org>
Date:   Thu, 4 May 2023 12:08:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v3 5/5] arm64: dts: qcom: qrb4210-rb2: Enable EUD debug
 peripheral
Content-Language: en-US
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, andersson@kernel.org,
        linux-kernel@vger.kernel.org, bhupesh.linux@gmail.com,
        robh+dt@kernel.org, linux-usb@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, krzysztof.kozlowski@linaro.org
References: <20230504082644.1461582-1-bhupesh.sharma@linaro.org>
 <20230504082644.1461582-6-bhupesh.sharma@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230504082644.1461582-6-bhupesh.sharma@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 4.05.2023 10:26, Bhupesh Sharma wrote:
> Since the USB-C type port on the Qualcomm QRB4210-RB2 board
> can be set primarily in a 'device' configuration (with the default
> DIP switch settings), it makes sense to enable the EUD debug
> peripheral on the board by default by setting the USB 'dr_mode' property
> as 'otg'.
> 
> Now, the EUD debug peripheral can be enabled by executing:
>  $ echo 1 > /sys/bus/platform/drivers/qcom_eud/1610000.eud/enable
> 
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 27 +++++++++++++++++++++++-
>  1 file changed, 26 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> index 1a0776a0cfd0..0ce72f1ebc10 100644
> --- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> +++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> @@ -30,6 +30,10 @@ vph_pwr: vph-pwr-regulator {
>  	};
>  };
>  
> +&eud {
> +	status = "okay";
> +};
> +
>  &qupv3_id_0 {
>  	status = "okay";
>  };
> @@ -253,7 +257,28 @@ &usb {
>  
>  &usb_dwc3 {
>  	maximum-speed = "super-speed";
> -	dr_mode = "peripheral";
> +
> +	/*
> +	 * There is only one USB DWC3 controller on QRB4210 board and it is connected
> +	 * via a DIP Switch:
> +	 * - to either an USB - C type connector or an USB - A type connector
> +	 *   (via a GL3590-S hub), and
> +	 * - to either an USB - A type connector (via a GL3590-S hub) or a connector
> +	 *   for further connection with a mezzanine board.
> +	 *
> +	 * All of the above hardware muxes would allow us to hook things up in
> +	 * different ways to some potential benefit for static configurations (for e.g.
> +	 * on one hand we can have two USB - A type connectors and a USB - Ethernet
> +	 * connection available and on the other we can use the USB - C type in
> +	 * peripheral mode).
> +	 *
> +	 * Note that since the USB - C type can be used only in peripehral mode,
> +	 * so hardcoding the mode to 'peripheral' here makes sense.
> +	 *
> +	 * However since we want to use the EUD debug device, we set the mode as
> +	 * 'otg' here.
> +	 */
> +	dr_mode = "otg";
So if I understand correctly, EUD works via the type-C connector and
only when the switch is turned such that the type-C connector is in use?

Konrad
>  };
>  
>  &usb_hsphy {
