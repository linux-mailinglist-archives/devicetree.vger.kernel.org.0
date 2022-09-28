Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C9EA5ED6A4
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 09:47:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233810AbiI1Hrl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 03:47:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233129AbiI1HrW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 03:47:22 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2189E115F7D
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 00:43:53 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id n10so18361726wrw.12
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 00:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date;
        bh=65Wvo6fUB4eovhFkQS8BY9wfyTifWEnoxE+L5q9ZRjM=;
        b=iJpvJ5ZaaU6Gp0rTF7h2UNkWGmsCW5sfLt0SBE5ITeb7I+Xyloi/xxljpcQxBgyNI5
         iggT15DMH14XO7xYPSG3KL8q4TKz8je5phvJKaxG5978QRCfVBTnG8MyKxyY7ep/+kCY
         i81wXL42fUWYIIWdItxC96fAVS7w2zJ+WtsNMNlQb5yhUecV55Xl+HSmKXJtzwwp6+Pc
         MR9+S9tmQJWU2aimhFnlWDKRkQmcjhuL/yOpJ2wKn6oPVS3sqxtLhQ9YAoSMoGwOJj1J
         9IZTdSJGBoZ01ti3hiMPoRkIWagzrRjGpvLj0D/jqWxwZv40EfHNIzqdkQikcFt9GAIy
         s/LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=65Wvo6fUB4eovhFkQS8BY9wfyTifWEnoxE+L5q9ZRjM=;
        b=OWbysofvDMQkBNmraK0kh+9S611zxprd45lu4TOIi1b3fReimmVH9MDNSSuvYyezyT
         ERGoT12WOL+OEbOfqHpjuQpNxZyXbp1tmwOASpx3i7FMnrSLTqyAwu/YAgm7LcO09Twu
         CHgWsJSLstN8vGDU81eipoYJ4RLpp5n9JXcAOHLgYiHmfTYl5IvseNnouYl77tLED/Oc
         USvjqvN8uRlkigzwW2IX+22NQG7HfSIkiZTagSgMTwoHgB9AxWkfaJLqjYgSjq5wwBcM
         p0FxxIMmUjLPT6ZFrVvlyCZtOinB05i6lC9A4fof26hzgqf/ETp2HB6eeM3FlD2oSozW
         Dj8w==
X-Gm-Message-State: ACrzQf1qwFnS2QQhv/FmQnYQrJ3iPMMt9DDFK/pS/Z+MmcQObDxlfluA
        iM2npo5Ty8015tY9FlWfXNeS7Q==
X-Google-Smtp-Source: AMsMyM5TROvIyynyp3uqJFk6ZH7yX05xevtIDRAOoDWQ8yow8DGRlSnNrQ8HDA3m0xo0jxKP/iahMQ==
X-Received: by 2002:a5d:5b18:0:b0:22a:fb91:3d6b with SMTP id bx24-20020a5d5b18000000b0022afb913d6bmr20121220wrb.56.1664351008442;
        Wed, 28 Sep 2022 00:43:28 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:11d4:7c71:accf:6521? ([2a01:e0a:982:cbb0:11d4:7c71:accf:6521])
        by smtp.gmail.com with ESMTPSA id p11-20020a056000018b00b00226dba960b4sm373410wrx.3.2022.09.28.00.43.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 00:43:27 -0700 (PDT)
Message-ID: <685e1625-ec7c-e1da-6ae9-7b4f927c6064@linaro.org>
Date:   Wed, 28 Sep 2022 09:43:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 1/2] arm64: dts: qcom: ipq6018: fix NAND node name
Content-Language: en-US
To:     Robert Marko <robimarko@gmail.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@somainline.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220927201218.1264506-1-robimarko@gmail.com>
Reply-To: neil.armstrong@linaro.org
From:   Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20220927201218.1264506-1-robimarko@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/09/2022 22:12, Robert Marko wrote:
> Per schema it should be nand-controller@79b0000 instead of nand@79b0000.
> Fix it to match nand-controller.yaml requirements.
> 
> Signed-off-by: Robert Marko <robimarko@gmail.com>
> ---
>   arch/arm64/boot/dts/qcom/ipq6018.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> index a7c7ca980a71..57978a8ab498 100644
> --- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> @@ -348,7 +348,7 @@ qpic_bam: dma-controller@7984000 {
>   			status = "disabled";
>   		};
>   
> -		qpic_nand: nand@79b0000 {
> +		qpic_nand: nand-controller@79b0000 {
>   			compatible = "qcom,ipq6018-nand";
>   			reg = <0x0 0x079b0000 0x0 0x10000>;
>   			#address-cells = <1>;

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
