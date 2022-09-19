Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 055145BCB50
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 13:57:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229807AbiISL5q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 07:57:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229927AbiISL5Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 07:57:25 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F4251163
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 04:57:12 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id f14so45559534lfg.5
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 04:57:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=1drbddor9/rvI43PNp1IDQw4Ub673Fz3uY0a2MUnS7o=;
        b=se2XQ0xUMydb2Ak4GS4bZwjOyjFsz88DqRFQmTD9VvNkepbV4oGYnIqk0hJYqCnmRD
         NAeK51YpIs1S88fR2WFiarwOqKHlAvtWFsz3mFxAsfmVpapVQItzAmKV/+M7cJZXqo+Y
         smNxmZs9O4YyRuEPf9TGH7UqvPnvVhYWXb6h4XLdPTHLVIvOg5OWeFhwUGz8xIpFSTIa
         RcPIj7CNLYxt3UG4lpOENa+CMVyxuWqGxWgFt9AUNCcVXyIxGckgobLbGvUbD/3x6GQa
         6K79jAvsdEyvcvz+2pjfS8tuiVQtZmJ8k6xUdAgLLnEc+dv7Tq+i+CnJkxdeLOv4XT22
         uvdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=1drbddor9/rvI43PNp1IDQw4Ub673Fz3uY0a2MUnS7o=;
        b=QFzf3p/TyJulZ5XRit0OJaZhO92llMHoDZiHYO8Sjgnh5jKhg1X3PUuL8gj4ivAGgh
         D89yt4LsUppVNRqxNOw2R4AOyrOKvbrvGEES0raDFPenq1XVO8o2d9Ou1lBk+pb/tqa+
         e+bMIxkyv/tGHGqwUM6Q0ySjd7gAsO2uFYou+wtq7SnfXNYSfrTOR/rhCVQ1VMtEnM1n
         o52MKs31SAvdhn3c4h1vQ3eTibnqHjq42800v2/shjAKqdhvjgSZOWdLs3q1JbrTbb9U
         3NXDw2Wo5y5MUakCA/SArltX7cb7S7Hjbiabh2+MGFNpnqwCelEUe/43v3a7fuQsFh/N
         rHKw==
X-Gm-Message-State: ACrzQf3u4CFCeFCryIsOgkFBdmn0lpPvW8aLoflu3EenbwzCv0O/bEWA
        DoPZbLMEyjBxipgrnADCb+ZF+ZTl9YXFgA==
X-Google-Smtp-Source: AMsMyM6oT5L08xQr60qOtfkIRBGHWz2F9Ho4FeaQ7pwwDyN7p7ThSjwi+PsDOdHf0SxAvNkXqtr76g==
X-Received: by 2002:a05:6512:e91:b0:49d:7850:d512 with SMTP id bi17-20020a0565120e9100b0049d7850d512mr6551885lfb.482.1663588630403;
        Mon, 19 Sep 2022 04:57:10 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id r12-20020a2e94cc000000b0026be23f24efsm4393784ljh.18.2022.09.19.04.57.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Sep 2022 04:57:09 -0700 (PDT)
Message-ID: <cd978975-5da3-661a-1eeb-f45e32f0e484@linaro.org>
Date:   Mon, 19 Sep 2022 13:57:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH] dt-bindings: interrupt-controller: migrate MIPS CPU
 interrupt controller text bindings to YAML
Content-Language: en-US
To:     Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
References: <20220916043415.489179-1-sergio.paracuellos@gmail.com>
 <b5fe0746-44d9-9513-8190-b55ec984b603@linaro.org>
 <CAMhs-H_91RJ0thPP_RXKKPk4WihcfH=t2ww01Sk1K8ono+UF=A@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAMhs-H_91RJ0thPP_RXKKPk4WihcfH=t2ww01Sk1K8ono+UF=A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/09/2022 13:55, Sergio Paracuellos wrote:
>>> +maintainers:
>>> +  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
>>
>> What about existing maintainers?
> 
> Understood. I search for files in the MAINTAINERS file and not for
> directories. Will properly maintain original maintainers in the next
> version.

This is looks like architecture device, so I expect architecture
maintainers to be listed here.

> 

(...)

>>
>>> +  - interrupt-controller
>>> +
>>> +examples:
>>> +  - |
>>> +    cpuintc {
>>
>> Node names should be generic.
>> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
> 
> This is the name used in most of the dts files in the
> 'arch/mips/boot/dts' folder of the kernel tree... I guess I can change
> only the name in the binding example or should this match with real
> dts files?

Change only in the example. Interrupt controllers are named
"interrupt-controller".



Best regards,
Krzysztof
