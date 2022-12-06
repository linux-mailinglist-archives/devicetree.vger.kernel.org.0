Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1D25644C6E
	for <lists+devicetree@lfdr.de>; Tue,  6 Dec 2022 20:22:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229747AbiLFTWf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Dec 2022 14:22:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229743AbiLFTWe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Dec 2022 14:22:34 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B0B741995
        for <devicetree@vger.kernel.org>; Tue,  6 Dec 2022 11:22:31 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id m14so24929408wrh.7
        for <devicetree@vger.kernel.org>; Tue, 06 Dec 2022 11:22:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4Kc0DPAtZANtmBB4/APA8h9MGVc9hC5I6CM/Vzwl2xs=;
        b=dK3PhiQhFUgbwn2UgOzR1EI3QDvs0M1JfayULjfIe+7Gf8mqT4rqpTFUcViscqXXYc
         fk+YnJ8+ix4y2bSgF2Nj4w2yxrOJpZPpuueGinJoBw1FUUygisozIrjlLc4iZWE8tHs0
         sTDciBFyePOOeh5LQ0tN18H+FubhMZLZ8bO1CJT2IYa+XVPLRxblsD4OksYEu75Y95cv
         X9OEaXZTFjAx50izorCHGRCx0ILWhWJTzgpJ0AOGkORNtvWIVf5YQ0gd04Rf1V7QHAkW
         G1YXZImgoffra/o0hA2LHZrEI14JZ5Ua2bXusXQFQw4qqcOcTeG5Az5txUe4FCUC7Xe7
         Zshw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4Kc0DPAtZANtmBB4/APA8h9MGVc9hC5I6CM/Vzwl2xs=;
        b=blMPZxBkvmeg6hpp9JGOKYeOk76CkcFPavBgmITQZ1cIgT8PdaGR4dfC0HII+QW/hI
         dvmFiCs3tXOCSy1N7o4vFuGy+6rXac2onV8xRSEhPV8ZPf378evAwZr9OlE1kOxeoply
         jKpJkW6XDrvu5pBGSS+tldyK+wGKKxY3Qes4EIptURFVPwrbo9IT3SxDFSEqKxxG3cVk
         9e7ktU/aDfaaLkmVpbALnhOIVF3SVTnIN+2eovinqRMw6yxVKgihrdihujwn4+wenNRT
         Nt9trMebtBe+M/oU3aRt/768ukGCC9k0/LY+wdpKO/evFzpVpOByj7m0L5jiNPyes/u2
         GhbA==
X-Gm-Message-State: ANoB5pmEVPQL7TSb3694cRm13DVKSJ0dT1a5g9aFW4tRM3JCFtT+xZoL
        2cd0XR9adUvC10lYAaLFAC5Qbw==
X-Google-Smtp-Source: AA0mqf5rkOLSX/PBJ641Jpt5pcEBmiAtuAfQ5WZKW86lfETq6U0wWZJ5hpIkbTr4DDC8swW1DDtZVg==
X-Received: by 2002:a5d:6a06:0:b0:242:140d:43d5 with SMTP id m6-20020a5d6a06000000b00242140d43d5mr27054697wru.53.1670354549595;
        Tue, 06 Dec 2022 11:22:29 -0800 (PST)
Received: from [192.168.1.91] (192.201.68.85.rev.sfr.net. [85.68.201.192])
        by smtp.gmail.com with ESMTPSA id h16-20020a05600c2cb000b003c6bbe910fdsm32563712wmc.9.2022.12.06.11.22.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Dec 2022 11:22:29 -0800 (PST)
Message-ID: <753775e9-33f6-031f-8da5-2f65894f44fe@baylibre.com>
Date:   Tue, 6 Dec 2022 20:22:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v7 0/6] Add support for TI TPS65219 PMIC.
Content-Language: en-US
To:     Francesco Dolcini <francesco@dolcini.it>
Cc:     lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
        nm@ti.com, kristo@kernel.org, dmitry.torokhov@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, catalin.marinas@arm.com,
        will@kernel.org, lee@kernel.org, tony@atomide.com, vigneshr@ti.com,
        shawnguo@kernel.org, geert+renesas@glider.be,
        dmitry.baryshkov@linaro.org, marcel.ziswiler@toradex.com,
        vkoul@kernel.org, biju.das.jz@bp.renesas.com, arnd@arndb.de,
        jeff@labundy.com, afd@ti.com, khilman@baylibre.com,
        narmstrong@baylibre.com, msp@baylibre.com, j-keerthy@ti.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-input@vger.kernel.org,
        linux-omap@vger.kernel.org
References: <20221104152311.1098603-1-jneanne@baylibre.com>
 <Y44ztV+2j4krM8mp@francesco-nb.int.toradex.com>
From:   jerome Neanne <jneanne@baylibre.com>
In-Reply-To: <Y44ztV+2j4krM8mp@francesco-nb.int.toradex.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 05/12/2022 19:08, Francesco Dolcini wrote:
> On Fri, Nov 04, 2022 at 04:23:05PM +0100, Jerome Neanne wrote:
>> Hi everyone,
> Hello Jerome,
> 
> are you planning to have also gpio support added to the driver?
> 
> Francesco
> 
Hi Francesco,

I don't have any requirement regarding GPIO on that PMIC. We've just 
done this (GPIO driver) for another TI PMIC. Will see if this can be 
reused later.

Regards,
Jerome
