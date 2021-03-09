Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2477C3331C6
	for <lists+devicetree@lfdr.de>; Tue,  9 Mar 2021 23:55:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232013AbhCIWzY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Mar 2021 17:55:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230473AbhCIWyw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Mar 2021 17:54:52 -0500
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BC84C06174A
        for <devicetree@vger.kernel.org>; Tue,  9 Mar 2021 14:54:52 -0800 (PST)
Received: by mail-pj1-x102a.google.com with SMTP id j6-20020a17090adc86b02900cbfe6f2c96so6201205pjv.1
        for <devicetree@vger.kernel.org>; Tue, 09 Mar 2021 14:54:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/zDQlzkIwKZAOBAFOK5+KweRLoKQV2TPX8If1J4pWzo=;
        b=tkU8wUPj+Bi5n+rS49Bhm3Pk0hhckv3C458IOimiFfjsdYykUT84SiZprdwGLAivx1
         3SNEEuM+JVcUXFm5HZ97+DH3TStqfO67CIa2NsZlHTSTgOeSDut64d3HFUs/pEqR+YeG
         BrfKl1bRuT32RZRvGhId/LeSbjv35+fX84yTNZpbro0VQdYgQSed48lutthC2sNeZvnG
         8LebstT50wm1r9EJE+gVT9gY48FOe5Yv0caFU/HCi1DDbdXgf4e0K2sdx0FOH4a7jqVJ
         LyWHIa7t3DiSbOnFUVwDLuFUJtYc06v0OXTF2mhL4H2zQBKLDa5+oXDNxG7GrIFyc1kA
         xZeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/zDQlzkIwKZAOBAFOK5+KweRLoKQV2TPX8If1J4pWzo=;
        b=oonIee9+70emxOFPpdLmAo8sgu6orzXFBB/58lwcwL2RQnuemdputBu4dHRbAyWsWi
         5jBCA6Z/GVG2VZLA2P7+VbsOdnGSyvZzFlx8/12409/hW/ocqWBmxiG9UcgmURqSbgKw
         jo/u+5i4hFA7MDj5vCZNqTWjntvbEBxEiZgKaQRDpkOJUF+7c49l4oyIi3kXMVNDwsRQ
         eZxfTcLI1dxcmmbkfNLc6fj4VY+VytFWJC3QZPfxicbPiz0yK+d2ONJUERc7J6QC3Jig
         WRgkjmmgBQamDDbkiWFmu4KDnkkWvvyE8mx0lQk16hwt21vm0dvR2dMAclwrhgxzvqFK
         2fqQ==
X-Gm-Message-State: AOAM531uGslVn9LEYU91eqaytsN/WcyqprfV+Xl4HZBa09jYzBEnJ1bK
        5QAFCmvxZSXiL6esiex9/g0=
X-Google-Smtp-Source: ABdhPJyGWNk7oT0HnDPZ+jN2KqyKiQWJIntxOrHRKEUN1we6CQk7qZIQ6335V8QG0PPc/hepKDgZrQ==
X-Received: by 2002:a17:90a:bd16:: with SMTP id y22mr242289pjr.46.1615330491677;
        Tue, 09 Mar 2021 14:54:51 -0800 (PST)
Received: from [10.67.49.104] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id j17sm12463964pfn.70.2021.03.09.14.54.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Mar 2021 14:54:51 -0800 (PST)
Subject: Re: [PATCH V2 4/5] arm64: dts: broadcom: bcm4908: add remaining
 Netgear R8000P LEDs
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20210219055030.3997-1-zajec5@gmail.com>
 <20210219055030.3997-4-zajec5@gmail.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <96af6e65-8078-9b89-2759-896f8ba56377@gmail.com>
Date:   Tue, 9 Mar 2021 14:54:49 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210219055030.3997-4-zajec5@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/18/21 9:50 PM, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> There are a few more GPIO connected LEDs there didn't get described
> initially.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>  .../bcm4908/bcm4906-netgear-r8000p.dts        | 48 +++++++++++++++++++
>  1 file changed, 48 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts
> index af2616e82e83..0d02986c80ab 100644
> --- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts
> +++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts

Can you send me a fixup patch to fix the following warnings:

+arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dt.yaml:
leds: '2ghz', '5ghz-1', '5ghz-2' do not match any of the regexes:
'.*-names$', '.*-supply$', '^#.*-cells$', '^#[a-zA-Z0-9,+\\-._]{0,63}$',
'^[a-zA-Z][a-zA-Z0-9,+\\-._]{0,63}$',
'^[a-zA-Z][a-zA-Z0-9,+\\-._]{0,63}@[0-9a-fA-F]+(,[0-9a-fA-F]+)*$',
'^__.*__$', 'pinctrl-[0-9]+'
+arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dt.yaml:
leds: '2ghz', '5ghz-1', '5ghz-2', 'power-amber', 'power-white', 'usb2',
'usb3', 'wifi', 'wps' do not match any of the regexes:
'(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'
-arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dt.yaml:
leds: 'wps' does not match any of the regexes: '(^led-[0-9a-f]$|led)',
'pinctrl-[0-9]+'
-- 
Florian
