Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9968C52C3CC
	for <lists+devicetree@lfdr.de>; Wed, 18 May 2022 21:53:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238880AbiERTwO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 May 2022 15:52:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231796AbiERTwN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 May 2022 15:52:13 -0400
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5562516D5D1
        for <devicetree@vger.kernel.org>; Wed, 18 May 2022 12:52:08 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id c2so2778565plh.2
        for <devicetree@vger.kernel.org>; Wed, 18 May 2022 12:52:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=GxedodxFdhzBp/djqzdFc+iR49snd3BMQcMfxH7E1es=;
        b=oGW30oQA8EfMQTWzEn0KKd/uxqPc/Adj+fl4afn9rjC4o60ZKMKqyikXU6hFqpkvJu
         LywN+CZa7sdKbi/gzXt/o02bkpcgutJcXQ5bn5OvBBu3JDUHzTO8iGsXEtfv9nmUj5bj
         oq293MIfLn0yuer2iqwK9D27KLAVNhrRlbkk+J1dnA2QKciUivHbQVJNvnjfTIGedp43
         mdD6nEBo5eecG7isM6Bern8ehdnRHC54gGXZXOjGtxGn8Diuj+dH5JJ/L1CShDWEEUDG
         jPgzYEvMTHE4nJ3Zj8tO72t8xuXlXVh4AUKEsy3pFLO3tfzpsXKwDjDSVjzWuZAk+oaa
         hN5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=GxedodxFdhzBp/djqzdFc+iR49snd3BMQcMfxH7E1es=;
        b=zkja4aFX0Bk1tTn3JSgOcRuq2QUxO4ucy/G6Ak2sQWJws07PQSHFh6GR3SiI1aTjvF
         HqwGHPDSITN8+DndbxfK2xVijaGQQ1ZQaaCM/7j3KhlUB9Kus7UPpGYyBRjq7DmDfVJ0
         lRyahbAyaMf6s3+9TlFK2Ud3bujSDSFnLfAKKExd/bLSkGJgE2AHVVDtE3ypHOA2zFu6
         t3swGkHPXsqpWj5qXqF0Z0c2s2Jf5SFvz6orz478DcPaIWop0+NWihjsBzLDzU4DU7dp
         7VJdkztEbxwMGC6GxtfGc13nB5JIOpivzcfZjSvRWUnLikiCVcKBeJkEKjzJ/XukJMTY
         B5vQ==
X-Gm-Message-State: AOAM532IUjBI2Gwn5Z9ctWS1eGuhykDidghHSnf0spinPdtFgNqXmoHP
        qDcwLwOECg9mHarQO4ed+Kk=
X-Google-Smtp-Source: ABdhPJwlTrFcINrBaDMLYRh7G8hnJCLplthRg9PYNGxxRUQ1yNoXG+hHIs7A3NfPM4OYbdiygLUJHg==
X-Received: by 2002:a17:90b:3851:b0:1dc:4f70:1cb with SMTP id nl17-20020a17090b385100b001dc4f7001cbmr1652449pjb.167.1652903527767;
        Wed, 18 May 2022 12:52:07 -0700 (PDT)
Received: from [192.168.1.3] (ip72-194-116-95.oc.oc.cox.net. [72.194.116.95])
        by smtp.gmail.com with ESMTPSA id e14-20020a17090301ce00b0016194c1df58sm2171449plh.105.2022.05.18.12.52.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 May 2022 12:52:06 -0700 (PDT)
Message-ID: <2cfbf1a0-2cef-057d-dce4-13ee50c626d7@gmail.com>
Date:   Wed, 18 May 2022 12:52:04 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH RESEND 0/2] arm/arm64: dts: Enable device-tree overlay
 support for RPi devices
Content-Language: en-US
To:     Aurelien Jarno <aurelien@aurel32.net>,
        Arnd Bergmann <arnd@arndb.de>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        bcm-kernel-feedback-list@broadcom.com
Cc:     Stefan Wahren <stefan.wahren@i2se.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org, Phil Elwell <phil@raspberrypi.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org, soc@kernel.org
References: <20220427233607.1225419-1-aurelien@aurel32.net>
From:   Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20220427233607.1225419-1-aurelien@aurel32.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 4/27/2022 4:36 PM, Aurelien Jarno wrote:
> This patchset changes the generation of the Raspberry Pi devices DTB
> files to improve the support for out-of-tree device-tree overlays, like
> it has recently been done for the Nvidia SoCs.
> 
> I personally only need that for arm64, but I have added a similar patch
> to do the same on arm.

This looks good to me, Rob, does that approach work for you?
-- 
Florian
