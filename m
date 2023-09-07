Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13C717979E8
	for <lists+devicetree@lfdr.de>; Thu,  7 Sep 2023 19:25:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234857AbjIGRZs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Sep 2023 13:25:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243224AbjIGRZp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Sep 2023 13:25:45 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D5071BF7
        for <devicetree@vger.kernel.org>; Thu,  7 Sep 2023 10:25:20 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-4ff8f2630e3so2036312e87.1
        for <devicetree@vger.kernel.org>; Thu, 07 Sep 2023 10:25:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694107470; x=1694712270; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vpHIUYmzApKmGGiHZZpnMSxi31KSn/xZKBPfgME94EA=;
        b=whkLiIlp8dMKxYVRHkKy2K9eV5WoHyGMOgFP+7zOSFfUgyxVFWUIgI0EI3g/ZRuTgT
         3uWmdpoCzTt2cjrGOqjIk0W2irNHkpJ7QLSdEpyQxX7glXYLoePjzwkUYZ9uFXevxftY
         ZpnHbBqH4qbNucehqHyX8ujMvesTaBsdww4HVywUtL1n+sk0lT9nML+MFovyLQcgAD1t
         jM/8DYj0RJfLb7T3CEMA9pWkxtpq0grS35QLW92/b4jVbnrlbJCdEFELw8e0jqH3xYUr
         GXv2LTIGBpHbzYh002FZvH1ysK+lr6//6PJcXidTbX6pFbyGewtIICPRvxa3p7jE61uc
         VJ6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694107470; x=1694712270;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vpHIUYmzApKmGGiHZZpnMSxi31KSn/xZKBPfgME94EA=;
        b=bKCHegwwFmlCo4+hcLFW/pvOTzCHetI7Xv9NK7DPoO5bc6DKd1u1+ScwmoXu8B/3EG
         to+li1Dtqi/aEdbxy3XlO0+oBFcZX6I117AyJxDcd5C3MleFvjQCRZhOIDwIdUvw85kd
         kFfdtWMC376DU5cRQ8hCm4T+uVc0OMXFd/xQIGHysZ1DjutZjVOiNWs6d0Xx88frmPuL
         IwMktoNTixZUh4YOaj6BpEzMVaV3jEe0cKRKr2PxikCgwBZUPzbUITO0fB9WZ/2mRKOm
         VH3/C59VBdAFxjQFcDwmSJu/EkOfhEj0QfXTeKbEu/ZKVydK2CDut1TiVmmhCoZXrAOq
         t26g==
X-Gm-Message-State: AOJu0YzsKF5SFdB4DUAE/d32YEvRrAOssgx7EcKVk51kuix3GoKd/Cih
        OOvMjvT4tiFktP+9/hvK2Yiy6ZUEb6FRXdy6YRdORA==
X-Google-Smtp-Source: AGHT+IE6rP7AS4FnGxp/huXUuWImGW5DpdIfQDtTj/sIRkZFOXfhElTxhQiu10RgpaNZRjIoSI51Qg==
X-Received: by 2002:a17:906:5c:b0:9a5:db06:4264 with SMTP id 28-20020a170906005c00b009a5db064264mr3607933ejg.72.1694066638936;
        Wed, 06 Sep 2023 23:03:58 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id g2-20020a1709064e4200b009a5f7fb51d5sm9928020ejw.21.2023.09.06.23.03.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Sep 2023 23:03:58 -0700 (PDT)
Message-ID: <4f882fa1-8174-2816-71c4-a2941372aa19@linaro.org>
Date:   Thu, 7 Sep 2023 08:03:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v1 10/10] arm64: dts: qcom: ipq9574: populate the opp
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
 <1512a94f8fe1f8fe22cef2bf8498a6ac27989633.1693996662.git.quic_varada@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1512a94f8fe1f8fe22cef2bf8498a6ac27989633.1693996662.git.quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/09/2023 07:21, Varadarajan Narayanan wrote:
> IPQ95xx SoCs have different OPPs available for the CPU based on
> SoC variant. This can be determined from an eFuse register
> present in the silicon.
> 
> Add support to read the eFuse and populate the OPPs based on it.
> 

...

>  	};
> @@ -223,6 +254,11 @@
>  			reg = <0x000a4000 0x5a1>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
> +
> +			cpu_speed_bin: cpu_speed_bin@15 {

No underscores in node names

Best regards,
Krzysztof

