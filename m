Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C0BD4F90EF
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 10:34:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231980AbiDHIgT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 04:36:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231920AbiDHIgT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 04:36:19 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33B1036B71
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 01:34:16 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id bh17so15822338ejb.8
        for <devicetree@vger.kernel.org>; Fri, 08 Apr 2022 01:34:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=8GqiF/RrfohkPqiYYBtpazfuTI/YoFqb3CqekxTLPZ8=;
        b=KUWuN8fdm7Py1U30DAH5SeDfw7XhDLU8ogui8HFXkyJVNl2H3eY9mAHXeYmHPGOIa1
         DN/+mZJui7Kk8cC6RtWgyeDlxCecsvR9TXnpSiDhWFDdmcGvfGQBnhM2QZtlal3M4fXq
         6y6WfnFFRdnjVm4ssHjgfrFazWrHZZEC16yHX42YKskoRQk/ELMG3kiXvZkV5C6T+zjX
         KPv9EDv9w+lbDXZYcct3amD3pklLdEJb7+q84QL7ezF96btlDLVfdg7xpNeNuzDMa74a
         gkSIAATTewjt8kdxqrb6uZolduPerqhi51QLP1JCv5H0O+zvSLs0oYyADItWq5H1odL4
         1SpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=8GqiF/RrfohkPqiYYBtpazfuTI/YoFqb3CqekxTLPZ8=;
        b=ylI7G0/6MMUNbhltyNSnC+aocoYcbE7PotJIPVE6ZGNQEee/uqf+T8BaGLmS+LfQnW
         77oKDXFKdnd+S3kfbeFAsAghmF/gvIHphP0SVZGPROUpl6oiPPIdmZkSjW7Uoh2zdi9v
         f8+qNS+k5zatYXY/fu30hARPdl5RynPFzbsxCxCY9kwvXBekSYgTj8ctu82RLGG65P6C
         3seNZ40hMtsiBSYcHVNxjbw+tmejv30MDaueNFd1DXR+EYp+/BrIJ+BMMtypz7LaxH2R
         ezI+rB+sEbqF9Ku2PjtI+cbpSsUlCDkfGPXLL/A+FkdDmoH9vzVO4P6C8l/QcD/iubIf
         22Uw==
X-Gm-Message-State: AOAM532EgVHemhy07jp6Pl8dzSdrX3wBVkxFTYszgsVLiI7ypVgqUZ5a
        TUbGW7BggJoQTuGbi5UpFR+hfg==
X-Google-Smtp-Source: ABdhPJxQ+oU7N9RWM//Dz85WfVcC25hMjjn7321Jx43AxxmhE0HFoAt1QbiNduCNSFlpbeMr67c3Nw==
X-Received: by 2002:a17:906:3042:b0:6cd:20ed:7c5c with SMTP id d2-20020a170906304200b006cd20ed7c5cmr16950673ejd.241.1649406854839;
        Fri, 08 Apr 2022 01:34:14 -0700 (PDT)
Received: from [192.168.0.187] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id nd31-20020a170907629f00b006dff863d41asm8532192ejc.156.2022.04.08.01.34.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Apr 2022 01:34:14 -0700 (PDT)
Message-ID: <0785d0c0-cffb-5ba9-e4ca-ff9531d66661@linaro.org>
Date:   Fri, 8 Apr 2022 10:34:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] dt-bindings: timer: Update TI timer to yaml and add
 compatible for am6
Content-Language: en-US
To:     Nishanth Menon <nm@ti.com>, Tony Lindgren <tony@atomide.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-omap@vger.kernel.org,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Keerthy <j-keerthy@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>
References: <20220408081258.57213-1-tony@atomide.com>
 <20220408082757.3cnhvekpty4o4j2k@ladder>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220408082757.3cnhvekpty4o4j2k@ladder>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/04/2022 10:27, Nishanth Menon wrote:
> On 11:12-20220408, Tony Lindgren wrote:
> [...]
> 
>> +  ti,hwmods:
>> +    description:
>> +      Name of the HWMOD associated with timer. This is for legacy
>> +      omap2/3 platforms only.
>> +    $ref: /schemas/types.yaml#/definitions/string
>> +    deprecated: true
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +
>> +additionalProperties: false
>> +
> 
> Should we strengthen the check like in 8250_omap.yaml - something to the
> effect of:
> 
> if:

Yes, please. Within allOf because other properties also might need such
constraints.


Best regards,
Krzysztof
