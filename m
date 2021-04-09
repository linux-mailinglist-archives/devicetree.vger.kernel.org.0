Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 17A4535A487
	for <lists+devicetree@lfdr.de>; Fri,  9 Apr 2021 19:19:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234071AbhDIRTk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Apr 2021 13:19:40 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:53840 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232855AbhDIRTk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Apr 2021 13:19:40 -0400
Received: from mail-wr1-f72.google.com ([209.85.221.72])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lUun0-000889-Dm
        for devicetree@vger.kernel.org; Fri, 09 Apr 2021 17:19:26 +0000
Received: by mail-wr1-f72.google.com with SMTP id j4so2579504wru.20
        for <devicetree@vger.kernel.org>; Fri, 09 Apr 2021 10:19:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=MF7ir3WvrSx3fVs+kwq9HlQIkfNHtZbHStyjJVEI674=;
        b=XwXon+tqPHIicvqCIiQxSZZ8ddL+gSqjnX7UHVDUsEm8iItN9eKHdFpZb/6kZ225a2
         34wCyBpgur2xnE0foTeHcXrLK+eowW3p5ywKnZhmgrFi9GKHe7EdiYb/W4FvmacCEjWy
         AQk94Dc9u0HodPAs3N/DtAs/vLYbFVxEhGRqbZ2Nn3Qa9s3zoLif14sq4k3w/OWbsjLe
         gDsi1tAl80TNbtCL16WVxhxPE8KhFvb+M3UGpOnLNwtlnfJ+v2/bEHMCOIGv4HSKeHVo
         l1dCc7Nyv5OChp6m4n6gY58JAoBmJmFnlr9btMwierPFm2yazL2T4F7+IIyprBASb1xv
         KDwg==
X-Gm-Message-State: AOAM533h1tqqpuQ6DZkIXl2IProV0af9x/sTfwWZnRn196OvZUrwsaWV
        ADGg2MGTOeSkF9LPXgUlgRtRgNinor4S3OGgM0D8b7/ItKpweLlrIB6U4e5QI50+btMn/IX+0pp
        qX7SKKjAOHvhLiw1EvpI7bRiqqRC8xa/J9x1+iVo=
X-Received: by 2002:a5d:6ad1:: with SMTP id u17mr18632735wrw.214.1617988766176;
        Fri, 09 Apr 2021 10:19:26 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyoHmJCq+boBnAlfaIBVP5XJAn1stsfy3E4Yg3rVDRyUJcFf9LW6ZyaB9V9QoKKEjW3PrCWwQ==
X-Received: by 2002:a5d:6ad1:: with SMTP id u17mr18632724wrw.214.1617988766071;
        Fri, 09 Apr 2021 10:19:26 -0700 (PDT)
Received: from [192.168.1.115] (xdsl-188-155-192-147.adslplus.ch. [188.155.192.147])
        by smtp.gmail.com with ESMTPSA id s83sm4841985wms.16.2021.04.09.10.19.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 10:19:25 -0700 (PDT)
Subject: Re: [PATCH v2] dt-bindings: serial: samsung: include generic dtschema
 to match bluetooth child
To:     Rob Herring <robh@kernel.org>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20210405172119.7484-1-krzysztof.kozlowski@canonical.com>
 <20210409160952.GA3737690@robh.at.kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <d4d90a42-8c18-2f5e-d77d-da006f9b108f@canonical.com>
Date:   Fri, 9 Apr 2021 19:19:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210409160952.GA3737690@robh.at.kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/04/2021 18:09, Rob Herring wrote:
> On Mon, Apr 05, 2021 at 07:21:19PM +0200, Krzysztof Kozlowski wrote:
>> From: Krzysztof Kozlowski <krzk@kernel.org>
>>
>> Include the generic serial.yaml dtschema so the child node like
>> "bluetooh" will be properly matched:
> 
> typo
> 
>>
>>   arch/arm/boot/dts/exynos4210-universal_c210.dt.yaml:
>>     serial@13800000: 'bluetooth' does not match any of the regexes: 'pinctrl-[0-9]+'
>>
>> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>>
>> ---
>>
>> Changes since v1:
>> 1. Drop the new example, as Rob suggested.
>> ---
>>  Documentation/devicetree/bindings/serial/samsung_uart.yaml | 4 +++-
>>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> Otherwise,
> 
> Reviewed-by: Rob Herring <robh@kernel.org>

Thanks, I'll send with fixed typo.

Best regards,
Krzysztof
