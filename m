Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 28469566B8F
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 14:09:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233940AbiGEMJN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 08:09:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235314AbiGEMI6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 08:08:58 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D00BA452
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 05:08:57 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id t25so20176620lfg.7
        for <devicetree@vger.kernel.org>; Tue, 05 Jul 2022 05:08:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ihhr+go3H6HNgFbSksIx63Cidh++W2IwUum3O7T/3gk=;
        b=It5uTRFw2c8H1LR8TfaJKFKMA1hKtnruFe2SdrSsC7xUf8XjoruTXCJRNB5KxAm9+4
         NzwTDfmPtbsDAdaji7gkFBjYYIqr+ylikcW6DqWjuAJWQQ64rXQ/aDymH4AQjE95w93A
         edQjCBwR1LZwqfekoQ1N6cZzPcjs4j5LWOeaGfB71BdmcFZ0Cix+lMlIxlO6wzgm/fGA
         Uek3CaYmRIHb+PYdESrgnFB3vZV5nMkB+E84xsOvEFD4YlyjWmuGswMcxYjxdtjWwxZu
         3U6UIpQRd9sgdzyb4bPW3SWi3adHjSYjfpcWwONpKuKe7JblrGM/Y3Ommt6t5dYEeEck
         zXXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ihhr+go3H6HNgFbSksIx63Cidh++W2IwUum3O7T/3gk=;
        b=mF+R+Bb1yEYmmxsgv0tbrv4hzmUKXiQXclgelR+TUAilHU/4Bf6PKCuOdaP7gIVkTo
         cnczB1RcorvV3Mldx3aQ0MJAsjgCnlnXAEU4Dnc1GaH9zHMtd0L5ujeTOibUqlisXlnQ
         REFY3rW0txvYa6aOKiTFq4AHtkWcDQLhJrqoco4Kqi305ubqvS76EkaGIGLczerj89Ec
         0+AYemDQSko5xf6qzot7FnNbfp4YpXWwkAbKme3N7cF7TVl3zwG8G4abS+H4lcQcCZ+D
         mn3fpm/PysQmqpH31PESHcTOmJr5+vpWTIzRyKYvdJd/V+Qn/mN+rSTHOSnz18hI15JB
         r9xw==
X-Gm-Message-State: AJIora/U5vMYo5yrJkLUby2UuIDBFQEaPGvWsTEBWPIaahz8HCZrJpC2
        jXE/EI36SuHtwIwvKWmOwqaEJw==
X-Google-Smtp-Source: AGRyM1tFWsgMJ/MlaFpyOPsBIAszroay69w97JtxjVrtk8RsY2Y9SlOtd9egItDMdymBkfNWyLdwsg==
X-Received: by 2002:a05:6512:2393:b0:47f:8f12:3a93 with SMTP id c19-20020a056512239300b0047f8f123a93mr21458936lfv.209.1657022935496;
        Tue, 05 Jul 2022 05:08:55 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id s21-20020a056512315500b0047f6e91d4fesm3275915lfi.141.2022.07.05.05.08.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 05:08:54 -0700 (PDT)
Message-ID: <97d9ccf9-71f8-c97d-ce56-8aeb1a3db194@linaro.org>
Date:   Tue, 5 Jul 2022 14:08:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 02/20] dt-bindings: media: s5p-mfc: Convert s5p-mfc.txt to
 new DT schema
Content-Language: en-US
To:     Smitha T Murthy <smitha.t@samsung.com>,
        linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc:     m.szyprowski@samsung.com, andrzej.hajda@intel.com,
        mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
        ezequiel@vanguardiasur.com.ar, jernej.skrabec@gmail.com,
        benjamin.gaignard@collabora.com, stanimir.varbanov@linaro.org,
        dillon.minfei@gmail.com, david.plowman@raspberrypi.com,
        mark.rutland@arm.com, robh+dt@kernel.org, krzk+dt@kernel.org,
        andi@etezian.org, alim.akhtar@samsung.com,
        aswani.reddy@samsung.com, pankaj.dubey@samsung.com,
        linux-fsd@tesla.com
References: <20220517125548.14746-1-smitha.t@samsung.com>
 <CGME20220517125554epcas5p4e87a71471525056281f1578f4f80f760@epcas5p4.samsung.com>
 <20220517125548.14746-3-smitha.t@samsung.com>
 <6c2ea5f7-3cc0-d43c-c667-18c25b64ff72@linaro.org>
 <01e601d89064$a212a590$e637f0b0$@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <01e601d89064$a212a590$e637f0b0$@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/07/2022 13:44, Smitha T Murthy wrote:
> 
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski [mailto:krzysztof.kozlowski@linaro.org]
>> Sent: Tuesday, May 17, 2022 7:26 PM
>> To: Smitha T Murthy <smitha.t@samsung.com>; linux-arm-
>> kernel@lists.infradead.org; linux-media@vger.kernel.org; linux-
>> kernel@vger.kernel.org; devicetree@vger.kernel.org
>> Cc: m.szyprowski@samsung.com; andrzej.hajda@intel.com;
>> mchehab@kernel.org; hverkuil-cisco@xs4all.nl;
>> ezequiel@vanguardiasur.com.ar; jernej.skrabec@gmail.com;
>> benjamin.gaignard@collabora.com; stanimir.varbanov@linaro.org;
>> dillon.minfei@gmail.com; david.plowman@raspberrypi.com;
>> mark.rutland@arm.com; robh+dt@kernel.org; krzk+dt@kernel.org;
>> andi@etezian.org; alim.akhtar@samsung.com; aswani.reddy@samsung.com;
>> pankaj.dubey@samsung.com; linux-fsd@tesla.com
>> Subject: Re: [PATCH 02/20] dt-bindings: media: s5p-mfc: Convert s5p-mfc.txt
>> to new DT schema
>>
>> On 17/05/2022 14:55, Smitha T Murthy wrote:
>>> Adds DT schema for s5p-mfc in yaml format.
>>>
>>
>> Thank you for your patch. There is something to discuss/improve.
>>
> 
> Thank you for the review. 
> 

You responded after two months, I don't remember what I reviewed... Two
months periods between resends do not really help to usptream.

> 
>>> +                compatible = "samsung,mfc-v12";
>>
>> Does not look like you tested the bindings. Please run `make
>> dt_binding_check` (see Documentation/devicetree/bindings/writing-
>> schema.rst for instructions).
>> Be sure to test your bindings before sending them.
>>
> 
> I did do make dtbs and dt_binding_check using v2022.3, I will recheck post these changes.
> 
>>> +                reg = <0x12880000 0x10000>;
>>> +                clock-names = "mfc";
>>> +                interrupts = <0 137 4>;
>>
>> Use interrupt defines.
>>
> 
> When I use interrupt defines I get errors as "1.	Syntax error: This was due to interrupts field has some macro reference and needed to give absolute value.", hence I gave absolute values.

Look at other DT schema files...

Best regards,
Krzysztof
