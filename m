Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94DBD6C0E9F
	for <lists+devicetree@lfdr.de>; Mon, 20 Mar 2023 11:20:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230157AbjCTKUu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Mar 2023 06:20:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229837AbjCTKUo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Mar 2023 06:20:44 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D21A222039
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 03:20:35 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id er8so32824051edb.0
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 03:20:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679307634;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2kK6ZKQu/hSTehLzcd0ok1R36H64mU2xn5KpGhq6J1w=;
        b=Ju6zmO0MlfizGGz7Jd7gcva/CJl93kFD7GL9WBLqwSkQXbm5diuXdjj66wL4FqPd0o
         vDDspm4OpDKzQCvZjrw48YkcjilgM2DN0tTww/RgQ+zeLRf3ab6kDouqkBfp3Fs/lf5P
         IiCthWkEFSAhHxMOTZONAInrmRc7bSZ4ytEHlYF1DSeNT71Oss6698O9b6VI3HSPWO51
         7kV19EcKUprriQNj8EZkOrzRmEvpiM6MDK4EDxxcuULZyLikbgPLwLGGaw9jHZlad1/4
         WY7GSPPz82nh7+5l+vQjbk23/B0uB2FuuZFy1+G0GmqeAjGX09lCzcMaPqIW7mn+QDVa
         XPbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679307634;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2kK6ZKQu/hSTehLzcd0ok1R36H64mU2xn5KpGhq6J1w=;
        b=zoqRnnkv8NcA4FeXsgdcETEjGsWR/b1H+6iINkJMlfhUPlRWpD6c5LPuN1plfoA0uN
         sEvPbQmOKusgdtH9wYDGZaNU7lOu7SliXaCjiahBuyAGtzLMYP1yMWxE+/hY4LufrOEI
         TKbORJslE8UTfETRjc1VwzBi0xnsu6w9/qdnfno7Nk+2vy67e7nlU3pICODG1fyFp0MZ
         lBB5GO2ToctAcyV6Wc2Bmob5T2thZvG0EE6zljYUXQ7Cj3kU8tQiuwe7G1qBW3toHdFU
         8NBZj/XPk/tijOK8z+4fcnZKhSLPTCgFuTsaCE/8zZ+2decdnWEUGguej0bXSenbin7y
         XLpg==
X-Gm-Message-State: AO0yUKUtIKvZGK7ikHldFRymPn+yyCxylQcSPy0CvpRd0UtdCk65gNt6
        SqKomUqZrqsPAVR60ogxQWUGdA==
X-Google-Smtp-Source: AK7set9UbCg3tUOgT6QPPPtQgc+SuVDmWxP5HoFhnXgAOMYpzcIlAvQy0NuhQuV0XfPLvoiivhc3GQ==
X-Received: by 2002:aa7:db52:0:b0:4fa:ba60:8188 with SMTP id n18-20020aa7db52000000b004faba608188mr12697594edt.8.1679307633952;
        Mon, 20 Mar 2023 03:20:33 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:4428:8354:afb6:2992? ([2a02:810d:15c0:828:4428:8354:afb6:2992])
        by smtp.gmail.com with ESMTPSA id y70-20020a50bb4c000000b004fa380a14e7sm4663350ede.77.2023.03.20.03.20.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Mar 2023 03:20:33 -0700 (PDT)
Message-ID: <f13b06e3-1947-b0f3-6523-d2986f085898@linaro.org>
Date:   Mon, 20 Mar 2023 11:20:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 1/7] dt-bindings: misc: Add the Lantiq PEF2466 E1/T1/J1
 framer
Content-Language: en-US
To:     Herve Codina <herve.codina@bootlin.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Derek Kiernan <derek.kiernan@xilinx.com>,
        Dragan Cvetic <dragan.cvetic@xilinx.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        Christophe Leroy <christophe.leroy@csgroup.eu>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20230316122741.577663-1-herve.codina@bootlin.com>
 <20230316122741.577663-2-herve.codina@bootlin.com>
 <96b01241-d57d-a460-4a8b-9e83eaab24ae@linaro.org>
 <20230320104619.468a304b@bootlin.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230320104619.468a304b@bootlin.com>
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

On 20/03/2023 10:46, Herve Codina wrote:
>>
>>> +
>>> +  lantiq,data-rate-bps:
>>> +    $ref: /schemas/types.yaml#/definitions/uint32
>>> +    enum: [2048000, 4096000, 8192000, 16384000]
>>> +    default: 2048000
>>> +    description:
>>> +      Data rate (bit per seconds) on the system highway.  
>>
>> Why do you need it? How is it different from clock? Do you expect some
>> DDR here?
> 
> This is needed to set the data position on the data line.
> If the data line clock (sysclk-rate-hz) is greater than 'data-rate-bps',
> the device interleaves some holes between data in the full frame.
> 
> The exact position of the data and the holes is defined by 'channel-phase'
> 
> So, two information are needed:
> - The number of slots available (deduced from 'lantiq,data-rate-bps')
> - The slot to use in the available slots ('lantiq,channel-phase" property
> 
> lantiq,data-rate-bps is not a clock but a property used to set the frame
> physical setting. ie the correct data position in the frame. 

OK

(...)

>>> +additionalProperties: false
>>> +
>>> +examples:
>>> +  - |
>>> +    #include <dt-bindings/gpio/gpio.h>
>>> +    pef2256@2000000 {  
>>
>> Figure out some generic node name.
> 
> What do you think about 'framer' ?

Sure, I don't have particular proposal.


Best regards,
Krzysztof

