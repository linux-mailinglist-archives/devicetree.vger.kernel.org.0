Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B2AF6749564
	for <lists+devicetree@lfdr.de>; Thu,  6 Jul 2023 08:10:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233528AbjGFGK3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jul 2023 02:10:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233532AbjGFGKU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jul 2023 02:10:20 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84D392110
        for <devicetree@vger.kernel.org>; Wed,  5 Jul 2023 23:09:37 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-992acf67388so30173166b.1
        for <devicetree@vger.kernel.org>; Wed, 05 Jul 2023 23:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688623771; x=1691215771;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ASMfahTCCTR31kbFV53HclK76U9QaQoyXHB0KJC8e7c=;
        b=ZIdU45UNL3olfI00eJtIJKgx3twq68In1VUvi4+ics5kf6rjOx83JPX4SFt4TR7V+m
         cjKs34qcRRmw10v5XDcwYFWvKd7RVhBhbqCdYmzx/QET3EfZN6rvwf3jjtVOY7vUIpLF
         l8U4PaoHRZpqxfryxVBXO4lxXqQFRhvY+hWZzRb82aomC3GLyrMVIW89TxFTeG3oLXeR
         oF8e6IRy9pIO5G4X6VbHcgWLg8ydMeVRWfpWumqsCIK1LzLlrkpjFWXigy3jcqIKHOT6
         9PBplTfq2oy+SRR80u7j9aFnC6AX7UhBC37zTHZwN7FdXY65LN9y75n3eIvLTDIz76Wu
         OxBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688623771; x=1691215771;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ASMfahTCCTR31kbFV53HclK76U9QaQoyXHB0KJC8e7c=;
        b=TcDpv3ScORmuYB8ZDjJu3kV1MxgYZ+IPaLvthmz6JImM6NE8H6nLTvZTtBaT/Ql7nn
         nPlN4fiJOzipkItl9Jyya7zrAxdZpvT95AYwUO5FpLDBR2+pBXkwywlc23ehvRQdrHkw
         JYTbpv5CFZT5wLmlgWKUe+O+cZiXZP17IfKNJ++XQYYGMX2/xBEJCEd+jKPWXqyww6wc
         +fM/f+kVLBQVX27T2t2fc1uIJnVtFPnu/o6GJ1MADfmLL4zX/IioWaLifJdGZGTe5/rE
         tLIklQ0+NcY7gqUMC6aGiGBMx8qx1ENTa50EXQ1jJ02wsKWD6Zwkty1Gm3745dWsh00g
         Qofw==
X-Gm-Message-State: ABy/qLZ5HY4OrJzQhmdnban5ZL/ThrdL6l8+74JBw2cwQdStkBGlCVhE
        u2UtBljsFAPqUfRXUkYk1Kq49A==
X-Google-Smtp-Source: APBJJlEJYhWKCUxNLn2gxQTdXoxo87IFqc1/LNXMaz/l/0oZ2H2zmsfqlt3EOaTU88nlptY/EVaXZg==
X-Received: by 2002:a17:906:209d:b0:973:d06d:545f with SMTP id 29-20020a170906209d00b00973d06d545fmr614778ejq.24.1688623771672;
        Wed, 05 Jul 2023 23:09:31 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id r16-20020a170906c29000b00991d54db2acsm367657ejz.44.2023.07.05.23.09.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Jul 2023 23:09:31 -0700 (PDT)
Message-ID: <f8e5c6de-0ff7-4b8e-d6bd-73be0b8a854c@linaro.org>
Date:   Thu, 6 Jul 2023 08:09:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 1/7] dt-bindings: arm: qcom,ids: Add SoC ID for SM7125
Content-Language: en-US
To:     David Wronek <davidwronek@gmail.com>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org, map220v <map220v300@gmail.com>,
        Taniya Das <quic_tdas@quicinc.com>
References: <20230704163848.169853-2-davidwronek@gmail.com>
 <20230704163848.169853-3-davidwronek@gmail.com>
 <a0bd842d-b6d0-e126-7b05-e488357330ab@linaro.org>
 <CAEoe_eWHbnE2EeWerkZAmGznagCoxB7kXsqtbTUxjtzgdmMRtQ@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAEoe_eWHbnE2EeWerkZAmGznagCoxB7kXsqtbTUxjtzgdmMRtQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/07/2023 17:48, David Wronek wrote:
> On Wed, Jul 5, 2023 at 11:46 AM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 04/07/2023 18:31, David Wronek wrote:
>>> From: map220v <map220v300@gmail.com>
>>>
>>> Add the SoC ID for Qualcomm SM7125.
>>>
>>> Signed-off-by: map220v <map220v300@gmail.com>
>>
>> We accept known identities, but this looks like a nickname/pseudonym.
>> Are you sure you got such SoB from map220v?
>>
>> None of the commits here:
>> https://github.com/map220v/sm7125-mainline/commits/a72q-6.0
>> have signed-off-by. Did you add it by yourself?
>>
>> Best regards,
>> Krzysztof
>>
> (Please ignore my E-Mail from before, I forgot to click "reply all")
> 
> I have asked map220v for permission to add their Signed-off-by to the commits
> and this is the one they gave me. Is the nickname a problem?

Yes, because it looks anonymous. We need known identity. Just take the
ownership of the patches...

Best regards,
Krzysztof

