Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B1A84DB62E
	for <lists+devicetree@lfdr.de>; Wed, 16 Mar 2022 17:30:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240198AbiCPQbq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Mar 2022 12:31:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230383AbiCPQbp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Mar 2022 12:31:45 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB94E6C1F0
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 09:30:30 -0700 (PDT)
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com [209.85.128.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 91A1E3F5F3
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 16:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647448229;
        bh=x3cueeMXvXK+X1TZQd5gJyCfuHoNPJLUSHzCihz2Bfc=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=scB6idR8k257z9c54W/4rc9oyFX90lSdSuqWN0E+JE1eWY6E4ncExJGFXECmlfow4
         L/PZ4bnhnyWlRYXu4jJxVgl4y59Mj9O2ygyp247/Qnf2cmxc9SGgKLhECWKVV5R6HR
         iKdwIIeT8GSJ3sRFihF5cZbZ30d+9mL5kh/fU/TyDWVChBVT+6gb51IkB4HhX6JKIt
         zihBHpTM/B1qVaGtJtmHlBLh3qO0rUNTY3eepA0Unf7ch6IUxTg6ekDxyoC8rDRe28
         pVQORRX8CppGSwENo8gaDKUpuQCOOITWvmxQ9xwzzyah9EkZjVmoaKtUvaqlY07nXu
         oJgA+al83jkRw==
Received: by mail-wm1-f69.google.com with SMTP id c19-20020a05600c0ad300b00385bb3db625so2991874wmr.4
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 09:30:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=x3cueeMXvXK+X1TZQd5gJyCfuHoNPJLUSHzCihz2Bfc=;
        b=xlvN+cLve1ktgS+jDYbqsR0sd2IGpoC0zjQ8tyopYp0QrCvtwG5bxCAdugVXYbE/by
         CJWSknw9iLXZOLiQydBbjr50tF3cQGyG4xt5hbd3mdqQMfPZBhtIKSDV4Ze8AA0yLGWo
         U7YGNu9XmUje+hxDPXlyExoJV8QmPbWNI/aYqprVkaWteivzOpXlcx5JVMIxkHnfk34G
         XvPm8V0OBr25IDElTw8ES4uBFfW/TRyU3W77iwd6iToL7cotsY5SCQ0Goui6RHRUxzwL
         s/zDTzy8VbvQNCCBC4tEXSwGzDct5CRP2T7NaSW/o7L/5PDMq3dvkTUWcFk7wg4WJ4Zw
         x+ew==
X-Gm-Message-State: AOAM533OxWV9iRJ7YOAVywChi5NyKru+nyyTxQoIWMk17Q0XPuuTSOeJ
        PZJLH/ZbfNBsKyKkhMw/wO/RxS9kuqdZwHlUIJN1Dxc01brrlZ33jJw0kikEENNj2gBnC9/FRD7
        aYTXfVsK7YnPsPLUfs4/1lxu6mwva/9U0xQfiMHo=
X-Received: by 2002:a05:6000:1ac7:b0:1f1:f9ee:7c57 with SMTP id i7-20020a0560001ac700b001f1f9ee7c57mr609214wry.52.1647448229128;
        Wed, 16 Mar 2022 09:30:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy05jy/Ex/bhrsQefj8mEouXNE6G1mYHwA8mh3BL4NRW8w8I5ZGM2wc5wk/GkP0oJTD53g8mQ==
X-Received: by 2002:a05:6000:1ac7:b0:1f1:f9ee:7c57 with SMTP id i7-20020a0560001ac700b001f1f9ee7c57mr609199wry.52.1647448228922;
        Wed, 16 Mar 2022 09:30:28 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.googlemail.com with ESMTPSA id r65-20020a1c4444000000b0038c48dd23b9sm3169577wma.5.2022.03.16.09.30.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Mar 2022 09:30:27 -0700 (PDT)
Message-ID: <f54b0647-12ad-5861-8b8b-5d4233bb9bd2@canonical.com>
Date:   Wed, 16 Mar 2022 17:30:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 3/3] clocksource: arch_timer: Add arm,cortex-a7/15-timer
 in of_match list
Content-Language: en-US
To:     Kuldeep Singh <singh.kuldeep87k@gmail.com>,
        Marc Zyngier <marc.zyngier@arm.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Marc Zyngier <maz@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>
Cc:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org
References: <20220316095433.20225-1-singh.kuldeep87k@gmail.com>
 <20220316095433.20225-4-singh.kuldeep87k@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220316095433.20225-4-singh.kuldeep87k@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/03/2022 10:54, Kuldeep Singh wrote:
> Few platforms such as Renesas RZ/N1D, Calxeda, Alpine etc. are using
> arm,cortex-a15-timer and arm,cortex-a7-timer entries in conjugation with
> arm,armv7-timer which are not currently defined in driver file. Add
> these entries in arch_timer_of_match list to bring them in use.
> 

This looks wrong (also Marc pointed this out) and rationale is not
sufficient. Why do you need these compatibles in the driver?

Best regards,
Krzysztof
