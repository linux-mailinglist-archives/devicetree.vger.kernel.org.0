Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 248E4618358
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 16:59:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231260AbiKCP7K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 11:59:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231304AbiKCP7J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 11:59:09 -0400
Received: from mail-qv1-xf30.google.com (mail-qv1-xf30.google.com [IPv6:2607:f8b0:4864:20::f30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8478165B5
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 08:58:29 -0700 (PDT)
Received: by mail-qv1-xf30.google.com with SMTP id mi9so1409153qvb.8
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 08:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MmL5PMKwLs8KIL+DWLPwsC53NmAj0fMu2XcPGkNMxX8=;
        b=Z0Mv/N4TLb/POCMbluoR1vUCwzJ2Q9CkvgFf229tj80I33MCq9MGiya0+t5pVqMeHZ
         OgFbNisjA6Ybt00S/9WNYOakNHYdIdnP57FxTAUk3D/6WoJrD+J35kBgA4AzY78LIn0+
         CyYAkaFX9Qpm6q4tauA3FLgUXck3rBUFUiUueNR88WaoawkdIKBZ4zdyUFp6p4u6FYSK
         QXuGExJ1LWAlwGaeYflgSkNi/ZVGofuQ41K+vudN6gwfVOREjm2zIvx5GS07E+rTCIAN
         2hWtiFdxL2AznoZNeQLBUdWgW6XW9pYDgF3/cyQxN0yjrD3sp9WOlB9KW9hsSUHlBYhM
         uPxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MmL5PMKwLs8KIL+DWLPwsC53NmAj0fMu2XcPGkNMxX8=;
        b=gfBlNYEsvfDUsz2JByhxrNESLE9jQMkP+dL8ZKllN/uNTEoeDotih94gJ9UyNM1cW6
         g5QRPS962498OsFEwLhB100sgXt4+QFp7blTssfOmO5N/NwFJyHUKXmFHpkzOewLGkwK
         VTzudQskHoyo5ZxN2LdROI9d6BRw4eCgD+WF2BJKZhj6zgkZdJWgavcIq/gAwt9Kss82
         XG6RuNWnKwWBJBRo96b/VTdAQg5huyIYWq00XM6jfZpnXu3nN97GXwreZJLCPBV8/YPv
         gp7XxxfbifzNkwMcq37njN1K8i+l0XWKRaOUwewRVAc6dY7ul6y3B62+abMlN8/zEdFS
         Uvmw==
X-Gm-Message-State: ACrzQf0WHILzXdvajZ4vRZPwFgP95rIScWraZwAuGy6YR/W8NwXqgM5y
        +U9bvGp63bcN7HGv2zZQA51X0A==
X-Google-Smtp-Source: AMsMyM7KVFiSx/QLMzjwVBkLJaYN3FWBNd1NReEiBBbXMj8wvdKi0mNynlIJyhX6jHj7tBtgTCno/g==
X-Received: by 2002:ad4:5fcd:0:b0:4bb:f8f2:1ebf with SMTP id jq13-20020ad45fcd000000b004bbf8f21ebfmr19862975qvb.66.1667491108759;
        Thu, 03 Nov 2022 08:58:28 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:a35d:9f85:e3f7:d9fb? ([2601:586:5000:570:a35d:9f85:e3f7:d9fb])
        by smtp.gmail.com with ESMTPSA id c14-20020a05620a164e00b006cbc00db595sm983032qko.23.2022.11.03.08.58.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Nov 2022 08:58:28 -0700 (PDT)
Message-ID: <23bd81fd-dd72-e888-85c3-8c5ae7a76541@linaro.org>
Date:   Thu, 3 Nov 2022 11:58:27 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] ARM: dts: bcm63138: drop invalid "nand" interrupt name
Content-Language: en-US
To:     Florian Fainelli <f.fainelli@gmail.com>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        William Zhang <william.zhang@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Brian Norris <briannorris@chromium.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20221103102406.18339-1-zajec5@gmail.com>
 <9b346154-4f11-3682-3b6d-73c76170455d@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <9b346154-4f11-3682-3b6d-73c76170455d@gmail.com>
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

On 03/11/2022 11:31, Florian Fainelli wrote:
> 
> 
> On 11/3/2022 3:24 AM, Rafał Miłecki wrote:
>> From: Rafał Miłecki <rafal@milecki.pl>
>>
>> String "nand" was never a valid interrupt name. It was never documented
>> and never used in Linux or U-Boot driver. It most likely comes from a
>> copy & paste mistake ("nand" is used in "reg-names").
>>
>> The whole "interrupt-names" property is optional and can be skipped.
> 
> How about we just fix the binding document instead? Deciding the fate of 
> a property based upon client programs of the DTS using it is a weak 
> argument IMHO.

Having a "names" property with only one item and the name matching the
device name is also not useful.

For new bindings the recommendation would be: drop the interrupt-names.
For existing bindings - choose something reasonable, e.g. less changes
needed.

Best regards,
Krzysztof

