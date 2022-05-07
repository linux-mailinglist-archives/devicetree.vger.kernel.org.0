Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B87E451E88C
	for <lists+devicetree@lfdr.de>; Sat,  7 May 2022 18:39:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242067AbiEGQmw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 7 May 2022 12:42:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241566AbiEGQmw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 7 May 2022 12:42:52 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2605DBF54
        for <devicetree@vger.kernel.org>; Sat,  7 May 2022 09:39:05 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id t5so11800883edw.11
        for <devicetree@vger.kernel.org>; Sat, 07 May 2022 09:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=MUWdhhXM9cF5tqSv9g6Tjkh3bwFOJNjaYs7CpZ5JiC0=;
        b=szW7wTOACHqMyEZVa0UD+QUNU6fRvz2Vx7SW5rVfp7Akz40n3OLQEAilWwLdWTHncz
         21SZGGAbVtHIduj+BC3ppCJ/N+isopzTQaMkFhj/sQNTfN2/Ykk9G2r1hFYe4bU2B9Uw
         YczCgmnyV+F/0ebaGENaAcgA1T0hsjshQ2Ua993f++uciV6Jlu/iQqoPCWRDDVEnKXkf
         mqKjIc3BksymiZoRoLpQJgLrnA6zhLvgyyxjrqqIbQulWq/JethUpXvMYnqHyp1ffLgn
         gAyXGlA5SFFo4P6SX/HXtNupxkDmyhSpEz+2+9Qhe/HePqd0cjQix4hQpB+/uGK0bNKC
         5GKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=MUWdhhXM9cF5tqSv9g6Tjkh3bwFOJNjaYs7CpZ5JiC0=;
        b=GBgseJTK/fCGf/dY4npxFtDvsq5uYJ0+I/OMnxnkM2kvCkahVvv6bufHpt6b2HcFRT
         3kMVewl+26gISjl+0+4zhVCR7VSXUFkGZg/X2/VgZer/L9dIa0C3ZN4Bxcxl6fa7tMIv
         9//2i4p4s67oNcZCPJp55xcSqUSrLP6sEnAZYSOBWNsO2I/R/AyQACA6W5I657Db5Kk/
         LerNIs0UzZ6H4+0k0ucRWBgyPtcUbiF+dIUdMOKjyPXsEL/7Tf0LhenqFGu4XFSpcu2u
         l55ubSw12lM9mNs75WvCnbrXCphZVQiP5fAW2a/DZWuvOD+5w6HDtLaN6MM2j5cW4uAu
         vFYQ==
X-Gm-Message-State: AOAM531VfeqrI1neWRZ3Gel0SKaRdIUBZFppu2hMpyczzfHW/xFFqOZh
        H6xBMir0ZL+tGRsjKd37fVOta5ikjWw7RJYL
X-Google-Smtp-Source: ABdhPJxKl4KI11jwR3p5LpJZnjV1PqYl9/BQyRxREpjSdiGBsWqh6gfQenw5kku6zDEjc5WWaEqw/w==
X-Received: by 2002:aa7:ce84:0:b0:425:d2e0:a75f with SMTP id y4-20020aa7ce84000000b00425d2e0a75fmr9088220edv.263.1651941543698;
        Sat, 07 May 2022 09:39:03 -0700 (PDT)
Received: from [192.168.0.233] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id og47-20020a1709071def00b006f3ef214e61sm3144018ejc.199.2022.05.07.09.39.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 May 2022 09:39:03 -0700 (PDT)
Message-ID: <fd85feb8-5c2d-2cd2-6376-b02ceb45d2aa@linaro.org>
Date:   Sat, 7 May 2022 18:39:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2 03/11] dt-bindings: arm: sp810: convert to DT schema
Content-Language: en-US
To:     Andre Przywara <andre.przywara@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Liviu Dudau <liviu.dudau@arm.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, Will Deacon <will@kernel.org>,
        linux-arm-kernel@lists.infradead.org
References: <20220506140533.3566431-1-andre.przywara@arm.com>
 <20220506140533.3566431-4-andre.przywara@arm.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220506140533.3566431-4-andre.przywara@arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/05/2022 16:05, Andre Przywara wrote:
> The Arm SP810 IP is a "system controller", providing clocks, timer and a
> watchdog.
> 
> Convert the DT binding to DT schema, to allow automatic validation.
> 
> The existing .txt binding described all properties as required, but the
> assigned-clock* and clock-output-names are actually not (from a hardware
> perspective). The only existing driver I could find (in Linux) doesn't
> require them either, so drop those properties from the "required" list.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
