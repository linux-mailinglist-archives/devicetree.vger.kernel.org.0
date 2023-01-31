Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 54D86683618
	for <lists+devicetree@lfdr.de>; Tue, 31 Jan 2023 20:09:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232059AbjAaTJw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Jan 2023 14:09:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231420AbjAaTJp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Jan 2023 14:09:45 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B454545F72
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 11:09:43 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id hn2-20020a05600ca38200b003dc5cb96d46so4275818wmb.4
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 11:09:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cDRJwxYBMPkL+MaeHifU1sEB1D3aKfZTEIbcHFJdbsA=;
        b=sNzGYvCdHkXBT5IHB3qLr+N+zZoswFPPlcm3LYvnVXHQ8P1c2GLIFgFIdxU5s9zacH
         Gsho7VP/2bz4nENrRkQGI4gVDFFHZo5OpCp/xANyivD/XZO0C1bxsqpRTQBAcDnjwpRE
         7D3BZ9uIJ8W/2bxPrW3jpkXwzIVpgcHoUBJYvdvEf6rtsUkuCtKXSRLj9GaVIoRHxQoQ
         scmaBjWOLIW5JD1AafyIH7fFb/9IxGGmj08KHeyMzAcpVH06fmZiEYkNVdO7/LAMb7kE
         iKxDg998dj2MONyCzSABDQEDaxMYAGOZfDNSXBrhaFv0COQmJAq8Ny+PwYDt7SwsrVRV
         QI5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cDRJwxYBMPkL+MaeHifU1sEB1D3aKfZTEIbcHFJdbsA=;
        b=T69YSjbke4xQBcZhPM+K5jWRaErWJcueBuc20tPjbIKGuACJau4/goJcfQs48Lm4Ny
         MqbeneAe7mQcdxTeoWbQRcrUgZO+Ep0RnoYgwAlU9zAN4ZKKXAYzTemKHD9djHrQRBrK
         s9zBZs1BnANsjSpn12chQs5Yh+D2/ATx5ffw2qbC8miAqivRWxR4Bb4XctB69BYHt6qw
         mZV//ZIrGJ9rUXdEidL0s4qQyymGjsari7rHgZ9ENKHlctRqZ+/H74swxaDtX4+G2ISe
         4Nj1hhKRc3CXrLhXsNPhbIkxKw8HTDpxGSLVdW+WKlqFvCgS7ETKF6csfa0Nbv5CRbXW
         OAHA==
X-Gm-Message-State: AO0yUKVyvn68jEOSgfMYLauvCbBPHd4l/vHZM/I2I6de1j1fUvQbADhw
        qjwVq5lg1AuPNT3rz2x1JaiS6A==
X-Google-Smtp-Source: AK7set918klgzIWFOJDOtz599HBOVqDjblTaT6UAvI1CXt2beoDR8rYYfQlZbDXRnYQaq0z6wq2UIA==
X-Received: by 2002:a05:600c:500b:b0:3dd:caa8:3ae2 with SMTP id n11-20020a05600c500b00b003ddcaa83ae2mr2220292wmr.6.1675192182240;
        Tue, 31 Jan 2023 11:09:42 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id b48-20020a05600c4ab000b003db1ca20170sm7540949wmp.37.2023.01.31.11.09.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Jan 2023 11:09:41 -0800 (PST)
Message-ID: <d29e4ec6-848d-4a72-caa2-6b9e66064e85@linaro.org>
Date:   Tue, 31 Jan 2023 20:09:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] dt-bindings: rename .yamllint to yamllint
Content-Language: en-US
To:     Masahiro Yamada <masahiroy@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20230130162650.399490-1-masahiroy@kernel.org>
 <CAL_Jsq+e15e64Vsg8SwDsrUfzS8rWKi_39ajp3=2Ck7Dz_gs5A@mail.gmail.com>
 <CAK7LNARZwt=WpmTwWV0Kp2q4hAvGGhCVDWf-xBpWCkn98AF7mA@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAK7LNARZwt=WpmTwWV0Kp2q4hAvGGhCVDWf-xBpWCkn98AF7mA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/01/2023 02:54, Masahiro Yamada wrote:
> On Tue, Jan 31, 2023 at 4:53 AM Rob Herring <robh+dt@kernel.org> wrote:
>>
>> On Mon, Jan 30, 2023 at 10:26 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>>>
>>> This file is ignored by git by the '.*' rule in the top .gitignore.
>>>
>>> I do not see a good reason why this should be a hidden file.
>>
>> Only because that is the default name yamllint will pick up if it is
>> run from the bindings directory. Not really something I do though.
>>
>> Rob
> 
> 
> Or, do you prefer adding
> 
> !/.yamllint
> 
> to Documentation/devicetree/bindings/.gitignore  ?

https://lore.kernel.org/all/20230127150225.18148-1-andriy.shevchenko@linux.intel.com/

Best regards,
Krzysztof

