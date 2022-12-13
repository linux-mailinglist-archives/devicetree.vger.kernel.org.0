Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A8B664BBE8
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 19:28:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234027AbiLMS2C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 13:28:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236446AbiLMS16 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 13:27:58 -0500
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 785181FCF5
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 10:27:57 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id f16so4196160ljc.8
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 10:27:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pRVW+CqdRPEDK22F/smPmIg2CNnoImB0xlqZnB6FMCI=;
        b=q78cXwhMZgTyf1v/es8RSywmk8ZEWDhHb3IdqTdqRPUxJdOogVWo8Z4j51DeN6QlGc
         EOU14M7gKw7vAE/NfmKKPCWI9JhkXgeMoySO0JNcBplkpskDpPuzpfy4ANG0waB0u8VO
         ItaoaoenCzIogj+LMnhFx8Z8hIrOfdfA5DA10dy4nwfuumDkBICRFURS0BcvLtlmaed/
         LTGHvxZjLr5H24zFXLI51abbh7qcwqqss5Vs+oILEcFas8iv+zjfQYKx3ph+NzvCk/SB
         7qGKQEDPMd1LG+rXiLK/LwLSIstniumsyEEcDBHyT0vNz2CfGSOtobaS+m/R0XhT4s0x
         JAWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pRVW+CqdRPEDK22F/smPmIg2CNnoImB0xlqZnB6FMCI=;
        b=RjSgFcN27Gf8WzhtqmPa0qezAMxX2ietf3m9TpKNCXeYo8zpPIWFhGLYJ5FvSt+l7m
         HaINU/15JorAPS4R+Uv/pVe+NRIjOa3GopKq26w3Ttt2kL+dt2tPzTKjgemoC5gvPCJx
         I7G8rW1BSS+XrkH5CcOM7U/Lr6VzKqzkI8/NBoZd2xyzNyTM9u8p2jCwWEUxV3uS2YYV
         RDqtlslIr9beR1beeHldxkXHPQVnySDVh3KtTvXksxerHcensyXanhjToet6oFD8MFG8
         s5sXG7cK6K403f5BfVJHFN3RU6QmdgNcabPJZJejR+GQQNcYJnxLQgfoCB98UI/uY8Bc
         +sbQ==
X-Gm-Message-State: ANoB5pnsG9C3m+LdnBLHpbvZ40UKpED0nW24Spwr3IX267ldjNzb+BUv
        LNgcK5f59658sRjI8zyOh9m+5g==
X-Google-Smtp-Source: AA0mqf7sMI4z3Co7LrBbOam76K9nVgyiXSAd4TxERryPTmMBXjq9XaKr9UcZEA74UtC5h7GD0JN0cA==
X-Received: by 2002:a05:651c:50f:b0:277:3931:a59b with SMTP id o15-20020a05651c050f00b002773931a59bmr6932788ljp.42.1670956075723;
        Tue, 13 Dec 2022 10:27:55 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id s16-20020a05651c049000b00279ee47099dsm351691ljc.116.2022.12.13.10.27.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Dec 2022 10:27:55 -0800 (PST)
Message-ID: <35afe007-4ab1-3cce-1c05-3edd25108391@linaro.org>
Date:   Tue, 13 Dec 2022 19:27:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: mainline build failure due to e1d7dc52c3e6 ("ARM: dts: suniv:
 f1c100s: add CIR DT node")
To:     Andre Przywara <andre.przywara@arm.com>,
        "Sudip Mukherjee (Codethink)" <sudipm.mukherjee@gmail.com>
Cc:     Jernej Skrabec <jernej.skrabec@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Linus Torvalds <torvalds@linux-foundation.org>
References: <Y5hZcmnZHsgpv3Pu@debian>
 <20221213171002.23c8c712@donnerap.cambridge.arm.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221213171002.23c8c712@donnerap.cambridge.arm.com>
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

On 13/12/2022 18:10, Andre Przywara wrote:
> On Tue, 13 Dec 2022 10:52:34 +0000
> "Sudip Mukherjee (Codethink)" <sudipm.mukherjee@gmail.com> wrote:
> 
> Hi Sudip,
> 
> thanks for the heads up.
> 
>> The latest mainline kernel branch fails to build arm allmodconfig and
>> multi_v5_defconfig with the error:
>>
>> Error: arch/arm/boot/dts/suniv-f1c100s.dtsi:250.30-31 syntax error
>> FATAL ERROR: Unable to parse input tree
> 
> This is because the clock patch hasn't reached Linus' tree yet, as it's
> coming from a different branch:
> https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git/log/?h=sunxi/clk-for-6.2
> 
> In the original series I had it in the right order, but I guess the single
> line to add the "CLK_IR" symbol should have been in a separate patch and
> gone along with the DT patches.

No, the patchset was broken in few ways:
1.
https://lore.kernel.org/all/20221107005433.11079-5-andre.przywara@arm.com/
You cannot mix driver changes and the bindings in the same patch.

2. Driver changes cannot go with DTS, thus you created non-bisectable
patchset breaking now Linus and in future - breaking all bisects.

Its applying was also wrong - the sunxi tree had bisectability problem
in its own for-next branch.

In future, please do it the same way as we do with regular updates with
dependencies between drivers+bindings+DTS, so:
1. Binding patch is *always* separate.

2. You have now choice of:
2a. Maintainer puts the binding patch with DTS on the DTS branch and
shares it via stable tag to the driver branch. The driver changes go to
driver branch. The order of pull request is important as changes from
driver branch cannot go to DTS branch.
2b. Submitter: Binding patch goes with drivers, but DTS uses hard-coded
numbers for defines and does not rely on the bindings patch.

> Anyway it should magically solve itself in the next hours/days, I guess.

No, it will not fix itself. Bisectability is broken.

Jernej,
Please be sure that your tree is covered by kernel build robot - all
branches, not only for-next. If it were there, you would receive build
error from the robot that bisectability is broken.

Best regards,
Krzysztof

