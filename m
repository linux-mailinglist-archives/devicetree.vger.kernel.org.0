Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 614103A1976
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 17:26:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233160AbhFIP2n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 11:28:43 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:46484 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236229AbhFIP2l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Jun 2021 11:28:41 -0400
Received: from mail-wm1-f72.google.com ([209.85.128.72])
        by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lr06P-0000IU-Kf
        for devicetree@vger.kernel.org; Wed, 09 Jun 2021 15:26:45 +0000
Received: by mail-wm1-f72.google.com with SMTP id 18-20020a05600c0252b029019a0ce35d36so2684376wmj.4
        for <devicetree@vger.kernel.org>; Wed, 09 Jun 2021 08:26:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Uc80ffGUW4bvL26aSzQf5lcnkR5pCyi0tKOquETfeS4=;
        b=a1zdoWTlBx0J061Xcyh83GYJwFDfQEVfwl3Z+a6FaQEbjwYTeLEPgazxujMUQgZlxg
         ZtIa1NJnrbQnGFLZQqc1Zz5skWTSrMggVm///xx15UxAoQudKgnEdXgXKtJJaCYkGYi4
         bXjL/acJHjzaMcgoCOVtj7Ijyd8y8Xg/BszC5eAN5SXEjCkasQWsYAUX4JBGlyWm1NdD
         Nhcp1iThhnUULqfh9KG5fMjZsxjNiKqibgPda9kq+be9sdhl1Dh7/ybWkIlVMNnjyJF8
         dDN86GmpiLJrJ6CiLEqqNEPorXUdYbJyPI3Q554SlbP07hpDrRpXKNgllzWpyPXErpKK
         ALOQ==
X-Gm-Message-State: AOAM531BhTe7YDrtxH67Jq6Z25kEite1J7fHiowOUmbvqUC1snQBweGy
        Q85yXfF9XFTA45bamPJJ/R6wxE9wnTGElQ4KQh4SoX5f6qu6uXoc/gh/Mqh4Nom6FQ9YMGhnX55
        /cYWHhqBVzOk9tKCnBPf+nptbTyjRHgZ95ICsYSs=
X-Received: by 2002:adf:ed8d:: with SMTP id c13mr424013wro.164.1623252405364;
        Wed, 09 Jun 2021 08:26:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyhA14PyEmBvm9o5LBw9p40ein5C/0++XCyNMvnaDvIOg27HB9rKWvzvpDI5U68qhBmz6kV4A==
X-Received: by 2002:adf:ed8d:: with SMTP id c13mr423998wro.164.1623252405214;
        Wed, 09 Jun 2021 08:26:45 -0700 (PDT)
Received: from [192.168.1.115] (xdsl-188-155-177-222.adslplus.ch. [188.155.177.222])
        by smtp.gmail.com with ESMTPSA id k42sm7937283wms.0.2021.06.09.08.26.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jun 2021 08:26:44 -0700 (PDT)
Subject: Re: [PATCH v22 09/18] dt-binding: memory: pl353-smc: Convert to yaml
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        linux-mtd@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org, Michal Simek <monstr@monstr.eu>,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        Amit Kumar Mahapatra <akumarma@xilinx.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        helmut.grohne@intenta.de, Srinivas Goud <sgoud@xilinx.com>,
        Siva Durga Prasad Paladugu <sivadur@xilinx.com>
References: <20210609080112.1753221-1-miquel.raynal@bootlin.com>
 <20210609080112.1753221-10-miquel.raynal@bootlin.com>
 <e431d594-05cd-27b8-fcbe-11c310b99cd3@canonical.com>
 <20210609153410.53eadf8e@xps13>
 <77db74d3-c44a-6aa3-1b61-f6bed565fa04@canonical.com>
 <20210609161128.16cdf5ec@xps13>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <32c7adf2-6f4e-ef2d-a137-a9674f9e6baa@canonical.com>
Date:   Wed, 9 Jun 2021 17:26:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210609161128.16cdf5ec@xps13>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/06/2021 16:11, Miquel Raynal wrote:
> Hi Krzysztof, Rob,
> 
> Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com> wrote on Wed, 9
> Jun 2021 15:54:19 +0200:
> 
>> On 09/06/2021 15:34, Miquel Raynal wrote:
>>> Hi Krzysztof,
>>>
>>> Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com> wrote on Wed, 9
>>> Jun 2021 14:12:40 +0200:
>>>   
>>>> On 09/06/2021 10:01, Miquel Raynal wrote:  
>>>>> Convert this binding file to yaml schema.
>>>>>
>>>>> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
>>>>> ---
>>>>>  .../memory-controllers/arm,pl353-smc.yaml     | 133 ++++++++++++++++++
>>>>>  .../bindings/memory-controllers/pl353-smc.txt |  45 ------
>>>>>  2 files changed, 133 insertions(+), 45 deletions(-)
>>>>>  create mode 100644 Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
>>>>>  delete mode 100644 Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml b/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
>>>>> new file mode 100644
>>>>> index 000000000000..1de6f87d4986
>>>>> --- /dev/null
>>>>> +++ b/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
>>>>> @@ -0,0 +1,133 @@
>>>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>>>> +%YAML 1.2
>>>>> +---
>>>>> +$id: http://devicetree.org/schemas/memory-controllers/arm,pl353-smc.yaml#
>>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>>>> +
>>>>> +title: ARM PL353 Static Memory Controller (SMC) device-tree bindings
>>>>> +
>>>>> +maintainers:
>>>>> +  - Miquel Raynal <miquel.raynal@bootlin.com>
>>>>> +  - Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>
>>>>> +
>>>>> +description:
>>>>> +  The PL353 Static Memory Controller is a bus where you can connect two kinds
>>>>> +  of memory interfaces, which are NAND and memory mapped interfaces (such as
>>>>> +  SRAM or NOR).
>>>>> +
>>>>> +# We need a select here so we don't match all nodes with 'arm,primecell'
>>>>> +select:
>>>>> +  properties:
>>>>> +    compatible:
>>>>> +      contains:
>>>>> +        enum:
>>>>> +          - arm,pl353-smc-r2p1    
>>>>
>>>> That's a const... but also I don't get the need for select.  
>>>
>>> I think this is needed to ensure this binding is not enforced against
>>> arm,primecell compatible nodes which are not featuring the
>>> arm,pl353-smc-r2p1 compatible.  
>>
>> Which seems to be result of unusual compatible match, so once you
>> convert to regular match, this select is not needed.
> 
> I don't think so, I received a hint from Rob some time ago, he told
> me to add this additional select line as in all other arm,primecell
> binding.
> 
> Rob, any additional info regarding this?

Hmm, I think you' are right. Since arm,primecell is used in many other
compatibles (including ones without schema yet), the select is needed.

In such case the select can be only:

select:
  properties:
    compatible:
      contains:
        const: arm,pl353-smc-r2p1


Best regards,
Krzysztof
