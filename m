Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2D666403590
	for <lists+devicetree@lfdr.de>; Wed,  8 Sep 2021 09:38:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350220AbhIHHid (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Sep 2021 03:38:33 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:36914
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1350209AbhIHHia (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Sep 2021 03:38:30 -0400
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 7B11A3F327
        for <devicetree@vger.kernel.org>; Wed,  8 Sep 2021 07:37:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1631086639;
        bh=Xl/DB/qd7Mt2jtRMD1Jrfz+4cyEFuk2xdMOwq0sPa0o=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=bZTHswkeXNyTDPc3Gu20ebh+AcnBAZsYMsQiK9ETuhXhcqYN2aVxVUPVmgGqcRe0u
         pamQzRskNyv7oR0zjEEhBxhTJbHem91KkZg63GSVpVWcPFR+/bSUXUAtFNDBgJ3woJ
         o5FwDJw9VTYkVSdj+t9x1ZBEVK+LyxFBxCyrM+IIwPLemxmV/3GINweabCUAH1FMOZ
         mhb7VRgQ1ScGTD6N9jNKUrkcFWtdew5uToOaGRnahVZNZWmbD55yImiMgUjv0LGapH
         dC1Yyu38J3DBcCcZUZHdaddYSmlSpZtlaf9RBFLS0E+OhNadygf4IOfNuILHjroG/7
         6IRxjH0lSUhlg==
Received: by mail-wm1-f72.google.com with SMTP id o20-20020a05600c379400b002e755735eedso542993wmr.0
        for <devicetree@vger.kernel.org>; Wed, 08 Sep 2021 00:37:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Xl/DB/qd7Mt2jtRMD1Jrfz+4cyEFuk2xdMOwq0sPa0o=;
        b=pnY2PbxX8LJRSVnYyKlg26ZBRyoDuKfkcaRvQL8ZwDr13LnA4gEWwdJEj8t5aWfpKB
         trIMNe9REPJBQ8WGjDo2KKyPSuHoXxGJLPidiz1gLBrnoztOxs7cX5sXxuv2ku6/pTlr
         Loxgb8pQcIiHbPb2U/Gqjb18cFgPwivuAoeV8PfMnmmdX67DGX/cRKbt+KuD+SgtVKZd
         CfmO06aDdRaseV3yK3o+M9YcbPC49/ZUv2SieyynwQ4MKkpQlH9boizJT2/PZGjTyeku
         ECTBwLKPN74bztBfRX6WpPJz/vQ7MmsVofyA3uCTjZicjwtSfMqqqnOyZWdf9hPP1L+x
         Jlag==
X-Gm-Message-State: AOAM530ujFrUrvYjMGECJ1GrextBpxe6dkART3q+408JY8huncU/lCd6
        TynvH2RCsQ+0zKhKkGWJXhRw6oc46s3n0lhW2Dt3b5QOYcM9xpLitLv5MRP8Aoi8Gv3UXknpasq
        0dfU3xYLPKOaTafreh1nj9beSnKI6D9mNeui7Awk=
X-Received: by 2002:a7b:c850:: with SMTP id c16mr2134058wml.22.1631086639204;
        Wed, 08 Sep 2021 00:37:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwxT/gY/L6a1d5mGa18rZxRFI+AF2+c6swdpOKQ0gxBamkjIAd+eDg9BV8WN4geyHZLXCOsag==
X-Received: by 2002:a7b:c850:: with SMTP id c16mr2134042wml.22.1631086639049;
        Wed, 08 Sep 2021 00:37:19 -0700 (PDT)
Received: from [192.168.3.211] ([79.98.113.217])
        by smtp.gmail.com with ESMTPSA id s12sm1285746wru.41.2021.09.08.00.37.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Sep 2021 00:37:18 -0700 (PDT)
Subject: Re: [PATCH 2/6] dt-bindings: mmc: cdns: match MPFS MMC/SDHCI
 controller
To:     Conor.Dooley@microchip.com, robh@kernel.org
Cc:     atish.patra@wdc.com, ulf.hansson@linaro.org,
        paul.walmsley@sifive.com, palmer@dabbelt.com,
        aou@eecs.berkeley.edu, geert+renesas@glider.be,
        yash.shah@sifive.com, yamada.masahiro@socionext.com,
        piotrs@cadence.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org
References: <20210819154436.117798-1-krzysztof.kozlowski@canonical.com>
 <20210819154436.117798-2-krzysztof.kozlowski@canonical.com>
 <YSUDTSuNlsOmu/G+@robh.at.kernel.org>
 <9423ddab-4635-ea15-7a9d-dbcf1bc215dc@canonical.com>
 <CAL_JsqKU4opYerjxXTnAuouLc5-GQQKnPX+qZEMBuzYV-inmJw@mail.gmail.com>
 <b607f187-5eee-6afa-f50a-c6532acf19e5@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <c9855c99-1240-b0a3-4a5c-9f16cee7fe6e@canonical.com>
Date:   Wed, 8 Sep 2021 09:37:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <b607f187-5eee-6afa-f50a-c6532acf19e5@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/09/2021 10:38, Conor.Dooley@microchip.com wrote:
> On 30/08/2021 16:09, Rob Herring wrote:
>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>>
>> On Tue, Aug 24, 2021 at 2:02 PM Krzysztof Kozlowski
>> <krzysztof.kozlowski@canonical.com> wrote:
>>> On 24/08/2021 16:33, Rob Herring wrote:
>>>> On Thu, Aug 19, 2021 at 05:44:32PM +0200, Krzysztof Kozlowski wrote:
>>>>> The Microchip MPFS Icicle Kit uses Cadence SD/SDIO/eMMC Host Controller
>>>>> without any additional vendor compatible:
>>>> I think the lack of vendor compatible is the error here. Experience has
>>>> shown that vendor specific compatibles are needed for licensed IP.
>>>>
>>> In such case this could be:
>>> 1. a specific "microchip,mpfs250t-sd4hc", which
>>> seems to be on MPFS Icicle Kit:
>>> https://www.digikey.co.uk/en/product-highlight/m/microchip-technology/mpfs-icicle-kit-es--polarfire-soc-fpga-icicle-kit
>>>
>>> 2. or a generic "microchip,mpfs-sd4hc"
>>>
>>> Any hints here?
>> Best for a Microchip person to answer, but sure there's some existing
>> compatible strings for other blocks on this chip to follow the same
>> pattern.
>>
>> Rob
> 
> #2 would be ideal since the controller doesn't change across the part 
> range, the 250t bit in the part name just covers the size/configuration 
> of the FPGA.


Thanks! I'll go with the microchip,mpfs-sd4hc.


Best regards,
Krzysztof
