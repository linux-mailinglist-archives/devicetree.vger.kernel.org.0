Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 24C4B57D751
	for <lists+devicetree@lfdr.de>; Fri, 22 Jul 2022 01:18:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229739AbiGUXSS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 19:18:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229645AbiGUXSQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 19:18:16 -0400
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com [IPv6:2607:f8b0:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 393EB8E4EC
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 16:18:16 -0700 (PDT)
Received: by mail-pg1-x52f.google.com with SMTP id o18so2995852pgu.9
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 16:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=KFSCKIsuoD/3pql9z0tFsV5fJwnsY1GfAI928SDrUBY=;
        b=FzOtCRs5+Gza35+TVc7VzfcR19Z9TV8ea/GzzSeDvilTv3G1foiY+idmK3csj9f5Fj
         VRKGCC6oPboTn5hFZuwqrJUKeHSbYEN8o1tdUand7ovXgrAnpMJ2zwbrQvzCbRo1hPV+
         PJ6O5qj9uAArgU6vUZ5XKPq2LBnJ5wstY/QRsvmG8LOuhcA6vfKDMUehyTJKPg/5/iBV
         T8R8+VkKSja8nrXBPefvhv+zhH73Mu/zDrHSogRHpHX0knL/8HVEFTN3/eEVC/uYjpL0
         hCTLuG4Dhhw6KR39eN/z0tBO9AAkFQWh0uee6fP1M1DdbB+b1G8WG++pqv3gYDanT+AG
         Vj4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=KFSCKIsuoD/3pql9z0tFsV5fJwnsY1GfAI928SDrUBY=;
        b=ZCq5nY41jGm+Au8fWBh8Bp0v8EOjiQbV44Pply1MGSi3IUrtC//hzQp2JBoh6WYLmN
         KdC3j4ilEXv54J+H6lUJ9qJOGmKdA7kdO0IdvLTJ06LYiIGMD1fqLmgXkfAWsPNSwN2A
         lVIRV15ksb9KvXNuWIG8C0HVGYCTqaJCopwA6LsXRrDGs66RqBMUDyvzPdvaitfzZZTU
         r4DZR/4IZRWRbckerl/NszXmnkaw2ZCS7we7iaiHYOS8UcU347xLSQ6xSzLuK51zEi4V
         pMyUlSNz7SqJIiJ/yi+GaFCxcJoKqLiscop//4OmJg2zHgDUDkyXzah6tg5TCFYn3BLw
         9ULA==
X-Gm-Message-State: AJIora8ckRp+7DbnKPNGDsVXL3hhxl+qJGMXUfgShPScxJS+dY2Cln4X
        JJR7VcXJ0mPTht0gTtDm7Lg=
X-Google-Smtp-Source: AGRyM1vxwB3nKh/odH8lrNccp72/5zx8I9zC0teVpdNXmEB9+Eq2vtbAa6RxcSd6bJqS5K+8kc/sFA==
X-Received: by 2002:a62:d103:0:b0:528:c6c7:bd74 with SMTP id z3-20020a62d103000000b00528c6c7bd74mr788648pfg.68.1658445495660;
        Thu, 21 Jul 2022 16:18:15 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id r7-20020a635d07000000b003fdc16f5de2sm1992243pgb.15.2022.07.21.16.18.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jul 2022 16:18:15 -0700 (PDT)
Message-ID: <56b4015c-1d95-ef0d-69ed-f036d0102523@gmail.com>
Date:   Thu, 21 Jul 2022 16:18:13 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] ARM: dts: BCM5301X: Add basic PCI controller properties
Content-Language: en-US
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20220721091509.27725-1-zajec5@gmail.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20220721091509.27725-1-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 7/21/22 02:15, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This fixes:
> arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dtb: pcie@12000: 'device_type' is a required property
>         From schema: /lib/python3.9/site-packages/dtschema/schemas/pci/pci-bus.yaml
> arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dtb: pcie@12000: '#address-cells' is a required property
>         From schema: /lib/python3.9/site-packages/dtschema/schemas/pci/pci-bus.yaml
> arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dtb: pcie@12000: '#size-cells' is a required property
>         From schema: /lib/python3.9/site-packages/dtschema/schemas/pci/pci-bus.yaml
> arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dtb: pcie@13000: 'device_type' is a required property
>         From schema: /lib/python3.9/site-packages/dtschema/schemas/pci/pci-bus.yaml
> arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dtb: pcie@13000: '#address-cells' is a required property
>         From schema: /lib/python3.9/site-packages/dtschema/schemas/pci/pci-bus.yaml
> arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dtb: pcie@13000: '#size-cells' is a required property
>         From schema: /lib/python3.9/site-packages/dtschema/schemas/pci/pci-bus.yaml
> arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dtb: pcie@14000: 'device_type' is a required property
>         From schema: /lib/python3.9/site-packages/dtschema/schemas/pci/pci-bus.yaml
> arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dtb: pcie@14000: '#address-cells' is a required property
>         From schema: /lib/python3.9/site-packages/dtschema/schemas/pci/pci-bus.yaml
> arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dtb: pcie@14000: '#size-cells' is a required property
>         From schema: /lib/python3.9/site-packages/dtschema/schemas/pci/pci-bus.yaml
> 
> What remains missing is "ranges" property. I currently don't know its
> correct value for Northstar SoC.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
-- 
Florian
