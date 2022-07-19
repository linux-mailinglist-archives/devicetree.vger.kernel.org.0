Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F4174579359
	for <lists+devicetree@lfdr.de>; Tue, 19 Jul 2022 08:37:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237046AbiGSGhl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jul 2022 02:37:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237049AbiGSGhk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jul 2022 02:37:40 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A2C427167
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 23:37:39 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id n18so23163961lfq.1
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 23:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=zbxnuwiWUEBWe91NB7FiBCAVrq5BuRjWFvStCCFlUS4=;
        b=E1m6bp7VudSZ8BHuoaFsQ8fbX7s/1FM/O7WmamAxX3wIQDoajMNDM5b67/FlYq2MGF
         WdyaH4OgK74jaDcuTjmpFWk94XtBhYyXylEeOYTa/aPV/77xd9cOaaag2YTMp8OA7MuU
         KQzX7FB+yqSTam2MaoES3ShNfiVeffobH6ID6/U7g/1zrr3yk2DZ5dZ4tsNQeKaV3MhP
         ko9q+PNqm+w4/EksbnFVfyJydmGnPvz3PS1E9cjtQvF5y4YiIiXmQTYr0DTlVdWSXetb
         267ZfFWnGcD1gWAI3wyz6GtGaLgNe5ofbYBy9IeO9qCghvCf15HbO322wcvQdOS3fq27
         nwPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=zbxnuwiWUEBWe91NB7FiBCAVrq5BuRjWFvStCCFlUS4=;
        b=dCD+pfrg0mEU/vqTK14iiD/SBS0tpGJ7QsqurLrbunCwKgPHvFOrd28mfGWOA/Y+x9
         XnDnrv5qtC/OAt5Bvm+R6cXk0kLvIJrPB1LqbCCtXcEQ6GuQAg7+2sKIA7VD6cYjGNxQ
         rPysJiMu1sf/2huMy+Qw2nD4mESZ77MHjTMPRmhxZcWS5p88My2aI1RdvgJuiYt3Stmr
         tJt1HLbq5Uwh1vwQnzQNiMk+cTXmdX6mJZCh0SDlkHXzJYuaJuT+5FPwFEjTkk1olDWv
         qgCKs7bX9joxQWcfzTFNHkY6ONeE3N82cAgP4Cg1dAfvZUdIpib5mVLZ++qlYUVvueaR
         WNUw==
X-Gm-Message-State: AJIora9bDohjBPBVEZdlYrx08fvVg0oUevF+ubJ3yHhUhAOnNuxApWka
        E0SbVvtDu/7bW0b7L2SLiv4ZJA==
X-Google-Smtp-Source: AGRyM1uDlw/k/WFHUnAY8qkqFnOOKCvjrRffhYq5kD6hyXXeqsr/rXiRIO/6eUX8m+iAbZfZlOY99w==
X-Received: by 2002:ac2:4c55:0:b0:489:e012:62e5 with SMTP id o21-20020ac24c55000000b00489e01262e5mr15778113lfk.123.1658212657389;
        Mon, 18 Jul 2022 23:37:37 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id o20-20020a056512231400b00478772eb18esm3042595lfu.92.2022.07.18.23.37.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jul 2022 23:37:36 -0700 (PDT)
Message-ID: <b26f2353-c5f3-16f4-11c8-63068baeada5@linaro.org>
Date:   Tue, 19 Jul 2022 08:37:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 1/2] dt-bindings: usb: renesas, usb3-peri: Document RZ/V2M
 r9a09g011 support
Content-Language: en-US
To:     Phil Edworthy <phil.edworthy@renesas.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
        "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        "linux-renesas-soc@vger.kernel.org" 
        <linux-renesas-soc@vger.kernel.org>,
        Biju Das <biju.das.jz@bp.renesas.com>
References: <20220718134458.19137-1-phil.edworthy@renesas.com>
 <20220718134458.19137-2-phil.edworthy@renesas.com>
 <40224cd7-0e71-7f5a-47c8-142539312f21@linaro.org>
 <TYYPR01MB70868B846CAB2F7124148771F58C9@TYYPR01MB7086.jpnprd01.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <TYYPR01MB70868B846CAB2F7124148771F58C9@TYYPR01MB7086.jpnprd01.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/07/2022 17:24, Phil Edworthy wrote:
>>>    phys:
>>>      maxItems: 1
>>> @@ -43,7 +65,15 @@ properties:
>>>      maxItems: 1
>>>
>>>    resets:
>>> -    maxItems: 1
>>> +    minItems: 1
>>> +    items:
>>> +      - description: Peripheral reset
>>> +      - description: DRD reset
>>> +
>>> +  reset-names:
>>> +    items:
>>> +      - const: aresetn_p
>>> +      - const: drd_reset
>>>
>>>    usb-role-switch:
>>>      $ref: /schemas/types.yaml#/definitions/flag
>>> @@ -78,6 +108,27 @@ required:
>>>    - interrupts
>>>    - clocks
>>>
>>> +allOf:
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            enum:
>>> +              - renesas,rzv2m-usb3-peri
>>> +    then:
>>> +      properties:
>>> +        clocks:
>>> +          minItems: 2
>>> +        interrupts:
>>> +          minItems: 2
>>> +        resets:
>>> +          minItems: 2
>>> +      required:
>>> +        - clock-names
>>> +        - interrupt-names
>>> +        - resets
>>> +        - reset-names
>>
>> else:
>> narrow the number of items
> Sorry, I don't understand why we need minItems: 1 for
> interrupt-names/clock-names, but then I'm easily confused!
> 
> None of the existing users have any interrupt-names/clock-names
> hence they are not in required. The rzv2m is the only device
> that needs them so the driver can get them by name, and hence
> it sets minItems: 2

They are not required but they can appear. Nothing prevents it, based on
your patch.


Best regards,
Krzysztof
