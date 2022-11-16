Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 205B762BC46
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 12:44:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233162AbiKPLou (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 06:44:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233534AbiKPLoa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 06:44:30 -0500
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C875932B8D
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 03:28:47 -0800 (PST)
Received: by mail-ed1-x530.google.com with SMTP id s12so26063568edd.5
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 03:28:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jylzXLkVwlyUhw+1ixhtHVGB+JlbHUmtRmPcWW6Itio=;
        b=UJ3rj+DOWBZ6QFVRfiexUweAr7jmI4S5uHBaJIPtlytLs8oQglpqYyT443vnvFUYZV
         c0e0eM0G9QUlxtt1lTpPzno0oFSEdFeVzxv9tbpD16bVHwSNOXyq2+sfWAx3xVa0RRhM
         J6f/1KD2BuPkp+SwAMPjdABacehguKcUHhh0MXLWTkeqQ6TA+v+jAYYZRJ1KooyWBT/o
         n0tieyDwOTpRJz2/GqT4W1j9gGtYylnbGR5XklmCKadEtHJjuueQghqTumzYhwFExFUK
         rHdtv4d+eED+kLWQlP+GIwrme85BMFAYYnwUZro+HSo/fbkR5MyQhh2qvorhptjOIc6O
         FB6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jylzXLkVwlyUhw+1ixhtHVGB+JlbHUmtRmPcWW6Itio=;
        b=jVYQBvVb8mvhAglCUD2C66ajfQU5rOsRKJVPLERXioxDNgQDUzLqAwFWQMYXcbYwqI
         2XAcJZ8DIui4BouXy55bGAXO9quEyXKGjcU3vrBIRmbihJe4FKpRljOKTLdAQzkQu9F4
         g4bJcVRCB+6GlkWP1imWPmCzXp2zy6oJYM6RJM0LaIrC9QIdCRLMVHYe7ppGEBI+m9LM
         LS25SJ8WqlW+uY8CpncH/YtBVrH6SCiHi27N6BTTZnTsSK7l8FUk6o+yZCZjXAXpMwrz
         Gm403f0FdZw3CQLW8B50yMfWIQtOsLOzBas9LcqqJ+hTDN1AkYBgjRRsF2Hb9p+H5I23
         5HTw==
X-Gm-Message-State: ANoB5pl6Txqlo99fkbH+c/4/f2FzlZT1w3igvQ4mGOeQzVgBc6zEfeS/
        74EG7UCKpj4yKGgK/nfr3Ai7yI2QXTM0SNfK
X-Google-Smtp-Source: AA0mqf5baXAXv+Zm8iJg7Lhcvz9XgcRI3DHc+esGj5jTdcWc3L1w+n6AKw0na+v1FNED5cJaLnYVng==
X-Received: by 2002:a05:6402:43cf:b0:467:bc1f:ca16 with SMTP id p15-20020a05640243cf00b00467bc1fca16mr12561227edc.269.1668598126371;
        Wed, 16 Nov 2022 03:28:46 -0800 (PST)
Received: from [192.168.31.208] ([194.29.137.22])
        by smtp.gmail.com with ESMTPSA id 23-20020a170906329700b007821f4bc328sm6789004ejw.178.2022.11.16.03.28.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Nov 2022 03:28:45 -0800 (PST)
Message-ID: <6a0d0d84-4239-ea55-8dbc-c1cff38fc76d@linaro.org>
Date:   Wed, 16 Nov 2022 12:28:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.4.2
Subject: Re: [PATCH 02/10] arm64: dts: qcom: Add base SM8550 dtsi
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "vkoul@kernel.org" <vkoul@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
References: <20221116103146.2556846-1-abel.vesa@linaro.org>
 <20221116103146.2556846-3-abel.vesa@linaro.org>
 <c55c57be-aa82-e39c-6373-ff4e57497122@linaro.org>
In-Reply-To: <c55c57be-aa82-e39c-6373-ff4e57497122@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 16/11/2022 12:02, Konrad Dybcio wrote:
> 
> 
> On 16/11/2022 11:31, Abel Vesa wrote:
>> Add base dtsi for SM8550 SoC and includes base description of
>> CPUs, GCC, RPMHCC, UART, interrupt controller, TLMM, reserved
>> memory, RPMh PD, TCSRCC, ITS, IPCC, AOSS QMP, LLCC, cpufreq,
>> interconnect, thermal sensor, cpu cooling maps and SMMU nodes
>> which helps boot to shell with console on boards with this SoC.
>>
>> Co-developed-by: Neil Armstrong <neil.armstrong@linaro.org>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
>> ---

>> +        };
> Looks like they are supplied by the QMPPHYs now [1]
> 
Forgot to add the link.

[1] 
https://lore.kernel.org/linux-arm-msm/20221110151748.795767-1-dmitry.baryshkov@linaro.org/T/#t

Konrad
