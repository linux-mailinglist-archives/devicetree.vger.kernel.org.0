Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA5875EE3A7
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 19:56:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231919AbiI1R41 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 13:56:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233190AbiI1R4Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 13:56:25 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81687E10B0
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 10:56:24 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id a10so15244616ljq.0
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 10:56:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=w83Blt+pExhC8qZthpUl7jNIgc+X4UN3qwS7CA2xKd8=;
        b=OA8cR4fuLSmLVqXw4yuxudEtu64bhR6D/teEAZulXsqz5uvcFOV7J0J2B7b6zsWh+M
         TaWkjemDHxgV/6GNkQ99IDAT87cj38dDmP1QnZz7LYJr1F6WBP1KDd+xwQRzv3ICIktm
         nr4RvF0u/yw+kzRs0aT2WcZ+KdEA9sKFIsLzgYuaro8ykACkJG4IWiDqoPpyqfkgym3k
         yYrkrx3g4pIiO0xHcFyPW74WmOJ8UwRLH+dDxeHKwcShOi8NAsqWYnNBxPVhSZyIZaIh
         jv+xcTZPqt1EvmYSICkLIbvaU3tQgn8bH+crPiyv0oCdZ89HOajQuZ5lFj8JFLmuuDFX
         xmpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=w83Blt+pExhC8qZthpUl7jNIgc+X4UN3qwS7CA2xKd8=;
        b=7/kU9KYbk87s6AwN5S/Loahyafk/W65VesoxiNwz2uRI260mybjelG99qArXdd8ng4
         CDY9X+iDN4DNo/I49HLKWbwd435KHLTdGuay0gLlnVwOic9QxRh0yRsnS75DCRAYiA86
         RSJhvDUMug4TbVVpS+nakOvJqumiHUVT4xPyEp/gpwf6JEXPFOrznHp6gZrC5HLBdgDY
         bGkSKagzgLM5kzehGtsGvqN29bFQxaCahFfIrDlVPoN7GCqQPbs1/ksrXd8dWdPy3xVD
         rx3kD4R6lzT+t+HFAXAlcCm/kKrhpf/vkFPmAZrpOCj2VuXdR6RotMY1DXCbMx4kRoac
         h5fQ==
X-Gm-Message-State: ACrzQf0yLMbgaDbCNShFZuGUw0bxyQ2elZ9S6Lk++UYd4j42Adks1mbJ
        4Tk4RIuvJhMH1K+ZHYUpmU3yGndy9LeNJA==
X-Google-Smtp-Source: AMsMyM4uP9jwz9LpdsQflbKPi7oZsDUV0AQNFIskhtG5xzIY3AALaGgDlFylVStMCZyXtkzJaLVA1g==
X-Received: by 2002:a2e:9791:0:b0:26c:5956:30dc with SMTP id y17-20020a2e9791000000b0026c595630dcmr12363478lji.373.1664387782922;
        Wed, 28 Sep 2022 10:56:22 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id h15-20020ac250cf000000b00498f871f33fsm535867lfm.86.2022.09.28.10.56.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 10:56:22 -0700 (PDT)
Message-ID: <fa8f515b-cfae-0edb-e02b-b0de2352bd7c@linaro.org>
Date:   Wed, 28 Sep 2022 19:56:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v1 3/7] arm: dts: qcom: mdm9615: add missing reg in cpu@0
 node
Content-Language: en-US
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20220928-mdm9615-dt-schema-fixes-v1-0-b6e63a7df1e8@linaro.org>
 <20220928-mdm9615-dt-schema-fixes-v1-3-b6e63a7df1e8@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220928-mdm9615-dt-schema-fixes-v1-3-b6e63a7df1e8@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/09/2022 11:14, Neil Armstrong wrote:
> Fixes cpu@0: 'reg' is a required property from dtbs check.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> 
> diff --git a/arch/arm/boot/dts/qcom-mdm9615.dtsi b/arch/arm/boot/dts/qcom-mdm9615.dtsi
> index b06bbe25fdd4..e547becc9f75 100644
> --- a/arch/arm/boot/dts/qcom-mdm9615.dtsi
> +++ b/arch/arm/boot/dts/qcom-mdm9615.dtsi
> @@ -28,6 +28,7 @@ cpus {
>  		cpu0: cpu@0 {
>  			compatible = "arm,cortex-a5";
>  			device_type = "cpu";
> +			reg = <0>;

Put reg after compatible.

>  			next-level-cache = <&L2>;
>  		};
>  	};
> 

Best regards,
Krzysztof

