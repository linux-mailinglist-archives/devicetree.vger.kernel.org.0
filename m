Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 75709599BD4
	for <lists+devicetree@lfdr.de>; Fri, 19 Aug 2022 14:26:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348040AbiHSMZ3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Aug 2022 08:25:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348935AbiHSMZ2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Aug 2022 08:25:28 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E683FD3EE4
        for <devicetree@vger.kernel.org>; Fri, 19 Aug 2022 05:25:26 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id x10so4385424ljq.4
        for <devicetree@vger.kernel.org>; Fri, 19 Aug 2022 05:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=sPAIr3I/RUoMi4ftqJLggh8FLJLybtqUz44u5FwZ69s=;
        b=yd09AZ1ZqE9GM+8Wq2mYXieBcanLCopJpCd+xbsD00CC8+SjmAztIoMDKvYp7W/Uu5
         oZEDYYyqDkYqF50eemul1POnlllplWv+crPmlqjP/f1+PQhTEdG3aFPpOIshBojaDhHz
         KwEmW1AroMgWJFADUS2cVge/HL77O7AV6v3Z/FjEGCGEhcIU7yQzsWueOpbAWC7onH13
         V7cUvZ60MSXOX+6TP913AVMkF2Fyvev43uJsXYhVRs4NF/JwtLnRnL/JNvKxGAfC40wQ
         EaibRxPsBaIbvKXvacOnBc5XRKbFyxTvQRh3yZK3yZNwuWxRnOqvg7pmlwxXRn0j16P4
         VGbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=sPAIr3I/RUoMi4ftqJLggh8FLJLybtqUz44u5FwZ69s=;
        b=PWvRRRufK506D53JhIjoUE4IN+XsYR/Ohtqp6pI4CFCHmpkv+wOvKEZ4gORAvbJOpG
         EEWMTEVr5T1fjluuigZqYK+IGBDJYdLjzNmBFQa2U/oeqsOvXBhW3TpiKfGP6OvRSDmB
         MuR0rTUha03rN1gFGv9iwjso7VGX4MA4zzoDVYYytAxcl5aMVJg8oT4HM6rEEeAUOt6f
         Bur78OMw/cvIbBGmm0RIAkarlt1kedwkQ8CugewqQF1mS3cgSPVCjBVhzPCghhqUqZt4
         gaLswVB8oIB9ac8MpekEjEJK5SGLh34vE6y6F2QqJDR+9MrIJHnutJHMGFYY/amMyQn4
         Dcgg==
X-Gm-Message-State: ACgBeo1ITmTmTPv+1kVusEHkzp8pIARRJ/e2RgM/irHv+lJdzCRCfXP4
        VL/u7ktesgNXUuaR0CUhJYLCCA==
X-Google-Smtp-Source: AA6agR4gxzCBBXAz+vcZXb3CDnD15SI7T2zVGQ3EPHvcI5fvFTOuNQ49cbkJwBjEPuJxNyPDhbk95Q==
X-Received: by 2002:a2e:9283:0:b0:253:e175:dd84 with SMTP id d3-20020a2e9283000000b00253e175dd84mr2002587ljh.221.1660911925350;
        Fri, 19 Aug 2022 05:25:25 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ac:e5a8:ef73:73ed:75b3:8ed5? (d1xw6v77xrs23np8r6z-4.rev.dnainternet.fi. [2001:14bb:ac:e5a8:ef73:73ed:75b3:8ed5])
        by smtp.gmail.com with ESMTPSA id r5-20020a2ea385000000b0025a65b784b6sm599084lje.33.2022.08.19.05.25.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Aug 2022 05:25:24 -0700 (PDT)
Message-ID: <29c8ef7a-4249-afd6-8368-d248940cd205@linaro.org>
Date:   Fri, 19 Aug 2022 15:25:23 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v3 01/19] dt-bindings: power: Add power-domain header for
 RV1126
Content-Language: en-US
To:     Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Elaine Zhang <zhangqing@rock-chips.com>
References: <20220818124132.125304-1-jagan@edgeble.ai>
 <20220818124132.125304-2-jagan@edgeble.ai>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220818124132.125304-2-jagan@edgeble.ai>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/08/2022 15:41, Jagan Teki wrote:
> Add power-domain header for RV1126 SoC from description in TRM.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
