Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 67CC1573B11
	for <lists+devicetree@lfdr.de>; Wed, 13 Jul 2022 18:22:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236409AbiGMQWN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jul 2022 12:22:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236785AbiGMQWM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jul 2022 12:22:12 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A1192C12E
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 09:22:11 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id a15so12798730pjs.0
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 09:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=G6cZbCDObCrquplBMu/XpjuV5dJA+TFvq37PMvBSv+Q=;
        b=GmofSh+LmJu3FpvSenwNNrTKb7YcfXi7JzaajTosAS5JD5YvmCcNCBEdXst+0+W/Ak
         vSMK/Bt62ygQBGcQD4rHJTbIF5lGAu8vxDIALqIDwGnjef6Vgqhs8Phw8pPy35lrWGUu
         gLTYonkRb31onKwTlWmJcbP7zVayv08AdNfGoFdu6QapL71DgJM4mMDzbz4h3D8igRmj
         wHxrZlbR3BJAk2Wctcnnk2W+XNcDEP+c1OH0PnB1YF7MwMQBYXYx9mS/ORmGunbg9vwK
         Gdk92Ak+qimm90mfWLSJCy3v3apJHPzFhj1gDqw9cLRb8hK3mLKzmOGV+pqD4foaGAGx
         VX4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=G6cZbCDObCrquplBMu/XpjuV5dJA+TFvq37PMvBSv+Q=;
        b=QD463X4CBXqkAamq1Z8XHLFl2sT25EL3YqQWRdv5LWjsL2cC7F0xb8HBoHDeq3ldLO
         9tdMGOczTmxShb4A5MgUGBsOUdnNlodgJLaGs/z+ZJ7XxNME+eHCIH4Se4IrCJLUL8f7
         seCWmOXej1+1OPSH3IJUTKxfgLUYM27HJtshiF8b9IrCRO3PvKAV49Z5C58wr9dQg7y+
         ueEfotCdhhkaLKsdjg70Z1v4wwKL9c1VNUkNGcxIp31pUaQ1/QSKUAS/77YJgd1tVmdx
         WW7FdE2+KnpykMMgcjcdG0njDUMmBv2eIJNtL1EHbVJ/7qE+HU2rM5UNoxtZvnsf6qVY
         pKpw==
X-Gm-Message-State: AJIora8PiV6Elj56uKMzNPjp4FGsHR4NOUwIIFxRvAA7Kdj6bF7ia8z3
        ILStbgCM1c61MxU3JLNpZHFJsE2w3go=
X-Google-Smtp-Source: AGRyM1vJUioOeMl3/AJkZzI4mRu7E2Q0dtLGATk55VoUufATkp1O0Q/SoGZQTUKaGmO7hahV4lYpBw==
X-Received: by 2002:a17:902:ea0a:b0:168:d8ce:4a63 with SMTP id s10-20020a170902ea0a00b00168d8ce4a63mr3865903plg.57.1657729330986;
        Wed, 13 Jul 2022 09:22:10 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id i194-20020a6287cb000000b0052553215444sm8969089pfe.101.2022.07.13.09.22.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jul 2022 09:22:10 -0700 (PDT)
Message-ID: <bde4059e-411b-7dc8-6b38-f7b10e52e2e4@gmail.com>
Date:   Wed, 13 Jul 2022 09:22:08 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH V2] dt-bindings: arm: Add Asus GT-AX6000 based on BCM4912
Content-Language: en-US
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        William Zhang <william.zhang@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20220713121432.386-1-zajec5@gmail.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20220713121432.386-1-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 7/13/22 05:14, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> It's a home router, the first BCM4912 SoC based public device.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>

Can you re-submit this patch at the same time you submit the Asus 
GT-AX6000 DTS file otherwise, updating the binding is a little bit 
useless on its own.

Thank
-- 
Florian
