Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 309BB5211BC
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 12:06:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235785AbiEJKKm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 May 2022 06:10:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239554AbiEJKKl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 May 2022 06:10:41 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46BF917857B
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 03:06:43 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id gh6so31956617ejb.0
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 03:06:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=BGqPoB7N13YysL36iy5GEucgrDjuE+TXbGs3In49Sys=;
        b=YSmHg+XnzOMfv6n5ghbpEO5w3L1xlEeUKBpPmzL0AdXNC9rPvCw1STpr1P7iM3aXd5
         vwysCA784OxRHQGV1aVO5LQLZGeJCyUSYr71PG4xtSKKxAsjyCCm+mhH0eMieYMzgSeJ
         ADEw/wMV5BeF7tVpCeAHOmCaBthtV0YURypcfDWMXPmjVYdQOkDakdAMrNp6oImlGlz8
         YOOoupvkovGJiy9zM9D1Er7Szs1PjjkC5XQR4fpOMbGps9oU247t6qITmtG8OBGmD5qh
         OI1foxczyGDxByLmTBjy0mOeO3GEihINeY7oMq8yzhSlB0hFwJ+rE+cVsF4SmJmSKFqX
         IQ8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=BGqPoB7N13YysL36iy5GEucgrDjuE+TXbGs3In49Sys=;
        b=krYjZW0CFNIgcp0G7VM4aBAM/qbLv2yg+qcQbrgPlrcYfBjpz3WfyItH4PDOvcZuNW
         5Nmut4NAl/Z5vvn7VK9j+psILO70OLRb3mnHRbbYV5MU/x8eBXjdU0NxZLHC74GGqczS
         HL3Ck82rNvkO91KyJgjlvEw+hoCn9mIxmb1GDJo9/WSXpi6tKZl9GuIIF+UxGRBe36lV
         OJUK38RgQL/LY9zZH+VVLMEpgaX4vGBVYT8WKlyRsrxfcRs0L6mNT0usIxbvlWBRK5Js
         QbfZmWdXDK0ZQLI8g7yyjsdwJymb4/f0aZjkKbZu4yHQ+nQ9xz7dpBsoerWg9nMCdtFT
         4JvA==
X-Gm-Message-State: AOAM530U9mUFWAHKXzmowrS4Rgdu+HZYc3pDhO5JMLiTBsJkAAZab6Ln
        3leK5TUESnrkN240OvYf9TbUBw==
X-Google-Smtp-Source: ABdhPJzBkxx1gu4RoEDHqEuHWE0028WLGmyL0eWB80UNCobMZFrBIW/mI1GiLtF9kAfBnQ4FzGB0Tg==
X-Received: by 2002:a17:906:9b8a:b0:6f3:fcc9:f863 with SMTP id dd10-20020a1709069b8a00b006f3fcc9f863mr19368373ejc.672.1652177201743;
        Tue, 10 May 2022 03:06:41 -0700 (PDT)
Received: from [192.168.0.251] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id d23-20020aa7d697000000b0042617ba63absm7281381edr.53.2022.05.10.03.06.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 May 2022 03:06:41 -0700 (PDT)
Message-ID: <79fbc9ce-f815-a886-db6c-9ccdf7be4e53@linaro.org>
Date:   Tue, 10 May 2022 12:06:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v4 2/5] rtc: rzn1: Add new RTC driver
Content-Language: en-US
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        kernel test robot <lkp@intel.com>
Cc:     Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>, kbuild-all@lists.01.org,
        linux-rtc@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
        devicetree@vger.kernel.org,
        Gareth Williams <gareth.williams.jx@renesas.com>,
        Milan Stevanovic <milan.stevanovic@se.com>,
        Jimmy Lalande <jimmy.lalande@se.com>,
        Pascal Eberhard <pascal.eberhard@se.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Herve Codina <herve.codina@bootlin.com>,
        Clement Leger <clement.leger@bootlin.com>,
        Michel Pollet <michel.pollet@bp.renesas.com>
References: <20220509154559.24851-3-miquel.raynal@bootlin.com>
 <202205100552.VY3kCkh5-lkp@intel.com> <20220510092911.5ab2f15a@xps13>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220510092911.5ab2f15a@xps13>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/05/2022 09:29, Miquel Raynal wrote:
> 
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All errors (new ones prefixed by >>):
>>
>>>> drivers/rtc/rtc-rzn1.c:23:10: fatal error: linux/soc/renesas/r9a06g032-sysctrl.h: No such file or directory  
>>       23 | #include <linux/soc/renesas/r9a06g032-sysctrl.h>
>>          |          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>    compilation terminated.
> 
> That include is no longer needed in this driver (and should be merged
> through another tree). Tell me if I need to resend or if you can fix it
> while applying.

This should be resent so we are sure that no other warnings are reported.

Best regards,
Krzysztof
