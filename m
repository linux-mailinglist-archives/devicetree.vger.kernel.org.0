Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 31A65623442
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 21:11:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231557AbiKIULq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 15:11:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231384AbiKIULg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 15:11:36 -0500
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 503B7DEBB
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 12:11:35 -0800 (PST)
Received: by mail-lj1-x22b.google.com with SMTP id k19so26896098lji.2
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 12:11:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VIP1DwFS0hsPYY2bAhzhl4Z4LxA5mOxnLfIYQbIpN5U=;
        b=dTH/hcNqzZEfXh1djzlh5il2/x95kYnZ/TDNoBieegHY7OIeBcepVbG7Q6UeSM9EKE
         cXUYm1RkiCV3BiXLvViqPqz7pNg+a48LSPG40QrnMqRQKvDezVrHgrO0kRydmJSWLytz
         LGsukT3yr8iwL+VGOx9f5HkWW7tGFl6BjNK51WQrVq8HBx6dEgDf0FZOpbxKSjcuY190
         /3N7lGSKl0SrNcsI6JtYzJSvmhjQn15JFFU0sVvcZJt4/I4hdk52XHQEjK4U0amQGmst
         8OIUvS1ipw5sUQy0baHvBzmBEh8oT9OWgqmm4Wx+JOZlkXULLv6/5aghTAMfctS++Z//
         TnIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VIP1DwFS0hsPYY2bAhzhl4Z4LxA5mOxnLfIYQbIpN5U=;
        b=XB84ZPiL0X9n8e3n8Z+6AMJtEGPm/Tbqlbkh2EUeHH5L5hfOA30gqdpAJqfjujWh7h
         n49uXMxrr1p7iXDlhvpzEQAZwuhMfYJEa+tkHJopg42aCXeoxxY5TS/KCTPXSuXQYLBJ
         /j2Nr82ONRA8imQ/sH3067zqoQY7cgTATLo/Jtb4lQ17tYny7zJRzdEhFoD6xIF7L96/
         kVx6DsVnDMfIb6f5jhjqHKWtfvUhq/DQjIsYrC/qIQLZb52sCNFmWpHSALEFZZ5IdDbM
         wOGSgsoxaodVA3QGpruOMzl5ZwjJRU3ySVdptgLdTFx4a0306E8js+lzDsjaGf7FDoBK
         nDfQ==
X-Gm-Message-State: ACrzQf3LEd+AeRDSF+iZKnYx/xL8Eaiv47dOyeSZ6docVqXrZJGOu/+f
        UjbypwYs7ByiYRZLm1bv7GU=
X-Google-Smtp-Source: AMsMyM49GvJWfLSwJnaCc7mruqYExSc7Fhx/WPiV7yL5QAi4TxDflV0+F1xqhfNhoK0HKCZFtUI9iA==
X-Received: by 2002:a2e:b0c3:0:b0:26e:58d:e94a with SMTP id g3-20020a2eb0c3000000b0026e058de94amr6985277ljl.252.1668024693477;
        Wed, 09 Nov 2022 12:11:33 -0800 (PST)
Received: from [192.168.26.149] (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.googlemail.com with ESMTPSA id t20-20020a2e8e74000000b0027755f52a94sm2308603ljk.80.2022.11.09.12.11.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Nov 2022 12:11:33 -0800 (PST)
Message-ID: <923207f7-387d-2ed8-db64-118db6167669@gmail.com>
Date:   Wed, 9 Nov 2022 21:11:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:96.0) Gecko/20100101
 Thunderbird/96.0
Subject: Re: [PATCH] arm64: dts: broadcom: bcmbca: bcm4908: drop invalid
 "nand" interrupt name
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        William Zhang <william.zhang@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20221103104152.19502-1-zajec5@gmail.com>
 <78ac1b7d-5f7c-c9d3-118b-5e419a7c20dc@gmail.com>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
In-Reply-To: <78ac1b7d-5f7c-c9d3-118b-5e419a7c20dc@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 9.11.2022 19:37, Florian Fainelli wrote:
> On 11/3/22 03:41, Rafał Miłecki wrote:
>> From: Rafał Miłecki <rafal@milecki.pl>
>>
>> String "nand" was never a valid interrupt name. It was never documented
>> and never used in Linux or U-Boot driver. This mistake was propagated
>> from the bcm63138.dtsi.
>>
>> The whole "interrupt-names" property is optional and can be skipped.
>>
>> Fixes: 2961f69f151c ("arm64: dts: broadcom: add BCM4908 and Asus GT-AC5300 early DTS files")
>> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> 
> Do you still want me to apply this patch, or are we happy with renaming that interrupt to "nand_ctlrdy" instead?

I don't have any real preference.

Since we already have this patch, we may just apply it. If you think
having "interrupt-names" with just "nand_ctlrdy" is cleaner, I can send
V2.
