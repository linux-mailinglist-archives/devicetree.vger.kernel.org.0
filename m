Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F60C6891C2
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 09:14:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231864AbjBCINg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 03:13:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232530AbjBCINM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 03:13:12 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 267BC953F5
        for <devicetree@vger.kernel.org>; Fri,  3 Feb 2023 00:12:22 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id bg13-20020a05600c3c8d00b003d9712b29d2so5436808wmb.2
        for <devicetree@vger.kernel.org>; Fri, 03 Feb 2023 00:12:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IC0G1L6NjMoqGQD1cOuly4Kpy7+rsQRjwMtomVmlm3o=;
        b=xD72h3qJGE8pRy1Boa9QLWM3iuOgPxAFkfdvyEux2CoizMWlA590ACWFNz/K80PAZZ
         Sw9YIc8ZAA1bUthZam/m+Eeba5+E4myAXIVrE36mqP39bF1Jtw29mQ66qEQcqv2bp4p1
         6cKoRzu44Alj6AZi966ZhxHIRuzmQr6hAewC1bIN7jeDZt8wONW5oMbHQOv7kLq7Wu3C
         vKcF47She/EjkhgaNzgvU1femR9xaJmeLCSiYnyS9GUb1AJZeNYGNwbtReeChHHP+li1
         MoZjkm10tpOCl2Ou35pP15Vg/cufTOjE9R35Zt9fxU2S0cN4KfeNZivCAHPUfpfCZNOh
         uN0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IC0G1L6NjMoqGQD1cOuly4Kpy7+rsQRjwMtomVmlm3o=;
        b=CuY5sZjend/HF0NXoCEBWyJJWZ5riT+WBAO3B/LcwQQhrtdxYj8b3CHHk4LMYE/kvG
         oH1IPlxeKonPstmQEvKC1kAI64ohreFzpgoJXX73ThVb5ccmIjt7inXLVNIKPt4AB4Qs
         EaNNgGhJTV81fwHlWZgY8VrIR1sS4BowctymxdL7MaNxsqFOVzOZD4o9TB6XFkGjmcrE
         XyfwTJ1QNPLy+l7+A6SYqxtX8ac6XIvXItTt2cplId5y8nJxDuU9FYtIgNgDSHKc6c2m
         E0O9b8sfsm6qsKizJKYESzinrucouppnvTWL4v+Vj6k+Q/YJ7xDw4qUixYhkEoY4k6ce
         AVQg==
X-Gm-Message-State: AO0yUKWCHVvfen09qWa448pb0zlC9vd3/9TQNYTQAas89TV+nnHqsZPH
        FY4+gCp9Ka5msoBhX554LN+Lh3oLebRQnhWp
X-Google-Smtp-Source: AK7set+phGji+2ms+lZQhTPHJqeuo6ybtY3qprxpSEW2BSt4H6ct/ep5PFnZxnSNGDJ5ocOKtPFVtA==
X-Received: by 2002:a05:600c:1e13:b0:3d9:f836:3728 with SMTP id ay19-20020a05600c1e1300b003d9f8363728mr9020715wmb.11.1675411940532;
        Fri, 03 Feb 2023 00:12:20 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id x14-20020a1c7c0e000000b003daffc2ecdesm6983987wmc.13.2023.02.03.00.12.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Feb 2023 00:12:19 -0800 (PST)
Message-ID: <70f6e477-86e2-5d71-49be-3c96265c82be@linaro.org>
Date:   Fri, 3 Feb 2023 09:12:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v5 7/8] dt-bindings: arm: at91: Add info on sam9x60
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
References: <20230203034833.451461-1-durai.manickamkr@microchip.com>
 <20230203034833.451461-8-durai.manickamkr@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230203034833.451461-8-durai.manickamkr@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/02/2023 04:48, Durai Manickam KR wrote:
> Adding the sam9x60 curiosity board from Microchip into the atmel AT91 board
> description yaml file.
> 
> Signed-off-by: Durai Manickam KR <durai.manickamkr@microchip.com>

This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions. However, there's no need to repost patches *only* to add the
tags. The upstream maintainer will do that for acks received on the
version they apply.

https://elixir.bootlin.com/linux/v5.17/source/Documentation/process/submitting-patches.rst#L540

If a tag was not added on purpose, please state why and what changed.


Best regards,
Krzysztof

