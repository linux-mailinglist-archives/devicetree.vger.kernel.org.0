Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B031355756F
	for <lists+devicetree@lfdr.de>; Thu, 23 Jun 2022 10:27:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229802AbiFWI1Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Jun 2022 04:27:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229751AbiFWI1W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Jun 2022 04:27:22 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A064A488AF
        for <devicetree@vger.kernel.org>; Thu, 23 Jun 2022 01:27:21 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id sb34so10389877ejc.11
        for <devicetree@vger.kernel.org>; Thu, 23 Jun 2022 01:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=fpmetajmsJ4rrJ1uUdIUWn56HzIzZWmFHeYAu5H2Gt0=;
        b=M4ZfhkcjVpvuaIAvXUrj65RGAjFAW+y0F5PTl5yD5J8IMGGgiqjVF5zenCecEX0E+9
         Bh5Lq0vQqJ2KbWl4ijIIaUtlNbJKt70ht8BBvtcgLxahH3cHFeEgOkKBy+t5eK1brgQH
         StNrZbq8yvAtVf04NO9SXrEYNUh3OBXnF6IGTdNzsVR73AS3IOhvge0OdBz2As3uymkt
         9Q4hvroq5n9m/aRKd5MjDzIrQXQHCURYPRnHy5CvxmFiGumoV0v3st4FTxLcQ+keDr7W
         sTGL4IbK3wjyoVnxlQejPTLk+Nm0a+vG0m7IJ3wwx6AK5y7jQvkiSQ3ONL7hUO+nSeeV
         sGXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=fpmetajmsJ4rrJ1uUdIUWn56HzIzZWmFHeYAu5H2Gt0=;
        b=smvlXByPIKJKoyElZ2u7ZEjVrh1m/OZNWysVRjQfqCsJ8WugwnbGxL8KEhQrET4/O0
         x+GotBOE4X0WA6ecpB++qtX1b864/G5t08LrIa4UNyA07QGJsC0lniULsAuj7CtHbh81
         oum2To47nj5I2fkkuKE4KLwM/rrjs3sRNVC73Gu6qxSwdn8AH/4/LMsu3eAH8HiM9l1w
         9i5ZsPNtSbCTNb5waFiysoCAWIJLU5T4iwNfcf/dVEo1NxXEl6+2OYPVdAo5xdUjuQHR
         +nNQRBSCj/oGAu31wbkAkncrzYgWMpRaWBgn/OOeEgNgfOVAcPWGrgAFyHd+IjULOFF4
         vIIQ==
X-Gm-Message-State: AJIora8/wRM5IPxan4LbC6pFMQQRpX2kyXXUYPKZA/5euuz1JX/jBm/r
        mI6JGcBUSSbSNZLj4T2bG/53Zw==
X-Google-Smtp-Source: AGRyM1tZv+K5hRKI5w7fu0Lxi1WUmhuxNv1jzLNi+L8O27+mxhh+O51XRIjzfct25OE/e/V5ZJyAhw==
X-Received: by 2002:a17:906:974c:b0:722:eaa7:5e5d with SMTP id o12-20020a170906974c00b00722eaa75e5dmr6565989ejy.541.1655972840190;
        Thu, 23 Jun 2022 01:27:20 -0700 (PDT)
Received: from [192.168.0.226] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id 4-20020a170906328400b00722d5b26ecesm5003426ejw.205.2022.06.23.01.27.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jun 2022 01:27:19 -0700 (PDT)
Message-ID: <aa5c28c8-85c8-3867-69d0-2eba693594ea@linaro.org>
Date:   Thu, 23 Jun 2022 10:27:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 1/5] dt-bindings: pci: Add ARTPEC-8 PCIe controller
Content-Language: en-US
To:     wangseok.lee@samsung.com,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
        "kishon@ti.com" <kishon@ti.com>,
        "vkoul@kernel.org" <vkoul@kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "jesper.nilsson@axis.com" <jesper.nilsson@axis.com>,
        "lars.persson@axis.com" <lars.persson@axis.com>,
        "bhelgaas@google.com" <bhelgaas@google.com>,
        "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
        "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
        "kw@linux.com" <kw@linux.com>,
        "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
        "kernel@axis.com" <kernel@axis.com>
Cc:     Moon-Ki Jun <moonki.jun@samsung.com>,
        Sang Min Kim <hypmean.kim@samsung.com>,
        Dongjin Yang <dj76.yang@samsung.com>,
        Yeeun Kim <yeeun119.kim@samsung.com>
References: <CGME20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p5>
 <20220622072159epcms2p52a21560a7e60cffd13ea70e55ac15428@epcms2p5>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220622072159epcms2p52a21560a7e60cffd13ea70e55ac15428@epcms2p5>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/06/2022 09:21, Wangseok Lee wrote:
> On 21/06/2022 21:44, Krzysztof Kozlowski wrote:
>>  On 21/06/2022 09:42, Wangseok Lee wrote:
>>>>>   
>>>>>   samsung,syscon-bus-s-fsys:
>>>>>     description:
>>>>>       Phandle to bus-s path of fsys block, this register
>>>>>       are used for enabling bus-s.
>>>>>     $ref: /schemas/types.yaml#/definitions/phandle
>>>>>   
>>>>>   samsung,syscon-bus-p-fsys:
>>>>>     description:
>>>>>       Phandle to bus-p path of fsys block, this register
>>>>>       are used for enabling bus-p.
>>>>>     $ref: /schemas/types.yaml#/definitions/phandle
>>>>
>>>>  This two look unspecific and hacky workaround for missing drivers. Looks
>>>>  like instead of implementing interconnect or clock driver, you decided
>>>>  to poke some other registers. Why this cannot be an interconnect driver?
>>>>
>>>>
>>>  
>>>  bus-s, bus-p is a register that exists in the sysreg of the fsys block.
>>>  It is the same block as "fsys-sysreg" but is separated separately in
>>>  hardware.
>>  
>>  Two points here:
>>  1. If it is in FSYS, why it cannot be accessed with samsung,fsys-sysreg?
>>  2. If it is only register, shuld be described like this. You must
>>  describe item:
>>  https://protect2.fireeye.com/v1/url?k=0f529a57-50c9a332-0f531118-000babff32e3-50938d8198077d59&q=1&e=32284e69-bbed-4d09-b6d6-0a43428aebf5&u=https%3A%2F%2Felixir.bootlin.com%2Flinux%2Fv5.18-rc1%2Fsource%2FDocumentation%2Fdevicetree%2Fbindings%2Fsoc%2Fsamsung%2Fexynos-usi.yaml%23L42
>>  
> 
> It would be better to access with fsys-sysreg, but their h/w address are
> far from each other. The fsys block consists of a system register and an
> additional control system register. "bus-s-fsys" and "bus-p-fsys" are
> additional control system register. sysreg and additional control sysreg
> addresses are far from each other and there are h/w registers that perform
> different functions between them.
> 
>>>  So, get resource is performed separately from "fsys-sysreg".
>>>  They set pcie slave, dbi related control settings,
>>>  naming "bus-x" seems to be interconnect.
>>>  I will add this description to property.
>>>  I don't think it need to use the interconnect driver,
>>>  so please let me know your opinion.
>>  
>>  Please document both in the bindings and in the driver usage of this
>>  register. Writing there "0" or "1" is not enough. If the documentation
>>  is good, I am fine with it. If the explanation is obfuscated/not
>>  sufficient, it will look like avoiding to implement a driver, which I
>>  don't want to accept.
>>  
> 
> I think i should add enough description. Is it sufficient to modify
> the name and description of property like this?
> 

Looks ok. Thank you.

Best regards,
Krzysztof
