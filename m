Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 57C1D610734
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 03:23:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234558AbiJ1BXj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 21:23:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234492AbiJ1BXi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 21:23:38 -0400
Received: from mail-qv1-xf2e.google.com (mail-qv1-xf2e.google.com [IPv6:2607:f8b0:4864:20::f2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D662CA98FF
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 18:23:36 -0700 (PDT)
Received: by mail-qv1-xf2e.google.com with SMTP id i12so3164896qvs.2
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 18:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ExaNe0+PHAZeptGCdv7nhjhnGueQivhSmqML2WumfiY=;
        b=FY91IEAccOF/X8e+Ry5ZCHAOxZAKItpkUVlmqfMGEN9WaKcOKqM9r08vVKPQC/rzZe
         Qg1YJ052WTNEELJn8KFQuChvD0VsdiEf+2Uxu7fatC0AEoqGalohhjYogKFqe2wntPDB
         8O5T7ymRULN9qj6OAz7EAQ+mThsnuFxDAGkOIP27jK8ND+op9gaYPKldLudPXuSof1l9
         +4dtvAUXFk6JgKeJMhcSElLdbnvYV1T3A4m7Y2nl138OGUXhmW3AV3a/Kh+w4BhN+aeT
         xT6ONe7SYgY4pTkoHGPlZS2CPHG9HVbi47UI6rXk7e6HkeOtz8RJNLxxvio2fqrTrpSB
         ffyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ExaNe0+PHAZeptGCdv7nhjhnGueQivhSmqML2WumfiY=;
        b=prqkERFVV0UyUKMG6s2lPTt+qbVLk0CdorPp6BUsQyR7Z0HQeGLpT20c4hYUkO036d
         7ktw/WxhrhwFJaFFnvlpGS1udNT/TsoWImEeqRZFPviWB1lf4pzdvfvBfgZyXVu5gQi9
         TG5xoM6jrAf1bjKYQV8+oAJRz3s0LNTt0vVHhDcNDylmVQUuOMGUDUu2vkisRqumoWkd
         dxlxkxez1+6DguIOQNXtuHexa14uaxfCkBEFovlZvIZpE7OEUFCF5XHH+EmWEn2IwMtv
         LodsssXbfP+3FeI2Uu/9pCGlDKTedAtmR4ayd4xnWcXdbnoKNIfg5q8y2SukK7E+lbeS
         UPBQ==
X-Gm-Message-State: ACrzQf0fXOFLgIabT5u3bAVafsfWSzbP11nhgw27Na4XCAC8JxHGZwMB
        TD/cMfWUSyTFGB2o2azB6OCqIw==
X-Google-Smtp-Source: AMsMyM59i8g2sKvo0v5DPB/P2cI6Ifwyum+sxSGT0d3frdGa5rKPJu7jleBGrSlrE7jzymWsKWq9zA==
X-Received: by 2002:a05:6214:c4a:b0:4b1:9831:f067 with SMTP id r10-20020a0562140c4a00b004b19831f067mr43033644qvj.39.1666920215909;
        Thu, 27 Oct 2022 18:23:35 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id r3-20020a05620a298300b006ee91ab3538sm2096703qkp.36.2022.10.27.18.23.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 18:23:35 -0700 (PDT)
Message-ID: <e5c25e9f-f081-8593-c61c-321cca3726a7@linaro.org>
Date:   Thu, 27 Oct 2022 21:23:33 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [RESEND PATCH v3 1/2] dt-bindings: phy: renesas: Document Renesas
 Ethernet SERDES
Content-Language: en-US
To:     Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
        vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org
References: <20221027134006.2343164-1-yoshihiro.shimoda.uh@renesas.com>
 <20221027134006.2343164-2-yoshihiro.shimoda.uh@renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221027134006.2343164-2-yoshihiro.shimoda.uh@renesas.com>
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

On 27/10/2022 09:40, Yoshihiro Shimoda wrote:
> Document Renesas Etherent SERDES for R-Car S4-8 (r8a779f0).
> 
> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> ---
>  .../phy/renesas,r8a779f0-ether-serdes.yaml    | 54 +++++++++++++++++++
>  1 file changed, 54 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/renesas,r8a779f0-ether-serdes.yaml
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

