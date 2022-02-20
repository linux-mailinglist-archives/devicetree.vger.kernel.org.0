Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D7264BCDAC
	for <lists+devicetree@lfdr.de>; Sun, 20 Feb 2022 11:21:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243561AbiBTJcv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Feb 2022 04:32:51 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:40766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243558AbiBTJcu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Feb 2022 04:32:50 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45732F45
        for <devicetree@vger.kernel.org>; Sun, 20 Feb 2022 01:32:30 -0800 (PST)
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com [209.85.221.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id B78B0402FD
        for <devicetree@vger.kernel.org>; Sun, 20 Feb 2022 09:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645349548;
        bh=LKjm5LjPQkt9S6ejT9o1cKax4Elbs5PxSQyHCZobrC4=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=t/IDl4ux/CLFTFp9z0v3Mj4sMJ+qwqj4KL/i64A6jTQuFGTlCKg4aVe2qMwRib4FT
         PyfYTQeJ68q8+y+8Vr6q+yFnlBK8vHp7DI65rWhPdWVixHt6X/wH7n/UN7kvfRlG5t
         Tp7/YhwXAEjMt5bDKxcBEvAxLbckx2hllA8J+t6HeIILkaMjjlogaz4ywOZOADZuFA
         1UBML1KnAKSHaD3qjBsuZMuchcFzTMeI8hjD95GJWEc0ydrOdd4fFVVxpmpPyBwRBX
         8zHg8CGA1RTCF0mHHJS5CXdWXE/oRAiSSAw9Ioua/736ym5XV2Uq7ESTeeaZSQ91wv
         3W+S86/vp5tcA==
Received: by mail-wr1-f71.google.com with SMTP id g15-20020adfbc8f000000b001e9506e27ddso2630434wrh.22
        for <devicetree@vger.kernel.org>; Sun, 20 Feb 2022 01:32:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=LKjm5LjPQkt9S6ejT9o1cKax4Elbs5PxSQyHCZobrC4=;
        b=1ZuR0N2DZvoWIQ82qVXm1OnCF8tqENsTy0HDAMIxdA3jWZDWr0rKEk0EYM0e7U0375
         /WiKO1QZZcHVFAfWiM+gY7w+DUcbYmAp+ouuDiEMAeQ7srZy/JuNslDGerrv8M929WAh
         76EkKXY+yilc3XQLZksEQKpM4268dXwhXqoLpjpMa09LTMQk/RzXiBiL4bOhLe8SULRD
         Xhz7jB2X3BTqWAL5UxZSYODbI5eyLD2ctpOTJc1ThG85jh0O8oSarCJv4Y7iDLHlpuIz
         FdQEGfZ63/9Az+SgkHYym20XEjSABsubiCfFQvPzb7Avhd1dBc2nPXOxN4hvUk0zkGzO
         2Mew==
X-Gm-Message-State: AOAM533ggi7xESYVeqm8Q9pOFWBR8ya/kmVdmP16VoJmmPBNh9AXImcA
        Gg135EwRM9RNZ4cIGTyc8sSznpITm+dWFA4lbCr/OMt/cdHhW9GeBrAkdoo4if5A5VA/hZdGKSG
        xfGwvnb1pFRB8lMAuuPdnO6VNQCTAIPRN66gmMyE=
X-Received: by 2002:a05:600c:230d:b0:37d:5882:ec9b with SMTP id 13-20020a05600c230d00b0037d5882ec9bmr17101287wmo.162.1645349544160;
        Sun, 20 Feb 2022 01:32:24 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx5VMR9zGe0H8y1LkWbw0H010mPlQxgB9BfhaHQlQDN2Ch3MW7W25dEBO2fUvk53yZ3IM4IIw==
X-Received: by 2002:a05:600c:230d:b0:37d:5882:ec9b with SMTP id 13-20020a05600c230d00b0037d5882ec9bmr17101254wmo.162.1645349543973;
        Sun, 20 Feb 2022 01:32:23 -0800 (PST)
Received: from [192.168.0.117] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id i3sm50975818wrq.72.2022.02.20.01.32.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Feb 2022 01:32:23 -0800 (PST)
Message-ID: <ae927203-794b-06c6-3bcc-d67f13ab841d@canonical.com>
Date:   Sun, 20 Feb 2022 10:32:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 04/11] i2c: npcm: Update gcr property name
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
 <20220220035321.3870-5-warp5tw@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220220035321.3870-5-warp5tw@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/02/2022 04:53, Tyrone Ting wrote:
> From: Tali Perry <tali.perry1@gmail.com>
> 
> Use a generic name for NPCM system manager reigster.

The subject is not accurate and you entirely skipped in commit msg the
fact of an ABI break.

You do not update a property name but you change the way of getting GCR
regmap.

Best regards,
Krzysztof
