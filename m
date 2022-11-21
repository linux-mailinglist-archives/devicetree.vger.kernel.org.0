Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 37C47631DAC
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 11:06:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230223AbiKUKGN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 05:06:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230127AbiKUKGL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 05:06:11 -0500
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4375A9B7CD
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 02:06:10 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id h12so13902845ljg.9
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 02:06:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ETYUju+ev/hPzpv+l4JC8044Dj0mUXTx4GlVsgZjN38=;
        b=iYo9iX04wVOZdT5EObsUtBWobIewodTvdRf8V0NODR74jwWMed+4YuLtDriVY2mWdB
         8IO+AP5pPJj1asjIYQUufuR4O9zo3sHPmX2vJjyDWHNoAO9ATSTIvMTac0hiGeZu2ZOP
         6hL7dvTVnZqlZTIp3fXv3P4tlv5DOGqcgfwTq/GEd4Btr90VXLGk8Z3zw/3+OLJL6aJz
         MGfB+yQKhpedI8h60zu4pv8j0raeb7LPTHf5cfyT3hG0ssRYHZMWOhrEix2LPQtk7h2G
         5tJe2YL0yoCfyXfanSGkY7C9p3hC5UclJplcZ8VZEA4o/YyuoDaBgwLLg0aqXiaqujQE
         9/jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ETYUju+ev/hPzpv+l4JC8044Dj0mUXTx4GlVsgZjN38=;
        b=pQR3oAtzwme6wXnNPG63CLsrn+s63ZfSB+vz5/vCXfD4Dr/nVpnFD6MpLYX6L3E9J1
         7Swsm9fZH0e5IIaE3GdjrQGwg8aM43rdnoStR7lD1hTNWKacM9/O/jytDAOzqSQ8qPTN
         M1GXrgULA7S+2R0uwuN1UUL+UqjdHvIDOC4eFya1tFmVVnoGBE4+DqiAXRoSFWkwI6aV
         zu0Ha8bu9FnPvOL4WodF+GntkNjDIdPtTnRsuXOPgZ85weuta1A60SfYOBv6kcdGBosA
         v++nAV4tXSAAcfQJTyBmsEunDhP0mJaJTIghNaUb4QC6GARYcPCQKfEZrP88svAy8ais
         ID9A==
X-Gm-Message-State: ANoB5pkJ36YWzNmFxJcbxU6sk0GsvL2cno7wd6EB5hWMiareJh7+lwGq
        F7Jf60uWm2iUq0ItzPYNBoiMrA==
X-Google-Smtp-Source: AA0mqf49LlvU9Pg6aP1uODsFd7BBPuYMotIvAVv05VGR/gjZCU6kQGPeu2jafd9bNMv501DNwGoAog==
X-Received: by 2002:a2e:a263:0:b0:276:be89:5616 with SMTP id k3-20020a2ea263000000b00276be895616mr5077797ljm.347.1669025168551;
        Mon, 21 Nov 2022 02:06:08 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id a26-20020ac25e7a000000b004b4930d53b5sm1958536lfr.134.2022.11.21.02.06.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 02:06:08 -0800 (PST)
Message-ID: <08cdf11c-b399-3f45-7dc6-0f75407128bb@linaro.org>
Date:   Mon, 21 Nov 2022 11:06:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 1/3] dt-bindings: timer: sifive,clint: add comaptibles for
 T-Head's C9xx
To:     Icenowy Zheng <uwu@icenowy.me>, Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Jisheng Zhang <jszhang@kernel.org>,
        Samuel Holland <samuel@sholland.org>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org
References: <20221121041757.418645-1-uwu@icenowy.me>
 <20221121041757.418645-2-uwu@icenowy.me>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221121041757.418645-2-uwu@icenowy.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/11/2022 05:17, Icenowy Zheng wrote:
> T-Head C906/C910 CLINT is not compliant to SiFive ones (and even not
> compliant to the newcoming ACLINT spec) because of lack of mtime
> register.
> 
> Add a compatible string formatted like the C9xx-specific PLIC
> compatible, and do not allow a SiFive one as fallback because they're
> not really compliant.
> 
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

