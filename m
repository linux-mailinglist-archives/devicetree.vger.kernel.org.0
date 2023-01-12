Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13849667136
	for <lists+devicetree@lfdr.de>; Thu, 12 Jan 2023 12:49:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229721AbjALLtD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Jan 2023 06:49:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230361AbjALLr4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Jan 2023 06:47:56 -0500
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7790C5D882
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 03:37:58 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id c17so26394530edj.13
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 03:37:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9Xqk0NOcl6A/RFI3G2LXyDXcDGXrHqiE2kwfvu0U/9o=;
        b=L9vRIjxKsMIL8c5d5j7/HZQ5mLZTx5Sv/m3XuLHluS6N+cxAtYM3RlNkxj7F0wBQBQ
         BRReM0R8f8NHB1oWZT7FK96Yybp9nNjsAAHOkLm+avzAK5bosTh6/yZ1qE2+Xt3aiK1T
         gsk3oCrBuOBNECOAYoE778prd4qN3xnnoknxAdO0pUG5mhZuN9OsMlQ2QBO1dzjzv8+c
         rro3VK2Iq3LuBjmM6wUP0Gsft6lRWTGUG2NukuIzQCB1iyI4knDgy+ydYMYbRwdiJIdD
         jIwZfhnO8t2laeQrVT/qsXuG6UenU0LIQ29T64FrXClJQ0InoZxAxX3GeTsJw8qMq5he
         +GSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9Xqk0NOcl6A/RFI3G2LXyDXcDGXrHqiE2kwfvu0U/9o=;
        b=6QxHcMbygE46cmKqc8wHZMQ51YMB7R3pvBY2IMthPVKVCxde2JCbmJ+XY3NWytcJL4
         dM4JFAHji+sgYddyvhp9cDlVMtcY3F1ceykzMgefBPDXPRqdbrcgiVqj8sLDJFIkHNzO
         M6YhyfO6dR9KFX9fZkRBeYDF2iAAmBLUF8IYkQhioKf0vGLxUOD47zhJXAiG/b5J1+A1
         AFFrluwxJvh27FWIvjIwQt7x+ZXHt4xTHUwO5TkJMaPrhyknTTXVIx9xp1KsA9Aib+7H
         mIaHk/ymUdchZ6gry6Nu7ZyA+mktCQFHBVE9DdRX6EoJyZ5tKELXWreIdl8x/4EdcCYy
         8erQ==
X-Gm-Message-State: AFqh2koaZMPgsgCBW7l63i9eg7Ps71wi6eYSS33jBZgDDUf0rPBA2rAw
        u/7Pfs9WPTpv5n28PLmBVw7R6Q==
X-Google-Smtp-Source: AMrXdXtpjxltPF3O6b7QAIWvQ/ZxXjJG1nEsdgMLikuJQbu2xmqFxn6kt2Mpl/nH48pSzy8mU3k02w==
X-Received: by 2002:aa7:c046:0:b0:499:c343:30e5 with SMTP id k6-20020aa7c046000000b00499c34330e5mr8731515edo.3.1673523477033;
        Thu, 12 Jan 2023 03:37:57 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id g19-20020a50ee13000000b0049b4711f4bdsm1146518eds.41.2023.01.12.03.37.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Jan 2023 03:37:56 -0800 (PST)
Message-ID: <870d5fc7-0533-7da2-ac31-4db02ffcc0ae@linaro.org>
Date:   Thu, 12 Jan 2023 12:37:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v4 7/8] dt-bindings: arm: at91: Add info on sam9x60
 curiosity
Content-Language: en-US
To:     Durai Manickam KR <durai.manickamkr@microchip.com>,
        Hari.PrasathGE@microchip.com,
        balamanikandan.gunasundar@microchip.com,
        manikandan.m@microchip.com, varshini.rajendran@microchip.com,
        dharma.b@microchip.com, nayabbasha.sayed@microchip.com,
        balakrishnan.s@microchip.com, claudiu.beznea@microchip.com,
        cristian.birsan@microchip.com, nicolas.ferre@microchip.com,
        alexandre.belloni@bootlin.com, davem@davemloft.net, arnd@arndb.de,
        olof@lixom.net, soc@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Kavyasree.Kotagiri@microchip.com, Horatiu.Vultur@microchip.com,
        robh+dt@kernel.org, andrew@lunn.ch, michael@walle.cc,
        jerry.ray@microchip.com
References: <20230112110208.97946-1-durai.manickamkr@microchip.com>
 <20230112110208.97946-8-durai.manickamkr@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230112110208.97946-8-durai.manickamkr@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/01/2023 12:02, Durai Manickam KR wrote:
> Adding the sam9x60 curiosity board from Microchip into the atmel AT91 board
> description yaml file.
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

