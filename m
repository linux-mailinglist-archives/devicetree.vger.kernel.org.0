Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E15A6F5988
	for <lists+devicetree@lfdr.de>; Wed,  3 May 2023 16:09:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230002AbjECOJk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 May 2023 10:09:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229784AbjECOJj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 May 2023 10:09:39 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9218459F2
        for <devicetree@vger.kernel.org>; Wed,  3 May 2023 07:09:37 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-94f1a6e66c9so1002933966b.2
        for <devicetree@vger.kernel.org>; Wed, 03 May 2023 07:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683122976; x=1685714976;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mK68NYi4Md501UpiqLonzXIdRt1tnNyCrIythi7sS+M=;
        b=noHAyyyWDYLPP6JO/zozkSkR2vkzidbvTevSRwNzUbJtQSxqGAz6P6BoNIlrpA2tgX
         0Ax7FwFNNxXaxvq4AjYH3l57NVqojg41eZVsE2h5SSsCehHN+iCbJvkvSGd5t6soY04T
         oMX9YalyuVn63F8wnmCgYqHfrYekJjagE9II6StQoP6XZQHZbEY+/hyuCD/VkdXgCBJJ
         ejNtLOpI5Cjr2+mHCvoXIgJou5lWthj2vGJ0qlsnLJtAX4PQdKnckJvCw95W4LD5WWot
         GA/UjQy6yVG2Rz1QebCVbZENPCi1x8UzZEZ9T2O3ZzsITG5rCjBsrDWkKyHVVosoSrIt
         RDZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683122976; x=1685714976;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mK68NYi4Md501UpiqLonzXIdRt1tnNyCrIythi7sS+M=;
        b=h4MHnpzmatqTSYt5PW5RfEQIWEm9vAzgdw2C8q1lfoBIOqhrKoJ0mxuRlmw1KhZBrD
         OqYXT0oV2KGH6yLeBAGkuAQzpXYQ+Dy4EL6w9amoqjE2ncPrPgs159FU732/EpASvY+Y
         9GPiQir+seXkEmk+w2woFynfG1ozUkdkZjlKhuizhEsIgMH+r/tBUY8kH5E2f604HL8c
         9Lf9HD3sSpBY/YWajOKZ3Yedp1PE+BZXTKTHucXsfSImVCEpijsYEQr+Dkqd9gdTHwe/
         q9yxKUoNxi5orefBa1fxWL+kXAiXTg1YliBC/DHdlLz1wRMMsH/lEZu3WcBSjahDETGF
         0DgQ==
X-Gm-Message-State: AC+VfDzufaH54MlPDLzbZDSpcJ5gSdYNn67F5O7YqDcPSqh5I50Ylvs7
        a3EPzQ1O24zdXBtgiVPUWkCVdQ==
X-Google-Smtp-Source: ACHHUZ7MpB081+GYrlSXGSVot5dVaOLY86f0bU3jAd2a2xjuJu5mlKxTH5nx1WwtH/pn1/saQX/7nw==
X-Received: by 2002:a17:906:58cf:b0:94f:2852:1d2b with SMTP id e15-20020a17090658cf00b0094f28521d2bmr3247307ejs.72.1683122976003;
        Wed, 03 May 2023 07:09:36 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:db42:e3d0:c55a:8cf1? ([2a02:810d:15c0:828:db42:e3d0:c55a:8cf1])
        by smtp.gmail.com with ESMTPSA id h20-20020a1709070b1400b009658f5a90d2sm127868ejl.189.2023.05.03.07.09.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 May 2023 07:09:35 -0700 (PDT)
Message-ID: <0537e5be-87c3-c551-ac12-d2cdf5b18b07@linaro.org>
Date:   Wed, 3 May 2023 16:09:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v2] dt-bindings: dma: xilinx: Add power-domains to
 xlnx,zynqmp-dpdma
Content-Language: en-US
To:     Michal Simek <michal.simek@amd.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Hyun Kwon <hyun.kwon@xilinx.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
        dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <30424f5886ef42419f65c2d5131ad30881c727a4.1683100816.git.michal.simek@amd.com>
 <20230503125125.GE32586@pendragon.ideasonboard.com>
 <a5ff9c0f-6ee9-8b1a-5f77-fb56176bce22@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <a5ff9c0f-6ee9-8b1a-5f77-fb56176bce22@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/05/2023 15:27, Michal Simek wrote:
> Hi,
> 
> On 5/3/23 14:51, Laurent Pinchart wrote:
>> Hi Michal,
>>
>> Thank you for the patch.
>>
>> On Wed, May 03, 2023 at 10:00:20AM +0200, Michal Simek wrote:
>>> DP DMA has own power domain that's why describe optional power-domain
>>> property.
>>
>> As far as I understand, the property should always be specified, the
>> only reason why it's not mandatory is backward-compatibility (I would
>> make it mandatory, as I think proper validation of new DT is more
>> important than avoiding breaking validation - but not operation! - of
>> old DT, but that's a separate story). If my understanding is correct,
>> could you please update the example in the bindings to add the
>> power-domains property ?
> 
> backward compatible - of course
> always specified - if pd driver is enabled it must be there. If not it doesn't 
> do anything - just describes it.
> 
> I am not in a position to decide this. But if dt folks agree with your ask I am 
> happy to make it mandatory and extend example.

By making it mandatory in the bindings only, not in the driver, no real
ABI gets broken. Linux won't stop booting if property is missing.
Therefore if device is always part of power domain and it is actually
required, then sure - making it required is useful.

Best regards,
Krzysztof

