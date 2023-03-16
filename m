Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C7136BD8C0
	for <lists+devicetree@lfdr.de>; Thu, 16 Mar 2023 20:18:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230138AbjCPTR7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Mar 2023 15:17:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230130AbjCPTR5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Mar 2023 15:17:57 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 785AAD3081
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 12:17:54 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id eg48so11640727edb.13
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 12:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678994274;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LUqUOWWiZli99bg9SVozznX57dV1t/fJ4AoOzF+lHVk=;
        b=g7oRUQ3QlrKPdHr2cbg+8oDIky9CyeZzElETO/Dp6QH8wQeXufdGy32mxiliaTtF8p
         +KRS0CFESrv7jyNf19H5VsZ+UOnq4qN9wGKuJ11KbE/k+43ilv2vQoWs4XqOsb4yewda
         MtcejyLGAsLvljt40Cg0hAjodbZ7PxDoG73e6hai6MnIKiWksouTqzkMHPgbu5k5CLKZ
         aJAx9fN6elcNFleWOwbSOddHJstrUvFH2WG1WO9iwVMenHMrz8n796jI3ejYttZ9qDzB
         I/5NbvKCWHtiMq79TZeXk22lafidXAhsnWrmRqvpW9FD4HARJqwl/ZurUMAVgtQ3Bz5M
         ZSNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678994274;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LUqUOWWiZli99bg9SVozznX57dV1t/fJ4AoOzF+lHVk=;
        b=S/149dCn7vfjtbgLoIwOPt8y6uRXHkWQMcSKMwMLoDar02IIqxi4o1NF9hXu6nii85
         AmkHvsZ7pJljPECAai4fO+VPsc5pxEbIXRG+VrumWOK32tVBoAON8sUb/1MJEG48eGxi
         L/yUdD+ZPVcYhZRBjT9XIRj/f3pEtz4dVplmUbIGjKCx9EbcsgYNtRAQl4qKFre8wsU/
         W4oEMUErXEKfJ9GenBKRWYBrvciHdp7wBXowUJdmh5yqJZ7+FbNTQfGWPQNG1mmA3P2Z
         4XbNV8i1eTezS+YyYYakJmMOey2QD3lp7TSoh4enUvnbloOLnYCr9TpCsjVRgIqRGkDp
         SnLQ==
X-Gm-Message-State: AO0yUKX2u+RX0zR2X7Lh0CJB7M87xB19aan4mKNO5Skbg38PX/jUpqpp
        BcuGeRjrAl0b1aHz9sa++0Zo5DqUHfQWhtMLuZA=
X-Google-Smtp-Source: AK7set8YWZHXgEmHetI4JO8TbJOhcLvww2JEX6BbpNaPODsy3dOWflTX9OXBRY3f2eSxHuwvHRnOag==
X-Received: by 2002:a17:906:b88d:b0:8b1:806b:7dbb with SMTP id hb13-20020a170906b88d00b008b1806b7dbbmr10962635ejb.51.1678994274028;
        Thu, 16 Mar 2023 12:17:54 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9827:5f65:8269:a95f? ([2a02:810d:15c0:828:9827:5f65:8269:a95f])
        by smtp.gmail.com with ESMTPSA id q27-20020a50aa9b000000b004af73333d6esm150320edc.53.2023.03.16.12.17.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Mar 2023 12:17:53 -0700 (PDT)
Message-ID: <49790631-807e-4903-bd26-86a6cde41e46@linaro.org>
Date:   Thu, 16 Mar 2023 20:17:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2] ASoC: dt-bindings: adi,adau17x1: Convert to DT schema
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>, Vijaya Anand <sunrockers8@gmail.com>
Cc:     broonie@kernel.org, Daniel Baluta <daniel.baluta@nxp.com>,
        robh+dt@kernel.org, lgirdwood@gmail.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, alsa-devel@alsa-project.org
References: <20230315231055.3067-1-sunrockers8@gmail.com>
 <167897435177.2729678.7747291818682080828.robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <167897435177.2729678.7747291818682080828.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/03/2023 14:53, Rob Herring wrote:
> 
> On Thu, 16 Mar 2023 04:40:55 +0530, Vijaya Anand wrote:
>> Convert the binding document for adi,adau17x1 from txt to yaml
>> so one could validate dt-entries correctly and any future additions
>> can go into yaml format. Add address and size cells to example to
>> prevent errors regarding reg format.
>>
>> Signed-off-by: Vijaya Anand <sunrockers8@gmail.com>
>> Cc: Daniel Baluta <daniel.baluta@nxp.com>
>> ---
>> Changes since v1:
>> - added 'Codec' in title to clarify type of devices
>> - put compatible devices in lexographic order
>> - changed description of clocks
>> - changed 'unevaluatedProperties' to 'additionalProperties'
>> - changed node names to be generic
>>
>> ---
>>  .../bindings/sound/adi,adau17x1.txt           | 32 ------------
>>  .../bindings/sound/adi,adau17x1.yaml          | 52 +++++++++++++++++++
>>  2 files changed, 52 insertions(+), 32 deletions(-)
>>  delete mode 100644 Documentation/devicetree/bindings/sound/adi,adau17x1.txt
>>  create mode 100644 Documentation/devicetree/bindings/sound/adi,adau17x1.yaml
>>
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> ./Documentation/devicetree/bindings/sound/adi,adau17x1.yaml:8:2: [warning] wrong indentation: expected 2 but found 1 (indentation)
> 
> dtschema/dtc warnings/errors:
> Error: Documentation/devicetree/bindings/sound/adi,adau17x1.example.dts:29.3-30.1 syntax error
> FATAL ERROR: Unable to parse input tree
> make[1]: *** [scripts/Makefile.lib:419: Documentation/devicetree/bindings/sound/adi,adau17x1.example.dtb] Error 1

Test your patches before sending... this never worked.

Best regards,
Krzysztof

