Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6059D74DC70
	for <lists+devicetree@lfdr.de>; Mon, 10 Jul 2023 19:27:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232835AbjGJR1s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jul 2023 13:27:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232894AbjGJR13 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jul 2023 13:27:29 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27F7910F9
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 10:27:16 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2b71ae5fa2fso24253881fa.0
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 10:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689010034; x=1691602034;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y4zzlwZxPiVkQO8q0QdqX8YL9ml/J+kAuUKKMkF1gyI=;
        b=OQSVqNFRVwNG6OIpFbrxBm2g2ZzLY0VnZv9WboEPxR4ll6s1a/Fopcu/QTSnHgnjQo
         m2HRs259l25awOz6EWaXO3sJkm5ziyqWlmQXN/Sc1FZbMrvt8NiA2vh32OTZCppNoYLh
         gIjDHELjeoJj69NMy6aiwGu/oDxjBRHi8+hRb/hKRmyQig9fFRZOUPSQdydzL/hpPYa+
         Ev3rgd469W3jYwPrmZbQPk4VPPaRniZyKhQ1ZWFQPz+xVZrDpmDFxp37AddSdhH86YCw
         TddQ/M4CGAyAE1htfEHGcbR3V+s3nmg2QXv2GCSU1+VMhAk6mRFSjhvqZrsufzDN+TuZ
         W+kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689010034; x=1691602034;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y4zzlwZxPiVkQO8q0QdqX8YL9ml/J+kAuUKKMkF1gyI=;
        b=EXygq99tOB6GOOh2P1210L8R5PAdxEJlJw57tdg+7sNrmX1pLc0vnSAdJCZthsc70q
         EbeKVLuIy7To2I5Uu4LtMp8c0fFy8lDpl0oi6mnH9ZVmI5bBozwFlvjOWvvgQkZITyZ0
         BtQYSaFr0MAyO49bY2vIDxAjz7rblaYXxCfH1A01IRkD1W9scgm/+V5i2bnT+2yfCvfx
         fGgitephELRg4Llj0x5QpkUboRxWexN3yyNu7o+th2RT/p4/accYbqUgujfujO4iYJLq
         J4TrmQ2K8Ouzyc2bi652IMMmJ6m9T+zqB5eoc2SkdWctJM7Wn+W4h6aE9qepmdbQd3rh
         /Jwg==
X-Gm-Message-State: ABy/qLYZLH6LHvu7Pj8mk9w+fp+pm38EaC54zy5W7hgXfcxNlNYGiVXh
        FH7MAzXHJpVBBaj+phpP6qA=
X-Google-Smtp-Source: APBJJlFDlAEeA9EEjzNFisTfM7Lqb6Ilf9QnU687Q//miZ/ZJgNxjuPDOlSkOD+53XuQEiUuLSiqGg==
X-Received: by 2002:a2e:2e17:0:b0:2b7:31a:9d7c with SMTP id u23-20020a2e2e17000000b002b7031a9d7cmr10118117lju.33.1689010034002;
        Mon, 10 Jul 2023 10:27:14 -0700 (PDT)
Received: from [192.168.26.149] (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.googlemail.com with ESMTPSA id y18-20020a2e9d52000000b002b6ce4c5942sm61858ljj.136.2023.07.10.10.27.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Jul 2023 10:27:13 -0700 (PDT)
Message-ID: <940e72a0-a6b9-c8c8-e724-b1d5a18a2011@gmail.com>
Date:   Mon, 10 Jul 2023 19:27:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH] dt-bindings: arm: bcm: add BCM53573 SoCs family binding
To:     Conor Dooley <conor@kernel.org>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20230707115302.3491-1-zajec5@gmail.com>
 <20230710-mahogany-unequal-91830352ffc5@spud>
 <4adfa40f-d8c1-926f-a3f2-ed8bf66a6e0f@gmail.com>
Content-Language: en-US
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
In-Reply-To: <4adfa40f-d8c1-926f-a3f2-ed8bf66a6e0f@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10.07.2023 19:24, Rafał Miłecki wrote:
> On 10.07.2023 19:08, Conor Dooley wrote:
>> On Fri, Jul 07, 2023 at 01:53:02PM +0200, Rafał Miłecki wrote:
>>> From: Rafał Miłecki <rafal@milecki.pl>
>>>
>>> BCM53573 is a family derived from Northstar with some important
>>> differences:
>>> 1. Cortex-A9 replaced by Cortex-A7
>>> 2. XHCI controller dropped
>>> 3. Two Ethernet interfaces removed
>>> 4. Two 802.11ac cores embedded
>>>
>>> Linux already contains DTS files for some on those devices so add a
>>> proper binding for it.
>>>
>>> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
>>> ---
>>>   .../bindings/arm/bcm/brcm,bcm53573.yaml       | 39 +++++++++++++++++++
>>>   1 file changed, 39 insertions(+)
>>>   create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm53573.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm53573.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm53573.yaml
>>> new file mode 100644
>>> index 000000000000..6e502d718518
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm53573.yaml
>>> @@ -0,0 +1,39 @@
>>> +# SPDX-License-Identifier: GPL-2.0
>>
>> How come this is not dual licensed?
> 
> Somehow I got inspired by other Broadocm SoCs here. I'll relicense it though.
> 
> FWIW:
> $ grep "SPDX-License-Identifier" Documentation/devicetree/bindings/arm/bcm/*.yaml
> Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml:# SPDX-License-Identifier: GPL-2.0
> Documentation/devicetree/bindings/arm/bcm/brcm,bcm11351.yaml:# SPDX-License-Identifier: GPL-2.0
> Documentation/devicetree/bindings/arm/bcm/brcm,bcm21664.yaml:# SPDX-License-Identifier: GPL-2.0
> Documentation/devicetree/bindings/arm/bcm/brcm,bcm23550.yaml:# SPDX-License-Identifier: GPL-2.0
> Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml:# SPDX-License-Identifier: GPL-2.0
> Documentation/devicetree/bindings/arm/bcm/brcm,bcm53573.yaml:# SPDX-License-Identifier: GPL-2.0
> Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml:# SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause
> Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.yaml:# SPDX-License-Identifier: GPL-2.0
> Documentation/devicetree/bindings/arm/bcm/brcm,hr2.yaml:# SPDX-License-Identifier: GPL-2.0
> Documentation/devicetree/bindings/arm/bcm/brcm,ns2.yaml:# SPDX-License-Identifier: GPL-2.0
> Documentation/devicetree/bindings/arm/bcm/brcm,nsp.yaml:# SPDX-License-Identifier: GPL-2.0
> Documentation/devicetree/bindings/arm/bcm/brcm,stingray.yaml:# SPDX-License-Identifier: GPL-2.0
> Documentation/devicetree/bindings/arm/bcm/brcm,vulcan-soc.yaml:# SPDX-License-Identifier: GPL-2.0
> Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml:# SPDX-License-Identifier: GPL-2.0
> 
> 
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/arm/bcm/brcm,bcm53573.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: Broadcom BCM53573 SoCs family
>>
>> Title seems a little odd given the description.
>> "Broadcom Northstar derived Wi-Fi SoCs"?
> 
> Some team at Broadcom took Northstar family design, added their changes
> and they reference those SoCs as BCM53573 family. So I thought I should
> just stick with the name they chose.

I'm wondering if "derived" is a correct word in this case. I'm not
familiar with hardware design terminology. Maybe that is what causes a
confusion here?


>> Otherwise,
>> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

