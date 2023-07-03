Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 47A8D745BA7
	for <lists+devicetree@lfdr.de>; Mon,  3 Jul 2023 13:52:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229488AbjGCLwq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jul 2023 07:52:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229494AbjGCLwp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jul 2023 07:52:45 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57CEE11F
        for <devicetree@vger.kernel.org>; Mon,  3 Jul 2023 04:52:44 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-4fb73ba3b5dso6853318e87.1
        for <devicetree@vger.kernel.org>; Mon, 03 Jul 2023 04:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688385162; x=1690977162;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3Bo8CQZuGOx7AfnhzVdTLc5mcJ9AtzZX28gk5UboCyU=;
        b=SoxnfWfzRWyNpY7nyhqIdwEjSZ/RUcifO+s/gXkqJmZ3NNVLlrBIt1I1sV2XCXuAas
         PYZ6KbyHkODlEMoALFKeQm3njwIqls34+SJTlR7X6RCgJqs7GzzP0tXwTlb4akXmBTIo
         UBnr79fYGTabx/JnJhKj/ngat6baP9XgEoXGkqRHbsjYfk4UbtDLlg5Qpf++6XCARUmI
         jO9+utRZ0O47/fgJNemWwpgc301W7/oJgT2lH9zX3taJEOqGy5vH+N2cwhwRQ6J7b1y+
         GtFar22pSF4XlUeDNMO5V83zlQJ1ydeLkpjHtWz2P/iSgN3cp8Ot9RKCF/ry8WpHDkGq
         ExPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688385162; x=1690977162;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3Bo8CQZuGOx7AfnhzVdTLc5mcJ9AtzZX28gk5UboCyU=;
        b=IPooq576Y9uUG96T4sgxUXYkTvmkrxevxvpTpLWDPe00PFaQcBK7JAJpvRXcIylwdw
         8utFIcuhGAi5TZAiW2eB1GF32i0Hdz2LQjWPSqP8PqNvZuLGmhAyghoNOWGjgpwXo9uY
         n4BsBXozvVPVaFrUxGbKle+Ennwr1a9aPIqqLIcmBlUwH1/jkX5qaOjg+wucF6W9BAqU
         Ity6SJcO1vhNa9p0Y/RczFxF+n7IBYkr9vBuPF2e8VLyPFkiarTkTNL+IkW6KtvMYr9V
         qHkagI37KgiRWyp1Aa9SZ3QsJEES5X4o+PFDpEszww6eL4hfBAHGL3LMOU5hf/bwFfOr
         L9Qw==
X-Gm-Message-State: ABy/qLYGZXvg3Rkm5u+wz/HZbR+CmJCTsxpwAJHpCDjuVLLEEPlw9dGJ
        88U+0Y+53dZdD2pZJJUktyc16o/qrk3L3U4gZbrB/A==
X-Google-Smtp-Source: APBJJlHjD10neJxsMQQ70NWuaz/i9kGvDfGeH1BtOdii3eKYdMnL5JfzEJ9g7x5HmgKTUds3ycm7UA==
X-Received: by 2002:a19:e01d:0:b0:4fb:7592:cc7a with SMTP id x29-20020a19e01d000000b004fb7592cc7amr5731402lfg.20.1688385162660;
        Mon, 03 Jul 2023 04:52:42 -0700 (PDT)
Received: from [192.168.1.101] (abyj26.neoplus.adsl.tpnet.pl. [83.9.29.26])
        by smtp.gmail.com with ESMTPSA id q5-20020ac246e5000000b004fb94c6f5c4sm2700399lfo.247.2023.07.03.04.52.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jul 2023 04:52:42 -0700 (PDT)
Message-ID: <f60a0e8f-6614-deb7-c82e-8b6e94e0ba1f@linaro.org>
Date:   Mon, 3 Jul 2023 13:52:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 18/27] ARM: dts: qcom: pm8921: move reg property
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20230702134320.98831-1-dmitry.baryshkov@linaro.org>
 <20230702134320.98831-19-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230702134320.98831-19-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2.07.2023 15:43, Dmitry Baryshkov wrote:
> Move reg property to come after compatible.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm/boot/dts/qcom/pm8921.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/qcom/pm8921.dtsi b/arch/arm/boot/dts/qcom/pm8921.dtsi
> index 4697ca33666f..fa00b57e28b9 100644
> --- a/arch/arm/boot/dts/qcom/pm8921.dtsi
> +++ b/arch/arm/boot/dts/qcom/pm8921.dtsi
> @@ -31,9 +31,9 @@ pm8921_mpps: mpps@50 {
>  
>  		rtc@11d {
>  			compatible = "qcom,pm8921-rtc";
> +			reg = <0x11d>;
>  			interrupt-parent = <&pm8921>;
>  			interrupts = <39 IRQ_TYPE_EDGE_RISING>;
> -			reg = <0x11d>;
>  			allow-set-time;
>  		};
>  
