Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E2EE51634D
	for <lists+devicetree@lfdr.de>; Sun,  1 May 2022 11:00:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234934AbiEAJEK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 May 2022 05:04:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344408AbiEAJDz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 May 2022 05:03:55 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C994BFD0B
        for <devicetree@vger.kernel.org>; Sun,  1 May 2022 02:00:29 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id z99so13568093ede.5
        for <devicetree@vger.kernel.org>; Sun, 01 May 2022 02:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=6PJYh3sqWCa2tY+xYmHfq4tYwHtME+g6YPSvwa+jv18=;
        b=iYnEeSkcA8rwx9awPjZp4TwwrB9ShZpaik4sjxmebuZm3eYl9jJwYfh/oU+Olt3R5v
         ZWRtvxXkKsgDPNb+tl1CohYbxWwxADiSrsbTr8Y3yGBb1rU7Hyy6y/9zf2H5iyeKHa3E
         Y4glAe6N96lOOxJg49nS/hxtAKHv6kwsdsHc24VLud5RSLhOmH2c4e2mAliIuBqHC+7q
         8p5NSHOPetKtEmG0eMJV0+ZtJ1oXhiNSwEilHZTsUxN+xokeZF4yZ2wvPfSL3Ai4HoO+
         pUCz9zgAy+6YgpUrFNY4e6NMIrts98JwLfdcTZ9mXvxYZaY5/2EHoeVDrksoEqxdVJyH
         aKiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=6PJYh3sqWCa2tY+xYmHfq4tYwHtME+g6YPSvwa+jv18=;
        b=KxqUpDjMJ13Uxi8L2beBHgMWYjk2kqTvyX92UTkuKfARDfHKzfoxrFN27ui1WDcYgX
         GBkNIp7HItEyz3/ar3BcH3pmFVJwZhPgywoJZrAfll3G5K5tNkWIFelhfpLF377OD+Vp
         r64YL03lf6QiSQTvtmQmxVNvxTreEMdIfdOOj//uEvRTlRsLShM4EQT1w6fPxIYYI+lo
         2h81HkHy0xa2jthsjQeJw536Vflt32Q/h2fUTeA83EpfMfHCw8i8c0qxaEd9N9nbQoE5
         lMkH1l0HWMs7qWFpJxGa+AU5fRai0MJZ6UzH3DOL8ywXZN3HW4CVVHGfIQ3LdwCyvotH
         45jQ==
X-Gm-Message-State: AOAM5325vlvcVUSBMuXi2ZQbPCoQ584Hgvk6inVPWWMgA/WjSa46yO6q
        UbV68JQL9A5Qy/b9nKSHSTzeYw==
X-Google-Smtp-Source: ABdhPJxYiFTtEL0B6CFg5y01ly+P2Zt5fKvhJ4uNpRacgPB2/Ls81VKRj5S1Po2G/xoB8RyNM+DVNA==
X-Received: by 2002:aa7:d549:0:b0:425:fc06:60d4 with SMTP id u9-20020aa7d549000000b00425fc0660d4mr8058735edr.300.1651395621804;
        Sun, 01 May 2022 02:00:21 -0700 (PDT)
Received: from [192.168.0.182] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id ig11-20020a1709072e0b00b006f3ef214e2csm2504094ejc.146.2022.05.01.02.00.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 May 2022 02:00:21 -0700 (PDT)
Message-ID: <884d9546-4e5a-df04-bf03-eba2fe0188ba@linaro.org>
Date:   Sun, 1 May 2022 11:00:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 7/8] dt-bindings: riscv: microchip: add polarberry
 compatible string
Content-Language: en-US
To:     Conor Dooley <mail@conchuod.ie>, krzk+dt@kernel.org,
        palmer@dabbelt.com, robh+dt@kernel.org
Cc:     conor.dooley@microchip.com, Cyril.Jean@microchip.com,
        daire.mcnamara@microchip.com, paul.walmsley@sifive.com,
        aou@eecs.berkeley.edu, palmer@rivosinc.com, arnd@arndb.de,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org
References: <20220430130922.3504268-1-mail@conchuod.ie>
 <20220430130922.3504268-8-mail@conchuod.ie>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220430130922.3504268-8-mail@conchuod.ie>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/04/2022 15:09, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Add a binding for the Sundance Polarberry board.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Conor Dooley <mail@conchuod.ie>

With stripped SoB:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
