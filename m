Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7CB3A6D5CAB
	for <lists+devicetree@lfdr.de>; Tue,  4 Apr 2023 12:08:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234338AbjDDKIX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Apr 2023 06:08:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234132AbjDDKIW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Apr 2023 06:08:22 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FF5810C7
        for <devicetree@vger.kernel.org>; Tue,  4 Apr 2023 03:08:21 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id er13so87354961edb.9
        for <devicetree@vger.kernel.org>; Tue, 04 Apr 2023 03:08:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680602900;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZlNybzVLYx+A0XBeoH4oXwuGxi1u7KKBqs1hBUDO4vo=;
        b=hFSvDhnr6/SiTUZWMmI6o6a09OPjQKM+CX//VRhSYtWawTDhAbGCWc9WqmkneaBOAA
         u5ut8fQpyXa5GU3O4sCiX4dBMC0/8pzL73PzO1dTaiOvivV2ETDp2k+Yy/wyPlKkKRWz
         VvdTl/OUrmF9GAc7YE9a9pC77VCb7VZjshJ37i4CYZ9p07oh8kI7mOxQ6y2HQ/djxp05
         WpQIzcdwTW2QmJvEurxazwv+UhmtMJB0xcbjpqq3+ih2Y6n0iV0N6FPXzmIELq1BYRbh
         mZSb+35C7dFZvILeDrhqfEOyPuppguyHtrw9DxTc/kffGrgVUmzhGiMtz6ciLC2GTIK3
         ZaJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680602900;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZlNybzVLYx+A0XBeoH4oXwuGxi1u7KKBqs1hBUDO4vo=;
        b=U5SAdUESg2bg1NT+gyMR6ksf9x1MHC5LJ1TRKf5L+of15lqjo6A9NbLjsAczwhHlmS
         qhDp+bvfX9IN2EKepTzJyN+kFTqariO3YaKJFfNByvhgxFJSANNzVI2ZT8qe2j32dwKc
         JCXC4Xrtpq/B3PrW5tp17bYUz49/GjX9CBicUTD+0OJYjTt+dGURK08a12r9WN95feLI
         fAi8PmSA7voD35Lps8Zrkg5Nbn8NDcZEuQImmNVsg1Ywx2mgVJ3WZ1eSgu8nAma7ibmK
         Dq6q5Nesifbnl8MFW/a8wtiHI9NN8lXBvBOIDWP+yHZP8g2QPqAbppqqiuyCLo2ByWSL
         aNng==
X-Gm-Message-State: AAQBX9e7j3V/64Hdx0VTOlGxJQBCaNJTk4+2NV5kAhD2Vu96gEas3omi
        GvBXwnl0GNWG5mSF2sllc5cfMw==
X-Google-Smtp-Source: AKy350bJMw5BxtPsRrX6tWOtAUx08BJPXquoaQXRMSvM7Ko3k4DaEbSSeB4O1fnXi4QX4w3SK+g8tg==
X-Received: by 2002:a17:906:1c0a:b0:947:f4e2:ad6d with SMTP id k10-20020a1709061c0a00b00947f4e2ad6dmr1416732ejg.72.1680602899914;
        Tue, 04 Apr 2023 03:08:19 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:99ed:4575:6001:8bda? ([2a02:810d:15c0:828:99ed:4575:6001:8bda])
        by smtp.gmail.com with ESMTPSA id s5-20020a170906454500b008e54ac90de1sm5765184ejq.74.2023.04.04.03.08.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Apr 2023 03:08:19 -0700 (PDT)
Message-ID: <1efdb870-cac2-f6ed-72b5-d0550dbb5257@linaro.org>
Date:   Tue, 4 Apr 2023 12:08:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v5 2/2] dt-bindings: rtc: add max313xx RTCs
Content-Language: en-US
To:     "Tilki, Ibrahim" <Ibrahim.Tilki@analog.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc:     "a.zummo@towertech.it" <a.zummo@towertech.it>,
        "jdelvare@suse.com" <jdelvare@suse.com>,
        "linux@roeck-us.net" <linux@roeck-us.net>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "linux-rtc@vger.kernel.org" <linux-rtc@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-hwmon@vger.kernel.org" <linux-hwmon@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "Arslanbenzer, Zeynep" <Zeynep.Arslanbenzer@analog.com>
References: <20230403154342.3108-1-Ibrahim.Tilki@analog.com>
 <20230403154342.3108-3-Ibrahim.Tilki@analog.com>
 <dd6f0842-519f-1bc9-f7f5-459863dc3dcd@linaro.org>
 <202304040710049c9cc01a@mail.local>
 <CY4PR03MB2488DFC99C23ADE16FF40E2F96939@CY4PR03MB2488.namprd03.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CY4PR03MB2488DFC99C23ADE16FF40E2F96939@CY4PR03MB2488.namprd03.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/04/2023 11:26, Tilki, Ibrahim wrote:
>>>> +  aux-voltage-chargeable:
>>>> +    enum: [0, 1, 2]
>>>> +    description: |
>>>> +      Enables trickle charger.
>>>> +      0: Charger is disabled (default)
>>>> +      1: Charger is enabled
>>>> +      2: Charger is enabled with a diode
>>>
>>> 2 is not an allowed value. I asked to drop this property. It is coming
>>> from rtc.yaml. I also do not understand "with a diode". So otherwise it
>>> is charging with, I don't know, FET?
>>
>> No, what is not explained here (and maybe not unsterstood by the
>> submitter) is that the RTC has an extra diode so, charging will always
>> enable a diode, select a resistor and then have or not an extra diode.
>> Figure2 of the MAX31329 datasheet is great.
>>
> 
> That is exactly why I had "adi,trickle-diode-enable" property in previous patch.
> So if I can't have "adi,trickle-diode-enable" and can't add an additional value
> to "aux-voltage-chargeable", I am not sure how to add support for the extra
> diode at this point.

Ask the person who asked you to remove adi,trickle-diode-enable...
Anyway even if you decided to go with such advise, the solution is not
to create binding which fails.


Best regards,
Krzysztof

