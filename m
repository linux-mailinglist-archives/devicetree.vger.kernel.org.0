Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 97F643E8E57
	for <lists+devicetree@lfdr.de>; Wed, 11 Aug 2021 12:16:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236785AbhHKKRP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Aug 2021 06:17:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236772AbhHKKRP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Aug 2021 06:17:15 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFB6EC061765
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 03:16:51 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id f5so2241065wrm.13
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 03:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=QkTUsJOuJycgvCvVleJLaIEduhW7RAY2bQUVOScyrFI=;
        b=Nf1VSnynydfaMZSB216yWP4P1OdCKB+S1LmuPYkO+eHp9qpajyZ4W7bLq6DH2YAYmU
         JZQVzBj/sK4Ewto1xfSP5VnhVJS2HmE2pkkquBsaIsnhYCUo/KP77yraeCtVmAK4cqSG
         8ESjI9q3tdEyKQ3Ud2YUQyPXrMvqL7RYlqyyD+E2/pyBk9fjeK4fhizufz0JQzEmSiyo
         K5MJopq8FqxtzhqQPOnnG6zDEaFBGPLFier9JCy4m6nWcofCy1xM4wm8hLgPPajA+Og6
         3HP6Hccx4plzWhHOP0YdXU51rhWzkW7SlBtnNBgQd9dI7owCEivn1xDFB0aoXe9QTdzP
         WxrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=QkTUsJOuJycgvCvVleJLaIEduhW7RAY2bQUVOScyrFI=;
        b=rjvJbkW6iSr2FtLnKW2BwgzfMRw8HAt4CCEvKAfGm2TR5pVgQnh2jmM/Gql6WIDWOm
         /2Uem8VBBFyGIvXiPi83xcnyQl9C2Waiqszp0rPW1m4F9Pm4GXSRP3QG6lg7mbPgYOMi
         7Ac/hVqvZPS2TSZXEMiAIbcozf0o/LEazMbvFTRQIKw2+SdF5E+QqjcXM3xDhIaGGzWN
         bZGijVRyr1A9zF9R6F7aUm8CjuE0QaFyAY1BXh0gqwcnPTlIv6RUo9lZBJYQrJNSrS3i
         0mdcSwJ8RYFCucLXqzOabsVZZMWfxnB43Q8XGuJNhZnT84IsTNrsLOp7u8ygRjfrNQdS
         L2zQ==
X-Gm-Message-State: AOAM530Zr6gvYoSd218173QlUG4cIofOVLbbpVI6b5JlYOyKEADjxxZ2
        HR3SFvqHG4kYRUfdnm535Go13w==
X-Google-Smtp-Source: ABdhPJySUBrqn0QsktqHoA1e9pMnVVrv0q96QUkOlWaZhRoWe+QvJIt/0auZmajPjNQ1Pz9HV6C28g==
X-Received: by 2002:a5d:58ce:: with SMTP id o14mr16881662wrf.319.1628677010435;
        Wed, 11 Aug 2021 03:16:50 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id w9sm23215785wmc.19.2021.08.11.03.16.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Aug 2021 03:16:50 -0700 (PDT)
Subject: Re: [PATCH V1 1/4] bindings: nvmem: introduce "reverse-data" property
To:     Joakim Zhang <qiangqing.zhang@nxp.com>, robh+dt@kernel.org,
        shawnguo@kernel.org
Cc:     kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20210810073510.18218-1-qiangqing.zhang@nxp.com>
 <20210810073510.18218-2-qiangqing.zhang@nxp.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <6e3f6881-929d-1663-58f1-39bf35069175@linaro.org>
Date:   Wed, 11 Aug 2021 11:16:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210810073510.18218-2-qiangqing.zhang@nxp.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 10/08/2021 08:35, Joakim Zhang wrote:
> Introduce "reverse-data" property for nvmem provider to reverse buffer.
> 
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
> ---
>   Documentation/devicetree/bindings/nvmem/nvmem.yaml | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/nvmem.yaml b/Documentation/devicetree/bindings/nvmem/nvmem.yaml
> index b8dc3d2b6e92..bc745083fc64 100644
> --- a/Documentation/devicetree/bindings/nvmem/nvmem.yaml
> +++ b/Documentation/devicetree/bindings/nvmem/nvmem.yaml
> @@ -61,6 +61,11 @@ patternProperties:
>                 description:
>                   Size in bit within the address range specified by reg.
>   
> +      reverse-data:
> +        $ref: /schemas/types.yaml#/definitions/flag
> +        description:
> +          Reverse the data that read from the storage device.
> +

This new property is only going to solve one of the reverse order issue 
here.
If I remember correctly we have mac-address stored in various formats 
ex: from old thread I can see

Type 1: Octets in ASCII without delimiters. (Swapped/non-Swapped)
Type 2: Octets in ASCII with delimiters like (":", ",", ".", "-"... so 
on) (Swapped/non-Swapped)
Type 3: Is the one which stores mac address in Type1/2 but this has to 
be incremented to be used on other instances of eth.
Type 4: Octets as bytes/u8, swapped/non-swapped

I think its right time to consider adding compatibles to nvmem-cells to 
be able to specify encoding information and handle post processing.


Lets see what Rob would say on this approach.


--srini

>       required:
>         - reg
>   
> 
