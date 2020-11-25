Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC9E02C468C
	for <lists+devicetree@lfdr.de>; Wed, 25 Nov 2020 18:21:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731245AbgKYRU7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Nov 2020 12:20:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729631AbgKYRU7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Nov 2020 12:20:59 -0500
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com [IPv6:2607:f8b0:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1E4DC0613D4
        for <devicetree@vger.kernel.org>; Wed, 25 Nov 2020 09:20:40 -0800 (PST)
Received: by mail-pl1-x641.google.com with SMTP id s2so1425675plr.9
        for <devicetree@vger.kernel.org>; Wed, 25 Nov 2020 09:20:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=dWRSXl789SFQ+0AvwCaTqcuycJ4oHKg7M2vTzKDBm2M=;
        b=Xri/srKaxegzV0dCw2D+qXTocxohCktqpY+FU6X7NgR9+WjGKKgyyRH9eIKhHCsx4a
         xbq+Iyqbve9AiPHd0U5qtDbyApr5eKfCoQQ6J5ygqhqDAFrnuE01aARugDPIHyzNWPV/
         M1Yr6B4s+jVNCNEZsVnBMKZE0QB5ZnZKBf+C6iKhMneNtgTQlb4rqQD+QivSsZFe7vrn
         B6oq30wHsc4AZfg3MwvB1KL7rW0/LfzXjcqGJnHrk0AWl4h0vx8x06K1xgbiALTwBG/k
         UVhNPNcgRC7kbXcrXN23Oa8kwxGqcUCw37oA1J+2qzXLvEUnnQJRwpzCMu/JN4vnq994
         mt8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=dWRSXl789SFQ+0AvwCaTqcuycJ4oHKg7M2vTzKDBm2M=;
        b=AnCsG1mBgeiZofzcgz1cnw9NC8NW7OO7vDYcG/L+58U4KPhsIvhZAgaLyJHH6rwUme
         6lxXh5/qUsat5t3yWKVYMtnkJUq56OafY47SANIpe9escvP/sxvS658xR0xj4Z9U8/T4
         tD79Bd0dhQ6HU4RFtHP26OTKg36zXAocg5td8IWl5BygAJ/d3T0WsG0ipBGiVAqRTKZa
         fV6udP6JORYKxi4iJ7NOtLZGKVG+yyQRHSU2J+RE7ZLhzEpJWdctyo2Adjo27UUkvWe/
         tz4OV/3bEnGqjym2MiALa0fO+i1cpCNePg12XcnfzOi9zyKHPseO0YUFnSviepot3Zdx
         g49w==
X-Gm-Message-State: AOAM533Z94Mw/fWoCemcMNxyI12tA58EJtjScxjpQYZ32TJX0Npyy0wv
        lPHA5b/0fHwD4Qwrh1ZJhDE=
X-Google-Smtp-Source: ABdhPJyhVTM91JIOEzlrHIayiqFfD6n+gnGJjLR8VN5imwwlmp5f3rEVfuqJkfuhwGfcqQxtmN187A==
X-Received: by 2002:a17:902:8f83:b029:d7:ec99:d2fd with SMTP id z3-20020a1709028f83b02900d7ec99d2fdmr3199622plo.17.1606324840422;
        Wed, 25 Nov 2020 09:20:40 -0800 (PST)
Received: from [10.230.28.242] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id b15sm3554728pjz.38.2020.11.25.09.20.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Nov 2020 09:20:38 -0800 (PST)
Subject: Re: [PATCH] dt-bindings: arm: bcm: bcm4908: fix yaml validation
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20201125110130.3877-1-zajec5@gmail.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <21182439-03b1-26d6-928e-74513e12fdc9@gmail.com>
Date:   Wed, 25 Nov 2020 09:20:36 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201125110130.3877-1-zajec5@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 11/25/2020 3:01 AM, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Root node can obviously have various subnodes so "additionalProperties"
> should be set to true.
> 
> This fixes:
> arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dt.yaml: /: '#address-cells', '#size-cells', 'aliases', 'axi@81000000', 'chosen', 'clocks', 'cpus', 'gpio-keys-polled', 'interrupt-parent', 'memory@0', 'model', 'pmu', 'soc', 'timer', 'ubus@ff800000' do not match any of the regexes: 'pinctrl-[0-9]+'
>         From schema: Documentation/devicetree/bindings/arm/bcm/brcm,bcm4908.yaml
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>

Applied and fixed up into "dt-bindings: arm: bcm: document BCM4908
bindings", thanks for the quick turn around!
-- 
Florian
