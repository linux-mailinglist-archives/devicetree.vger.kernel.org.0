Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 951944BD7D1
	for <lists+devicetree@lfdr.de>; Mon, 21 Feb 2022 09:40:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343705AbiBUIcx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Feb 2022 03:32:53 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:49298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343710AbiBUIcw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Feb 2022 03:32:52 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE17A12745
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 00:32:29 -0800 (PST)
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com [209.85.221.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id A1A733F1F6
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 08:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645432348;
        bh=TVZC7r8G6CEaD3eIO9b+oUrW2d/ZxrtJL667P7jAzwE=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=v0yHINwE+2xnu44ojTM6UABgVJbxPgtkiOc/DPyL44IgkwIJ3nxQVa6XO70eiKoOF
         DOSnnbCwtMGjTT61G3tbCSp/GpKwoXuw2PDuLwfkslQACkP6i0PGvMyHWUvAI5vq/3
         h3J6X+2ObTe0YOFdvpV/Gc7yjzlej4XPkk4mAHi+c9SZN4brnvHVbjom4wHLcPtX2z
         9ebBrdLhNTCqljudvhL6M3QYUyuFKl0VWBzldCOmHeXo9yV+nBgvWWXN1/4geXF9eb
         4IfLTyyqIlCgIXku74bpLup0WU5XQ1rDD1t9wVwCGhJbQoIdKahkGnn88S3fZnnffP
         gfpjzcGnDNpyg==
Received: by mail-wr1-f69.google.com with SMTP id m8-20020adfa3c8000000b001e3381fdf45so7055353wrb.4
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 00:32:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=TVZC7r8G6CEaD3eIO9b+oUrW2d/ZxrtJL667P7jAzwE=;
        b=cZVhQ3OMTHFCiNPyZIAPkIFkoPtiBMjsRmZEx5OZEcqF639zj7YChgOPj0D1spekbW
         R94movUoQyFPXLOjK4fWTQOdPE7IkQiNda4sES39Qdr3yYRe13rlgp4mZa1FTkK1GEbh
         KRoaawG7A3T2LIn8tID+OlnJjDfK+4DHXSLky7YXjThrckMxq3qiwqCPWxCh3Uo0mVXw
         gTXZ+fFqT2zw+ETlGFAek/clR8T8q8S7IDUyX5wMLi7KSb6fhc0AAVStYSQtP+65PERe
         KQAx96PuFvgXSsqO8/QuazxCgEh6RTmNqLtDx+46fdaKNa07KSMMS0zPyl3ZylsxUqk2
         l7ng==
X-Gm-Message-State: AOAM532UvpcoAP3ugB2V4Ezjd5MqRS7DQUdVRq8CZhjknZOyGngXAMhb
        xJOrYCuwvTV5xBaKfQlcbUkkaDQbEAqIrbW82Bvwb50Cp3QOQvpUCe0dy96fGxYB0s9MrIjw/Lh
        booP635E4pDGWZ11IPzIvweZhot6dVuRbhYCvSzU=
X-Received: by 2002:a5d:6146:0:b0:1e6:16b6:3e99 with SMTP id y6-20020a5d6146000000b001e616b63e99mr14752149wrt.693.1645432346960;
        Mon, 21 Feb 2022 00:32:26 -0800 (PST)
X-Google-Smtp-Source: ABdhPJynWXDCyxnh3FFGUZaBfjSfsvzFafvVR9mLxa6NHv05YRkhHU0HA5xGoQ8svay3G9FKddP6HA==
X-Received: by 2002:a5d:6146:0:b0:1e6:16b6:3e99 with SMTP id y6-20020a5d6146000000b001e616b63e99mr14752122wrt.693.1645432346730;
        Mon, 21 Feb 2022 00:32:26 -0800 (PST)
Received: from [192.168.0.120] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id f18sm12660140wre.66.2022.02.21.00.32.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Feb 2022 00:32:26 -0800 (PST)
Message-ID: <5ce0f6a6-4a5f-4f25-3cc6-ab0f24bf15cf@canonical.com>
Date:   Mon, 21 Feb 2022 09:32:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 00/11] i2c: npcm: Bug fixes timeout, spurious
 interrupts
Content-Language: en-US
To:     Tyrone Ting <warp5tw@gmail.com>
Cc:     avifishman70@gmail.com, tmaimon77@gmail.com, tali.perry1@gmail.com,
        venture@google.com, yuenn@google.com, benjaminfair@google.com,
        robh+dt@kernel.org, semen.protsenko@linaro.org,
        yangyicong@hisilicon.com, wsa@kernel.org, jie.deng@intel.com,
        sven@svenpeter.dev, bence98@sch.bme.hu,
        christophe.leroy@csgroup.eu, lukas.bulwahn@gmail.com,
        olof@lixom.net, arnd@arndb.de, digetx@gmail.com,
        andriy.shevchenko@linux.intel.com, tali.perry@nuvoton.com,
        Avi.Fishman@nuvoton.com, tomer.maimon@nuvoton.com,
        KWLIU@nuvoton.com, JJLIU0@nuvoton.com, kfting@nuvoton.com,
        openbmc@lists.ozlabs.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220220035321.3870-1-warp5tw@gmail.com>
 <5d507fda-525e-4064-3add-0bb0cc23d016@canonical.com>
 <CACD3sJaXeWLu6=oLgxJcU9R+A1J+jB7xKaGcDFwYxof33yj17Q@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <CACD3sJaXeWLu6=oLgxJcU9R+A1J+jB7xKaGcDFwYxof33yj17Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/02/2022 09:16, Tyrone Ting wrote:
> Hi Krzysztof:
> 
> Thank you for your comments and please find my reply next to your comments.
> 
> Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com> 於 2022年2月20日
> 週日 下午5:30寫道：
>>
>> On 20/02/2022 04:53, Tyrone Ting wrote:
>>> From: Tyrone Ting <kfting@nuvoton.com>
>>>
>>> This patchset includes the following fixes:
>>>
>>> - Add dt-bindings description for NPCM845.
>>> - Bug fix for timeout calculation.
>>> - Better handling of spurious interrupts.
>>> - Fix for event type in slave mode.
>>> - Removal of own slave addresses [2:10].
>>> - Support for next gen BMC (NPCM845).
>>>
>>> The NPCM I2C driver is tested on NPCM750 and NPCM845 evaluation boards.
>>>
>>> Addressed comments from:
>>>  - Jonathan Neuschäfer : https://lkml.org/lkml/2022/2/7/670
>>>  - Krzysztof Kozlowski : https://lkml.org/lkml/2022/2/7/760
>>
>> How did you address the ABI change comment? I still see you break the
>> ABI with the introduction of a new, required property.
>>
> 
> I add the new, required property "nuvoton,sys-mgr" in the file
> nuvoton-common-npcm7xx.dtsi.
> The file nuvoton-common-npcm7xx.dtsi is required by the existing
> upstream NPCM devicetree files.
> It is also updated and committed in this patch set [PATCH v2 01/11]
> arm: dts: add new property for NPCM i2c module.
> Please let me know if I misunderstand the meaning of "breaking the ABI".
> Thank you again.

Breaking the ABI means that old DTS stop working with new kernel. Your
change breaks old (and out-of-tree) DTS.

What is more, your change is not bisectable because DTS goes via
separate branch or tree than driver change.

You need to keep old code as fallback, if getting nuvoton,sys-mgr fails.

Best regards,
Krzysztof
