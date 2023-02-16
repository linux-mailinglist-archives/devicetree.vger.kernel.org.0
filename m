Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 96FCB69920F
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 11:46:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230164AbjBPKqQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 05:46:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230253AbjBPKqN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 05:46:13 -0500
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F26255E66
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 02:45:49 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id b16so1454809ljr.11
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 02:45:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g+tEM7ELPzWqQR39OWNvLKsRiqKGZ0XHVkzhGqQzL5A=;
        b=tMDIOPqrV1cihBfOtKYdrin2dN/STDL8GJgt0/X7r+iAEezn22nj1ALz3qLninITwo
         VqQkjhE1ib57xd7df8rhIA0lIK9sbAFGGeBqLZYNRG4TNUhdKFDu/x5UghrnctL45ahb
         gLpqicbL2IB41gqZIB5mxp0XrcjBde3MpRhHWKJ3DFHT0tdD8mI3FoJUt4BXF/ICPnOB
         jDQvlqqFk1lRd9vF8sn5S3WDIM/w33vTRrxl9jtX/14wxQpJXymL7TXWAQYHs0Ee6zs4
         VUGRrvtTTqjwaOpVXE+0jQLRdLG9TzmfYVwbo7b/a+AYWxp6JvkBD/dzEyXcusS2tLPU
         dbdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g+tEM7ELPzWqQR39OWNvLKsRiqKGZ0XHVkzhGqQzL5A=;
        b=IWuyqnQDOYnwKMqUi0RT5p16wIDm0B/uQFNI2CL8clyik1teCmV7WQW75v9H0cut+f
         Kpnd+W1KAfUf32y02msCj/Hn6JRaEVl1hiXTin0pQ6GR8iu++nWZ2SQNtxdesIdJZNtd
         CVEFyVUv6ZADa9tSMr/zO+d6LT2DhNJPfSBwSq6EKd0tAfYB5NU+uelNvrZ6Fp7ICaD7
         ecPXnCHk8NBR8TOpHjfIyySw7e0nOQt4KiBK3MBuqAhwCWhqeNZXGLsuEsvGKRjoIuhS
         nb9BsSTzPjbWdWWSAph8VwU/5KhwwpCDa2y7spsATQ61LoeE8qkGI5FVTfExYoirl2VV
         Nijg==
X-Gm-Message-State: AO0yUKUD3lPc7iqA2C5DI3eDCAUgxKgm3Qmf4CcZKmiGVe9z16KgiCRN
        svGZoOcW8t+wpJ4seIJhXu4H0A==
X-Google-Smtp-Source: AK7set+CXwukOmdllAARvYAOe0F8ZQOQ8gO+m4oU6JCDs+DivY338SNguO78KAxpky2MfX5SA616Fg==
X-Received: by 2002:a2e:a58e:0:b0:294:6b9a:6e91 with SMTP id m14-20020a2ea58e000000b002946b9a6e91mr132856ljp.17.1676544344786;
        Thu, 16 Feb 2023 02:45:44 -0800 (PST)
Received: from [192.168.1.101] (abxh117.neoplus.adsl.tpnet.pl. [83.9.1.117])
        by smtp.gmail.com with ESMTPSA id t16-20020ac25490000000b004d5786b7299sm250603lfk.5.2023.02.16.02.45.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Feb 2023 02:45:44 -0800 (PST)
Message-ID: <7a411fab-b0b9-e61b-5a4b-dc4da1758c00@linaro.org>
Date:   Thu, 16 Feb 2023 11:45:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Subject: Re: [PATCH 1/4] ARM: dts: qcom: ipq4018-ap120c-ac: setup serial
 console
Content-Language: en-US
To:     Robert Marko <robert.marko@sartura.hr>, agross@kernel.org,
        andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     luka.perkov@sartura.hr
References: <20230214161211.306462-1-robert.marko@sartura.hr>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230214161211.306462-1-robert.marko@sartura.hr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 14.02.2023 17:12, Robert Marko wrote:
> Add the required alias and stdout property so that kernel can setup
> the console based off DTS and not have to set it in the cmdline.
> 
> Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm/boot/dts/qcom-ipq4018-ap120c-ac.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom-ipq4018-ap120c-ac.dtsi b/arch/arm/boot/dts/qcom-ipq4018-ap120c-ac.dtsi
> index a5a6f3ebb2749..38efd45433da5 100644
> --- a/arch/arm/boot/dts/qcom-ipq4018-ap120c-ac.dtsi
> +++ b/arch/arm/boot/dts/qcom-ipq4018-ap120c-ac.dtsi
> @@ -8,6 +8,14 @@ / {
>  	model = "ALFA Network AP120C-AC";
>  	compatible = "alfa-network,ap120c-ac", "qcom,ipq4018";
>  
> +	aliases {
> +		serial0 = &blsp1_uart1;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
>  	keys {
>  		compatible = "gpio-keys";
>  
