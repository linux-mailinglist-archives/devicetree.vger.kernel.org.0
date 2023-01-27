Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E1FB67EB0E
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 17:41:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234041AbjA0QlO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 11:41:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234713AbjA0QlN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 11:41:13 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B752A7D9A3
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 08:41:11 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id q8so3860838wmo.5
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 08:41:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QPTLAfBem8mtkfVwVTNDx60U15RuMcp3dwLzsVvyzDo=;
        b=QD9NvE+UGIkiNiazx9lO8r/37MxQac1JOfi9Z2KZF7v38RZ7prhqxckpZtEoG9c6Wm
         AZNJOXCUv+RG3yU5HPga028/r0ml/w7lHFeV8J/cQzWl4t4lBBBypMg+mLTLNUWX8vPN
         IqAMrm0pDKgwkkxi8uW3F8wLfzLBQhUL4Gb3KP/Cl/tF1P2jI+HVTJYetrvA2sPD7Rzt
         VVHFc4JxMO6k/IujHA1xrEbih6D70fUvoc4EJkMTUrkagSNMAZ1OAyUyL1r3OMBEsgkM
         ttU8ZBDX/NlmkZgB8YB0KO4KpbwbJ7f1DdwClTzm2GaCrE/aS1r/WCV2CdR+8usr/f+x
         IsXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QPTLAfBem8mtkfVwVTNDx60U15RuMcp3dwLzsVvyzDo=;
        b=YxTGqfqf6PB6YEVs5rh7F7sOellb1i+vTMXThSAUfm8ugEjgKnlvDQqO04mnq7pxgW
         Oqo+tOn/LMPBcMMhJy38RqqTi+pstiWOUYUYz/gIG2PS4/mWcpB3BH/LJKa54cCcFoA/
         gQ2srk8MbPKabefXcsfhnCokB+uTtMHXTN4ZdeBg8tu4rX9/8yJPGcglZ7tib7hKoG+l
         ivzc/sx9WjVT7R0M6ZoIa4SQd02uJKy/qE7VSRHM9zDTXhqTARKNnknd2CCjufaZohXH
         1hbzQksFIcBchTS0ZJ5wb7CuuuO2hsciN06VJHoof4TuvqeI7LBpe5aPxcrT6p6ZqpJD
         AdBQ==
X-Gm-Message-State: AFqh2kqjiTVNV6GBE8+KCHPWMDnyj5kDHLYrkPhHdskKi+2/kLnQLDit
        1mqqJdL5g6PhO9IOGh81c+3eqw==
X-Google-Smtp-Source: AMrXdXvpTlskISiXIz63zCo5frc4zDQHnrmnnE8j0WWxaXqqFSFUfPkasP/5CcopaEa+UL6M7xsYRA==
X-Received: by 2002:a05:600c:1c8b:b0:3db:fe:f84e with SMTP id k11-20020a05600c1c8b00b003db00fef84emr39328237wms.1.1674837670367;
        Fri, 27 Jan 2023 08:41:10 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id z4-20020a5d44c4000000b002bfcc9d9607sm3370040wrr.68.2023.01.27.08.41.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jan 2023 08:41:09 -0800 (PST)
Message-ID: <8da6b154-f799-4a33-d455-f42e30ad8940@linaro.org>
Date:   Fri, 27 Jan 2023 17:41:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v9 07/10] arm64: dts: ls1046ardb: Add serdes bindings
Content-Language: en-US
To:     Sean Anderson <sean.anderson@seco.com>,
        Shawn Guo <shawnguo@kernel.org>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Camelia Alexandra Groza <camelia.groza@nxp.com>,
        Madalin Bucur <madalin.bucur@nxp.com>,
        Bagas Sanjaya <bagasdotme@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Yang <leoyang.li@nxp.com>
References: <20221230000139.2846763-1-sean.anderson@seco.com>
 <20221230000139.2846763-8-sean.anderson@seco.com>
 <20230125234335.GC20713@T480> <8074f0be-8a70-a937-49f2-123e0bfc6218@seco.com>
 <20230127075248.GL20713@T480> <20a9070f-9673-2f51-97df-68e78c37d894@seco.com>
 <a3c3603f-7401-aeb2-4b58-86c3ca778c6c@linaro.org>
 <6ad9bc2a-910a-357c-fd7a-cf4ffe13ddb0@seco.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <6ad9bc2a-910a-357c-fd7a-cf4ffe13ddb0@seco.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/01/2023 17:22, Sean Anderson wrote:
> On 1/27/23 11:15, Krzysztof Kozlowski wrote:
>> On 27/01/2023 17:11, Sean Anderson wrote:
>>>>>>>
>>>>>>>  .../boot/dts/freescale/fsl-ls1046a-rdb.dts    | 112 ++++++++++++++++++
>>>>>>>  drivers/phy/freescale/Kconfig                 |   1 +
>>>>>>
>>>>>> The phy driver Kconfig change shouldn't be part of this patch.
>>>>>
>>>>> I put it here for bisectability, since this is the point where we need
>>>>> to enable it. But I can do this in a separate patch if you want.
>>>>
>>>> From DT ABI perspective, it's already broken anyway if you need to change
>>>> kernel and DT atomically.
>>>
>>> AIUI new kernels must work with old device trees, but new device trees need not
>>> work with old kernels. So a change like this is fine, since the kernel won't
>>> touch the serdes if it isn't supplied.
>>
>> You used the argument "bisectability". If the patchset is not
>> bisectable, the ABI is broken.
> 
> Well, because Shawn wants it in a separate patch I am just going to enable
> the driver by default on Layerscape before adding the device nodes. That way we have
> 
> 1. Base state, driver not enabled and node is disabled
> 2. Driver enabled but not used because the node is disabled
> 3. Driver enabled and bound to node
> 
> So there is never a case where the node is bound but the driver isn't enabled
> (which would cause the ethernet drivers to fail to probe).

Then there is no bisectability issues and the Kconfig patch should have
been squashed here... Mentioning bisectability and that squash just
confuses.

Best regards,
Krzysztof

