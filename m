Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1426B3F0CA7
	for <lists+devicetree@lfdr.de>; Wed, 18 Aug 2021 22:23:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232149AbhHRUXj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Aug 2021 16:23:39 -0400
Received: from smtp-relay-canonical-1.canonical.com ([185.125.188.121]:49940
        "EHLO smtp-relay-canonical-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229965AbhHRUXh (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 18 Aug 2021 16:23:37 -0400
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPS id 47257412AE
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 20:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629318174;
        bh=fE7NLDipCnHNgaG7hgiU3VPpSuI2qMlYUF+GP5Dz8aM=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=FxTe1JAuZfUfYpCgkHHU3MkRO/Lg+YhmrH3Ne3HeiKNOcQPJA9n4+fH5XZsaYCEr9
         +rwi4LE6UmlUdg9iDOnC7hMWg7SbsUeMzx4w44tJfeDVLaYkoZD+N9kamTQcQBIA14
         F7nUqEX77ctHFrRs2Jpe/9n0+JTMGk599RCYSh/wvXug5uObHuNOZMxH4T3qJW20z1
         i5+TjzE/nGqvwi9mylDCVS+ZRJAyYZJw2ed601ENQrWRSLooaj1TVqY2P9wRzjzWK4
         2hb+GmX1vIoI87tPQTK1KhXpg14pe80FMaVq4NQoy74fgOiI0LeyVfW+cZykplQ2Gq
         RPCMl92FLxELw==
Received: by mail-ej1-f71.google.com with SMTP id lf30-20020a170907175e00b005bc47d01a39so1297573ejc.16
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 13:22:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=fE7NLDipCnHNgaG7hgiU3VPpSuI2qMlYUF+GP5Dz8aM=;
        b=WTkGD96p6Jo7qKw42DLfPI/y9I5u+p0CQo5PdiHU+Z03jmKOU1qMsy1SC7tpt14Z52
         VWWcOVsTLZmeGL7VhkYp0yxLzQ+pyobmtBtyALmp3JC7WkrV9gTfRhVMEJS3Dz6TMaMc
         v554ELAB644gk0tb2jJrasJqHcC0rWaufxtROrA7b/B6ME7hgrmAnHuCQJocwXTD39jm
         2dCkq9ftQIHzWNX8MSH+d+2aFBYb4BJVcDitakzJBpqmMjhNxEE883VVU5aDn+zog2kl
         GDu4TpizIOEYQ0prinFglD1U81+wiNFoItDk03vtg2+3d/KgDm1pa1YwRtQjU7qS/RtL
         wDuQ==
X-Gm-Message-State: AOAM532kaggmvZMsz1f3U46e3NfvRx3+WPp8G9ij3iuEBhXXHWYvJfww
        QZTKeZFsMefv0ISEXkoFQPRdcAQrnp32G4CWlvL/F6O68Ha1cmO2CiLU3iJBg8lylz3zoNplwxs
        hPzzacO8Y4+nTzeWY1APuloqS1rDaUDVvYq4/FNQ=
X-Received: by 2002:a17:906:410c:: with SMTP id j12mr11637776ejk.553.1629318173626;
        Wed, 18 Aug 2021 13:22:53 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyeJzuMBqB7b9sIqDqFEqhBOuU1yBEb6TlSYNFdqGQ37BSNUKlANPlxbbqLVCAkjErlStBHMQ==
X-Received: by 2002:a17:906:410c:: with SMTP id j12mr11637766ejk.553.1629318173441;
        Wed, 18 Aug 2021 13:22:53 -0700 (PDT)
Received: from [192.168.8.102] ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id kz15sm329349ejc.103.2021.08.18.13.22.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 13:22:52 -0700 (PDT)
Subject: Re: [PATCH] dt-bindings: memory: convert H8/300 bus controller to
 dtschema
To:     Rob Herring <robh@kernel.org>
Cc:     Yoshinori Sato <ysato@users.sourceforge.jp>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20210818113325.85216-1-krzysztof.kozlowski@canonical.com>
 <YR1XvR50rcUBafts@robh.at.kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <16727dc7-7e8d-d070-fe46-895fb5c0f098@canonical.com>
Date:   Wed, 18 Aug 2021 22:22:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YR1XvR50rcUBafts@robh.at.kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/08/2021 20:55, Rob Herring wrote:
> On Wed, Aug 18, 2021 at 01:33:25PM +0200, Krzysztof Kozlowski wrote:
>> Convert H8/300 bus controller bindings to DT schema format using
>> json-schema.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>> ---
>>  .../memory-controllers/renesas,h8300-bsc.txt  | 12 -------
>>  .../memory-controllers/renesas,h8300-bsc.yaml | 35 +++++++++++++++++++
>>  2 files changed, 35 insertions(+), 12 deletions(-)
>>  delete mode 100644 Documentation/devicetree/bindings/memory-controllers/renesas,h8300-bsc.txt
>>  create mode 100644 Documentation/devicetree/bindings/memory-controllers/renesas,h8300-bsc.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/memory-controllers/renesas,h8300-bsc.txt b/Documentation/devicetree/bindings/memory-controllers/renesas,h8300-bsc.txt
>> deleted file mode 100644
>> index cdf406c902e2..000000000000
>> --- a/Documentation/devicetree/bindings/memory-controllers/renesas,h8300-bsc.txt
>> +++ /dev/null
>> @@ -1,12 +0,0 @@
>> -* H8/300 bus controller
>> -
>> -Required properties:
>> -  - compatible: Must be "renesas,h8300-bsc".
>> -  - reg: Base address and length of BSC registers.
>> -
>> -Example.
>> -	bsc: memory-controller@fee01e {
>> -		compatible = "renesas,h8300h-bsc", "renesas,h8300-bsc";
>> -		reg = <0xfee01e 8>;
>> -	};
>> -
>> diff --git a/Documentation/devicetree/bindings/memory-controllers/renesas,h8300-bsc.yaml b/Documentation/devicetree/bindings/memory-controllers/renesas,h8300-bsc.yaml
>> new file mode 100644
>> index 000000000000..70487bb685cb
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/memory-controllers/renesas,h8300-bsc.yaml
>> @@ -0,0 +1,35 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/memory-controllers/renesas,h8300-bsc.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: H8/300 bus controller
>> +
>> +maintainers:
>> +  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>> +  - Yoshinori Sato <ysato@users.sourceforge.jp>
>> +
>> +properties:
>> +  compatible:
>> +    oneOf:
>> +      - const: renesas,h8300-bsc
>> +      - items:
>> +          - const: renesas,h8300h-bsc
>> +          - const: renesas,h8300-bsc
> 
> Seems what's actually in use is:
> 
> items:
>   - enum: 
>       - renesas,h8300h-bsc
>       - renesas,h8s-bsc
>   - const: renesas,h8300-bsc
> 

Indeed, I missed that one more compatible. I will send a v2, thanks for
feedback.


Best regards,
Krzysztof
