Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 672E95E917B
	for <lists+devicetree@lfdr.de>; Sun, 25 Sep 2022 09:39:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230168AbiIYHjA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Sep 2022 03:39:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229743AbiIYHi7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 25 Sep 2022 03:38:59 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62A853BC50
        for <devicetree@vger.kernel.org>; Sun, 25 Sep 2022 00:38:58 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id a2so6412569lfb.6
        for <devicetree@vger.kernel.org>; Sun, 25 Sep 2022 00:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=wZOBZH/TIKngJCM5Rt0iI3g20ZMzPnuCV+kB5fLCrP4=;
        b=XqzM1UHljlU/NxPWRvQPmJ+2FjaalQ6BcYKOWc3lkJMXs6mYw8me8VvoJFPswm3M1V
         9j2WNflf1qr22Q3TUJgqZ3YhDPR6tldUxwVYqND+dKxR0Ipf423viHpS+FOIFIbv9J3G
         bZ9sglNsVKo40W/qkpHqMabAopPMhN9NW+sQA4aBCq7OdZpOpPYK+d810WMt/2HRvUWt
         FJazov1m1N3ExG217kFEcvnUgdg92rPPEsGvndnDOQP7lyX6B69/yOAjdS/8qrGyttCl
         kyBuiZtpVv9URGy+Gt5pM4VMsxiugKrJovHz9Qs/X2SYfn5RglAPS388CfjCO5ucVfLV
         pmtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=wZOBZH/TIKngJCM5Rt0iI3g20ZMzPnuCV+kB5fLCrP4=;
        b=yo7x6bm3PuoeZzcsyHBgUowT/UjQusLJemeariyhypL9hxYTehaQaIlUB/7OkHMeAw
         9eSUPO3wbNhhKJflLji6FrWoIrj9zRHix33c29ZaYerZaLoDY9DlMkt5vaz2dxG512ZO
         Yj3yJYHfyb+ScEgvxDcSwy14Ev5qphIhv51zkTPPLVvmATbRRyyhUTY++fJlaJpr2xla
         93M7rzEmAwH/ISwHxQu6fNqqnRL8AXrRDtc46fje7m2/1BVxq0LFsiqO4Pjs+R0aaPpS
         Eg8E8BMbMNZQo7MdsTIICeAvnbXxbLeuJOXHJFoG87DHkMvmTNFFnAGrFR+Al1/Gdf7v
         ocZw==
X-Gm-Message-State: ACrzQf3cplGZU30aO0Mu6t+jE6I/UfNCFYQ1zE2Z1qv8bHZ4T2lv3kTG
        78sRo2rU+UiXvUy03U6O17iOgggNZesQvg==
X-Google-Smtp-Source: AMsMyM5hyxv4Y9Z/mGjA96UQAqIpVRmoHSYYYvpXsKaIYICf/2MDQWM0TdEZa9uTYAMOLEhdwJwMAQ==
X-Received: by 2002:a05:6512:1697:b0:4a0:d52d:af7 with SMTP id bu23-20020a056512169700b004a0d52d0af7mr2857338lfb.554.1664091536768;
        Sun, 25 Sep 2022 00:38:56 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id 5-20020a2e1445000000b0026be23f24efsm1998480lju.18.2022.09.25.00.38.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Sep 2022 00:38:56 -0700 (PDT)
Message-ID: <7edec96a-313d-f810-8ee7-9d79ffcbf758@linaro.org>
Date:   Sun, 25 Sep 2022 09:38:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 1/2] dt-bindings: PCI: ti,j721e-pci-host: add interrupt
 controller definition
To:     Matt Ranostay <mranostay@ti.com>
Cc:     devicetree@vger.kernel.org, vigneshr@ti.com,
        linux-arm-kernel@lists.infradead.org
References: <20220922204434.74764-1-mranostay@ti.com>
 <20220922204434.74764-2-mranostay@ti.com>
 <20220923093111.hutfiwvk6ky7yqwq@krzk-bin> <Yy9spckVoTl1pGmP@ubuntu>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Yy9spckVoTl1pGmP@ubuntu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/09/2022 22:46, Matt Ranostay wrote:
> On Fri, Sep 23, 2022 at 11:31:11AM +0200, Krzysztof Kozlowski wrote:
>> On Thu, 22 Sep 2022 13:44:33 -0700, Matt Ranostay wrote:
>>> Add missing 'interrupt-controller' property and related subnodes to resolve
>>> the following warning:
>>
>> You did not Cc respective maintainers on your patch. Use
>> scripts/get_maintainers.pl.
>>
> 
> Yeah noticed I forgot to Cc Rob Herring :-/

You did not Cc anyone... No one from PCI maintainers, no one from DT
bindings.


Best regards,
Krzysztof

