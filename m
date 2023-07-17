Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 330B6755B4D
	for <lists+devicetree@lfdr.de>; Mon, 17 Jul 2023 08:14:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231355AbjGQGOW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jul 2023 02:14:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231350AbjGQGOU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jul 2023 02:14:20 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 682DC1B3
        for <devicetree@vger.kernel.org>; Sun, 16 Jul 2023 23:14:19 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-51e590a8ab5so5418610a12.2
        for <devicetree@vger.kernel.org>; Sun, 16 Jul 2023 23:14:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689574458; x=1692166458;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pOzQEdnlypAdJVjzld9kl7sk9oTKJqy9tm/n7ir3cp0=;
        b=PkFsZSgXZmAkYzFJ7aSnST5c4GM8vmJhl3RwCmKjZ0oB611840sNOpa2xjQYM+LlIG
         XSPFKhs1O0kXTgMIGKsSo06mmF4p1KpXIbsS8Yh7gRglytMRnf+a3/IPhMXPKEoEBJum
         5hXJ64NR/3x1/NaXUNjTIWym2NMK9gCZdAYYfNRDhbALwh/Nq2w+UVf/HnibwVQZDcio
         g7L/WsfAmGk0+CK+U+GSGFrM3QmI8OtHxGdv9+7hY8SUnI+K4nBhbx+JTGnkXpgh8J+Z
         DhwPvVDeBx3VlSRCS8lGUHO+dizV/WGQoD+AeY67xqVbnHcKvgoj55pi98HbMZngOpaj
         qtDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689574458; x=1692166458;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pOzQEdnlypAdJVjzld9kl7sk9oTKJqy9tm/n7ir3cp0=;
        b=Bb338UWNL2jJ07mWp9AGwvfjy0sM82H18uFu3z3KhQ5lCH4g+Zo3/ak2mbjYEj+CkP
         wCCXnQ156FP4xdTMnai0EFfQYHPUDCgrHVTPW0y0HORqObUOUjeGozm2bPati3/XBYqf
         qSLqbnpz7TEnvdGaiBsyLu/mR+wAg49qRlhSVOKPNT1xI54bQOsoBG07p7nmsGsRoUp8
         NfkzG9u9t9M7RmTAgbEpZwPG8Lmfyr7G/g8RSN98ULWzODUuJ+htDXUl01X21FYLgaX/
         px1kM5mz+ELGChJtEYLp5TTIon1/kIAQinnlqiXzH4Gznlklkpo4ADa0PmIK4ufYcICl
         6+mQ==
X-Gm-Message-State: ABy/qLYYsY7mc+BEJyJzXhuPnppTJZ1OhdD50fAzpMLwqP9nXRHSlwu8
        MIRq1RmOZMsT1JpabSvM4KMXrQ==
X-Google-Smtp-Source: APBJJlGDsb2lO/LZw3Wu3hJbKoCU558MVOm4n9bYISHYMwDDhz2y2ngehFtJIrO7t4OfBYqdS5Y0Ag==
X-Received: by 2002:a17:906:5c:b0:989:34a0:45b0 with SMTP id 28-20020a170906005c00b0098934a045b0mr12686181ejg.49.1689574457861;
        Sun, 16 Jul 2023 23:14:17 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id gx17-20020a170906f1d100b00992aea2c55dsm8750684ejb.153.2023.07.16.23.14.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Jul 2023 23:14:17 -0700 (PDT)
Message-ID: <12aeacfe-82c6-9483-e3a3-07ce98c1d6f6@linaro.org>
Date:   Mon, 17 Jul 2023 08:14:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v4 3/3] watchdog:rit_wdt: Add support for WDIOF_CARDRESET
Content-Language: en-US
To:     huaqian.li@siemens.com, wim@linux-watchdog.org, linux@roeck-us.net,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org
Cc:     huaqianlee@gmail.com, nm@ti.com, vigneshr@ti.com,
        kristo@kernel.org, linux-watchdog@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, jan.kiszka@siemens.com,
        baocheng.su@siemens.com
References: <20230717040723.1306374-1-huaqian.li@siemens.com>
 <20230717040723.1306374-4-huaqian.li@siemens.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230717040723.1306374-4-huaqian.li@siemens.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/07/2023 06:07, huaqian.li@siemens.com wrote:
> From: Li Hua Qian <huaqian.li@siemens.com>
> 
> This patch adds the WDIOF_CARDRESET support for the platform watchdog
> whose hardware does not support this feature, to know if the board
> reboot is due to a watchdog reset.
> 
> This is done via reserved memory(RAM), which indicates if specific
> info saved, triggering the watchdog reset in last boot.
> 
> Reviewed-by: Guenter Roeck <linux@roeck-us.net>

Really? Where?

Best regards,
Krzysztof

