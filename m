Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9880370051B
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 12:21:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240272AbjELKVK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 May 2023 06:21:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240471AbjELKVJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 May 2023 06:21:09 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7E9430D5
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 03:21:07 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-3f315735514so315475495e9.1
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 03:21:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683886867; x=1686478867;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HSSy+HEzm6BuXOOTUuNimflDqBaD/aj0ylCA9NNcG5o=;
        b=HYUmuD9W3hUsh9LkgRkjXYjt90l+JlEHCu9OGQ/g8Y0nQv07Cd5QJk9rVxVObvlvqp
         5hYpDPP+KvNTAm5lV+QbuTcjwqCgLBW5Cwko0dEYbL4ch9jcMSFmwayAx2cUj/RFkLVV
         2l6Ii1BX23EF3SGXC3w9ocoF1kLafRC+tqEEeNpMQFd06U2J/E6ObILrFLJ18y154PWA
         B2c1WV3IDtHqpwsZigX9FICG9YuFUcytQaGggWpOm09A4eZiR+kOnGp7P9yH3+iU8zjZ
         sIxQgB5kGs0WfeTXvcZ+7FE+V/P2KbvR10fav3GEB46gArdaPtyDWwzvCnh8RDJ8YJqB
         sLIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683886867; x=1686478867;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HSSy+HEzm6BuXOOTUuNimflDqBaD/aj0ylCA9NNcG5o=;
        b=dq4qAQMUZzlv+Zpac4QCRV5mtkT1JE4RARzNdLvh6Z1mswNNcludYURtmC9YHTKiK7
         58m1lt3ZGWBe0sD4RwKmRAoDFeVYX/JZCQA5w+GX4k1S5xpCsKcdLP+TJRAAkcM3PyU+
         6s8tFirV5CTkoesuC7lcLoFgzFQThdFr0KwgdVhaiRMAzccJPtJRXQahWdTQ5/NBA78k
         yU2me3Nmt0TwnujfNnVwLO0nf+HAjFz3caari042+cjBBvChaJ/AESKNSBfDkIZkYRAS
         gAia8nhPkkwyIGStp4RcMskQmSgI6h6GgAhsnSeJIgzkGGA3/Qpsw4NKBgNCsPM4rUXH
         W35Q==
X-Gm-Message-State: AC+VfDy//bZGET+JJR+P0z8UciKvYh2eSC52rOLfxhgQw7CDLU5QRcev
        IVhr+Q1s3D+qusPoIDRJb/dy+A==
X-Google-Smtp-Source: ACHHUZ7pTqPpmg2tugGQr9b0zELujLytFhPJgc+M0KcJbG5dQZrz0MmDuzLhsHHfjuXkRTdbGz81eg==
X-Received: by 2002:a05:6000:124b:b0:2fb:539c:5e89 with SMTP id j11-20020a056000124b00b002fb539c5e89mr17353013wrx.4.1683886867258;
        Fri, 12 May 2023 03:21:07 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id c15-20020adfed8f000000b003047f7a7ad1sm23051725wro.71.2023.05.12.03.21.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 May 2023 03:21:06 -0700 (PDT)
Message-ID: <243c85bb-ceec-df8d-d8b6-12b4c4d9422d@linaro.org>
Date:   Fri, 12 May 2023 11:21:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v3 3/3] nvmem: rmem: Use NVMEM_DEVID_AUTO
Content-Language: en-US
To:     "Ivan T. Ivanov" <iivanov@suse.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Phil Elwell <phil@raspberrypi.com>
References: <20230420122924.37997-1-iivanov@suse.de>
 <20230420122924.37997-4-iivanov@suse.de>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20230420122924.37997-4-iivanov@suse.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 20/04/2023 13:29, Ivan T. Ivanov wrote:
> From: Phil Elwell <phil@raspberrypi.com>
> 
> It is reasonable to declare multiple nvmem blocks. Unless a unique 'id'
> is passed in for each block there may be name clashes.
> 
> Avoid this by using the magic token NVMEM_DEVID_AUTO.
> 
> Fixes: 5a3fa75a4d9cb ("nvmem: Add driver to expose reserved memory as nvmem")
> 
> Signed-off-by: Phil Elwell <phil@raspberrypi.com>
> Signed-off-by: Ivan T. Ivanov <iivanov@suse.de>
> ---


Applied thanks,

--srini

>   drivers/nvmem/rmem.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/nvmem/rmem.c b/drivers/nvmem/rmem.c
> index 80cb187f1481..752d0bf4445e 100644
> --- a/drivers/nvmem/rmem.c
> +++ b/drivers/nvmem/rmem.c
> @@ -71,6 +71,7 @@ static int rmem_probe(struct platform_device *pdev)
>   	config.dev = dev;
>   	config.priv = priv;
>   	config.name = "rmem";
> +	config.id = NVMEM_DEVID_AUTO;
>   	config.size = mem->size;
>   	config.reg_read = rmem_read;
>   
