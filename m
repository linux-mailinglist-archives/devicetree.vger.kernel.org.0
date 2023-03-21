Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4D806C2C66
	for <lists+devicetree@lfdr.de>; Tue, 21 Mar 2023 09:30:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231270AbjCUIaJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Mar 2023 04:30:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231252AbjCUI3U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Mar 2023 04:29:20 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1B0C15CAF
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 01:29:06 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id y4so56552674edo.2
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 01:29:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679387345;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cIK8tv9ks6psHuZhE+GzBiUGzc6Fhss7rZzNhUXOnf4=;
        b=Ae/xed2e5w/AOlmf4k4cDuATbvbOp0NJ00/8+LVG+jogPyl/6k/vn+ip8s7HYa8pyv
         OcYXENl/PV48g+zhsC7XHuZCpIniPYxethZnjG+h1cLEjHnFbqvZyCCWHf8c12fUyHiI
         nLNj9VVx6gs5K22rofdJ93F2WSg7Qn/0ZnSPzX4YogbqTii4+ItDJKkNe/N9IlDKTObe
         8qvoWFqyE9UdV7aKsVmhIrk644QxfL7lZRVGMCrceVAL+9Yr8RtoTIG47SgWqHF95oN4
         jB5UaEBpRfposD90if/TlcwR5M1mhX8ZAFyll7xt3RtWa1pY8hJfw6fSh9u7At4HdHGd
         TtLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679387345;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cIK8tv9ks6psHuZhE+GzBiUGzc6Fhss7rZzNhUXOnf4=;
        b=2fsJ93tp/1SI7l7beBNyAUv2jUhpkK3JgM4UPPAKDaNQh+Mr9y4zumFftTb6g0yLYX
         eT4X9nr5slSzvJboCKUG1VWpaj9/OeYqYWASrZGUgQlGXGB26zLqV1HJHRq6z6JBw816
         CbHnTDuTJP6SoR7DvB+/6gOzh9kgMHZm4Q/D8REdLtupFZOfZcvNVHR7R5uAJh8PK0dG
         VKGC+R2d2uKUD/hs59DIJuEw2wV2vjQu0q1CuyXUSePkkwhoL+7wF5HeUbCQu0/OQZU/
         NqRj2kuforPumaSVFFTPS19s9bmd74srZ7Whq54jcvjUjNeDIs+NHdV67JrdmsUgK/4G
         Kecg==
X-Gm-Message-State: AO0yUKWoTNyywxwxBMZJroUIdtg6u/svv79/kE//ECIsSyv6EX0Aogz2
        NjOdJ8lN8SFobNll/glfAhMD6Q==
X-Google-Smtp-Source: AK7set83ywsPDbcH3aooNJOf1IUCiM3mFiJBZY8OcdwvX6MHn9leW47hD5YXFkg/k7EoJls7Mfcz9w==
X-Received: by 2002:a17:906:c9c6:b0:902:874:9c31 with SMTP id hk6-20020a170906c9c600b0090208749c31mr11361569ejb.35.1679387345095;
        Tue, 21 Mar 2023 01:29:05 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:2142:d8da:5ae4:d817? ([2a02:810d:15c0:828:2142:d8da:5ae4:d817])
        by smtp.gmail.com with ESMTPSA id c21-20020a50f615000000b004fce9ff4830sm5934109edn.88.2023.03.21.01.29.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Mar 2023 01:29:04 -0700 (PDT)
Message-ID: <ffbc4b70-03bf-a475-d7d9-076c02e85c42@linaro.org>
Date:   Tue, 21 Mar 2023 09:29:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/3] dt-bindings: wireless: add ath11k pcie bindings
Content-Language: en-US
To:     Johan Hovold <johan@kernel.org>
Cc:     Johan Hovold <johan+linaro@kernel.org>,
        Kalle Valo <kvalo@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230320104658.22186-1-johan+linaro@kernel.org>
 <20230320104658.22186-2-johan+linaro@kernel.org>
 <a8356f76-189d-928b-1a1c-f4171de1e2d0@linaro.org>
 <ZBlqZLHwqLLZhtTi@hovoldconsulting.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ZBlqZLHwqLLZhtTi@hovoldconsulting.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/03/2023 09:27, Johan Hovold wrote:
> 
>>> +    $ref: /schemas/types.yaml#/definitions/string
>>> +    description: calibration data variant
>>
>> Your description copies the name of property. Instead say something more...
> 
> Yeah, I was actively avoiding trying to say too much (e.g. mentioning
> the name of the current firmware file). See the definition in
> qcom,ath11k.yaml.
> 
> I can try to find some middle ground unless you prefer copying the
> current definition.

So just copy the description or its parts.

Best regards,
Krzysztof

