Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E0546791D8
	for <lists+devicetree@lfdr.de>; Tue, 24 Jan 2023 08:23:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232550AbjAXHXA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Jan 2023 02:23:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232462AbjAXHW7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Jan 2023 02:22:59 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18B2012053
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 23:22:57 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id h16so12913073wrz.12
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 23:22:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hOqIhKWmcWZHOP0TZmwFeKFhIjE5xH+rrbYLVFlCH54=;
        b=HlnNsx1iPxPtbfpnVdPKdWVG8suPrAviFixXmIx4fqt1mo3cs95gRsDFo1LkAyACg9
         +Gjf59A/1JloygRmOugHZHlqSx5zy3E2w4OyJPZK7sArtb6QlinASrtFhTX7Z4+sMepg
         6W18cLx0YrHJtGMFWmbchimC1aSIGdhQclufRAVX0bogB4NF4zB35EURROHjYbdSNF5m
         LGIol1qNNgUgMJA0dSGTFX5zB3ikCfmej1JNz9dxL+YzXBxQw8h74hZzjtZEAnRCGGda
         qIiazs6A21ZBVXLX/WP4WnZ2l6AwbCobHjOsZBZqKkkQjMfDoifB1edlkbUKpwb1SltP
         45kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hOqIhKWmcWZHOP0TZmwFeKFhIjE5xH+rrbYLVFlCH54=;
        b=J2LawFZI0seQqeJFv2kI9uIjC1RHkVabLh8SKx/2z3cVRm4v+4l/Ppw7YHh+5Yt4mH
         iP2VVeV6Wp4Ke/q1yiKPAaA4v9QVsGEvCyUOH6z2HVl/R7fV0Inr+j6P+XHvcUp67qRg
         iuesvN7E2yCRdnSKeAEvevo+bPt34Su0dKqKJgJfQ+pW8EbI9rIVYM/OnPLvSJdnMeBS
         gvDzoinzTtPfZiBOnu7ZgBZBVPiRNWILtzkH1W2v+faKWKcR8Rd0kMEaHVC6blXdjgpz
         f7uZNFwMzXunyeIsSOih/JjAN6EFLEKA0GrA+0qOlgqtdNXxbERI+9x3V6CuaztaCGRm
         iBqA==
X-Gm-Message-State: AFqh2kqt314QmOZSiqrqHOknjeOqxumAxi4QfffH+mM/GPmTOlrXlf9o
        UdJA6NqL6KJOvRXtrxr56lfY+A==
X-Google-Smtp-Source: AMrXdXvmvg2tOjBvWsrSICSJ6SCvBHlj8KhJwTP4+sjwYqWpPuD963rZLRunfa+RjjRE3GpeDKF4Vg==
X-Received: by 2002:a05:6000:603:b0:26b:e7e1:ad03 with SMTP id bn3-20020a056000060300b0026be7e1ad03mr26799070wrb.55.1674544975569;
        Mon, 23 Jan 2023 23:22:55 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id w14-20020a5d608e000000b002bc84c55758sm1407059wrt.63.2023.01.23.23.22.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jan 2023 23:22:55 -0800 (PST)
Message-ID: <84233b60-2468-4be9-7aa7-bdd296fd96e8@linaro.org>
Date:   Tue, 24 Jan 2023 08:22:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v9 04/15] dt-bindings: spi: dw: Add AMD Pensando Elba SoC
 SPI Controller bindings
To:     Brad Larson <blarson@amd.com>
Cc:     adrian.hunter@intel.com, alcooperx@gmail.com,
        andy.shevchenko@gmail.com, arnd@arndb.de, brad@pensando.io,
        brendan.higgins@linux.dev, briannorris@chromium.org,
        brijeshkumar.singh@amd.com, broonie@kernel.org,
        catalin.marinas@arm.com, davidgow@google.com,
        devicetree@vger.kernel.org, fancer.lancer@gmail.com,
        gerg@linux-m68k.org, gsomlo@gmail.com, krzk@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, lee.jones@linaro.org,
        lee@kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
        linux-spi@vger.kernel.org, p.yadav@ti.com, p.zabel@pengutronix.de,
        piotrs@cadence.com, rdunlap@infradead.org, robh+dt@kernel.org,
        samuel@sholland.org, skhan@linuxfoundation.org,
        suravee.suthikulpanit@amd.com, thomas.lendacky@amd.com,
        tonyhuang.sunplus@gmail.com, ulf.hansson@linaro.org,
        vaishnav.a@ti.com, will@kernel.org, yamada.masahiro@socionext.com
References: <322383a5-5c2b-a1e0-d14c-6c038085301d@linaro.org>
 <20230124015721.2285-1-blarson@amd.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230124015721.2285-1-blarson@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/01/2023 02:57, Brad Larson wrote:
> On 19/01/2023 7:55 UTC, Krzysztof Kozlowski wrote:
>> On 19/01/2023 04:51, Brad Larson wrote:
>>> The AMD Pensando Elba SoC has integrated the DW APB SPI Controller
>>>
> ...
>>>  .../devicetree/bindings/spi/snps,dw-apb-ssi.yaml   | 14 ++++++++++++++
>>>  1 file changed, 14 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml b/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
>>> index d33b72fabc5d..96b072835de0 100644
>>> --- a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
>>> +++ b/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
>>> @@ -37,6 +37,18 @@ allOf:
>>>      else:
>>>        required:
>>>          - interrupts
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            const: amd,pensando-elba-spi
>>> +    then:
>>> +      properties:
>>> +        amd,pensando-elba-syscon:
>>> +          $ref: /schemas/types.yaml#/definitions/phandle-array
>>> +          description: AMD Pensando Elba SoC system controller
>>
>> And nothing here - neither in commit msg nor here - explains why do you
>> need it and what is it for.
> 
> Adding property amd,pensando-elba-syscon was a result of this thread:
> https://lore.kernel.org/lkml/20220621101159.stvan53rvr6qugna@mobilestation/
> 

But it is not in the code. The code should tell what the property does,
what is its purpose, how it is used etc. Your property description
basically copies the name without giving any new information.

Best regards,
Krzysztof

