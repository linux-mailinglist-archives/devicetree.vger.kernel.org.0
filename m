Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BF4A32C37FE
	for <lists+devicetree@lfdr.de>; Wed, 25 Nov 2020 05:21:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726345AbgKYEUf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Nov 2020 23:20:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726330AbgKYEUf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Nov 2020 23:20:35 -0500
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com [IPv6:2607:f8b0:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16027C0613D4
        for <devicetree@vger.kernel.org>; Tue, 24 Nov 2020 20:20:35 -0800 (PST)
Received: by mail-pg1-x543.google.com with SMTP id t3so1195381pgi.11
        for <devicetree@vger.kernel.org>; Tue, 24 Nov 2020 20:20:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:references:subject:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=w9vX6IxFqDBFsHbzB5xv5tI4esW2UndqrkVZUV9aO6g=;
        b=QHIbE9f3vW59xvKOsyHL4yoVt9Ldsa0Yh/yiFnFjyHHrALuvcu1tDnNr1wblpCC1lU
         2/CFBte/XIIk0rhX+qzXnjB0lVLxS9aLyNLfsN4oLME5dXDhF0a06MZnBzfg24j4A/Py
         So4nCU1FXfkWau+rDHpbj3lNP8naeAd7Bm7IKKb7YgzKT3jdQnvkHBu0ULadlYCI1ovb
         UA/CFyF8OnLWJY+qbhLlUvpLKLCJqX54f4SzuIi7NUPjP7uCg8LzkBg7vKHUT5V+74db
         jDz/7PHK3SE+5qMW+zQamLuGh7C3E0/yH7jqHVe+iabQ27SMAHuT/H11/i707236jjPM
         7JJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:references:subject:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=w9vX6IxFqDBFsHbzB5xv5tI4esW2UndqrkVZUV9aO6g=;
        b=CBDJC8+XTxzz+LZh3QmtBdJ5GxQNP1nC5c9Y4n4UfOY/BDCtEVetwQV08+c1ZXMfhM
         BoS+BNP9IOgoOUsDSFNc9CDScr2EIpty1PhI5Sf5aLsXVSzUQjIue2Tilt0gsfemU6Ow
         Y5R9dL3k4CAYL8Tf/lZ0nmGggv16xaY373HPWHvG20SzneKISw+/WblBiQAoYdGCkyJ5
         WuV+FiZqgv2tuQ8UDng9EQKBtzdEfvMwXbf6KLN2keNmXOuVNNxGCAPRpFBpR5hdagjO
         VJHB8Zd1+D8Mfn0sDfa6gV+Djszy/BrpRtfx7Y+R5393zrLg5qBhTjahrt2s8GLywDZE
         vhBA==
X-Gm-Message-State: AOAM5321ApR41GM6Y8GZkfS/kycd0jggtZM7oskbBNZQPLgBPtpwE+Y8
        jpKUllI+6g/qoQdJMN8Znlk=
X-Google-Smtp-Source: ABdhPJxAmH5Uy4Ok1L/rLrBUFhZ8RAWoOunxJUyBBkwo8Ok3pm5on2MUr+zlPUFgrcpJ/wwzItIy3Q==
X-Received: by 2002:aa7:8801:0:b029:18b:5878:30d6 with SMTP id c1-20020aa788010000b029018b587830d6mr1499522pfo.77.1606278034595;
        Tue, 24 Nov 2020 20:20:34 -0800 (PST)
Received: from [10.230.28.242] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id i10sm501484pfk.206.2020.11.24.20.20.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Nov 2020 20:20:33 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20201112150832.26474-1-zajec5@gmail.com>
 <20201112150832.26474-2-zajec5@gmail.com>
 <20201124224128.2256366-1-f.fainelli@gmail.com>
Subject: Re: [PATCH V4 2/3] dt-bindings: arm: bcm: document BCM4908 bindings
Message-ID: <eb00f01e-b315-1fc4-8a4a-13069386cd36@gmail.com>
Date:   Tue, 24 Nov 2020 20:20:31 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201124224128.2256366-1-f.fainelli@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 11/24/2020 2:41 PM, Florian Fainelli wrote:
> On Thu, 12 Nov 2020 16:08:31 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
>> From: Rafał Miłecki <rafal@milecki.pl>
>>
>> BCM4908 is a new family that includes BCM4906, BCM4908 and BCM49408.
>> It's mostly used in home routers and often replaces Northstar in vendors
>> portfolio.
>>
>> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
>> ---
> 
> Applied to devicetree-arm64/next, thanks!

Can you send me an incremental fix for this warning:

  CHECK
arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dt.yaml
/home/fainelli/dev/linux/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dt.yaml:
/: '#address-cells', '#size-cells', 'aliases', 'axi@81000000',
'bus@ff800000', 'chosen', 'clocks', 'cpus', 'gpio-keys-polled',
'interrupt-parent', 'memory@0', 'model', 'pmu', 'soc', 'timer' do not
match any of the regexes: 'pinctrl-[0-9]+'
        From schema:
/home/fainelli/dev/linux/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4908.yaml


reproduced with:

ARCH=arm64 make dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/bcm/brcm,bcm4908.yaml

Thanks
-- 
Florian
