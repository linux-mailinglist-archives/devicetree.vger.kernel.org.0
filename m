Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E95145F3073
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 14:49:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229680AbiJCMtX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 08:49:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229675AbiJCMtW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 08:49:22 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF27B1F9FD
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 05:49:20 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id p5so11623778ljc.13
        for <devicetree@vger.kernel.org>; Mon, 03 Oct 2022 05:49:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=8YBWEnvnq73TtR5dCVuvd15XTmzWE6cV0pWivUu7WiM=;
        b=SfMiNkElE7B2KgNwhGh5m4Llv0SFf9Vq1zmA19rcX9OqM2bpOq6ZPe5BiozlHCD4vI
         wdlSfbp3ki9FxJyS4JBlWTV7h4gWiASIFxJCo2llEStLc1Cfz/ORa9NV+mCIE1UAfhiA
         +9GDWX29C8/NURWV3wemsHNzzj6C6TAgiGJigTwQPT1CstGlIXG3oZoIyieenTD9hhtR
         5a7CM+9Y59EhCVEETrSV8d8OEF8dy9DdSSrcI+6x48pKLof9KJjxhSXcKLdss6rTTJyd
         I4ol3DsGVXthJ+sIG8zNYkhexYuyGAKkoIsWK+JY/PWNGLrg5X6UVvNwHNTdux1b7deA
         7l/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=8YBWEnvnq73TtR5dCVuvd15XTmzWE6cV0pWivUu7WiM=;
        b=YoUoAt+6ujqaXkz+L8DWRm/PBybOmnzFdN/dpKFnoTGO//jCsaolZJBxPrU5+U4xpn
         BCVxQlKsXtql2x5fZfw8+UfRTvzXsJKnmuKkGnF2+Dc55tFN9Fl2RaSF/zcbRsgLRyuY
         PiGSjfeq92FbZe13ZIQphWausb8VASdO3Q1BVu4M8aHEY8tF/FRqG7GjWVzt3zLUthDY
         adp6sH+ForBPVMulV6H1ciJYlPd/ETYNGggU2EfEIDwzZbLB803Ob53YdQ6aYq54IBLl
         xR6VoXsdLHdqUSjLO1NqQNAj1YIYCiNp76qtetOQhHziQstk5KsDa625U6JjyK4QSdRv
         6Qcw==
X-Gm-Message-State: ACrzQf1Y7umDnYIjjvT9OBKMFPH1JTEWY18cTjVAWVrZJaOo4RgNI83v
        bGqM90Z5VSkUBEPXbbsR0VEDBg==
X-Google-Smtp-Source: AMsMyM6dOAw+4rLIBFcvRPBdLNiak4ykRRiGDgegohqg4jwYnGOHrJRaunEcwjPrfFS16FFeWVMB2g==
X-Received: by 2002:a2e:a30f:0:b0:26d:9162:9451 with SMTP id l15-20020a2ea30f000000b0026d91629451mr6625703lje.164.1664801358967;
        Mon, 03 Oct 2022 05:49:18 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id h15-20020ac250cf000000b004a054efd0cdsm1456477lfm.36.2022.10.03.05.49.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Oct 2022 05:49:18 -0700 (PDT)
Message-ID: <07052cec-0448-f06b-466c-e47b9692c3a8@linaro.org>
Date:   Mon, 3 Oct 2022 14:49:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v2 2/2] dt-bindings: add bindings for QCOM flash LED
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Fenglin Wu <quic_fenglinw@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Pavel Machek <pavel@ucw.cz>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        collinsd@codeaurora.org, subbaram@codeaurora.org
References: <20220929121544.1064279-1-quic_fenglinw@quicinc.com>
 <20220929121544.1064279-3-quic_fenglinw@quicinc.com>
 <5445adda-80e6-41d0-9786-c26d253631c9@linaro.org>
 <20220930193308.GA741352-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220930193308.GA741352-robh@kernel.org>
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

On 30/09/2022 21:33, Rob Herring wrote:
>>> +
>>> +    required:
>>> +      - led-sources
>>> +      - led-max-microamp
>>> +
>>> +required:
>>> +  - compatible
>>> +  - reg
>>> +
>>> +additionalProperties: false
>>> +
>>> +examples:
>>> +  - |
>>> +    #include <dt-bindings/leds/common.h>
>>> +    spmi_bus {
>>
>> No underscores in node names, so just "bus"
> 
> SPMI is something else though...

True, then rather spmi - already used in DTS.

Best regards,
Krzysztof

