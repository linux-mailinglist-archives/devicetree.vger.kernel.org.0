Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E85214BCDCC
	for <lists+devicetree@lfdr.de>; Sun, 20 Feb 2022 11:21:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234304AbiBTJbA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Feb 2022 04:31:00 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:35858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229818AbiBTJbA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Feb 2022 04:31:00 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AE974C7A4
        for <devicetree@vger.kernel.org>; Sun, 20 Feb 2022 01:30:39 -0800 (PST)
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com [209.85.221.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id B30DD40042
        for <devicetree@vger.kernel.org>; Sun, 20 Feb 2022 09:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645349437;
        bh=ZhlW2P314Xp7IVd+FJpw1KLggsQP1D5CsVCti6D2Xfc=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=wZTOY5IaH5kq0+oFO0lKt9OSE3p72emJ+UiqiRFPamot4zo9xV+134BjzF5w8CJgi
         bsSmhJwxTMLChB8hvA6ndf1sBWtreM7KNuc5YTysseRePpsH3QcSbAYxMfH0U1GRyu
         oyhSUL4EWarmrc7iqmSIP+h6Z92lfJZoD5vPSYQvNapFf1FPLhAzhm+ge+TZ3BHzCv
         hNsoC0ssHZrC/65+hMMSYvnCNTgtGzwGkToYEE2PjptMg+8rMxYUPVgArhiSgwqtxx
         EHv0ZP/K4PViNrgmKT1FyZ4dS8bxoR8AKNhDliv67FutKcOozeWi6CqCGhPl1ut/fr
         UkmH2Oufp94OQ==
Received: by mail-wr1-f69.google.com with SMTP id v17-20020adf8b51000000b001e336bf3be7so5693517wra.1
        for <devicetree@vger.kernel.org>; Sun, 20 Feb 2022 01:30:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ZhlW2P314Xp7IVd+FJpw1KLggsQP1D5CsVCti6D2Xfc=;
        b=yFLqP0wFumi4jcUmiR/ehoXZeSvbahengK0HnvHxkK8E0+bBQ5yqGzumhIIa8PZgal
         60WHGKzsa6W84XKonkMkVmpxTkhCc3oVDELetGs2kwsbWj3yFNBxbo+fq3rNVKOwj34R
         Qy0YKqXa6kaTe4tcbhq21ZkqEc/PuGw5AzJM2C7hIGwgM9tK8Dje+SWc6ei4jAZVq02M
         QZadY+/66BGGM1uRkq2TH29v8EIvuCOXpNiejMG1qa9Yov6YbL4mfnO0t1FcCphN+18W
         VPp3GJ8BxX8GmaVdSWQVk51J9iXefYe++KTRSZFL/4J1g3LzOBP0VlJ50F4eZgSkasAI
         3CdA==
X-Gm-Message-State: AOAM531m+5Ak+61qXmE/4XAVs247uQgjjz+zaoLEqjpi9JWZ7BiRM2HQ
        jS8NJILGaZqJKvBNur3nPyR07ttIMw1fOktzn3E91h6Iw7W5mMVl8ZwMQjGqgFVzYt7YFMEg2n+
        hErz/DjBhU0fQEUT/dZkqjuFMEnfAsqc8iwJ9d+8=
X-Received: by 2002:a5d:568a:0:b0:1e4:7cc8:fa6d with SMTP id f10-20020a5d568a000000b001e47cc8fa6dmr11679927wrv.48.1645349433185;
        Sun, 20 Feb 2022 01:30:33 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzDPzoJ3r3Cf/g14eN02kggEVtqJQJJBBiuuP/xysWCL9EyAUqqQm+LFlX4Qx6fEQSqO5pRiw==
X-Received: by 2002:a5d:568a:0:b0:1e4:7cc8:fa6d with SMTP id f10-20020a5d568a000000b001e47cc8fa6dmr11679891wrv.48.1645349432988;
        Sun, 20 Feb 2022 01:30:32 -0800 (PST)
Received: from [192.168.0.117] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id x7sm39145432wro.21.2022.02.20.01.30.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Feb 2022 01:30:32 -0800 (PST)
Message-ID: <5d507fda-525e-4064-3add-0bb0cc23d016@canonical.com>
Date:   Sun, 20 Feb 2022 10:30:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 00/11] i2c: npcm: Bug fixes timeout, spurious
 interrupts
Content-Language: en-US
To:     Tyrone Ting <warp5tw@gmail.com>, avifishman70@gmail.com,
        tmaimon77@gmail.com, tali.perry1@gmail.com, venture@google.com,
        yuenn@google.com, benjaminfair@google.com, robh+dt@kernel.org,
        semen.protsenko@linaro.org, yangyicong@hisilicon.com,
        wsa@kernel.org, jie.deng@intel.com, sven@svenpeter.dev,
        bence98@sch.bme.hu, christophe.leroy@csgroup.eu,
        lukas.bulwahn@gmail.com, olof@lixom.net, arnd@arndb.de,
        digetx@gmail.com, andriy.shevchenko@linux.intel.com,
        tali.perry@nuvoton.com, Avi.Fishman@nuvoton.com,
        tomer.maimon@nuvoton.com, KWLIU@nuvoton.com, JJLIU0@nuvoton.com,
        kfting@nuvoton.com
Cc:     openbmc@lists.ozlabs.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220220035321.3870-1-warp5tw@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220220035321.3870-1-warp5tw@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/02/2022 04:53, Tyrone Ting wrote:
> From: Tyrone Ting <kfting@nuvoton.com>
> 
> This patchset includes the following fixes:
> 
> - Add dt-bindings description for NPCM845.
> - Bug fix for timeout calculation.
> - Better handling of spurious interrupts.
> - Fix for event type in slave mode.
> - Removal of own slave addresses [2:10].
> - Support for next gen BMC (NPCM845).
> 
> The NPCM I2C driver is tested on NPCM750 and NPCM845 evaluation boards.
> 
> Addressed comments from:
>  - Jonathan Neuschäfer : https://lkml.org/lkml/2022/2/7/670
>  - Krzysztof Kozlowski : https://lkml.org/lkml/2022/2/7/760

How did you address the ABI change comment? I still see you break the
ABI with the introduction of a new, required property.


Best regards,
Krzysztof
