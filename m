Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 131005F338B
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 18:27:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229868AbiJCQ1h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 12:27:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229882AbiJCQ1e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 12:27:34 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1970356F5
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 09:27:32 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id c11so17541895wrp.11
        for <devicetree@vger.kernel.org>; Mon, 03 Oct 2022 09:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date;
        bh=9+dtGbR9T5PgFjqzZYYclv6i4x1qHV/F8D7KG+DNV4I=;
        b=sQ5sP3Euwn88ULct3ofUvykpt5EDCf01+T3pr3hPTx6JWJW+v08ulP8aSUArb4Dvzm
         uJiaQdzVu0Bz1ycceWmWVaXIKR+kRgW5w5gEJh9IbB1XwY/Nnuu8C3S0g3/v0c3oZeL8
         kXtNhVj3tBFRxiKhFzbHTiZkfmNMhJeUMwAD8jle5c1NHRmM5lVEhw04ur2jUBBuVQ4U
         rho5rTrVnFgnJNPndR4ndErOOwOxedtNS+Vjwfg4OycvY0FiB7Ym1m2WAoupDj0lSC/N
         ykRqboz142m2CkQpJHbK+ahKoBhLYufcFJipjvXj4ZqFtWXjkTVsyKW2RYeyzUibcjlR
         slWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=9+dtGbR9T5PgFjqzZYYclv6i4x1qHV/F8D7KG+DNV4I=;
        b=qnKQ+Ij4bZfs/CAg64OY5AXeSut/pXHEaH4ipFp0v7sp2U2T3c25ssPK8QFvnx/Sf1
         BgfUrW0RzY2SA/YIzuh3HtDPjUTzPnViDESGjPzMrnPGGbwSwPEgKom7IQz7fCuQGH1K
         4zmstz6Z+z0VYcyrEq0As13UTKH0K6/t2oe/Z04W8FhY8lUdaK3qLSpFK69jGtUv/5jY
         JTnLmXvug4qLsPhLBw3AfqoxQEA+lPJ3gv6mRDGOJxOoFh2mdWUJf8fayQobm7Hgip46
         onfjZTx0Bo1+BbpC4QjhPERG5oWcBi3RzlgEnuC8m4P3hw6c1r39FBwRsZOreazcYB8S
         i34Q==
X-Gm-Message-State: ACrzQf1dohrRu/S7NG2/MgxAryCxk/o1hRd9FgZdDlvrY6b6Khs/UVss
        qxNsizFrG4I9kJrGwucgpvSnsw==
X-Google-Smtp-Source: AMsMyM6WKYgtMfqi7H102jaOZ4dg3b4nF4+HKujt8/HQaiUeOU3CNUDtPdYII8Yt2H8HUuc1Zn+olw==
X-Received: by 2002:a5d:59a6:0:b0:22a:e22f:79c7 with SMTP id p6-20020a5d59a6000000b0022ae22f79c7mr13967375wrr.511.1664814451388;
        Mon, 03 Oct 2022 09:27:31 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:9da7:1217:d35f:d7cf? ([2a01:e0a:982:cbb0:9da7:1217:d35f:d7cf])
        by smtp.gmail.com with ESMTPSA id bw18-20020a0560001f9200b00226dedf1ab7sm4548526wrb.76.2022.10.03.09.27.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Oct 2022 09:27:30 -0700 (PDT)
Message-ID: <d094cb16-a355-1eb5-10ef-fa01c3cf1997@linaro.org>
Date:   Mon, 3 Oct 2022 18:27:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 22/23] ARM: dts: qcom: msm8660: drop unit ids from PMIC
 nodes
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20220930185236.867655-1-dmitry.baryshkov@linaro.org>
 <20220930185236.867655-23-dmitry.baryshkov@linaro.org>
Reply-To: neil.armstrong@linaro.org
From:   Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20220930185236.867655-23-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/09/2022 20:52, Dmitry Baryshkov wrote:
> On MSM8660 the PMICs are connected using SSBI devices, which do not have
> any addressing scheme. Drop the unused unit ids from PMIC device nodes.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   arch/arm/boot/dts/qcom-msm8660.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/qcom-msm8660.dtsi b/arch/arm/boot/dts/qcom-msm8660.dtsi
> index 4b0f58c417d5..60edb4bd5bbb 100644
> --- a/arch/arm/boot/dts/qcom-msm8660.dtsi
> +++ b/arch/arm/boot/dts/qcom-msm8660.dtsi
> @@ -338,7 +338,7 @@ qcom,ssbi@500000 {
>   			reg = <0x500000 0x1000>;
>   			qcom,controller-type = "pmic-arbiter";
>   
> -			pm8058: pmic@0 {
> +			pm8058: pmic {
>   				compatible = "qcom,pm8058";
>   				interrupt-parent = <&tlmm>;
>   				interrupts = <88 8>;

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
