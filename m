Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E46D4C19B5
	for <lists+devicetree@lfdr.de>; Wed, 23 Feb 2022 18:15:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243322AbiBWRP1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Feb 2022 12:15:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243317AbiBWRP0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Feb 2022 12:15:26 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C646A1005
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 09:14:58 -0800 (PST)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id F393C407AA
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 17:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645636496;
        bh=5kSScfu1ynBQhlMwgNQcTZQZ+l099L/p5FFilnRHLoA=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=vEEJQHgl9VuyfIQWWkxGrN2ATXB0sW6jpoQ03Dg+usAj0suC/bCu+L10Jwhd+PUXJ
         IbyicTNQrBvjjaDsyr/+1OJvFCcE+hJmKnJ29ZFMLMohs0RQxAQIoOy0Y4Gxt/fATF
         +lzGDsRBADzKiVwuEXju1e7Xb3jSvkyv+K4gkFh12RJgalLYKnmdJzMmDI9aV9+44h
         EFCsfMclyKf8fkhrlLRrxezm19DT+eajYLFwVqzK7uKORX5HGZx5+WLIO7oG220WhO
         y41VfqirPSAlcG6tqymsI3z8AKDigFhfcZ+J8lJBqRP4xvn+9Zz5dXNVH1uBQ/nZ61
         clPKHLZLH0ZVQ==
Received: by mail-ed1-f72.google.com with SMTP id h17-20020a05640250d100b004133863d836so1225382edb.0
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 09:14:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=5kSScfu1ynBQhlMwgNQcTZQZ+l099L/p5FFilnRHLoA=;
        b=HCe8sVtzs1sqz90FbV+U4CMEGKb+t1dXYGAEmZc+6pVG5igpZcHxDArD3LgBb6t7+w
         A4/p8vdnOVnY5EOj+aPscvXgzp62PvCV5/bVm/0WCPCn1aUYz3CbbvXxMgLzhmJj//zP
         Y6QeSC5Nh8t40v0sOcXlAeJSWUvNdo4zsmEgIDzuabGQ6dqp1Y56E/6Dfs8zKJVFPhjx
         uOI1tA8qvjRwl2i3jBWy3oxD3C0h42Fm2twqx3ogOKEdlqZ/JVSYbaBLY0nvfZovLwwF
         RlAsVfR6hzNYsh+uLwHBf+rwxL3gth/hMe/7TQYDDHTepnUVyzoHhUREVOZHfAzQQT+e
         uPCg==
X-Gm-Message-State: AOAM530pXkWaC2r68eFaw8WyOicyJJdJvd/Omcs5F7UFghPQS4GAtM06
        NxnBXYpv5Gq+cuHRLXqBj+Nl4LZH6Vkb90E6ZezhdYP+CrzOrFwCBmxXcEJQEVAPAEGxlFE4z26
        CZ6xnJckHsULC0NdOLX+skzp7mjwIi/RIS7rm/Go=
X-Received: by 2002:a05:6402:2801:b0:410:a592:a5d0 with SMTP id h1-20020a056402280100b00410a592a5d0mr377406ede.253.1645636496646;
        Wed, 23 Feb 2022 09:14:56 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw8C6Speh5imj9uL4wV+FW7pUUwz5jAm+B3l/R97H1WjbJ/dMmrgtO2TdF852Q8eYfTqYzdmQ==
X-Received: by 2002:a05:6402:2801:b0:410:a592:a5d0 with SMTP id h1-20020a056402280100b00410a592a5d0mr377389ede.253.1645636496477;
        Wed, 23 Feb 2022 09:14:56 -0800 (PST)
Received: from [192.168.0.126] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id w14sm98641eji.125.2022.02.23.09.14.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Feb 2022 09:14:55 -0800 (PST)
Message-ID: <4896ee6e-3395-8d67-8926-4a09f02d7cdd@canonical.com>
Date:   Wed, 23 Feb 2022 18:14:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 2/2] dt-bindings: hwmon: Add sample averaging property for
 ADM1275
Content-Language: en-US
To:     Potin Lai <potin.lai@quantatw.com>,
        Guenter Roeck <linux@roeck-us.net>,
        Jean Delvare <jdelvare@suse.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Patrick Williams <patrick@stwcx.xyz>, linux-hwmon@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20220223163817.30583-1-potin.lai@quantatw.com>
 <20220223163817.30583-3-potin.lai@quantatw.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220223163817.30583-3-potin.lai@quantatw.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/02/2022 17:38, Potin Lai wrote:
> Add binding information for "pwr-avg" and "vi-avg" properties
> 
> Signed-off-by: Potin Lai <potin.lai@quantatw.com>
> ---
>  .../devicetree/bindings/hwmon/adi,adm1275.yaml         | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/hwmon/adi,adm1275.yaml b/Documentation/devicetree/bindings/hwmon/adi,adm1275.yaml
> index 223393d7cafd..2525a67a880e 100644
> --- a/Documentation/devicetree/bindings/hwmon/adi,adm1275.yaml
> +++ b/Documentation/devicetree/bindings/hwmon/adi,adm1275.yaml
> @@ -37,6 +37,14 @@ properties:
>      description:
>        Shunt resistor value in micro-Ohm.
>  
> +  vi-avg:
> +    description:
> +      Sample averaging for current and voltage.

Both do not look like generic properties, so you need:
 - type
 - vendor prefix ("adi,")
 - maximum value?

It would be nice to actually explain what this value means - number of
readings for each averaging (unless it is obvious in the domain...)?

Does the hardware have default value?

> +
> +  pwr-avg:
> +    description:
> +      Sample averaging for power.
> +
>  required:
>    - compatible
>    - reg
> @@ -53,5 +61,7 @@ examples:
>              compatible = "adi,adm1272";
>              reg = <0x10>;
>              shunt-resistor-micro-ohms = <500>;
> +            vi-avg = <128>;
> +            pwr-avg = <128>;
>          };
>      };


Best regards,
Krzysztof
