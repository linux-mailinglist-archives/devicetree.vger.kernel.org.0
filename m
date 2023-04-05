Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 32F0A6D7D77
	for <lists+devicetree@lfdr.de>; Wed,  5 Apr 2023 15:13:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237872AbjDENNw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Apr 2023 09:13:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237704AbjDENNv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Apr 2023 09:13:51 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD990171F
        for <devicetree@vger.kernel.org>; Wed,  5 Apr 2023 06:13:49 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id i5-20020a05600c354500b003edd24054e0so23707932wmq.4
        for <devicetree@vger.kernel.org>; Wed, 05 Apr 2023 06:13:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112; t=1680700428;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PHh6zzAce+jaaDv5uLWbvrxiFe4RlqISTI0cdrv8gGw=;
        b=oC6b60CGc0i+X2eamIm7a4q3wmo0Le1bJgkKz75LJtPkxtGgsS3kIBCEbh+WkZDs0t
         5HC6ywocBdzZf2mTPaHIRmhcr1rpVxDbrhF0jX+C31QfjhiIJk09071Ft5H49Lb3BROz
         wExQ7VGxXyddgnTyjJI9jx0slUkJDeB8fELrOc2QlpWn0EbRZDl/ES4e4p8aIEM+2LhD
         TIaF3IeOPi3QOXrYNeFefemGQZQwdxioJloOIbUu3s1WkaeFfSoOLXrwB+lwRI5mBOsu
         Zdt760+0KlAUBPxnEreikCGZ8CD5+z4XIiacbtCyZZ7jFZ6k96o/jVecjZg44c8iHrtX
         BP5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680700428;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PHh6zzAce+jaaDv5uLWbvrxiFe4RlqISTI0cdrv8gGw=;
        b=HCtMDFPML6xsrRD9H01GxdCMYujbGAoc08DkGGM8IulI5WNXuUKfkaqpE0w189XFa8
         dSV5we0cryhl4XTgPKxRVJZjaC0gNkTgeKLKCFWhPcE4lZksSznwW/HUWXhrgZ1vnTGM
         5WzsFQQRvRts1/z5xo5XJPdSPEqUjg5/c1yFVbcr5hGQm/Z0+RFyvK1auntCxl2DOen7
         PzvU3hPsnd6MkXOBGk5yxsBOEc10qWqdRcXTbLY5ZkEBz6JJK97n9bYrpqa2cMmTpu0N
         FoYSytzz++usg1cX3IC1E31p+ID1DwAC80xC9dwq8ASx6RBJiKS7H49EDEe2A9SadZyO
         cdDA==
X-Gm-Message-State: AAQBX9e6/XyWpQYVivxoPzMyYxLRnOzw3Q9DTbyASTKbN90R7vD5tTi1
        070oTxQygfysQcTFbdo5/LwsDA==
X-Google-Smtp-Source: AKy350ZyPGUFGjG9cy0rn/aVbR5i527mmHWJxdldoaXSN0tARqQJmd6qhS1NVW6cU3hiqFGcYnWKMQ==
X-Received: by 2002:a1c:7309:0:b0:3ed:ec34:f1 with SMTP id d9-20020a1c7309000000b003edec3400f1mr4566693wmb.35.1680700428151;
        Wed, 05 Apr 2023 06:13:48 -0700 (PDT)
Received: from [192.168.1.172] (158.22.5.93.rev.sfr.net. [93.5.22.158])
        by smtp.gmail.com with ESMTPSA id u13-20020a05600c210d00b003f0373d077csm2144586wml.47.2023.04.05.06.13.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Apr 2023 06:13:47 -0700 (PDT)
Message-ID: <3c51a5d3-8d76-9d8e-7cbe-6a2a1776b360@baylibre.com>
Date:   Wed, 5 Apr 2023 15:13:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 00/10] Add IOMMU support to MT8365 SoC
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Yong Wu <yong.wu@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230207-iommu-support-v2-0-60d5fa00e4e5@baylibre.com>
 <00a0d832-9a0b-6160-31eb-30d2e9c32c79@linaro.org>
From:   Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <00a0d832-9a0b-6160-31eb-30d2e9c32c79@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 05/04/2023 13:43, Krzysztof Kozlowski wrote:
> On 05/04/2023 10:06, Alexandre Mergnat wrote:
>> This commits are based on the Fabien Parent <fparent@baylibre.com> work.
>>
>> The purpose of this series is to add the following HWs / IPs support for
>> the MT8365 SoC:
>> - System Power Manager
>> - MultiMedia Memory Management Unit "M4U" (IOMMU)
>>    - Smart Multimedia Interface "SMI"
>>      - Local arbiter "LARB"
>>
>> This series depends to two others which add power support for MT8365 SoC
>> [1] [2].
> So does it mean they cannot be merged? On first glance I do not see the
> dependency, so I wonder if we understand the dependencies the same. And
> subsystems.
Exactly, we shouldn't merge it before the dependent series to don't 
break the build due to
"#include <dt-bindings/power/mediatek,mt8365-power.h>" in the DTSI file.
Additionally, LARB will not work properly (or at all) without the power 
support.

Regards,
Alexandre

