Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2190F6236E1
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 23:57:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231800AbiKIW5u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 17:57:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231858AbiKIW5s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 17:57:48 -0500
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com [IPv6:2607:f8b0:4864:20::729])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1DD52338E
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 14:57:47 -0800 (PST)
Received: by mail-qk1-x729.google.com with SMTP id k4so163580qkj.8
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 14:57:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LVWuz823eJSmS7C8/KQV06Oh/hCit6av3FArUtoOCmE=;
        b=fbRS43DQiunb56OLMrAgAYjSYZDFiDvAizKGFBpia15o9YMMDyBzQ4QktlupA/7KHa
         9zM/ROU1SV/liLfz/XVUbHPICK92At/wgEN2cCkm6gQlYnHC1u2zveguAlXFSnbtodzG
         TGyHJCZLjtqiDIBE7eAA47/YUx4ZmMvAWY9Qd/ZisjFAhxk5oJLES7QuuAthPMXAFekS
         ZKcxjMZCvbDo60XNtWqG9Tk1FbYKAfGKCuGe/fUZHSe/Ms5FEBUWm7MxrVdNOpGRnI6b
         /8mVcfHH47EzZSeg6F0UalvSAHhj3ozIuLGPsmLPsTWlY7U0KFAllMqe8XJk36eSg1AT
         FSqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LVWuz823eJSmS7C8/KQV06Oh/hCit6av3FArUtoOCmE=;
        b=DFbKvnCZFkDkGWFGVhZXL0XrG1IcROQAFSmXcKuTVlOXrtnR4jX+QfV/GcE1qrEgTx
         LOaIioLjNhr7d8ovxpI5oAqBcYRYAn0BiRWLAkvP1cosXoqtU5SjZX1+nxL71eztdZCd
         RKTAlQx3WNwLVQpLHazfTmvtF1dta6azs3m7acaZpRLHq+U5WNJKnZ/cTCGQGWKvJUYG
         ck+6hxJsn79DsyCNnAyHbzpNPWVFlB2jhaLKBhByycOBHddqerYVBpFBLQWMsCOjCs8A
         wTwdvuMlWYk7Fzk1i4fsXYM9JCOF509log1FVn7kClkx37uKp0Ht9tQu7pK73aswEBUZ
         Tl0w==
X-Gm-Message-State: ACrzQf2IPE22yrL02W/7LUwtwx920IksIvyRzW38CQT9JpKs+7cYkix0
        Pudm1sozfq6VMQk299Q+CGU=
X-Google-Smtp-Source: AMsMyM5qBu/nvRLbzCaatsp4pITljeZvhT4SMMj5npW+NKf7Ty/xXaqASx4wo4hEgr7fAp9f7ikVRw==
X-Received: by 2002:a37:2e85:0:b0:6fa:aa59:efbf with SMTP id u127-20020a372e85000000b006faaa59efbfmr17681297qkh.406.1668034667074;
        Wed, 09 Nov 2022 14:57:47 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id m2-20020a05620a24c200b006ea7f9d8644sm11718272qkn.96.2022.11.09.14.57.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Nov 2022 14:57:46 -0800 (PST)
Message-ID: <517f2acb-59d5-cdb7-285c-f864b8603864@gmail.com>
Date:   Wed, 9 Nov 2022 14:57:35 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 0/2] ARM: dts: bcm283x: Minor clean up
Content-Language: en-US
To:     Stefan Wahren <stefan.wahren@i2se.com>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Scott Branden <sbranden@broadcom.com>,
        Ray Jui <rjui@broadcom.com>,
        Ariel D'Alessandro <ariel.dalessandro@collabora.com>,
        linux-rpi-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20220925164021.3600-1-stefan.wahren@i2se.com>
 <974b55c8-2b04-2792-fae9-36ac77f7c9d6@i2se.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <974b55c8-2b04-2792-fae9-36ac77f7c9d6@i2se.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/9/22 14:39, Stefan Wahren wrote:
> Hi Florian,
> 
> Am 25.09.22 um 18:40 schrieb Stefan Wahren:
>> This series cleans up some minor issues, but this affects most of
>> the bcm283x DT sources.
> since you already applied Maximes patches, i want to know if you are 
> fine with this series?

Yes, those patches are fine, just they were not in patchwork because 
bcm-kernel-feedback-list@broadcom.com was not copied :/

Patch 1 still applies, but patch 2 failed with:

Apply? [y]es/[n]o/[e]dit/[v]iew patch/[a]ccept all: y
Applying: ARM: dts: bcm283x: Move ACT LED into separate dtsi
error: patch failed: arch/arm/boot/dts/bcm2835-rpi-a-plus.dts:2
error: arch/arm/boot/dts/bcm2835-rpi-a-plus.dts: patch does not apply
error: patch failed: arch/arm/boot/dts/bcm2835-rpi-a.dts:2
error: arch/arm/boot/dts/bcm2835-rpi-a.dts: patch does not apply
error: patch failed: arch/arm/boot/dts/bcm2835-rpi-b-plus.dts:2
error: arch/arm/boot/dts/bcm2835-rpi-b-plus.dts: patch does not apply
error: patch failed: arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts:2
error: arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts: patch does not apply
error: patch failed: arch/arm/boot/dts/bcm2835-rpi-b.dts:2
error: arch/arm/boot/dts/bcm2835-rpi-b.dts: patch does not apply
error: patch failed: arch/arm/boot/dts/bcm2835-rpi-cm1.dtsi:2
error: arch/arm/boot/dts/bcm2835-rpi-cm1.dtsi: patch does not apply
error: patch failed: arch/arm/boot/dts/bcm2835-rpi-zero-w.dts:6
error: arch/arm/boot/dts/bcm2835-rpi-zero-w.dts: patch does not apply
error: patch failed: arch/arm/boot/dts/bcm2835-rpi-zero.dts:6
error: arch/arm/boot/dts/bcm2835-rpi-zero.dts: patch does not apply
Patch failed at 0001 ARM: dts: bcm283x: Move ACT LED into separate dtsi
hint: Use 'git am --show-current-patch=diff' to see the failed patch
When you have resolved this problem, run "git am -i --continue".
If you prefer to skip this patch, run "git am -i --skip" instead.
To restore the original branch and stop patching, run "git am -i --abort".
zsh: exit 128   git am -is

Do you mind resending based upon devicetree/next and copying 
bcm-kernel-feedback-list@broadcom.com so this lands in our patchwork?

Thanks!
-- 
Florian

