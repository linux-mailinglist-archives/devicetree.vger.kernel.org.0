Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4EF474D6EC7
	for <lists+devicetree@lfdr.de>; Sat, 12 Mar 2022 14:03:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230413AbiCLNEz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Mar 2022 08:04:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229865AbiCLNEz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 12 Mar 2022 08:04:55 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E29393DDD2
        for <devicetree@vger.kernel.org>; Sat, 12 Mar 2022 05:03:47 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id 19so6630725wmy.3
        for <devicetree@vger.kernel.org>; Sat, 12 Mar 2022 05:03:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod-ie.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=F4ZxAMvdyayeBfKvb+RIOxNuxxzTOU9uY/N/Ir8tEVk=;
        b=pxcoqmCCYvT6TkWVajDPrCWVrrjGub2g1njqN41rRxE2cQoVVD0Hxj9u2bEKTfyMfA
         V/xkR7dLfCq/13/tSiu/BlYFUEni1Kl1O3uRap7oRjUoAYYg5wKnS3y/Zc7FDn4eZEqI
         iqkEUgsTaoOJigp9gAy43FQi3KJ8I/c27NowrUPreyBfLEtF4sPNir79r+zW04VIkN+K
         c7pt3ezm+dfpABNb8YmzRiFp1xfa2lNG5Ko4yKo1qDojg5K/9Yg3Pi+gjaO+1a1Hxo0x
         tQ4O9yb+m1PSyZcCKa+Zn69olwiwPRSAsoLZs6BkcxxIk9X/kDCDh5Xw0cbpMSwlsY8g
         V62A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=F4ZxAMvdyayeBfKvb+RIOxNuxxzTOU9uY/N/Ir8tEVk=;
        b=oq99f3vkhbgyhR+2WQKlm0M+Bt6lMghtbJlsbOX690qD3RN/LPag4htHMH2u3XGsJ8
         URJrYezdBF8b5WUmBuhyd/QBdo8mmp4jCLmDWf92ssZf8EcnAiIO47EEE8DWkPD41Id+
         zE5a3sBDkndO3AZsBTWmS4ggLdD+LO7rzUPmv9JtydDqGeZuJrTk7B45Ak3A3X06n8Ib
         h7Wg5kk1sYMgwqxv7tkw2LFsDu/T/ssR+FbWnw+oJJu0y7bBkqKDaBNRG2tPLMUWuC2i
         ZfFCw4lsAMrP1WAa7aQrVbhu4yZIySizpEOKeNLKjKqF2/b0en+YATSOzGrYgVjBkO2Y
         vSAA==
X-Gm-Message-State: AOAM530Slh9CFhUhSkHSl8eAhw3zT4Thzb917qKNpgdIjYIre9epOsF3
        Onhh0NeGeceF/RLg87ID7U2+Pg==
X-Google-Smtp-Source: ABdhPJxUGmG844w1SIPn3JsQVTzy6w7HV63dr1JeVPmdac+rE5PxCxyYoZd2BF5SK/sNa3jOBghTdA==
X-Received: by 2002:a7b:c5d0:0:b0:389:fe85:3d79 with SMTP id n16-20020a7bc5d0000000b00389fe853d79mr1803275wmk.77.1647090226367;
        Sat, 12 Mar 2022 05:03:46 -0800 (PST)
Received: from [192.168.2.222] ([109.76.4.19])
        by smtp.gmail.com with ESMTPSA id v124-20020a1cac82000000b0037c3d08e0e7sm12862918wme.29.2022.03.12.05.03.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Mar 2022 05:03:45 -0800 (PST)
Message-ID: <05e2fa13-163f-e6ef-4cf8-be6de513f068@conchuod.ie>
Date:   Sat, 12 Mar 2022 13:03:43 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v12 1/1] clk: microchip: Add driver for Microchip
 PolarFire SoC
Content-Language: en-US
To:     Stephen Boyd <sboyd@kernel.org>, conor.dooley@microchip.com,
        devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
        mturquette@baylibre.com, robh+dt@kernel.org
Cc:     krzysztof.kozlowski@canonical.com, geert@linux-m68k.org,
        david.abdurachmanov@gmail.com, palmer@dabbelt.com,
        daire.mcnamara@microchip.com, cyril.jean@microchip.com,
        Padmarao Begari <padmarao.begari@microchip.com>
References: <20220222121143.3316880-1-conor.dooley@microchip.com>
 <20220222121143.3316880-2-conor.dooley@microchip.com>
 <20220312033230.5CB87C340E9@smtp.kernel.org>
From:   Conor Dooley <mail@conchuod.ie>
In-Reply-To: <20220312033230.5CB87C340E9@smtp.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 12/03/2022 03:32, Stephen Boyd wrote:
> Quoting conor.dooley@microchip.com (2022-02-22 04:11:44)
>> From: Daire McNamara <daire.mcnamara@microchip.com>
>>
>> Add support for clock configuration on Microchip PolarFire SoC
>>
>> Reviewed-by: Geert Uytterhoeven <geert@linux-m68k.org>
>> Tested-by: Geert Uytterhoeven <geert@linux-m68k.org>
>> Co-developed-by: Padmarao Begari <padmarao.begari@microchip.com>
>> Signed-off-by: Padmarao Begari <padmarao.begari@microchip.com>
>> Signed-off-by: Daire McNamara <daire.mcnamara@microchip.com>
>> Co-developed-by: Conor Dooley <conor.dooley@microchip.com>
>> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
>> ---
> 
> Applied to clk-next

great, thanks!
