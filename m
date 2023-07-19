Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7CCBC759217
	for <lists+devicetree@lfdr.de>; Wed, 19 Jul 2023 11:52:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230027AbjGSJwr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jul 2023 05:52:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229464AbjGSJwq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jul 2023 05:52:46 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A380E106
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 02:52:44 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-5216f44d881so7101191a12.1
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 02:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689760363; x=1692352363;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nj4t+6YbLWTik/Age6vPknRf0XinqBnh5qi+UfutZ18=;
        b=zqs07WOmGwu1OxGhh7CNgA3g3F0Sqdm3mtL5Cls+siGZWh+lLLhTVZM7edIArChwU0
         YaUxMYg1KdqF1ozNMT20I3ZyytiMja33I322EF9Q7XdrlWs8SE3tMxyVTjeRxQyrmF71
         gY8TN25sY/iC4KdxwlJohqkcdf1ZKpD97zXfxwJcHHFkO9aihJii4VZlL+tQb2FQ5wI4
         mab1n2zqVbeqh00FDRwk48yGL1tXlPZDotze2AXqAqOGWuRWccgZYwKkHRI3k76iCAay
         jIXHtsa8z5MLc+Se1IO79iq2i6Ve3hMrIn6matLe26uDSnt/gy9MOLRL61/pUC989spj
         h3oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689760363; x=1692352363;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nj4t+6YbLWTik/Age6vPknRf0XinqBnh5qi+UfutZ18=;
        b=iIZFA+tuGYFaaABCQ/5mz9URDU+p/r1zbWvfKNcKl6YtsJnAaGAsm+t69Rzkof4usW
         uFo4RZBZUIx87KNsYY4I7E8EMa9+nnPkDHGEXzKIAXSEREKv2WPm0+u7vB1BkZdF5B5S
         eI7WRb7lNyR01dB7bYjIJ+4Ur4pCx2GLXtBI3SeY5MmECsDaNhbi/Zxtg4qwRftcyznB
         +MHb5RRHerwb5hys/y/LzD9ORQMZm0gxPwjGmAmNPArMj7rDBklDfHtsTdHGHdLQCP04
         rqZYgqlrXDE+xuOGGzd9A+D/AyqR5LY2uTbxdLix4L2S2JyjtcQU6rhBUDclAGIJcUh9
         Xodw==
X-Gm-Message-State: ABy/qLa8+kNn2wq89OHgULoh895gtYcM/16tnZbvx7ZLgeDMlp7/giaE
        b3kG8wELgFhxcRrtxVrLNuouew==
X-Google-Smtp-Source: APBJJlHsOEml5GQAKZicEiNmIU63/NqANniY1ELzcdeLinh4JGyCmPDl7v6mI3CvFixYDhoOdm+loA==
X-Received: by 2002:aa7:d659:0:b0:51d:d295:6741 with SMTP id v25-20020aa7d659000000b0051dd2956741mr1883598edr.6.1689760363087;
        Wed, 19 Jul 2023 02:52:43 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id g8-20020a056402180800b0051e0f8aac74sm2523079edy.8.2023.07.19.02.52.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Jul 2023 02:52:42 -0700 (PDT)
Message-ID: <33d91ece-03b5-7dc2-b63d-516390495792@linaro.org>
Date:   Wed, 19 Jul 2023 11:52:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 3/3] dt-bindings: usb: dwc2: add compatible
 "intel,socfpga-stratix10-hsotg"
Content-Language: en-US
To:     "Li, Meng" <Meng.Li@windriver.com>,
        "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "dinguyen@kernel.org" <dinguyen@kernel.org>,
        "hminas@synopsys.com" <hminas@synopsys.com>,
        "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Cc:     "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20230719025509.3007986-1-Meng.Li@windriver.com>
 <20230719025509.3007986-4-Meng.Li@windriver.com>
 <488835c0-e08e-c0cc-abac-192f658b093f@linaro.org>
 <PH0PR11MB51913FB3A55B1420B7798C01F139A@PH0PR11MB5191.namprd11.prod.outlook.com>
 <86cbedcd-692b-ecb8-2075-d50835739bcf@linaro.org>
 <PH0PR11MB5191867DF205B301A8FD701EF139A@PH0PR11MB5191.namprd11.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <PH0PR11MB5191867DF205B301A8FD701EF139A@PH0PR11MB5191.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/07/2023 11:49, Li, Meng wrote:
> 
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Sent: Wednesday, July 19, 2023 4:59 PM
>> To: Li, Meng <Meng.Li@windriver.com>; gregkh@linuxfoundation.org;
>> robh+dt@kernel.org; krzysztof.kozlowski+dt@linaro.org; conor+dt@kernel.org;
>> dinguyen@kernel.org; hminas@synopsys.com; linux-usb@vger.kernel.org;
>> devicetree@vger.kernel.org
>> Cc: linux-kernel@vger.kernel.org
>> Subject: Re: [PATCH 3/3] dt-bindings: usb: dwc2: add compatible "intel,socfpga-
>> stratix10-hsotg"
>>
>> CAUTION: This email comes from a non Wind River email account!
>> Do not click links or open attachments unless you recognize the sender and
>> know the content is safe.
>>
>> On 19/07/2023 10:45, Li, Meng wrote:
>>>
>>>
>>>> -----Original Message-----
>>>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>> Sent: Wednesday, July 19, 2023 2:39 PM
>>>> To: Li, Meng <Meng.Li@windriver.com>; gregkh@linuxfoundation.org;
>>>> robh+dt@kernel.org; krzysztof.kozlowski+dt@linaro.org;
>>>> robh+conor+dt@kernel.org;
>>>> dinguyen@kernel.org; hminas@synopsys.com; linux-usb@vger.kernel.org;
>>>> devicetree@vger.kernel.org
>>>> Cc: linux-kernel@vger.kernel.org
>>>> Subject: Re: [PATCH 3/3] dt-bindings: usb: dwc2: add compatible
>>>> "intel,socfpga- stratix10-hsotg"
>>>>
>>>> CAUTION: This email comes from a non Wind River email account!
>>>> Do not click links or open attachments unless you recognize the
>>>> sender and know the content is safe.
>>>>
>>>> On 19/07/2023 04:55, Meng Li wrote:
>>>>> Add the compatible "intel,socfpga-stratix10-hsotg" to the DWC2
>>>>> implementation, because the Stratix DWC2 implementation does not
>>>>> support clock gating. This compatible is used with generic snps,dwc2.
>>>>>
>>>>> Signed-off-by: Meng Li <Meng.Li@windriver.com>
>>>>
>>>> Missing changelog, missing versioning. This is v3 or v4.
>>>>
>>>>> ---
>>>>>  Documentation/devicetree/bindings/usb/dwc2.yaml | 1 +
>>>>>  1 file changed, 1 insertion(+)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/usb/dwc2.yaml
>>>>> b/Documentation/devicetree/bindings/usb/dwc2.yaml
>>>>> index dc4988c0009c..f90094320914 100644
>>>>> --- a/Documentation/devicetree/bindings/usb/dwc2.yaml
>>>>> +++ b/Documentation/devicetree/bindings/usb/dwc2.yaml
>>>>> @@ -51,6 +51,7 @@ properties:
>>>>>                - amlogic,meson-g12a-usb
>>>>>                - amlogic,meson-a1-usb
>>>>>                - intel,socfpga-agilex-hsotg
>>>>> +              - intel,socfpga-stratix10-hsotg
>>>>
>>>> So you just sent the same patch as before. I pointed you to the
>>>> proper solution with compatibility.
>>>>
>>>
>>> No. not the same.
>>> I don't understand why SoC specific compatible "intel,socfpga-agilex-hsotg" is
>> able to be added, but the SoC specific compatible "intel,socfpga-stratix10-hsotg"
>> is not allowed.
>>>
>>> You said "Where is SoC specific compatible?"
>>> Now, I add the SoC specific compatible "intel,socfpga-stratix10-hsotg", but
>> why it is still not reasonable.
>>
>> The compatible should be added, but I said they are compatible, so express it. I
>> also gave you example of file which expresses it.
>>
>> Why that compatible is not allowed alone? Because what we said here many,
>> many times and because the doc I gave you which explains this.
>>
> 
> I had a look the doc ,and refer to rk3128.dtsi and commit 5032b269203287c17064d33c72be1ebf30c04a95.
> So I think it needs to add " intel,socfpga-stratix10-hsotg" Documentation/devicetree/bindings/usb/dwc2.yaml.

Open the DTSI and look at compatibles. Now open the driver and look at
the compatibles - surprise, there is no rockchip,rk3128-usb! Now open
the binding and look how it is done.

> But if you think it is not reasonable, could you please show what is your modification for the dwc2.yaml.

Open the binding - it is already there.

I bet there is someone in Windriver who does Linux and can help here as
well, none of existing code is working for you as an example?

Best regards,
Krzysztof

