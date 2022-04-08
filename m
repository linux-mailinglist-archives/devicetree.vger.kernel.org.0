Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 405474F90B5
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 10:25:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231701AbiDHI1G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 04:27:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231629AbiDHI1F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 04:27:05 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D1AE1B8FFB
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 01:25:02 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id d10so9264256edj.0
        for <devicetree@vger.kernel.org>; Fri, 08 Apr 2022 01:25:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=0uFzDQ9ka3hrce8//K9E+h2qA1+z8XYzZogK/JPYbio=;
        b=jBYLjbqH9e3oByNZCvHICqdZ6ihI4UJR8zUHoMg3PU1TcMV9sEIVd2pFhVr152i+WW
         6xltAUWud25pyuEfgv9npLB++LjGY9YqOSeHGnUEvw3bA/YbwUzHp6Hy3MyvjsqxM7Dp
         kV8VdsTh62vTphYN/KxpSEt61YUFTt4yAD5ua4Ro2cQCdIZQBhTuyD2P08y6hyjhr+YC
         KPImZ8pR/h/2gDjTaYEuKl7/p/cSXBBiSzOR53kwW8XKHfA0OCTEwmMt2YCf6yCSS9Ek
         POrBhgtBnoOeAiiv+31fQ8Fo6erVSyOS68I/9Wj+07MfghRKS7TSYfELXEFbR5CHP6H9
         oV/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=0uFzDQ9ka3hrce8//K9E+h2qA1+z8XYzZogK/JPYbio=;
        b=DENW33cLOkE40G5EEv23hughLy29ZNG1PllucHqv/r5f5gcwactxdRdA7KUO6D+7lT
         rY240aFiWRrlgZH2CuFXSKjnm0Xy+9QMHGzzwBEf4LuF6i0wzBugqm/4YxrG+JSpBZqu
         4cdoDUt+nEvO69gD9OjJLe/gapYg577jyxX8IgL0kl3DySwDnHwlYcrnvmS+lOntMUyu
         q7oed6jyuMvUDZvZRd9MVDDpt+n/Mu2dR/BkNErhDlIXWxs6qpkvn8PN2grrmyScPZdF
         hVNvTwf3bqsvThAkZQARxmFKYRS4NY0o4PvvTLrAYNu4BU0UkvVK7otHDmslMVJPMiOo
         RIRg==
X-Gm-Message-State: AOAM530ELQUqhSPy7xu4vEB5pu8U45e+UqDN9v2Wpjns/pwxsHnRN+WE
        RbrOfHvxizH9NNlm7TNeHEI1zg==
X-Google-Smtp-Source: ABdhPJxL3r9jzp7Pco9U65hlEHZVMRC/lP30PU3euZ19O8Nre4ZqhqoIixumtK8gG03DDzQDiYHYkA==
X-Received: by 2002:a05:6402:268a:b0:419:e9cb:f62d with SMTP id w10-20020a056402268a00b00419e9cbf62dmr18510068edd.194.1649406300969;
        Fri, 08 Apr 2022 01:25:00 -0700 (PDT)
Received: from [192.168.0.187] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id o17-20020a056402439100b0041938757232sm10204557edc.17.2022.04.08.01.25.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Apr 2022 01:25:00 -0700 (PDT)
Message-ID: <3a4b5e26-e770-d778-5ae5-f46ba00066ce@linaro.org>
Date:   Fri, 8 Apr 2022 10:24:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] ARM: dts: Drop unused ti,am4372-timer compatible
Content-Language: en-US
To:     Tony Lindgren <tony@atomide.com>, linux-omap@vger.kernel.org
Cc:     =?UTF-8?Q?Beno=c3=aet_Cousson?= <bcousson@baylibre.com>,
        devicetree@vger.kernel.org,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Keerthy <j-keerthy@ti.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Nishanth Menon <nm@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>
References: <20220408081216.57146-1-tony@atomide.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220408081216.57146-1-tony@atomide.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/04/2022 10:12, Tony Lindgren wrote:
> Drop unused (and undocumented) ti,am4372-timer related compatible
> properties to avoid dtb warnings when updating the binding to yaml.
> 
> The dual-mode timer instances on am43 are compatible with the am3
> timers.

Are you sure this is correct approach? Maybe some other user of DTS
references the am43 compatible, so instead it should be documented in
the bindings?

See also recommendation "DO use fallback compatibles...":
Documentation/devicetree/bindings/writing-bindings.rst
which maybe applies here?

Best regards,
Krzysztof
