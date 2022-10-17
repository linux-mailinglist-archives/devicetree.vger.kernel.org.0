Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5E5F60192E
	for <lists+devicetree@lfdr.de>; Mon, 17 Oct 2022 22:16:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231425AbiJQUQo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 16:16:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231424AbiJQUQT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 16:16:19 -0400
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com [IPv6:2607:f8b0:4864:20::72c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A180248CD
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 13:15:28 -0700 (PDT)
Received: by mail-qk1-x72c.google.com with SMTP id a18so7437939qko.0
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 13:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3hFR/JKuZ224C1tzOZjwuzfHyBFmtfdzMfvcxSPRjbQ=;
        b=VE7guqGIMqTuXk335bohHdtRCqXAbmWg+6R4hdeueCxnywSVbiaUbTt3HiU0yZd98T
         aYU5U+Ou88iOou8HVpEB9gzROMfdf1JkSJJBSv9p1+/ZX9sJcZV7XvG/7oSflTjTWxQj
         KR07CkK5BHfsc/1TXEsBCeo4WrJNEImWo1byP8IwTGQx3w6WO5Yo7IXLlCE6Ct2LUhHM
         R/HGLlUpNUmA849i8BnYbN+q24XSbogzIGps2H6yn2gT7KoxcSxvTEoh6gmN/dlbWAUa
         svyCF5cmNx4J2QJ2kWZJb8wn3vLJKhU1FQWlFIwhtZwTvhujuts7Ev/I7PwJKOBe/QwI
         9fmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3hFR/JKuZ224C1tzOZjwuzfHyBFmtfdzMfvcxSPRjbQ=;
        b=pOTY3Q1A9CiUT/tTJeoUNDUUhAIyjeFcTWWevbHpeffoU1Gxh8TdMPwsAfUI1pnJoi
         SCA+e4oEUwtbNpz6eX7NOnSQRScdplEVCJswtXOxKqUWGiQJrQsIJaHOZ1OQdn1EUrLQ
         qpiIsQQRFQulernsm9dGWr1tVagQu7YSO4+yMNAFUVTzC1ekx+LUXJyv9fGW6vQ/wfRO
         j4dQtP46kvQRH0t63ldpdJYpb7k57diNaugS8hYJ+ZodQh0ltwDQzf+D3K97ipERWTeZ
         LKciA+bmyb5mqSwd40PJMj5uV1sADVPGlsISDA19c23cwVegZeyZ6moPB5XNL1x0l4xC
         xLZQ==
X-Gm-Message-State: ACrzQf0E5HtDBrjYmu5w8Wjjri16tEUZ3qMMf48aREzDNOGucnmlkVo0
        rqHyqPFGxGMdtT1JCZ5B8w/6LA==
X-Google-Smtp-Source: AMsMyM6hKTj8N78SpstCP8ItrkFlrR+UIDFZexsd8+/YfceyQ65yGg4jBiZVbiTxImsak4+Kij5bxA==
X-Received: by 2002:ae9:ea03:0:b0:6e0:ca9c:e795 with SMTP id f3-20020ae9ea03000000b006e0ca9ce795mr8923285qkg.168.1666037681995;
        Mon, 17 Oct 2022 13:14:41 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id u24-20020a37ab18000000b006bb83c2be40sm556712qke.59.2022.10.17.13.14.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Oct 2022 13:14:41 -0700 (PDT)
Message-ID: <279324eb-fc1f-4d1a-b1c2-d8cf64809e1f@linaro.org>
Date:   Mon, 17 Oct 2022 16:14:39 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH v3] arm64: dts: qcom: pmi8998: add rradc node
Content-Language: en-US
To:     Caleb Connolly <caleb.connolly@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>
References: <20221017190902.2282899-1-caleb.connolly@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221017190902.2282899-1-caleb.connolly@linaro.org>
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

On 17/10/2022 15:09, Caleb Connolly wrote:
> Add a DT node for the Round Robin ADC found in the PMI8998 PMIC.
> 
> The RRADC reports PMIC die and skin temperatures, as well as
> battery/charger thermals. It also reports USB and DC charger voltage and
> current measurements.
> 
> Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
> ---
> This patch introduces a new dtbs_check warning which will be fixed by
> https://lore.kernel.org/linux-arm-msm/20221017185105.2279129-1-caleb.connolly@linaro.org/
> 
> V2: https://lore.kernel.org/linux-arm-msm/20221017185609.2280067-1-caleb.connolly@linaro.org/
> Changes since v2:
>  * Remove 'status = "okay";'
> 
> V1:
> https://lore.kernel.org/linux-arm-msm/20221016180330.1912214-1-caleb.connolly@linaro.org/
> Changes since v1:
>  * Change node name from adc@ to rradc@, see linked patch
>  * Enable the RRADC by default, rather than per-device 
> ---
>  arch/arm64/boot/dts/qcom/pmi8998.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/pmi8998.dtsi b/arch/arm64/boot/dts/qcom/pmi8998.dtsi
> index 6d3d212560c1..08c9ec2cafa6 100644
> --- a/arch/arm64/boot/dts/qcom/pmi8998.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pmi8998.dtsi
> @@ -18,6 +18,12 @@ pmi8998_gpio: gpios@c000 {
>  			interrupt-controller;
>  			#interrupt-cells = <2>;
>  		};
> +
> +		pmi8998_rradc: rradc@4500 {

No, generic node names so adc. Please do not send DTS patches separate
from the bindings.

Best regards,
Krzysztof

