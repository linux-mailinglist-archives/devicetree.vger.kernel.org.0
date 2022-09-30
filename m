Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D15E5F096F
	for <lists+devicetree@lfdr.de>; Fri, 30 Sep 2022 13:03:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231177AbiI3LDo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Sep 2022 07:03:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230521AbiI3LDQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Sep 2022 07:03:16 -0400
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB8391C40C
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 03:40:47 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id r6so6184002wru.8
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 03:40:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=DcsCImqzPTtzDW+tcf53orV9UGxO9/x924I5Tz5lCW0=;
        b=DOBegeC3Tt/LD6Tc9/ludEXVJJkVcz3y+SfHVxnl0ptEwm4PI+2nPrOBrXdMm8QVFd
         pICuieo3rxj5ujEO3EdSjl8QIIBduUUj2S2SXewt0KEQqmFICZA+yiEDy1gBL2cRBaMi
         w+Lx2ZJ83Id/0aQ9MUUi46pyGWmNKXxCGmPt5MEt2/wdo7r26mNhIltCc6PGdnEi5LOm
         SdC5J69g1+3uNzK0iylzlMkX5e2NLutOXzBQHDo8PcjtOcwj0SJP1rZKoZgTB1HJzzYH
         VwXHPci5W2EmUoVi8TC6259gf/DqPb0gbiJUbZK3QOWCwtsgUhyekEOCfzmQAIKyUHbg
         snqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=DcsCImqzPTtzDW+tcf53orV9UGxO9/x924I5Tz5lCW0=;
        b=Vec75XJiwyG1suIf50xgs9JwZ1gpsrWK951TccK3CK578O+MvsAkTLW6ihscxY3uEG
         A1rt8MxX+dBFBI64JG3sUcQCq69EW1vdpFJDBhTahn8BiaARRrGWDHDaxBs3bd8GNg+r
         yFKoRWBAJ3C15TF+MNDnQ7Svaj+vBxIUPUAJPnzXdJu8LDJ9Ht9V81tpCK3rgQiK0mBK
         VgROK9gmFlUeDL7zZZjM5ketmgzcJj9QMmUgrzroNkbFQXChjz/zpm/Nl+KatlDxTRwh
         v95EQcmvlX5kq1dRvfvyepq9tsKFmHKszYpA6yqNsrrx2Uaxey6ETeWEHlLH9518MuFA
         E0Ow==
X-Gm-Message-State: ACrzQf0eIHTmuJ9hcYUagAR7sX5nAwGBjWv1zeU2xIbai5bNhBkV85tX
        spMa9gmtwr6Cf9oEH+qjB3KKbEqoJnbvqw==
X-Google-Smtp-Source: AMsMyM7LPvp0NeJoE5RQplQmz7PBBSJnZe0CoB01Qld704XlCb2Nvam4kDeGgajbxjzMgF1x9G0ZWg==
X-Received: by 2002:a2e:908a:0:b0:26b:fd3:1870 with SMTP id l10-20020a2e908a000000b0026b0fd31870mr2628888ljg.120.1664533573044;
        Fri, 30 Sep 2022 03:26:13 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id d15-20020ac25ecf000000b004979e231fafsm253439lfq.38.2022.09.30.03.26.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Sep 2022 03:26:12 -0700 (PDT)
Message-ID: <9999a1a3-cda0-2759-f6f4-9bc7414f9ee4@linaro.org>
Date:   Fri, 30 Sep 2022 12:26:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v2 3/4] dt-bindings: net: qcom,ethqos: Convert bindings to
 yaml
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        devicetree@vger.kernel.org
Cc:     linux-arm-msm@vger.kernel.org, agross@kernel.org,
        bhupesh.linux@gmail.com, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org, netdev@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        David Miller <davem@davemloft.net>
References: <20220929060405.2445745-1-bhupesh.sharma@linaro.org>
 <20220929060405.2445745-4-bhupesh.sharma@linaro.org>
 <4e896382-c666-55c6-f50b-5c442e428a2b@linaro.org>
 <1163e862-d36a-9b5e-2019-c69be41cc220@linaro.org>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1163e862-d36a-9b5e-2019-c69be41cc220@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/09/2022 10:12, Bhupesh Sharma wrote:
>>> +  snps,reset-gpio:
>>> +    maxItems: 1
>>
>> Why is this one here? It's already in snps,dwmac.
>>
>> Actually this applies to several other properties. You have
>> unevaluatedProperties:false, so you do not have to duplicate snps,dwmac.
>> You only need to constrain it, like we said about interrupts in your
>> previous patch.
> 
> I was actually getting errors like the following without the same:
> 
> arm64/boot/dts/qcom/qcs404-evb-1000.dtb: ethernet@7a80000: Unevaluated 
> properties are not allowed ('snps,tso' was unexpected)
> 	From schema: Documentation/devicetree/bindings/net/qcom,ethqos.yaml
> 
> So, its not clear to me that even though 'snps,dwmac.yaml' is referenced 
> here, the property appears as unevaluated.

Because snps,tso is not allowed, but the rest is.

> 
>>> +
>>> +  power-domains:
>>> +    maxItems: 1
>>> +
>>> +  resets:
>>> +    maxItems: 1
>>> +
>>> +  rx-fifo-depth:
>>> +    $ref: /schemas/types.yaml#/definitions/uint32
>>> +
>>> +  tx-fifo-depth:
>>> +    $ref: /schemas/types.yaml#/definitions/uint32
>>> +
>>> +  snps,tso:
>>> +    type: boolean
>>> +    description: Enables the TSO feature (otherwise managed by MAC HW capability register).
>>
>> You add here several new properties. Mention in commit msg changes from
>> pure conversion with answer to "why".
> 
> Right, most of them are to avoid the make dtbs_check errors / warnings 
> like the one mentioned above.

All of them should not be here.

Best regards,
Krzysztof

