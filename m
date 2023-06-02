Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB5FD72038B
	for <lists+devicetree@lfdr.de>; Fri,  2 Jun 2023 15:39:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235354AbjFBNjl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Jun 2023 09:39:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234562AbjFBNjk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Jun 2023 09:39:40 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EE631A7
        for <devicetree@vger.kernel.org>; Fri,  2 Jun 2023 06:39:38 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2b1a4250b07so24800471fa.3
        for <devicetree@vger.kernel.org>; Fri, 02 Jun 2023 06:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685713176; x=1688305176;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=55brW+iiqQZU3U4ATbpWs6UQaJT/M5kVk9naukILYbg=;
        b=KZ011BeeVmf8SiU/LbVv1IOLCdwdga3jA+5YffDWrbswzPvg/bl/r/qBuklednytfa
         n7q31NPgUQstES8DmSvSoZ/qQa5/yD/z5uvDn7Cd26XuFvfJC7WEDIHtWKTIhSfb1Iab
         dz1Scg2JVfNXE2O80F8TOQDuVzJMD/dKAN0bR66YJfOsZAuPLUuhebp5IuS2pYRgIH+O
         QdAGVETof9nQpmPjsrYdvzPg1CSzXOC49+qQs18ouTrrG5AZexQYmKSAAddXVr9BwEpi
         QYEu6hY58L0c5N7lKIdiaJTB/zHL5A0e6/vXVRBW7KhDI++1+1qRShHdWK2WX9bYWLsr
         MV8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685713176; x=1688305176;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=55brW+iiqQZU3U4ATbpWs6UQaJT/M5kVk9naukILYbg=;
        b=YroMOowc7xqr/3oVsstx2NLO4Xx0CVqdKf+GgDL6oTqfIYuNt4QFxSll4ZQQLsvkSE
         HobMXoKkWDmrcG4iWkk/J9KPmYOfW+etmrvvT9otkynACpj0y6N7sU8VC66HGtrJvhI8
         Gti+FjM5uLGTe6QqKGyX7BMeoikGsY8Kv2TPi5TWiMRQ62LYIe4u/KjSCoZbgv8h3/vL
         PBulMMDQwWD5U2bfDq0JwDPo9bw1QiZxTnGt8/ci/19XomRcUubHwp+nBgBQCUKZum5M
         5yCrgV3tKZVOsGE8KsrILbaaJet7Uc+4U2gpjCoMnJcVA4Ik3PcY6eDEolVOLUtaupiH
         rKTA==
X-Gm-Message-State: AC+VfDybmmCr3XQV2ibS/so+3N4zJ+edfqV/n9do08b/6qbMMyUmaMfc
        nZ1jiuE0eBHj5BEuseR5WbpBIw==
X-Google-Smtp-Source: ACHHUZ5VXEiuCcdFzknOLseqdS50yg/IecTf0s0owUi+fueqMfql6O2PelFFz39byNr2wsoteWCRlw==
X-Received: by 2002:a2e:9b93:0:b0:2a9:ee54:9fad with SMTP id z19-20020a2e9b93000000b002a9ee549fadmr35054lji.7.1685713176404;
        Fri, 02 Jun 2023 06:39:36 -0700 (PDT)
Received: from [192.168.1.101] (abyj77.neoplus.adsl.tpnet.pl. [83.9.29.77])
        by smtp.gmail.com with ESMTPSA id u11-20020a2e91cb000000b002b1ac2bcf99sm226486ljg.120.2023.06.02.06.39.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Jun 2023 06:39:35 -0700 (PDT)
Message-ID: <9f770d30-29c6-7390-0d14-ec9c5b4b1bc7@linaro.org>
Date:   Fri, 2 Jun 2023 15:39:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v2 6/6] arm64: defconfig: Enable sc828x0xp lpasscc clock
 controller
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     johan+linaro@kernel.org, agross@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230525122930.17141-1-srinivas.kandagatla@linaro.org>
 <20230525122930.17141-7-srinivas.kandagatla@linaro.org>
 <b06070d3-a272-9a0b-2d02-df8fbca4e951@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <b06070d3-a272-9a0b-2d02-df8fbca4e951@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 2.06.2023 15:18, Krzysztof Kozlowski wrote:
> Resending as my previous email probably got lost. If you got it twice,
> apologies.
> 
> On 25/05/2023 14:29, Srinivas Kandagatla wrote:
>> Enabled sc828x0xp lpasscc clock controller driver required for X13s laptop.
sc8280xp

Konrad
>>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>> ---
> 
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Best regards,
> Krzysztof
> 
