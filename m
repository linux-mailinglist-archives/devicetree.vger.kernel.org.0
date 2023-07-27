Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B8636764FE7
	for <lists+devicetree@lfdr.de>; Thu, 27 Jul 2023 11:35:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233631AbjG0JfJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jul 2023 05:35:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233373AbjG0Jev (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jul 2023 05:34:51 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 580CA4ED1
        for <devicetree@vger.kernel.org>; Thu, 27 Jul 2023 02:26:47 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-99bc512526cso97530166b.1
        for <devicetree@vger.kernel.org>; Thu, 27 Jul 2023 02:26:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690450006; x=1691054806;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EMaXbUqrbiSPsR9fDnkFqi2SZVEGcpYy42I+HCAltFs=;
        b=lniS1OFF848WJ1OmIIkB4rpRh1CFiWWEtypJ68HuBDnriGUuDq5COm/3tRrlyowxS5
         39vuiT3OIoDGqajiOFx+Sq4OINmgQfOYTwOMwEe1VTZQEzJdS1sWs2j0tOxWICWcc5rd
         W0xpNKnCGCWQSRg28HQc/1A1V7GcvI7DhiTl/Vn8Gh8aRmtDXo1LlEFJxoNU5EPulAth
         GXW0SFBTup5SG11tq3HkyovuMjxZX7QBHFF4FtkzC2G4yNJk9nQDtPjY1qWv43RXaVOQ
         EsaxDsL+dH5qV4Rm22MBXpWk8oDFAIFap2RruDPUk9ZvRxgqIEjc7t0N4pktoPCzWq7V
         9RZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690450006; x=1691054806;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EMaXbUqrbiSPsR9fDnkFqi2SZVEGcpYy42I+HCAltFs=;
        b=XuiwzU1rPzrdecPeOpJnHTlaVE5ww79y6wnQS0xC+iNC0GdSzGT+JM/Y+IQNZb/r/W
         lYptSy8+TartU/KIGkTMJbWQ3Ps1S9hjcRk9u6h1e3Afrw2u/SsHBfBIP/XzOKPOymcZ
         4xP7rEZmtLz9evbCrV3cDDDRV/gqwa9d4HOTGqOShcNNFgAs0YycY/2HL6uX3jr5pTFr
         nrQajrf53wN6bUVv+YzjziLarGYNXEkj+72tAG1U4DsR9Ccq3Kn0yiESQ5n+tJeLlmXK
         +p4ZKLInkH1xjbRIhXsB/W/kwRTLOxXHA5wOI/smRRGKnUXyfr6tSO3qw5YjO5TYf05Y
         wTNQ==
X-Gm-Message-State: ABy/qLZWnrXQ/DtMwkzvnq/SlyxN05mYNpIUjGaKPbCfeqXUt0iBGd4y
        ZNz2ir3nNOe84aaJqwSDbRPsnA==
X-Google-Smtp-Source: APBJJlELepkdS4PmnCDQWnLq2ADcHSS0/DzNlDsdOWAtT1NQERL4mpa1101BHqiLLlEfKxDqCLJJgg==
X-Received: by 2002:a17:907:ca29:b0:98d:cd3e:c193 with SMTP id uk41-20020a170907ca2900b0098dcd3ec193mr1050152ejc.46.1690450005847;
        Thu, 27 Jul 2023 02:26:45 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id ja22-20020a170907989600b00991bba473e1sm560354ejc.3.2023.07.27.02.26.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Jul 2023 02:26:45 -0700 (PDT)
Message-ID: <ec964562-6ebb-e145-e850-0417a88077c2@linaro.org>
Date:   Thu, 27 Jul 2023 11:26:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 1/2] Documentation: bindings: adi,axi-tdd.yaml: Add new
 TDD engine driver
Content-Language: en-US
To:     "Balas, Eliza" <Eliza.Balas@analog.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Derek Kiernan <derek.kiernan@amd.com>,
        Dragan Cvetic <dragan.cvetic@amd.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20230726071103.12172-1-eliza.balas@analog.com>
 <61fce1da-c8dd-f911-e4bb-b2198612e7c6@linaro.org>
 <BN7PR03MB4545E574AB9886290115E5C89701A@BN7PR03MB4545.namprd03.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <BN7PR03MB4545E574AB9886290115E5C89701A@BN7PR03MB4545.namprd03.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/07/2023 11:05, Balas, Eliza wrote:
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Sent: Wednesday, July 26, 2023 21:35
>> To: Balas, Eliza <Eliza.Balas@analog.com>
>> Cc: Rob Herring <robh+dt@kernel.org>; Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>; Conor Dooley
>> <conor+dt@kernel.org>; Derek Kiernan <derek.kiernan@amd.com>; Dragan Cvetic <dragan.cvetic@amd.com>; Arnd Bergmann
>> <arnd@arndb.de>; Greg Kroah-Hartman <gregkh@linuxfoundation.org>; linux-kernel@vger.kernel.org; devicetree@vger.kernel.org
>> Subject: Re: [PATCH 1/2] Documentation: bindings: adi,axi-tdd.yaml: Add new TDD engine driver
>>
>> [External]
>>
>> On 26/07/2023 09:11, Eliza Balas wrote:
>>> Add device tree documentation for the AXI TDD Core.
>>> The generic TDD controller is in essence a waveform generator capable
>>> of addressing RF applications which require Time Division Duplexing,
>>> as well as controlling other modules of general applications through
>>> its dedicated 32 channel outputs.
>>>
>>> The reason of creating the generic TDD controller was to reduce the
>>> naming confusion around the existing repurposed TDD core built for
>>> AD9361, as well as expanding its number of output channels for systems
>>> which require more than six controlling signals.
>>
>> Please use subject prefixes matching the subsystem. You can get them for example with `git log --oneline -- DIRECTORY_OR_FILE` on
>> the directory your patch is touching.
>>
>> Subject: drop driver. Bindings are for hardware, not drivers... unless driver is here a hardware term?
> 
> It is not a hardware term in this case, I will make the changes.
> 
>>>
>>> Signed-off-by: Eliza Balas <eliza.balas@analog.com>
>>> ---
>>>  .../devicetree/bindings/misc/adi,axi-tdd.yaml | 51 +++++++++++++++++++
>>>  MAINTAINERS                                   |  7 +++
>>>  2 files changed, 58 insertions(+)
>>>  create mode 100644
>>> Documentation/devicetree/bindings/misc/adi,axi-tdd.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/misc/adi,axi-tdd.yaml
>>> b/Documentation/devicetree/bindings/misc/adi,axi-tdd.yaml
>>> new file mode 100644
>>> index 000000000000..1894c1c34d4f
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/misc/adi,axi-tdd.yaml
>>
>> Why is this in misc? No suitable directory?
> 
> I chose misc because I don't know where it should fit, I did not find a suitable
> subsystem to include this driver because this is a driver for an FPGA IP core.
> Do you have an idea where I should put it?

Directory based on what this device does. Whether some device is
implemented as FPGA core or dedicated circuitry, it does not matter. Few
Time Division Multiplexing devices are related to audio, so they are in
sound. I don't know if TDD is something else than TDM. If nothing fits,
can be misc, but again - just because device does no fit, not the drivers.

Best regards,
Krzysztof

