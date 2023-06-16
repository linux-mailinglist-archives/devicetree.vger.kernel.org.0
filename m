Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A7F7733351
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 16:17:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343743AbjFPORt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 10:17:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344624AbjFPORq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 10:17:46 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D410630EC
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 07:17:43 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-3f8f3786f1dso6706265e9.2
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 07:17:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686925062; x=1689517062;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VyMWuiSxNpIh+CPo5oTuEbTcEvXceTJP2UE4A3DBpwU=;
        b=LcMMyAr2yczp/lbeisdfgGj8u+kX8GYwGxnndDKhP1asIoM5Bf5a67UPPaISs+y8rY
         RNoCcRe9pQyKoSTrhEvLVH84cc7aWVEPRUzGKf8KC0kTmmwR8Cinb8Kst/hLOrgwSEjZ
         GXEJvkSXmgPO6AljWMbRbn3ydlWj0sfR/OuMt9IQbk5buSDQwf5Ga2od5fDdzF+UIpVI
         KG0lR5V08kBwUCQlpXKS/ckuVRQNBZgwIhfi5B/wA5cn4iBY+8X1ZbZ1KsTXG9uVISaC
         J0nqUNmZ5BeBRbib3JSr48KFR1hbuP/vtOq0nmpZyq60oP1JALIoRjwKwvJOV+KXDnqH
         NpxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686925062; x=1689517062;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VyMWuiSxNpIh+CPo5oTuEbTcEvXceTJP2UE4A3DBpwU=;
        b=IsiYKcMEm01sXT+dTRlPM99YSRLn7wz/TPqP1TPkzmB9YelNdVImTatcuNDbS1CDOe
         NIvvXNilMqwNLtsvdew1T7sQTJJVP2QPQK2JkL1B5LQlRUeofzCEU0iNzQjLhdtXCc0+
         ZkKySgK7AOVVI/IhHLSBIs4h+IVTa9K9PuRLE3LmOke/X2/6/w6FkqEVwiGOFxoJdS8a
         2bFIX4zgAdhW1lsc2HyRAGLmpvdvqIeW9Oe6Y844ZOPmHNTILvTrYVK56rX/TynbwK5l
         5YHpmpn5fQ9kf6jfLYdd1byQ+zTJGHeuVdV7tKsshZhhLzqtppr4cNQMFkIXgKFpt4uQ
         WzIQ==
X-Gm-Message-State: AC+VfDyjsvXnl9TW57r3oDENKhpCx2bkS5YS3DnOxNXfpMIn6gbfVHMe
        tlxjhkPP6xEEXHlWhMTsIoSqXQ==
X-Google-Smtp-Source: ACHHUZ4YZBU+ttE9cOhYYujjEYAtw4Mfmg4nhTqCiQHz1FDASnApM4TJRa5/WodPXxBbELx9ROFIrg==
X-Received: by 2002:a7b:ce8c:0:b0:3f8:1d6c:4585 with SMTP id q12-20020a7bce8c000000b003f81d6c4585mr1801223wmj.36.1686925062161;
        Fri, 16 Jun 2023 07:17:42 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:4aa0:8c56:eebe:c05c? ([2a05:6e02:1041:c10:4aa0:8c56:eebe:c05c])
        by smtp.googlemail.com with ESMTPSA id t18-20020adfeb92000000b003093a412310sm23772885wrn.92.2023.06.16.07.17.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jun 2023 07:17:41 -0700 (PDT)
Message-ID: <c1309e46-21b1-73ce-3d47-058588afd4bf@linaro.org>
Date:   Fri, 16 Jun 2023 16:17:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 0/3] Update for AP807 thermal data
Content-Language: en-US
To:     "Russell King (Oracle)" <linux@armlinux.org.uk>,
        Amit Kucheria <amitk@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Zhang Rui <rui.zhang@intel.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-pm@vger.kernel.org
References: <ZIxMYXDCTB7IvsDk@shell.armlinux.org.uk>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <ZIxMYXDCTB7IvsDk@shell.armlinux.org.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/06/2023 13:49, Russell King (Oracle) wrote:
> Hi,
> 
> This series updates the thermal data for the AP807 die, which has
> different coefficients to the AP806.
> 
> These patches have come from the SolidRun CN913x build repository
> which can be found at:
> https://github.com/SolidRun/cn913x_build/tree/master/patches/linux
> 
>   .../devicetree/bindings/thermal/armada-thermal.txt |  1 +
>   arch/arm64/boot/dts/marvell/armada-ap807.dtsi      |  3 ++
>   drivers/thermal/armada_thermal.c                   | 32 ++++++++++++++++++++--
>   3 files changed, 34 insertions(+), 2 deletions(-)

Applied, patch 1 and 2.

Dropped the sa_ip-sw-jenkins Tested-by tag

Thanks

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

