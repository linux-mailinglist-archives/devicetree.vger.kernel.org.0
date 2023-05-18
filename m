Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F82A707704
	for <lists+devicetree@lfdr.de>; Thu, 18 May 2023 02:40:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229482AbjERAkI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 20:40:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229661AbjERAkG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 20:40:06 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2996235A0
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 17:40:04 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-4f2676d62a2so1643862e87.0
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 17:40:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684370402; x=1686962402;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JngQhTfI8Rhrj1ZIfILXfp+eL2PcOd/TsT6KpOwnk48=;
        b=iy8RKNEn+FsGeDYqHGbbnFfumxi/pBF6Sq0+qzowkAO2jW6ExgeF0x7KLhXRmVyHaE
         E5OdaHMBb0n4k5TgxUNG6W5e2Xmscfu2soHhn/JKD0DP3r0NDxgIC2XKDDH9KGACR4hz
         2+LX6Iy7KjNO4eLGEABun++y4U3K4sNRrK1YgP8NWVA8IKput7fxlW5gDOF/9asuHcAn
         S24VwhSPU+0PsN1xLkMnV+0w/lJ8Hfbg3ArU8WzeMEIkuPY6YMFG0c4lF58kscy6Zhh2
         0CtMQhSDR40aNzsQUWbAuGYyZCuJ4T+TO63OzW4zDjhqBjL3+snYgAOguT837aZFiTNi
         UWVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684370402; x=1686962402;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JngQhTfI8Rhrj1ZIfILXfp+eL2PcOd/TsT6KpOwnk48=;
        b=aM5W7rNawTLKFIpaWMJMh5JlWUJYE2AW2rIY40+EArnRGkBiR79UZT3BUDjkAFxC6k
         /BmvX1XOwJwe75fqCWTnPOZW8wB5TaBHw6JoE0lFtSFrTGgbpBpBrI4V6GjSZ/nPEreF
         bTHYFeJdQIWLCTiL2Zz/To6WSS4IfLNJWgFggc+6CeZkXuYDWWabTLLzJ+J1LEW36StD
         p7aVGRmYTz6340xvfEBUBy4JynZwXFYHIbcgNMUqTW5s+s2pRRY8JnkuHXNTmtFgf6HF
         pER2L8g6hUI7uo3lhXm6f8R3IZFAANNCX7bEj33royz8xLDADVsoFftSndPTDHtH3pmX
         UlSg==
X-Gm-Message-State: AC+VfDxVyyXSMFpOSQEDz7s9DKt6X417zUk1zqPBNaqGd7lM5xbgtBwq
        btjuAMzYL+mC9cYn6f68GC3aLg==
X-Google-Smtp-Source: ACHHUZ6QY9V+7pTA8acpF+FmTwmXPPYTPPVNMX2b6n7ZK3ig3bL5P1d9m5APWgm24EoXfZaAWVwi0A==
X-Received: by 2002:a2e:7004:0:b0:2ab:365b:dc7d with SMTP id l4-20020a2e7004000000b002ab365bdc7dmr10106805ljc.27.1684370402427;
        Wed, 17 May 2023 17:40:02 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id v6-20020a2e9906000000b002ada45ce1fbsm1345lji.128.2023.05.17.17.40.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 May 2023 17:40:02 -0700 (PDT)
Message-ID: <e3acba8b-3832-3fac-81c2-1b13ef851a3c@linaro.org>
Date:   Thu, 18 May 2023 03:40:01 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v2 1/3] dt-bindings: power: qcom,rpmpd: add missing RPMH
 levels
Content-Language: en-GB
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Conor Dooley <conor.dooley@microchip.com>
References: <20230517-topic-kailua-rpmhpd-v2-0-3063ce19c491@linaro.org>
 <20230517-topic-kailua-rpmhpd-v2-1-3063ce19c491@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230517-topic-kailua-rpmhpd-v2-1-3063ce19c491@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/05/2023 23:12, Konrad Dybcio wrote:
> There are a lot of RPMh levels that we haven't included yet.. some
> sadly turned out to be necessary, add them!
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>   include/dt-bindings/power/qcom-rpmpd.h | 10 ++++++++++
>   1 file changed, 10 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

