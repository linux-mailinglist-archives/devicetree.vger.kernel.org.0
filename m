Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0D8752A5D1
	for <lists+devicetree@lfdr.de>; Tue, 17 May 2022 17:15:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349767AbiEQPPZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 May 2022 11:15:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345559AbiEQPPY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 May 2022 11:15:24 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA28B49F31
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 08:15:23 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id u23so31912087lfc.1
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 08:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=gc0B+KUO3JMWAuRjz+x4dN12ndY0LGxXybxfOh3RP7w=;
        b=sWzOi30fpeE8gWvv5iUlfYcr08ViW4rXRceTN3iOnpyevLP/1HFKpR+jlzOWzIHT2o
         4zXjyr+Z1Bsim5sytLd1s0VCBVFWwdD3+zDB8vEC03AMrpp+svfzdwQUM0NQGvO9H49S
         AfddPp3jDQeSCaZOmmnmIDpQWwoOeVn0gwEDCMct3zzjVH2CifoOKGtzpredlrP1D5J7
         hAAQ7GhQDitrstrYMECaoWTXFGp6/VgkkA1yTFszZ3dRLqj69ixKsbz3aTXLGz3P1Vrf
         OPshM5D8myxn3MVV43VqpxNc77qPVv/NZn3QBwSBbWqFjz0RTfHRfdp+6Mc5j6NKT8z/
         WL4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=gc0B+KUO3JMWAuRjz+x4dN12ndY0LGxXybxfOh3RP7w=;
        b=piT9AOfHTHNSQMw92kslsmhgi5F9ePE4FPc9po0uKf200bMvutIXzOAzTp+HM43su0
         Ou5hA5jOyZN1EMgXl5GxADMqTTbYfzP4HGjhytLAZVYfaFsSrix32lcyKVk+d1qM3j8L
         mc/HsIs6t/87JFrf8kWGB+a6LuKOSxw28M/8Wdym7UMovB2AiRGujD2UaBDjW7NSPfLC
         S9oG5/Fx1yXzv6ECFZgsdzGgHXY6YfHe9bOHbQJgGjBRWoXX/RUBbgxt5LpHw4weQxxM
         Po6CdHr3HKrnUqIlW0hPw1Iu/MuzNfdjD8d+kbwx5uFKXC/nZ1OCYqTCH98qE7urJ2Oa
         Rnxg==
X-Gm-Message-State: AOAM531MhlcJMJ9STdRX7BtNBhF22cVdV9OkTidczKih6iaICsITVUhM
        woR9fHtcTFSJWj0cQNN1EOseuQ==
X-Google-Smtp-Source: ABdhPJxfWdLc2ErvnQ7M2Ug26y8sHs3Ee958zCZBJ/jvxQoVx4aN3jQPaADUKCkg9G7AF3MkvasvYQ==
X-Received: by 2002:a05:6512:2821:b0:474:5127:8f6 with SMTP id cf33-20020a056512282100b00474512708f6mr17461964lfb.66.1652800522120;
        Tue, 17 May 2022 08:15:22 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id h2-20020a05651c114200b0024f3d1daf02sm1915201ljo.138.2022.05.17.08.15.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 May 2022 08:15:21 -0700 (PDT)
Message-ID: <08a4097c-268a-81c0-8fa5-754d92216035@linaro.org>
Date:   Tue, 17 May 2022 17:15:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v8 1/2] dt-bindings: thermal: k3-j72xx: Add VTM bindings
 documentation
Content-Language: en-US
To:     "J, KEERTHY" <j-keerthy@ti.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, daniel.lezcano@linaro.org,
        rui.zhang@intel.com, amitk@kernel.org, kristo@kernel.org
Cc:     rafael@kernel.org, linux-pm@vger.kernel.org, vigneshr@ti.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220517121423.8017-1-j-keerthy@ti.com>
 <20220517121423.8017-2-j-keerthy@ti.com>
 <03c0e4fa-ccfb-fd86-0899-92a1086cac09@linaro.org>
 <324bd9c8-06b4-b9f5-7213-0e4b2a50653b@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <324bd9c8-06b4-b9f5-7213-0e4b2a50653b@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/05/2022 17:07, J, KEERTHY wrote:
> 
> 
> On 5/17/2022 8:08 PM, Krzysztof Kozlowski wrote:
>> On 17/05/2022 14:14, Keerthy wrote:
>>> Add VTM bindings documentation. In the Voltage Thermal
>>> Management Module(VTM), K3 J72XX supplies a voltage
>>> reference and a temperature sensor feature that are gathered in the band
>>> gap voltage and temperature sensor (VBGAPTS) module. The band
>>> gap provides current and voltage reference for its internal
>>> circuits and other analog IP blocks. The analog-to-digital
>>> converter (ADC) produces an output value that is proportional
>>> to the silicon temperature.
>>>
>>> Signed-off-by: Keerthy <j-keerthy@ti.com>
>>
>> It seems I am repeating myself... Tags are still missing...
> 
> I still do not have a Reviewed-by from you. Should i add yours?
> You are still giving additional comments so I did not add.

You got Rob's:
https://lore.kernel.org/all/YnB4rtn87l5nXtRM@robh.at.kernel.org/


Best regards,
Krzysztof
