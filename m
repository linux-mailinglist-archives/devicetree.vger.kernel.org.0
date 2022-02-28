Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C109D4C7226
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 18:06:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238111AbiB1RHA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 12:07:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238102AbiB1RGz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 12:06:55 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A64757B0D
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 09:06:16 -0800 (PST)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id C104A3F4B4
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 17:06:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646067974;
        bh=h4FOiTIqGWppiNVb4WN93SVinniWb4652lod3S4x79M=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=hl9DgZYy5NEhk+rLI6nZHK8qfjjvhkxZ+QWrv1IO8bb+VR7E2QVftpk5GNBXNESiB
         y0NDhN+N/tT2nKRzoraH0hF92Y+7hKgOpuuXapsL9gsjdHbevU7P/QZ9kjZyHxX/4/
         jx5E7VO+TGa10MflyBFrslUjgKpJS3hUEi4+AAGqMJTcKfv+B+ZGdIfM0N+5Wi0zQs
         v4ckfF67g3iGokr9ERTcPH5TDjjfKGORWB/84dyKNAA5pmz3kqgsltCoLkljPT3rjv
         O6pNp2cLrXJZ8osR822biM3jy6idHC1lA52cpEFdJi5dETgamjsKRAJrMBj0B0hDjG
         MalyrHi/pP6/A==
Received: by mail-ej1-f70.google.com with SMTP id d7-20020a1709061f4700b006bbf73a7becso5468878ejk.17
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 09:06:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=h4FOiTIqGWppiNVb4WN93SVinniWb4652lod3S4x79M=;
        b=ocDioJnPPLUq767oVbyO9IgfBtt44lGBRBI9n7pYW0NsFMoVVbNcVUtLlql2obQm44
         4CIp3YUbUoCszOAk/HM5KGbzrlfOUZe+qKNzHccMszmAEwN+p0qv/N17gIwgSx52MtW1
         goTlmWMe/ewnE10Gcby9/jCxMWGQOzKNwZNhPl6mjx3PSYiWCv3/zXOrywxZ1GnQ4y1H
         cBabV4RBtDK8WoBz9CSx0q8aaLoDgFD0g1DT9JaPe8FVlFwysn9QDijQRMhYtY4wJnDF
         y0y0KsoEhRQm0rBdZSQ2NCoHFGHxLgm1ig6i0GOYITcrt9+PKOTxqjHQmV9B1Hy22qTd
         wgJA==
X-Gm-Message-State: AOAM533tvXyljb51hyZNK5eASAPpctp4WZMwkvEDCfsRCyqB9I2izLT9
        X5uQXvQ3vmfq7VXHIFTczpnx2uK+oAnx6opT495UllcIVIoYw+vTiPjMFDsm2huuW27Gd4PaG7B
        d4sZpvEmDwRXwDAjWoslDjH796XWJqjVb4pqYs2w=
X-Received: by 2002:a17:906:199a:b0:6d1:aa59:2927 with SMTP id g26-20020a170906199a00b006d1aa592927mr15322016ejd.215.1646067973496;
        Mon, 28 Feb 2022 09:06:13 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxnrW6Z2hgpLyaCXJWZUUQ0z1Tt4gdOb4FulD2fvmZoIPy6sejI1yUTOFOiqsKx5QAi7Ae9Lw==
X-Received: by 2002:a17:906:199a:b0:6d1:aa59:2927 with SMTP id g26-20020a170906199a00b006d1aa592927mr15321996ejd.215.1646067973232;
        Mon, 28 Feb 2022 09:06:13 -0800 (PST)
Received: from [192.168.0.135] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id pj4-20020a170906d78400b006ce88d5ce8dsm4521931ejb.108.2022.02.28.09.06.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Feb 2022 09:06:12 -0800 (PST)
Message-ID: <22b1de71-a72a-ecb8-44a2-cf055d2a4fc5@canonical.com>
Date:   Mon, 28 Feb 2022 18:06:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: Aw: Re: Re: Re: [PATCH v3 1/3] dt-bindings: Convert ahci-platform
 DT bindings to yaml
Content-Language: en-US
To:     Frank Wunderlich <frank-w@public-files.de>
Cc:     Frank Wunderlich <linux@fw-web.de>,
        Rob Herring <robh+dt@kernel.org>,
        Hans de Goede <hdegoede@redhat.com>,
        Jens Axboe <axboe@kernel.dk>, linux-ide@vger.kernel.org,
        linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20220227182800.275572-1-linux@fw-web.de>
 <20220227182800.275572-2-linux@fw-web.de>
 <4c3303f5-7af5-9974-7bea-b7f0d6c7ef53@canonical.com>
 <trinity-ac45bde6-392d-4810-8aad-9a06d2bcd85a-1646050780475@3c-app-gmx-bs53>
 <8fbbce9e-4fd9-d420-43ef-953e846d29f1@canonical.com>
 <trinity-f1b6ce3a-6f22-4cf8-bf51-a5e7f007dda7-1646057347735@3c-app-gmx-bs53>
 <ddd09f4f-782f-67e9-ec2f-dd5818ae26c5@canonical.com>
 <trinity-bfe6b2d5-52cd-458d-92b2-66216620a4b3-1646067718759@3c-app-gmx-bs53>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <trinity-bfe6b2d5-52cd-458d-92b2-66216620a4b3-1646067718759@3c-app-gmx-bs53>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/02/2022 18:01, Frank Wunderlich wrote:
> Hi
> 
>> Gesendet: Montag, 28. Februar 2022 um 15:35 Uhr
>> Von: "Krzysztof Kozlowski" <krzysztof.kozlowski@canonical.com>
>>>> Gesendet: Montag, 28. Februar 2022 um 13:38 Uhr
>>>> Von: "Krzysztof Kozlowski" <krzysztof.kozlowski@canonical.com>
> 
>>>> No, this has to be oneOf. See for example
>>>> Documentation/devicetree/bindings/gpio/gpio-vf610.yaml or many other files.
> 
>>> compatible:
>>>   oneOf:
>>>     - enum:
>>>       - brcm,iproc-ahci
>>>       - cavium,octeon-7130-ahci
>>>       - hisilicon,hisi-ahci
>>>       - ibm,476gtr-ahci
>>>       - marvell,armada-3700-ahci
>>>       - marvell,armada-380-ahci
>>>       - snps,dwc-ahci
>>>       - snps,spear-ahci
>>>     - items:
>>>       - const: generic-ahci
>>>       - enum:
>>>         - brcm,iproc-ahci
>>>         - cavium,octeon-7130-ahci
>>>         - hisilicon,hisi-ahci
>>>         - ibm,476gtr-ahci
>>>         - marvell,armada-3700-ahci
>>>         - marvell,armada-380-ahci
>>>         - snps,dwc-ahci
>>>         - snps,spear-ahci
>>
>> That could be one way, but instead I propose to have only second part
>> (so enum + generic-ahci) for all compatibles mentioned in
>> ahci_platform.c, which do not customize the driver behavior for these
>> compatibles..
> 
> tried many ways of defining it, but none passes with the examples. either to short (first example) or too long (second)
> 
> as far as i understand the logic it should be similar to this:
> 
> properties:
>   compatible:
>     oneOf:
>       - items:
>         - enum:
>           - marvell,berlin2q-achi

You need to extend this enum with all the entries I mentioned before.

>         - const: generic-ahci
>       - items:

No items here, directly enum.

>         - enum:
>           - brcm,iproc-ahci
>           - cavium,octeon-7130-ahci
>           - hisilicon,hisi-ahci
>           - ibm,476gtr-ahci
>           - marvell,armada-3700-ahci
>           - marvell,armada-380-ahci
>           - snps,dwc-ahci
>           - snps,spear-ahci
> 
> this passes the dt-binding_check (examples) for me, but i guess there are many more compatibles defined with the generic.
> 
> dtbs_check found some more like
> 
> 'brcm,iproc-ahci'
> 'marvell,armada-8k-ahci'
> and many more
> 
> it looks like these are also checked in the enum, so the yaml itself look correct, but needs some kind of wildcard instead of the "marvell,berlin2q-achi" as second for the generic-ahci compatible
> 
> regards Frank


Best regards,
Krzysztof
