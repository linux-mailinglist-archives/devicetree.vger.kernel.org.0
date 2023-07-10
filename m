Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 20F7874DC67
	for <lists+devicetree@lfdr.de>; Mon, 10 Jul 2023 19:25:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233126AbjGJRZu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jul 2023 13:25:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232570AbjGJRZg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jul 2023 13:25:36 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE1E32727
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 10:24:47 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-4fbc0314a7bso7508790e87.2
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 10:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689009884; x=1691601884;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J4RAKztO1yYuDgrT+dEYbJzzR+EKq2oPo4zyv/Ccs24=;
        b=F7bpFyfoMOVSBvNw6NiLETZnxTdo9G/3LwEGFbNMZcvnm9aMLOf+tFrzCcsR0gIPEQ
         xCls8Utjv1iCbnWChixg4BfEBA7xgeDEg7tvvP19Bf/1Zbws4l8CU33QOXaV5w2Vvx0/
         A/uhSKB3+SeelWoinmbkiOFymmO3DwWyfPiLaOGM6yue1lX6VoM2Y9hnwoYlrHj+lkAZ
         mo8zpTJrxQC2o+d4T2OuPBcZG/yzhjcXMI0hiMHa0mifJtphULfwGTbrUO9xVq6BeCUz
         NgKm7ABacbYPEHHMh7H1QNw1tm+IdjXU/RUR4SrxNOCYNVa65Og+1yWIbthJr7cx41xM
         39Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689009884; x=1691601884;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J4RAKztO1yYuDgrT+dEYbJzzR+EKq2oPo4zyv/Ccs24=;
        b=CgLIGQrivMXL37QWU3XTrWRl/n4L0wU+bKW4LTdqSjtwt2zD6nVjWUBR5YlLRnn2mH
         TLwsONAOZyhYfFQIOBiEZYYq6RY7SqOfh61qVzUpke+gZ3gsucY02RA4lRyUkw6IVybz
         yJQ8VUiv4N6mvXMsBJ/L8Gbd2LcWXSsaDHGYbUC/TKLqqEIX+xAMry4TPYaqxRlyP0x3
         or55A9HmZuz8ALorPew9oSxbgkwbIMV5dbhuAk3qXw7bevOJUA5Q3TiQFXlUi7MjvI86
         MOMHtj/F/vijGFWmznOWbfwoKZ4OZ2r3rtVPdA6rbHbz3LteTOX9iVWD9zWG+5Q4AitL
         9oXQ==
X-Gm-Message-State: ABy/qLbmoTKkHSYgnOs/YQm7+v3buRZERHF38Bvj0v5T3cJ19hA+FgtQ
        bByR5bHm2cO/VALD0ofEsZU=
X-Google-Smtp-Source: APBJJlE1Ox5DWeeO7m9qwDzyd8Gx/ZUOslIawhtpiu21OzY7jA36U7csJMJd8Q8Cy1yED+ISz9Q0Mw==
X-Received: by 2002:a05:6512:2114:b0:4fb:9f24:bba9 with SMTP id q20-20020a056512211400b004fb9f24bba9mr9628915lfr.5.1689009884081;
        Mon, 10 Jul 2023 10:24:44 -0700 (PDT)
Received: from [192.168.26.149] (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.googlemail.com with ESMTPSA id w10-20020ac254aa000000b004f846cd74bcsm1764677lfk.245.2023.07.10.10.24.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Jul 2023 10:24:43 -0700 (PDT)
Message-ID: <4adfa40f-d8c1-926f-a3f2-ed8bf66a6e0f@gmail.com>
Date:   Mon, 10 Jul 2023 19:24:42 +0200
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
Content-Language: en-US
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
In-Reply-To: <20230710-mahogany-unequal-91830352ffc5@spud>
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

On 10.07.2023 19:08, Conor Dooley wrote:
> On Fri, Jul 07, 2023 at 01:53:02PM +0200, Rafał Miłecki wrote:
>> From: Rafał Miłecki <rafal@milecki.pl>
>>
>> BCM53573 is a family derived from Northstar with some important
>> differences:
>> 1. Cortex-A9 replaced by Cortex-A7
>> 2. XHCI controller dropped
>> 3. Two Ethernet interfaces removed
>> 4. Two 802.11ac cores embedded
>>
>> Linux already contains DTS files for some on those devices so add a
>> proper binding for it.
>>
>> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
>> ---
>>   .../bindings/arm/bcm/brcm,bcm53573.yaml       | 39 +++++++++++++++++++
>>   1 file changed, 39 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm53573.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm53573.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm53573.yaml
>> new file mode 100644
>> index 000000000000..6e502d718518
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm53573.yaml
>> @@ -0,0 +1,39 @@
>> +# SPDX-License-Identifier: GPL-2.0
> 
> How come this is not dual licensed?

Somehow I got inspired by other Broadocm SoCs here. I'll relicense it though.

FWIW:
$ grep "SPDX-License-Identifier" Documentation/devicetree/bindings/arm/bcm/*.yaml
Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml:# SPDX-License-Identifier: GPL-2.0
Documentation/devicetree/bindings/arm/bcm/brcm,bcm11351.yaml:# SPDX-License-Identifier: GPL-2.0
Documentation/devicetree/bindings/arm/bcm/brcm,bcm21664.yaml:# SPDX-License-Identifier: GPL-2.0
Documentation/devicetree/bindings/arm/bcm/brcm,bcm23550.yaml:# SPDX-License-Identifier: GPL-2.0
Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml:# SPDX-License-Identifier: GPL-2.0
Documentation/devicetree/bindings/arm/bcm/brcm,bcm53573.yaml:# SPDX-License-Identifier: GPL-2.0
Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml:# SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause
Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.yaml:# SPDX-License-Identifier: GPL-2.0
Documentation/devicetree/bindings/arm/bcm/brcm,hr2.yaml:# SPDX-License-Identifier: GPL-2.0
Documentation/devicetree/bindings/arm/bcm/brcm,ns2.yaml:# SPDX-License-Identifier: GPL-2.0
Documentation/devicetree/bindings/arm/bcm/brcm,nsp.yaml:# SPDX-License-Identifier: GPL-2.0
Documentation/devicetree/bindings/arm/bcm/brcm,stingray.yaml:# SPDX-License-Identifier: GPL-2.0
Documentation/devicetree/bindings/arm/bcm/brcm,vulcan-soc.yaml:# SPDX-License-Identifier: GPL-2.0
Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml:# SPDX-License-Identifier: GPL-2.0


>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/arm/bcm/brcm,bcm53573.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Broadcom BCM53573 SoCs family
> 
> Title seems a little odd given the description.
> "Broadcom Northstar derived Wi-Fi SoCs"?

Some team at Broadcom took Northstar family design, added their changes
and they reference those SoCs as BCM53573 family. So I thought I should
just stick with the name they chose.


> Otherwise,
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
