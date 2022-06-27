Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF36355DFF2
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:31:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232549AbiF0JhJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 05:37:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233887AbiF0JhF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 05:37:05 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8795363EE
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 02:37:04 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id o9so12084353edt.12
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 02:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=w0aW5XU24CXUQJUKLfDtXpZjwGGEf6KSE77Jnc5qpBU=;
        b=nXS+aFmrsby8Ftcq5F07OREp5Dm5dO2fQEaKGhRu6Hnn31Oi6+DgEZ7T9BYYY3kuoZ
         cK+yYYFBKL9X6KYDkUgbvL1RQz7nhEc1lJ+7IK5zsWVCS4ck+qkS2XDOn+P2WV9sIv7S
         nGONh1ApEf1fDj5EAUAHbFkBL7liKY9+Q/QF63VBD3lA3kX9rAYLOFTxIcIEHioxQr9l
         Xnl5Wj6GLUZJB75mnaEl9newrQc3bw/XxJXH7Jf6M7ZNnGhRXViecHIfknDF+pjuJR3H
         KMzyIkmU9aaIcZlndY6B5lxPrN3qGEXxL8YqWGXgbz2RwaYLaO/9ERVaDbvH1RTLZM8L
         lcNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=w0aW5XU24CXUQJUKLfDtXpZjwGGEf6KSE77Jnc5qpBU=;
        b=p2mH0275DPtaS1s0wN9+4mGcuoT7bSA7PUAYQRoEHd89kDBjCC7yRAEX3P8whNHvWI
         eE4wAMi9WoJ+JT7JED/zMYsRfWR8uD+efp+kyfISEjHPBX4NzMtY2Ahwo0nGbngnn8Af
         FMg1soPvScT7naKyahVP42e+ubU79DwZVx0RnQ5VdJpdG5i0dLIkvty8mVU0Uhdh3h59
         tVnlruRr+y7KHO52tHDo5GQlfesz2U42xYChiVYHSzQCtNJV309/DLGLOEWqcmG9TrzX
         8QBHHxcXX9e1gKfb/cLoWhgja+qNHTgZLxUGA290WI2Pcg17kG+90RSNSTY0sN8hhfI3
         bBDw==
X-Gm-Message-State: AJIora/djNt4Na6D63V27j8MN28ZMMnYiOf5uuLHknAZgTJWi/S+tnuV
        YxuzQxNoJmuNHJ834EU/+oDr1A==
X-Google-Smtp-Source: AGRyM1s43gV+0w1Q+pYZSeB2L/MkEkiDZaFrvfXc5F2tuI0PjRVd6jRNQPdw8UXxCXGM/cxv9dgUVA==
X-Received: by 2002:a05:6402:4408:b0:435:9ed2:9be with SMTP id y8-20020a056402440800b004359ed209bemr14937052eda.81.1656322623202;
        Mon, 27 Jun 2022 02:37:03 -0700 (PDT)
Received: from [192.168.0.247] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id f15-20020a1709062c4f00b007081282cbd8sm4827026ejh.76.2022.06.27.02.37.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jun 2022 02:37:02 -0700 (PDT)
Message-ID: <3e068305-4570-f970-ab00-d4397afc88bd@linaro.org>
Date:   Mon, 27 Jun 2022 11:37:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 1/5] spi: spi-s3c64xx: increase MAX_SPI_PORTS to 12
Content-Language: en-US
To:     Chanho Park <chanho61.park@samsung.com>,
        Andi Shyti <andi@etezian.org>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Alim Akhtar <alim.akhtar@samsung.com>, devicetree@vger.kernel.org,
        linux-spi@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20220627064707.138883-1-chanho61.park@samsung.com>
 <CGME20220627064931epcas2p4d90034c1fe583a3460f0e4613e83e6d0@epcas2p4.samsung.com>
 <20220627064707.138883-2-chanho61.park@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220627064707.138883-2-chanho61.park@samsung.com>
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

On 27/06/2022 08:47, Chanho Park wrote:
> For exynosautov9 SoC, the spi can be supported up to 12.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---
>  drivers/spi/spi-s3c64xx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

This should be squashed with patch #5 which actually makes use of it.

Best regards,
Krzysztof
