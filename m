Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C88E6C03C6
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 19:31:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229541AbjCSSbX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 14:31:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229460AbjCSSbW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 14:31:22 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 920571420C
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 11:31:20 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id eg48so38673024edb.13
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 11:31:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679250679;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QRuEhltd2sXVCFmqtbFM0uOulqsbxS68wTRuC9T9h6s=;
        b=f1R+tlQ1tFP9hdOnGkJIbacwKunk3pgBaswHBeVd7r1SxWFiOUZUpiPOD+sZnAQdwe
         swWjJxYGYQ8u6ZwoFlQgCXJViByvXYJPK7rsG/vIGWDnZTr2bPZQIUkw0mvJs/2ZeDlM
         ft3EZkEHdLHzVP2asPts5/H7+uzbMGWuQVv/jCkCT57cWDGLqU9Pkf2f3jGfcb2BMe1I
         SxcQw9Md9bUxcPI40UlkSPXo1vUCz5fkeYnzey6LApUEcanDx1YRdyo6bgySntjQVJld
         QDqvqn9epW80XqaBspmOZgnGMlPopoG448QKmEb9Qms7aHII/wntQwo6DoH/YGz2s4Jb
         vCWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679250679;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QRuEhltd2sXVCFmqtbFM0uOulqsbxS68wTRuC9T9h6s=;
        b=fHoZTnUiD7gzUbsvN/HoLAf1yfPcM6Ah0r3P1mump0JWv4DYjSsl6tFTh2gw89REMP
         vKW2SfekOp4FbM9mzaDlZOruM2bSUDixBnx8c5j6CceM3aDYtmDB+NxzUWwx4f6OOnww
         pM+gw0jfVzbBCwFhRDN8hRhXOu8T+ZShyrL5KyniGq/MXMPJFcUs+4ec3l0uUVULWYf9
         Ssrv0UAedF6fbOOWdkRvkjwQChmL4gNP76LhivarBlGdQCJB6tYz+QctPZ+YQTj6zf5g
         MpzRDRWYl+tZ33XU9PG4+V5cLFzQKl/SBZwYIIHkvdfgMiICZCx8Mifmp5knM1FtcOPz
         yJ3A==
X-Gm-Message-State: AO0yUKWC10kDWWnKBsLS8t40sjuujdE/mgduVg3hcdAHo5G40CLMlRBs
        ePGsK534FRZBRSQ71S0+xMcepA==
X-Google-Smtp-Source: AK7set9vQYo7KXimTe5QpFagWEzbmQ6WxXLcOgMR9r+QqW4sl+vMsJjh6PsQ3IBZCOTRt0B41EC4fw==
X-Received: by 2002:a17:906:f217:b0:931:986:7531 with SMTP id gt23-20020a170906f21700b0093109867531mr6927377ejb.39.1679250679085;
        Sun, 19 Mar 2023 11:31:19 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:5b5f:f22b:a0b:559d? ([2a02:810d:15c0:828:5b5f:f22b:a0b:559d])
        by smtp.gmail.com with ESMTPSA id ot17-20020a170906ccd100b008e51a1fd7bfsm3531149ejb.172.2023.03.19.11.31.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Mar 2023 11:31:18 -0700 (PDT)
Message-ID: <88334242-e91d-8a0c-0975-1dbbbad5934d@linaro.org>
Date:   Sun, 19 Mar 2023 19:31:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v3 1/2] dt-bindings: input: touchscreen: Add
 'goodix-hold-in-reset' property to Goodix
Content-Language: en-US
To:     Jan Jasper de Kroon <jajadekroon@gmail.com>
Cc:     alexandre.belloni@bootlin.com, broonie@kernel.org,
        devicetree@vger.kernel.org, dmitry.torokhov@gmail.com,
        kernel@undef.tools, krzysztof.kozlowski+dt@linaro.org,
        linux-input@vger.kernel.org, robh+dt@kernel.org
References: <20230312183106.551840-1-jajadekroon@gmail.com>
 <20230316152949.67441-1-jajadekroon@gmail.com>
 <1ae4767f-563a-6425-f20b-32be6ba8a7c7@linaro.org>
 <57b22a4f-3b7e-d62d-d9a7-f9f4e052c253@gmail.com>
 <947f9c1f-fd48-cb18-e495-7e275f1792b9@linaro.org>
 <c4c3f402-ea3b-ba0a-d9bd-23a642f09946@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <c4c3f402-ea3b-ba0a-d9bd-23a642f09946@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/03/2023 17:38, Jan Jasper de Kroon wrote:
>>
>>> - The property is required for proper system operation and is not optional
>>>     in specific device use cases. To be more specific in the case of the
>>>     PinePhone Original and Pro. The original commit message of the driver
>>>     implementation in driver/input/touchscreen contained the following:
>>>     "It consumes quite a bit of power (~40mW) during system sleep, and more
>>>     when the screen is touched."
>>>     Because the phone is usually kept in your pocket, so prone to a lot of
>>>     screen touches, this is highly undesired behavior for the touchscreen in
>>>     this case. This in my opinion makes it a mandatory property in this
>>>     situation.
>> Why then the touchscree should not be kept in reset for other devices?
>> IOW, this should be always used. If you now say "I prefer to keep or not
>> keep it in reset for my device" - it's a policy.
> Thank you for your question. While it's true that keeping the touchscreen
> in reset state during system sleep can reduce power consumption for other
> devices, the decision to use this property should be based on the specific
> use case and hardware configuration of each device. In the case of the
> PinePhone Original and Pro, the touchscreen's power consumption during
> system sleep is significant, and the device is often kept in a pocket, so
> accidental screen touches can occur frequently, leading to further power
> drain. As such, keeping the touchscreen in reset state is necessary for
> proper system operation in these specific devices. However, for other
> devices with different hardware configurations and use cases, the decision
> to use this property should be based on a thorough assessment of the power
> consumption and potential impact on system behavior.

Why? Even if energy consumption for these other devices is very low, it
is still reasonable to keep the touchscreen off during suspend. Why
anyone would like otherwise?

Wakeup could be the reason, but for this we have property.

>>
>>
>>> - The property is not a user-facing configuration option and is not meant
>>>     to be changed by the end-user.
>> Does not matter.
>>
>>> - The property, although in separate device specific kernel, and still
>>>     called 'poweroff-in-suspend' is already in use on specific devices,
>>>     including the PinePhone Original and PinePhone Pro.
>> I could not find such property in the kernel.
> I apologize for the confusion, but the current mainline kernel doesn't
> include this property. As I stated to support the PinePhone Original and
> PinePhone Pro, the community makes use of a forked mainline kernel, with
> a lot of out-of-tree patches/commits, mainly maintained by developer
> Ondrej Jirman. For the PinePhone Original, the DeviceTree configuration
> in the PinePhone DTS gets set in the following commit:
> https://github.com/megous/linux/commit/74fc0a5f0527afdccb67ce3be690f0ae18c8eca6
> For the PinePhone Pro it is set in the following commit, at line 466:
> https://github.com/megous/linux/commit/471c5f33ba74c3d498ccc1eb69c098623b193926#
> The property here is still called "poweroff-in-suspend".

Whatever forks are doing is rarely argument for us. Did that property
pass DT maintainers review? No.

>>
>>> However, I understand your concern that Devicetree should not be used for
>>> policies. To address this concern, I would like to propose the following
>>> changes to the property description:
>>> 1. Remove the sentence about reducing power consumption, as this could be
>>>      considered a policy.
>>> 2. Emphasize that the property is a required hardware configuration and
>>>      not an optional feature on certain devices.
>>> 3. Recommend that any changes to the property value should only be made by
>>>      experienced system administrators and not end-users.
>> Please answer - why this should not be enabled always.
> One reason why the Touchscreen Controller should not be kept in reset
> always is that some devices may have a use case where the touchscreen
> needs to remain active even during system sleep, and keeping it in reset
> would cause issues with that case.

Use case is rather policy... Except wakeup, but for this we have property.

>  However, in the case of the
> battery-powered PinePhone Original and Pro, keeping the touchscreen
> controller in reset during system sleep is required for proper system
> operation.

The question was "why not enabled always". How this is related?

>  Having the device in your pocket makes unintentional screen
> touches almost unavoidable, and this property enabled is necessary for
> these devices. In the case of the PinePhone Original and Pro, enabling
> this feature we do consider its impact on battery life or in other words
> power consumption.

You keep repeating the same and email is very long.

> But bottomlined, enabling this feature should be evaluated on a
> case-by-case basis, taking into consideration the specific device use case
> and hardware configurations. Thank you for your feedback.

Best regards,
Krzysztof

