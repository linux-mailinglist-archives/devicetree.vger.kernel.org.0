Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B8E366D290A
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 22:01:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233014AbjCaUBB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 16:01:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232724AbjCaUAl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 16:00:41 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D99A125568
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 13:00:08 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id h9so24287741ljq.2
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 13:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680292806;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5WRlDF1f+RCLCDuo7Nfqb1nCqlJyXHPq1o27PEf7SPE=;
        b=NokzOMs9ypNdf54DrpoI1sz7OzAWoQZgpz2r0YXMSaZrlGMBk/M975gm5UwGJHOBrZ
         9MeNzr3klGRPVzh53J2K+cDaicAXw1hbm0z+beUEpRNmqi8EZEnrN4rtHdC2sCb297Ma
         8HdFIFr72y8Et/v6fjgxMsVx6TX1ahEh8zhk4RARPFilLlY3S6VId94pLMH20AXrY30z
         az9boddNIbb7Z90edpbV7Il/fMsMkJHsR8Ml+aRen5OdD5ZxzlFkAEH/mrQ7kk0BMRWQ
         sZJLI+A4mzpPduWmlvSpafz8Q6D3bvfXq2tgc+u7xVEb9QfyugAzXyumQHxTdhchLset
         9bvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680292806;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5WRlDF1f+RCLCDuo7Nfqb1nCqlJyXHPq1o27PEf7SPE=;
        b=JkfNvlFlgR2fZqNZMbP0+Dem+ShJlUwf6uNiw3J0Jsvpz5AeUxR+S8zbsVJScpMQH4
         CtMBD5Pb3C+cXwV0G4cmvtbu9OgNFTMZJzXvqdUM27sh6OYeEN9NeETo6XRyEXX0V+Qr
         id58kPS+AhUD/ljz4SKqFxrdc4MA0xKeBjRawIY+cn1bOC7OhQj78Yjd4/z8hK8NZ7IC
         Rp4L4fMYDJW5PzBH+XN6s59WHnbLcjYhvXdGWEEpu3Kuo83BviCiM6QTn0kMrV5ymyRl
         Yd4VFWuFLCR7r+LeDAcnxHLZ3TpvYndsx4Ww9L5yjCXL3A06KiTj+/HqKNa4kifT/BoB
         PRTw==
X-Gm-Message-State: AAQBX9fP+MdCyf/QLU9g5DP2VLJFqPerE/qC27QW4klygUzsdr+8UihC
        CaQaN/Z1eEyLWU7qEZXct7Nq7Q==
X-Google-Smtp-Source: AKy350aSM2VSOwLxTJJjuHgN7ck0iL6bvz9jdioxcllAtJLs/0g5hoqbSCrMJ8d/FlfuNELYKiqdlw==
X-Received: by 2002:a2e:9bcf:0:b0:29e:a3a0:ee2f with SMTP id w15-20020a2e9bcf000000b0029ea3a0ee2fmr8134125ljj.30.1680292806126;
        Fri, 31 Mar 2023 13:00:06 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id z6-20020a2e8e86000000b002a06cebd555sm495914ljk.75.2023.03.31.13.00.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 13:00:05 -0700 (PDT)
Message-ID: <423085ec-95d8-377f-39cb-58836ab724ec@linaro.org>
Date:   Fri, 31 Mar 2023 22:00:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH tty-next 1/2] dt-bindings: serial: ni,ni16650: add
 bindings
To:     Brenda Streiff <brenda.streiff@ni.com>
Cc:     Gratian Crisan <gratian.crisan@ni.com>,
        Jason Smith <jason.smith@ni.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jiri Slaby <jirislaby@kernel.org>,
        linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230329154235.615349-1-brenda.streiff@ni.com>
 <20230329154235.615349-2-brenda.streiff@ni.com>
 <9cd03cb0-0924-3431-8fe3-4d5f4a27b1a1@linaro.org>
 <b47c51dc-a4c3-ed7b-65ae-3938971f453b@ni.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <b47c51dc-a4c3-ed7b-65ae-3938971f453b@ni.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/03/2023 19:59, Brenda Streiff wrote:
> 
> 
> On 3/30/23 02:28, Krzysztof Kozlowski wrote
>>> +      - enum:
>>> +          - ni,ni16550
>>
>> As Rob pointed out - you did not test it at all.
>>
> 
> I did, with dt-schema 2023.1 and the 'make dt_binding_check' command as
> described in Documentation/devicetree/bindings/writing-schema.rst
> (with no DT_CHECKER_FLAGS, because I was unaware of it until Rob's post)

No need to use it...

> 
> Is this a documentation gap, or is the DT_CHECKER_FLAGS option slated to
> become the default for 'make dt_binding_check' in the future?

You shouldn't need any flags. Regular testing shows errors:

ni,ni16550.example.dtb: serial@80000000: compatible: 'oneOf' conditional
failed, one must be fixed:
	['ni,ni16550', 'ns16550a'] is too long
	['ni,ni16550', 'ns16550a'] is too short


Best regards,
Krzysztof

