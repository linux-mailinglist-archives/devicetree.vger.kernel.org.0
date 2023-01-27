Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CEB4B67E5FE
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 14:02:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234482AbjA0NCP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 08:02:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233689AbjA0NCN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 08:02:13 -0500
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13BB67D91
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 05:02:12 -0800 (PST)
Received: by mail-ed1-x533.google.com with SMTP id u21so4678417edv.3
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 05:02:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z/j3oTdcUMROGDD/ah/h7YgenI5TV3ZsG0vt1xgCaRY=;
        b=IGCYBXTmDEP1M6UOYlzR25dz63moa/jJ8gke766pv+tr7M4z/uivq7nJri3F6ieVdq
         CanIx6icMQz1c/MTqJ4ZUyYk43a7tTXVp1PNZrtHk49r1OJpck7P0dZGYl8XfzRDNE97
         2ppoL9TpscOSXD2nQzlqSXcWwM4iwjhdQuFt57ezbfWfpmd4WQypm4omRmwzTgJJPLo4
         5iKbEnmsPZdYZF/9GrkxxpnJWZMNsVa5dSQhiKhLKcSRWvrZ7Lx4XqRiybjA6tpvxiYW
         NwJcQhnpQbYRBwJigtH1AZWf1uBIc5IFAQRE+CnwiPuwKVSxs7PQWv9GgxSoJRla/fv9
         S+jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Z/j3oTdcUMROGDD/ah/h7YgenI5TV3ZsG0vt1xgCaRY=;
        b=B4R8EdVGfTYWKGREDmqWY8Sy1ZjrE6oiKKCTutkr3NXjpdlqwVhnk8R7YaCfmEIiDH
         WcHSXPKmbEkFhNs5ZW8p36jxehH66nsXMKMzLuF8lfcBflRpxtSfG9wUbkrBF4r+uGDH
         fe0/5PQEboFvQGMf565m4HZmjywdUC6h0C20Dphg5loC5z05bQrY6Nh2x9EbJiVCRZKz
         sxGomPuhyw2ZPS7kgPXhBRaW5YLNadxUE4biSW6601z4IFp4WYewxnERej/2Za6rlsY8
         djS8SWgaw6g7e8WCbNBE4diHPQ8kbcZi0kLvLb5YWLNXso6bpjexWS8zq/j+gvRjAaAr
         xpiw==
X-Gm-Message-State: AFqh2kqPyNyMopSsaTvttIte++nkfSuTHfJtVJz+/1aJKI5dRQVucDBE
        mQJciVqimXtwecwLwS0j1N8=
X-Google-Smtp-Source: AMrXdXtb+9TF3z5Dtjp4Ev4OObCliodMTQqFT1S+ns1vPNiPxF9gxXM38Xmb11a46vcVOeqbYjWVZA==
X-Received: by 2002:a05:6402:5110:b0:492:846d:e86d with SMTP id m16-20020a056402511000b00492846de86dmr52207234edd.23.1674824530472;
        Fri, 27 Jan 2023 05:02:10 -0800 (PST)
Received: from ?IPV6:2a01:c22:6e0f:9000:d16c:754d:81c1:d196? (dynamic-2a01-0c22-6e0f-9000-d16c-754d-81c1-d196.c22.pool.telefonica.de. [2a01:c22:6e0f:9000:d16c:754d:81c1:d196])
        by smtp.googlemail.com with ESMTPSA id cm17-20020a0564020c9100b004a21263bbaasm455615edb.49.2023.01.27.05.02.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jan 2023 05:02:09 -0800 (PST)
Message-ID: <84d40502-fe1a-ef61-e945-9c581557f528@gmail.com>
Date:   Fri, 27 Jan 2023 14:02:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2] arm64: dts: amlogic: Make mmc host controller
 interrupts level-sensitive
Content-Language: en-US
To:     neil.armstrong@linaro.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
References: <d9721029-780e-09f1-0207-72d3897032a4@gmail.com>
 <f06d1676-4fce-846d-d8fe-fa68439b119e@linaro.org>
From:   Heiner Kallweit <hkallweit1@gmail.com>
In-Reply-To: <f06d1676-4fce-846d-d8fe-fa68439b119e@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27.01.2023 08:59, Neil Armstrong wrote:
> Hi,
> 
> On 26/01/2023 15:03, Heiner Kallweit wrote:
>> The usage of edge-triggered interrupts lead to lost interrupts under load,
>> see [0]. This was confirmed to be fixed by using level-triggered
>> interrupts.
>> The report was about SDIO. However, as the host controller is the same
>> for SD and MMC, apply the change to all mmc controller instances.
> 
> Thanks, I applied it in for-next so it runs on the CI tests.
> 
>>
>> [0] https://www.spinics.net/lists/linux-mmc/msg73991.html
>>
>> Fixes: 1499218c80c9 ("arm64: dts: move common G12A & G12B modes to meson-g12-common.dtsi")
> 
> I think we should find a better Fixes or perhaps split in 3 so it targets the
> right commit adding the nodes for each family.
> 
This would be the cleanest option, right. Practically it shouldn't make
much of a difference. The chosen commit is from 2019, SDIO interrupt
support has been added just recently, and regarding MMC/SD it seems no
problems caused by edge-triggered interrupts are known.

> If the test doesn't report any breakage, I'll probably ask you that.
> 
Sure.

> Neil
> 
Heiner

