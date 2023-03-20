Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 063FC6C1BE3
	for <lists+devicetree@lfdr.de>; Mon, 20 Mar 2023 17:37:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230327AbjCTQhM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Mar 2023 12:37:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232349AbjCTQgi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Mar 2023 12:36:38 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62DF1132F6
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 09:30:39 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id eg48so48937337edb.13
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 09:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679329838;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L9ktZPO3hU11QItepol9D8OsksS/8T3u+f9wJ3qKMD0=;
        b=LMc8A9+gtSPDxfx7cenQQrKqhDYGmRXE9il9D4NzCH2oOVg1Bu60GKf/HueM/x9qmy
         R0zh4iMpLkBI3V6CMoB/MTLuS54abRHzw6M6Uv5X93R1aeDytcuZXGAP6nZspYFuzRw2
         8JDe83Hk+MPhnOlFzJER1tvhzJKx8+syyRIOB/d3GxNlReH25txsnsM/0j8oX7GxNpEQ
         WRz0x9Ba2cYi2ayQDsSYuk7jNX3KgcVSr0OysVtdzy8q8TxooT5vSgOCXZTvLCDEBNsr
         e1WAKx6xR61JucDrSX0bZ2K747ox1ux1BJQW9fGuKfsrEK0SYjHpp/wsvpsbjjeHD8+Z
         ECwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679329838;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L9ktZPO3hU11QItepol9D8OsksS/8T3u+f9wJ3qKMD0=;
        b=wBTh8kV/QeqmV9U2NwTdyfyv6rEhsVtSi8HdYenUcI7PymuNS7M5+aJ3A99tck745c
         9YclNfEnbpDkLd6hlsdzqebZ3GmwKSg7E9Z3gWE+d+t8CigSE+uogtFYqaXJmLdPECHp
         g2Mz3r1wqOn5f5oUjMY/HWrC8fWeE0kAsjMj9SkhiIKM93zOLln9Akmfxu9dO9vjy3pZ
         Ok5VdOn+E7uDHpD2wsIieJvYSPfw9HpqnSq6gzKihp9QI8G8Dcr/rp4Jt1phDURWaHbd
         L1gtZae1+x90FzB1miE+/VwsYME5Pm4LtCvHnNvNBUh5x0JCXZ71ic46/EV/wV7wZpex
         UMww==
X-Gm-Message-State: AO0yUKXYz/HrCzWPM+0+4e6hjGz5ThVZHvUPR9xpaTIKoVJRrPiWon5Y
        xkWnDifXNhvruib8wTnD70sqiA==
X-Google-Smtp-Source: AK7set8B6x+e1yzNq/BgOGky8oWyx3u9wx9m2M8v5W1QkQzbXFiVu+4AUg2uXXpfiZmvUDEp+A21Vw==
X-Received: by 2002:a17:906:f193:b0:933:868:413a with SMTP id gs19-20020a170906f19300b009330868413amr9406684ejb.15.1679329837956;
        Mon, 20 Mar 2023 09:30:37 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:458e:64e7:8cf1:78b0? ([2a02:810d:15c0:828:458e:64e7:8cf1:78b0])
        by smtp.gmail.com with ESMTPSA id d28-20020a50cd5c000000b004fbdfbb5acesm5130492edj.89.2023.03.20.09.30.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Mar 2023 09:30:37 -0700 (PDT)
Message-ID: <69db4b8d-6d9c-1b1a-c6c3-ce11c7e9079e@linaro.org>
Date:   Mon, 20 Mar 2023 17:30:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 5/5] ARM: dts: aspeed: p10bmc: Change power supply info
Content-Language: en-US
To:     Lakshmi Yadlapati <lakshmiy@us.ibm.com>, robh+dt@kernel.org,
        linux@roeck-us.net, jdelvare@suse.com,
        krzysztof.kozlowski+dt@linaro.org, joel@jms.id.au, andrew@aj.id.au,
        eajames@linux.ibm.com
Cc:     linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230320154019.1943770-1-lakshmiy@us.ibm.com>
 <20230320154019.1943770-6-lakshmiy@us.ibm.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230320154019.1943770-6-lakshmiy@us.ibm.com>
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

On 20/03/2023 16:40, Lakshmi Yadlapati wrote:
> Change power supply driver and device address.

Why? We see what you are doing from the diff. It's unclear why you do it
and that's what for you have commit message.

> 
> Signed-off-by: Lakshmi Yadlapati <lakshmiy@us.ibm.com>
> ---

Best regards,
Krzysztof

