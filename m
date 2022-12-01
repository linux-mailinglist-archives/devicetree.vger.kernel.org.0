Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CFAF63EDB0
	for <lists+devicetree@lfdr.de>; Thu,  1 Dec 2022 11:27:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230044AbiLAK1D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 05:27:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229950AbiLAK0a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 05:26:30 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA1FF9B7BF
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 02:26:28 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id p8so1754867lfu.11
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 02:26:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fNNXd8RhvGAVfJwcSOjgVLTgCJ6FFMxxxXCnulCllW8=;
        b=yCl85oAUo62EuenpGLijwM8k3SFHmatquoQ6zoy0tu0RYxpf6cGw/QNHny+IZwlN4Z
         LoNiU0dFpnd74XPVPdVsnh0a9T6BZDFf7uxG5J9UP7umoJQDgLgo+qIuZv6vevGl1PuF
         O4HUVvw6JaDxxDIRRmoifcAlCkmfiVkbnuVFV9imcr5TW6a/hLl40YleC634Qyuj8cTX
         U/zebsmnUem4BJcBtqkcwhIT1K8tc9G62fD6rmjXyRTSrQo8NqaQOaca+BwUU8gBXMjb
         Hcw+FCluix/T45thvsjqhC2gIIk5FmGmud+bRq9xgtogUAhgbraK+mgXS9wvdP1OQjWq
         qh4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fNNXd8RhvGAVfJwcSOjgVLTgCJ6FFMxxxXCnulCllW8=;
        b=lpvuQ9/3+1QjkL5pd78hl287urao1h00mTpuRhq4se9tbP9vAr76qHwU2IoEXndVdO
         YwwuHjwlkkwZJ9lqkypRf68AEEp3I25V2wnZvP6AUg2YL8TtR3Tj7ZJLK+URX2OwVwmj
         Fd02foRwDotiqOIgLw+rQW+94smXiH+pySRladWWYiTx/HhI6EJxgOA8lchpCJ4bbVfh
         ykm3AKzX1Bik9aUm6WYjpVG7MpZrEArlnSQreBnVOi0E6hAjPWfLC99pKW87+YUg6nA8
         /bI8r9j6XUsgC6ofpo0AekKEHisLxrJB7hmnjHz5G3ON/gPFfjcpQGuwOcmjadTnm2K3
         xW1w==
X-Gm-Message-State: ANoB5pnDjP0JU0tNuFxCDRVLHBaKlUTJnhuU1ne13EjE62WzdrKmTGeP
        I0bvbbk29p51NDxH4HW+8OLz5EbckcRGhSLQ
X-Google-Smtp-Source: AA0mqf4CJCIyV+cfwj/kAMm4a4SMm4rBn3dM19tFz8JfQ4X5Zmfof8gfIrFYzOO5zMCFWnX0wnw9wA==
X-Received: by 2002:a05:6512:e9d:b0:4b1:8698:9f3e with SMTP id bi29-20020a0565120e9d00b004b186989f3emr20903264lfb.421.1669890387041;
        Thu, 01 Dec 2022 02:26:27 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id br33-20020a056512402100b004b1756a0ae9sm603072lfb.55.2022.12.01.02.26.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Dec 2022 02:26:25 -0800 (PST)
Message-ID: <f28da7ab-920d-a534-9f5d-e8407d0487a9@linaro.org>
Date:   Thu, 1 Dec 2022 11:26:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v2 3/4] hwmon: (pmbus/mpq7932) Add a support for mpq7932
 Power Management IC
Content-Language: en-US
To:     Saravanan Sekar <saravanan@linumiz.com>, jdelvare@suse.com,
        linux@roeck-us.net, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, marten.lindahl@axis.com
Cc:     linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221201044643.1150870-1-saravanan@linumiz.com>
 <20221201044643.1150870-4-saravanan@linumiz.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221201044643.1150870-4-saravanan@linumiz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/12/2022 05:46, Saravanan Sekar wrote:
> The MPQ7932 is a power management IC designed to operate from 5V buses to
> power a variety of Advanced driver-assistance system SOCs. Six integrated
> buck converters with hardware monitoring capability powers a variety of
> target rails configurable over PMBus interface.
> 
> Signed-off-by: Saravanan Sekar <saravanan@linumiz.com>
> ---
>  drivers/hwmon/pmbus/Kconfig   |  10 +++
>  drivers/hwmon/pmbus/Makefile  |   1 +
>  drivers/hwmon/pmbus/mpq7932.c | 144 ++++++++++++++++++++++++++++++++++
>  3 files changed, 155 insertions(+)
>  create mode 100644 drivers/hwmon/pmbus/mpq7932.c

This is a friendly reminder during the review process.

It seems my previous comments were not fully addressed. Maybe my
feedback got lost between the quotes, maybe you just forgot to apply it.
Please go back to the previous discussion and either implement all
requested changes or keep discussing them.

Thank you.

Best regards,
Krzysztof

