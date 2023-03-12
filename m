Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC4846B6A10
	for <lists+devicetree@lfdr.de>; Sun, 12 Mar 2023 19:26:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231989AbjCLS04 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Mar 2023 14:26:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232013AbjCLS0h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Mar 2023 14:26:37 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81E4B1F916
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 11:20:53 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id r18so9359196wrx.1
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 11:20:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678645173;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qJbzQk4TLzSKDEe2jC8259R3RwrclYP4GOKv7WeR0Ww=;
        b=MVf8otjdmIt3IL0ukkbL/SUQR7LKUDMU2MAlGTbY9fkw8VlCHIt/doaGfBo13bimnB
         5pEG1eDucVR38G++K5vDk8IPygNT1HxwmbhlDt3ezybFZqjjbJKzeMKqBg4to0HsiYCY
         afDDy2TcK6eWGBWd3af0CRvtuVeLWITAJbB3nw4GgSmyyo3Ozjl9GAHqfIJTLo74U9PA
         DasCb5W+2vyFcxK42Y7D+cTwxZJWxVzAloIk6tJ4cvyg9H7A1CjM7WExaA+qiKHCz2hx
         GL3H+EWoXJR3HMEvRRKN7yv/XNAHfn6yaHx9ODNI07vPyrF5yc9FwTThP066hzkmYEqN
         OELQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678645173;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qJbzQk4TLzSKDEe2jC8259R3RwrclYP4GOKv7WeR0Ww=;
        b=6X5mH4tvrQk7QHF9Q0O485f2CEQ+tx0YWD5CbbGeRCDP83TOGHSyoRKmbcb3SmMc/+
         Zv8cZzOxdUMhPG+Pbk1V1IZO2lZPwboWZd5xUI+n908VclH4oP/ut3i/aVXTNZceq24q
         rhi87RPMlFvmlpRE1fHTmd2cSLxirr2Mh44SLMw7C5Nm6LPMAkE8pDM6PijJpuvUBnZw
         NWe+EFhkH3McEvnEsA9q3nktdmRTmOTnXs0sUofzvuErQkN4SeDARuahDvtCiwxa8wGT
         MVDKReUArvkEQqo+RaMKp+uZfCOV0vtwfWq54TvFTDzwSDT4FYIx4f1JMxnvhXMEzfFQ
         2M6g==
X-Gm-Message-State: AO0yUKVh/T90q51U9VFqap9sTMutDmxzI8ADBwQWImIrI4FNiylpZIKD
        TH1/p+6zNnfs/jzp5X11wRkWPHl9sCg/S71BqFc=
X-Google-Smtp-Source: AK7set9brgC1i/ieyhjxBiLx9HBWqe3Fd1FsMtrCMQZRRFIISTpQPpLIbjDXETPymdO1F2gGMPajNg==
X-Received: by 2002:a17:907:6d1a:b0:8b1:238b:80ac with SMTP id sa26-20020a1709076d1a00b008b1238b80acmr41929936ejc.67.1678644647299;
        Sun, 12 Mar 2023 11:10:47 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d9f6:3e61:beeb:295a? ([2a02:810d:15c0:828:d9f6:3e61:beeb:295a])
        by smtp.gmail.com with ESMTPSA id oq12-20020a170906cc8c00b008d68d018153sm2465874ejb.23.2023.03.12.11.10.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Mar 2023 11:10:46 -0700 (PDT)
Message-ID: <dd6aa950-b006-9cb6-a03d-a5e54c98ab9b@linaro.org>
Date:   Sun, 12 Mar 2023 19:10:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v5 0/3] mmc: dw_mmc: fix DW MMC cores with 32-bit bus on
 64-bit Linux systems
Content-Language: en-US
To:     Sergey Lisov <sleirsgoevy@gmail.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Jaehoon Chung <jh80.chung@samsung.com>
Cc:     linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
References: <640e1428.c20a0220.f761b.1a1b@mx.google.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <640e1428.c20a0220.f761b.1a1b@mx.google.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/03/2023 18:58, Sergey Lisov wrote:
> DesignWare MMC cores have a configurable data bus width of either 16, 32, or 64
> bytes. It is possible, and some vendors actually do it, to ship a DW MMC core
> configured for 32-bit data bus within a 64-bit SoC. In this case the kernel
> will attempt 64-bit (readq) accesses to certain 64-bit MMIO registers, while
> the core will expect pairs of 32-bit accesses.
> 
> It seems that currently the only register for which the kernel performs 64-bit
> accesses is the FIFO. The symptom is that the DW MMC core never receives a read
> on the second half of the register, does not register the datum as being read,
> and thus not advancing its internal FIFO pointer, breaking further reads. It
> also seems that this FIFO is only used for small (less than 16 bytes)
> transfers, which probably means that only some SDIO cards are affected.
> 
> Changelog:
> 
> v5:
> - rename "samsung,exynos78xx-dw-mshc" to "samsung,exynos7885-dw-mshc"
> - rename "samsung,exynos78xx-dw-mshc" to "samsung,exynos7885-dw-mshc"

So this is fifth version today? You need to wait before resending, to
gather other comments.

Also, something is wrong with your mailing. Threading is gone and all
patches arrive twice with different Message IDs.

Best regards,
Krzysztof

