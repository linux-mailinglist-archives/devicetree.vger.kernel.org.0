Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 277875006E1
	for <lists+devicetree@lfdr.de>; Thu, 14 Apr 2022 09:29:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238225AbiDNHbv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Apr 2022 03:31:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233795AbiDNHbv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Apr 2022 03:31:51 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56B5CFDE
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 00:29:26 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id i27so8341166ejd.9
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 00:29:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=KKeeqSbZ1oG7uLXWWh5cEBw2putwB1PZbZtwfxmKlRY=;
        b=WwCMUxOHDNITSrM4BtYsppqYJitSKLXUjG0tKAyUFTpDQOJLA2Zskz6nZjEtOnTTC9
         VKaq1pNmfPQEuCU3uYoKyuE3biSXM8n/4B0z3BWwDBY2y8/Ms0klBpQaOSb4fGk/DkFD
         l2H9YStwK5i0QhaP0X7wxPC9T+P6FdrbV4dCpudOai9BquaWrBgHKgCRTjjDY+R+oEnj
         hawZRhFYjEFpj0zh14M2zreTBmmrd3zAGAAi1G9FhT/dNcoYhlzZWNA3rwECZxBUD76e
         NkYMvLKxkbe+ydfOYzZyOZK/4UKLNu7e38X1rTLha8609qCKSscd2hWd3yXdWWGvwY7o
         wMQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=KKeeqSbZ1oG7uLXWWh5cEBw2putwB1PZbZtwfxmKlRY=;
        b=AsyP6bf/8gYXl7W/qOKaBsoI7xd6ZPydd5yJugUXTrXvuKs4UygqXAt5pywhmlhJhR
         9siguY5Be8sFz7jEtq0OP4ZVIHeOGs5hK5IIzYTFylflaPeQwqNkVzxcFIRKN8pFMeVJ
         Jg2+cvnLHGlV0yZ7NXgHpA8pqp8X0+p3TDc5Sj7wqzQeyOo20NBpOBWQb48EmpOFIewL
         5PXamhlX4/aZbNtNKsYuW5N0fwCui1XwXngwpn8kLdvhXg1CXZlZalhth+27rqEVhzfm
         q1rcEsc5a3M+mOWOMG2ReSxW0sVRq6tsJ6tTbMiWYRFm4t5Pk6dwYA5ExGOQhBkq6e5v
         PmHg==
X-Gm-Message-State: AOAM533em6hwSo6VIC9D+c29P9tEXlXzp5TFlNGlz4NVOzXHqudc8WUn
        9wU6vgj5+xrovTatIE2BwiDg3g==
X-Google-Smtp-Source: ABdhPJxdySU7DfnX49+B4GSgP8fXrJc8+Zb8llYk8og/A6s4E242Mjbgk24wfgWY7MLFL2B1P/e7QQ==
X-Received: by 2002:a17:906:1798:b0:6e8:94b3:456d with SMTP id t24-20020a170906179800b006e894b3456dmr1192516eje.307.1649921364913;
        Thu, 14 Apr 2022 00:29:24 -0700 (PDT)
Received: from [192.168.0.209] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id 25-20020a170906311900b006e87e5dd529sm369242ejx.70.2022.04.14.00.29.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Apr 2022 00:29:24 -0700 (PDT)
Message-ID: <0de21e5a-f169-2830-2a8b-e92c2d309260@linaro.org>
Date:   Thu, 14 Apr 2022 09:29:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 1/5] dt-bindings: arm: add bcmbca device tree binding
 document
Content-Language: en-US
To:     William Zhang <william.zhang@broadcom.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     Broadcom Kernel List <bcm-kernel-feedback-list@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        Joel Peshkin <joel.peshkin@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Dan Beygelman <dan.beygelman@broadcom.com>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220413192645.7067-1-william.zhang@broadcom.com>
 <20220413192645.7067-2-william.zhang@broadcom.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220413192645.7067-2-william.zhang@broadcom.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/04/2022 21:26, William Zhang wrote:
> Add arch bcmbca device tree binding document for Broadcom ARM based
> broadband SoC chipsets. In this change, only BCM47622 is added. Other
> chipsets will be added in the future.
> 
> Signed-off-by: William Zhang <william.zhang@broadcom.com>

I gave you here an ack. What happened?


Best regards,
Krzysztof
