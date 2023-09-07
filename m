Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C889C797C18
	for <lists+devicetree@lfdr.de>; Thu,  7 Sep 2023 20:40:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240051AbjIGSkf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Sep 2023 14:40:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232847AbjIGSkf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Sep 2023 14:40:35 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F750B4
        for <devicetree@vger.kernel.org>; Thu,  7 Sep 2023 11:40:28 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-52a49a42353so1749440a12.2
        for <devicetree@vger.kernel.org>; Thu, 07 Sep 2023 11:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694112026; x=1694716826; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a51rbBUhl2yVMBaRWJfNm+10uIGnQdsMPdqet6PAES4=;
        b=BAcOFqjO1SPbdyZzGrYAqP+VoFUibYr3+JPaxzDVJiZO7qcrDn/iCbKNHKJ3cyf92Y
         p3PswxiazHyD7zCofH1AEJCd7E05xBxnn/ZvNLZCplWzLK2mEXaIgtWEjAcv4tctIlem
         uGyoC1pXRakIygIl5HuSU/RNaV8g1ywDCdyG0PSX+Hr9M+eADXB/o1H8L48l6n1JniWC
         d3gZ7cKJ3s8USc/HiGeCzJ8L1xKIUB5QMzC++peJQaHoR2WasAb+iJ0kTU+jX6kIDZHZ
         wRzIll+O48Og/3T5xS30t/ZGypmngn63SX0iYGb2285Wgul32fag0JSXABCA8yvXG1pY
         w79g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694112026; x=1694716826;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a51rbBUhl2yVMBaRWJfNm+10uIGnQdsMPdqet6PAES4=;
        b=UKNOZ0BvCu37p9R1r6GgQxOpFWBmWXCJjfYvDIK4f7f2y6D8AdDFFLTbgxeuB6Wn9O
         BFp6IMucTH+KsjHrO3zhikW01nOPAu9/S5ti3bGMsZHVzjkdnG93pJLhHNG3Pv3Nd9bO
         dT6rtd2JHC2Cey4OuXVPtnBDyg5XKCs/a5TrRbyOOmRbE0U1lLDIDZ/9xvmSoE5NuoRG
         L38l1+b9+G1Zhyk+amNZqUxpofutpWEGOkomO8kiWeqxw5c4C1gJspboKtL83ujhgvkW
         QUSvuBJw2kXF7KYH7o/3PxzpzLQAZPvt07bnrpuQrv8B0A7pl/Xbqr11peqb+npLPOIK
         +eNA==
X-Gm-Message-State: AOJu0Yx2Qy8HuQBBTHwvHPDnmIaJICveuOvvpHHmAyrVUQ0DgiWlqLI1
        JzChJZDkTRdg6varWVqJJNavmG0BaXYK+hC/BqNZbg==
X-Google-Smtp-Source: AGHT+IFlXAmlomGcmhe6S0hUGMXYE4sEpDzId5svN/29k+3GVd9pMgSG9ox0ZZbhaW0oXLRASeVmdQ==
X-Received: by 2002:a17:906:24b:b0:9a5:ebfd:79a3 with SMTP id 11-20020a170906024b00b009a5ebfd79a3mr3449605ejl.29.1694066582736;
        Wed, 06 Sep 2023 23:03:02 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id a1-20020a170906684100b009920e9a3a73sm9946636ejs.115.2023.09.06.23.03.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Sep 2023 23:03:02 -0700 (PDT)
Message-ID: <d822da46-b6c0-6932-6ed6-8806fbeee51d@linaro.org>
Date:   Thu, 7 Sep 2023 08:03:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v1 07/10] arm64: dts: qcom: ipq5332: populate the opp
 table based on the eFuse
Content-Language: en-US
To:     Varadarajan Narayanan <quic_varada@quicinc.com>,
        ilia.lin@kernel.org, agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@linaro.org, rafael@kernel.org,
        viresh.kumar@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org,
        quic_kathirav@quicinc.com, linux-pm@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
References: <cover.1693996662.git.quic_varada@quicinc.com>
 <a6d12e3b253d6a55d85f66979ba8b7d9c9ff6072.1693996662.git.quic_varada@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <a6d12e3b253d6a55d85f66979ba8b7d9c9ff6072.1693996662.git.quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8
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

On 07/09/2023 07:21, Varadarajan Narayanan wrote:
> IPQ53xx have different OPPs available for the CPU based on
> SoC variant. This can be determined through use of an eFuse
> register present in the silicon.
> 
> Add support to read the eFuse and populate the OPPs based on it.
> 
> Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>


>  	};
> @@ -150,6 +173,11 @@
>  			reg = <0x000a4000 0x721>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
> +
> +			cpu_speed_bin: cpu_speed_bin@1d {

No underscores in node names. I am pretty sure I repeated it multiple
times already...

Best regards,
Krzysztof

