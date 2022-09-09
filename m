Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E95305B3B48
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 16:57:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231659AbiIIO4w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Sep 2022 10:56:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231954AbiIIO4s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Sep 2022 10:56:48 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BB9B138134
        for <devicetree@vger.kernel.org>; Fri,  9 Sep 2022 07:56:39 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id r12so586620ljg.10
        for <devicetree@vger.kernel.org>; Fri, 09 Sep 2022 07:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=2p7cjYYPghlSuv29SdgUfpVbMyGJBkcQs82VeaF3ITk=;
        b=xrnbl0fklsk6SXXJ4c3rv07Bu5R20MidgMRnQY5xj2M7fZOIvFuP8Of918Bd5iyO9V
         Usk2csph7YNQxmHnw5i3Tb7v+B05dEN1DA8gwsIH/399HJjLjuV5hNgMjmj4FzwxN8Ny
         OHcovPDPsEmCVj0iKSk1+XEbillVdVAXaO39gZoYkbb36OdxXKbYduBW9wwH2Gi84y58
         JwhDVQr4YZe4AKOyNotTroXmQIZidYkHwtTM4MDdKa7Fh64zRsxGO4ZgQNTqPqBe3KPw
         +pGuZB20SRIy5k6C2TcAjLG7DePT3n/blyKDv6+VLa+7DH0kLbtaqndlblLtMa01b/uj
         kIug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=2p7cjYYPghlSuv29SdgUfpVbMyGJBkcQs82VeaF3ITk=;
        b=ZRwlaCRCqAnfCvyRxpNYiFPnKq6oTEoAUGQtYKTRkO6vB9WgvIYml9UDmHXKEMsxKp
         f6PirKxE0YpDEshareXLtO5BKowBhMcir8lZN3tJcXthaMi+WfnNvzNmQIFRhTo8ChXQ
         v/SYHYCDOjM9N4ZCs/5v4J17FloLe4d35YC/5X1Hgf0IKvL+KhRuxCA1vrIVPPIFO3eL
         zeJn7OwsImAhq0dJHXGRNJWIfwBkcJxaeOXF9eaVNGT/ELhTO/7otA43fCg25wHfpZKP
         xANqXfFyA5p2X8v6Gv60aLNsc1bnKqIeoz2HM2X2DDTzrvpyCPsxxFGrlYlDBhhyVmmK
         EP2g==
X-Gm-Message-State: ACgBeo0VuDpp2i1cctxn1zBOWjHtrJE0wZWg2maowpMvjmDFa4rRSL3h
        zxrCDEIolM6dBjEkXto4CGG10NTYfA/mJw==
X-Google-Smtp-Source: AA6agR4Z9VkU+J9pfTm9KmDM5KL6B6X329OYgq/xU8bRpdJKGa8lvIReskunO2qSOY4dvGHwrQD4NQ==
X-Received: by 2002:a2e:3e17:0:b0:261:c12c:2b2c with SMTP id l23-20020a2e3e17000000b00261c12c2b2cmr3886711lja.179.1662735389666;
        Fri, 09 Sep 2022 07:56:29 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id g13-20020a2ea4ad000000b00261df847ab0sm115751ljm.21.2022.09.09.07.56.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 07:56:29 -0700 (PDT)
Message-ID: <96766080-dee3-1c06-031e-331a8702cf37@linaro.org>
Date:   Fri, 9 Sep 2022 16:56:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v8 3/4] dt-bindings: hwmon: Add bindings for max31760
Content-Language: en-US
To:     Guenter Roeck <linux@roeck-us.net>,
        Ibrahim Tilki <Ibrahim.Tilki@analog.com>, jdelvare@suse.com
Cc:     linux-hwmon@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220909133718.388213-1-Ibrahim.Tilki@analog.com>
 <20220909133718.388213-4-Ibrahim.Tilki@analog.com>
 <9d5e8a41-8e0a-c67a-1b68-f743b4680510@linaro.org>
 <339d3857-2deb-b5d9-332d-cc65cc90ca19@roeck-us.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <339d3857-2deb-b5d9-332d-cc65cc90ca19@roeck-us.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/09/2022 16:52, Guenter Roeck wrote:
> Hi Krzysztof,
> 
> On 9/9/22 07:49, Krzysztof Kozlowski wrote:
>> On 09/09/2022 15:37, Ibrahim Tilki wrote:
>>> Adding bindings for Analog Devices MAX31760 Fan-Speed Controller
>>>
>>> Signed-off-by: Ibrahim Tilki <Ibrahim.Tilki@analog.com>
>>> ---
>>
>>
>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>
>> Please wait with applying for Rob's bot to check it.
>>
> 
> I don't think I see those results unless there is a failure.

That's correct.

> Is there a link where I can look up the results ?

It will pop-up on Patchwork:
https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20220909133718.388213-4-Ibrahim.Tilki@analog.com/

Like for example here:
https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20220908184925.2714098-3-sireeshkodali1@gmail.com/


Best regards,
Krzysztof
