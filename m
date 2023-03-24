Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC6366C7D38
	for <lists+devicetree@lfdr.de>; Fri, 24 Mar 2023 12:31:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231274AbjCXLbv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Mar 2023 07:31:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231329AbjCXLbu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Mar 2023 07:31:50 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D30C81ABCD
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 04:31:22 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id w9so6756009edc.3
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 04:31:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679657475;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O1rNUx5PH+PaAEWGpJPPP680k3czmX+EawiTbGX+dCs=;
        b=QXr0k0McIYg705LgB46JG1XSCYwYgoRapwcMhK3GCvT8uaBzfpR225arLZFQiYVUVe
         5pdQxyzZGdEWXOrZZheu9Mfonk/pv2L8KbO0i6ipcr5D5tWXJWiXcYmwr4iXcFGK6Afa
         +uifTx4ZySOtqYRn626zPws3+v0twytGLhbwuOt9sPIA9mA5IZfWcREx3uPeSKPm0DS0
         ogr14Wop3rCp2ZHDWkQ/LJXPcXP51ZxEkApk3+Fr7hldEKVIwFnM5uXhRDUQIUbQYYKz
         XNMZCKEtKn0Bq5Ube2LmSArCaPLXGAb8g0Xfl9J2KjA5/2fEMRI/U4lioZ9UIGzFxm8b
         ousQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679657475;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O1rNUx5PH+PaAEWGpJPPP680k3czmX+EawiTbGX+dCs=;
        b=iRCKbrucsSJXvs1bg13OoXZ6ynJkaSnN2tL0Kr7JI1eKbuNOsoO7mCqAkAb0B2OdWx
         ESiXFp9Ask5JnM0JocA0E88+bEduuKWRCIBbp4J+A5v3Dcokqyw2CJl+kFWPQp+aqSVW
         U3J5hA/3BQ4vg2Eo6gQ5zVhtyK7on+Q0YB5uPBk/RGhgG5JTXOS/dqKBi1CL3JS0JmZx
         Tgm+8HDJpMUyRcJ0IVLwx8PAqo8XYTX3CtJlNuE/K+wN9diUbjEryKzi32OXR+ySkF7h
         ceH1n38nw+vsFHRGCRiYQyWCQj5nP6UFe29FtppooFM6FJx/bVMTBgMA9FD4+MLNVopl
         ROAw==
X-Gm-Message-State: AO0yUKUmSCQGaKixg/YGd4eQxnV910jIvvJOIlhFM6LRnEwxpwbYhF24
        lgQrqfJM7GrocStrCBIsSApjew==
X-Google-Smtp-Source: AK7set+epd09sUUlXsOnISckn46QyPnpX3E7bZc6L6A8pdpiSAxNGg4Jn1Vr7jy4OrcZo6o0MB812Q==
X-Received: by 2002:a17:906:57cb:b0:929:e5a8:63f7 with SMTP id u11-20020a17090657cb00b00929e5a863f7mr8781451ejr.28.1679657475167;
        Fri, 24 Mar 2023 04:31:15 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:3027:fb0b:ae08:588? ([2a02:810d:15c0:828:3027:fb0b:ae08:588])
        by smtp.gmail.com with ESMTPSA id v15-20020a170906858f00b0093229e527cdsm9665138ejx.42.2023.03.24.04.31.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Mar 2023 04:31:14 -0700 (PDT)
Message-ID: <0fff1e01-678b-a26a-084b-9aa30a0deea5@linaro.org>
Date:   Fri, 24 Mar 2023 12:31:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v3 2/2] spi: loongson: add bus driver for the loongson spi
 controller
Content-Language: en-US
To:     Yinbo Zhu <zhuyinbo@loongson.cn>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Jianmin Lv <lvjianmin@loongson.cn>, wanghongliang@loongson.cn,
        Liu Peibao <liupeibao@loongson.cn>,
        loongson-kernel@lists.loongnix.cn
References: <20230324063317.14664-1-zhuyinbo@loongson.cn>
 <20230324063317.14664-3-zhuyinbo@loongson.cn>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230324063317.14664-3-zhuyinbo@loongson.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/03/2023 07:33, Yinbo Zhu wrote:
> This bus driver supports the Loongson spi hardware controller in the
> Loongson platforms and supports to use DTS and PCI framework to
> register spi device resources.
> 
> Signed-off-by: Yinbo Zhu <zhuyinbo@loongson.cn>
> ---
>  MAINTAINERS                     |   4 +
>  drivers/spi/Kconfig             |  31 ++++
>  drivers/spi/Makefile            |   3 +
>  drivers/spi/spi-loongson-core.c | 302 ++++++++++++++++++++++++++++++++
>  drivers/spi/spi-loongson-pci.c  |  89 ++++++++++
>  drivers/spi/spi-loongson-plat.c |  66 +++++++
>  drivers/spi/spi-loongson.h      |  41 +++++
>  7 files changed, 536 insertions(+)
>  create mode 100644 drivers/spi/spi-loongson-core.c
>  create mode 100644 drivers/spi/spi-loongson-pci.c
>  create mode 100644 drivers/spi/spi-loongson-plat.c
>  create mode 100644 drivers/spi/spi-loongson.h

Your patches still have build warnings. Are these false postives or you
forgot to build it? Anyway, please respond to the report.

Best regards,
Krzysztof

