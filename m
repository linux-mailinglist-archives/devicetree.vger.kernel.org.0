Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DFF51610FD9
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 13:38:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229619AbiJ1Lib (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 07:38:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229613AbiJ1Lib (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 07:38:31 -0400
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com [IPv6:2607:f8b0:4864:20::833])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A52911D2983
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 04:38:30 -0700 (PDT)
Received: by mail-qt1-x833.google.com with SMTP id bb5so3241003qtb.11
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 04:38:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=biLDJ53C30NNUj0Amn7s6bi0Ixd7HxAbljshBeevl2c=;
        b=XcMeaMMj6WlMdmHVXXxshG5QYt6NAKLJsyrWFobTDtaWDUhAvW3mPFJPG0V3kwXvSQ
         sLnKwKXiKhd8aL7e89M0hcPTdK0wIP8FmjMfNRRNcGnIyr4AI1gqCoPv2sUswCiPeWOS
         ypKh1luw6cxhBVjY3gLlJPkyQ0W7kxX6lq4ExZN3obi8Btz9xgyQuDwPzMjSUTithIPN
         CMSg+FBb+3kDIzn70rtdvPG1YIdmzlDszw8zgiepyWk+tFie23jtrFoamnoYCzc8xh7s
         W1SDWGLTroWWc/u+VJ5pdzLvnRTr8BOGgo/edxmZ0skS2+cJjyRdhuj+3KCZi7isHeeY
         ho0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=biLDJ53C30NNUj0Amn7s6bi0Ixd7HxAbljshBeevl2c=;
        b=e20zMBTmSA9dVYitfm93hq8eZLWC38jC1xYqUfAZJzm0fvNFBmqlttQ2+aoGIS7Kd4
         WzWAs8bC5N9aIO3wkY46cJL4lGW9xEQDk55XgQ5JmgDQ25oUFXASpIk6RSMUJqrasrzq
         341wZ5YMVVXoMtgwM9/OC3Hge9rMRXK8qd5kaaNt1INTRcDlkpxV6sdevPFVL7mDeYET
         3uwdeKw/wK0L6cDmfHqRmi9naO1wTu5i0WzoWr3K9uVnfyaNKcKr+7phFU3RfCIQZXf+
         43cM1aKSHk7E++uj7FJbqI2eyiCkZ0z/y7zQw2smH9/fcCyzEClHx695ISTEx8D1mOOW
         RiAw==
X-Gm-Message-State: ACrzQf00L3Fp3gVaNM7yTDmrccfMpWVBWk2GCSObsucVg8SSeRDnQd2o
        7+v8bIx8R8s6RJg08HJV9vlgSg==
X-Google-Smtp-Source: AMsMyM4/U/eNlYtcAjpFMU3O3hzgDyAiGVD6WvkzZo0DijCJ//QpwE7yxoy+I4CAKHTgd08CeX0K/Q==
X-Received: by 2002:ac8:4e41:0:b0:39c:f205:f954 with SMTP id e1-20020ac84e41000000b0039cf205f954mr44419837qtw.134.1666957109732;
        Fri, 28 Oct 2022 04:38:29 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id o24-20020a05620a229800b006ee7923c187sm2721956qkh.42.2022.10.28.04.38.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Oct 2022 04:38:28 -0700 (PDT)
Message-ID: <d9d53c26-4124-4ccb-eb89-0dcb8c77059b@linaro.org>
Date:   Fri, 28 Oct 2022 07:38:27 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] dt-bindings: timer: add Broadcom's BCMBCA timers
Content-Language: en-US
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Lee Jones <lee@kernel.org>,
        William Zhang <william.zhang@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20221028095419.6036-1-zajec5@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221028095419.6036-1-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/10/2022 05:54, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> BCA is a big set / family of Broadcom devices sharing multiple hardware
> blocks. One of them is timer that actually exists in two versions. It's
> a part of TWD MFD block.
> 
> Add binding for it so SoCs can be properly described. Linux (and
> probably any other OS) doesn't really seem to need a driver for it. it
> may be needed for bootloaders (e.g., U-Boot) though. Especially for SoCs

Drop ',' after e.g.

> with CPUs other than Cortex-A9 (which contains arch timers).
> 


> +
> +examples:
> +  - |
> +    timer@fffe0200 {
> +      compatible = "brcm,bcm6345-timer";
> +      reg = <0xfffe0200 0x1c>;
> +    };
> +  - |
> +    timer@fffe8080 {
> +      compatible = "brcm,bcm63138-timer";
> +      reg = <0xfffe8080 0x28>;
> +    };

You do not need two examples, they are the same.


Best regards,
Krzysztof

