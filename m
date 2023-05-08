Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA5136FB527
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 18:34:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233424AbjEHQeN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 May 2023 12:34:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232527AbjEHQeM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 May 2023 12:34:12 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 724105FE9
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 09:34:09 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-50bcb4a81ceso8670105a12.2
        for <devicetree@vger.kernel.org>; Mon, 08 May 2023 09:34:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683563648; x=1686155648;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zNrcNKI3kICArS7t8GClBlVXIXiQxlkex2o1RaeVkAM=;
        b=ifgS1KzRjg+dYaia/i2Ma75A3+9IOa6M0ANa5UCEgJZ3yW4zFHspD6zYfcremJT6TW
         GEgBTn9LLcDRu2nsBP6jEY5zvEN1AFMPgbXM53mdCKB9Qbiy0HG2JPSjJbW231RrlLd2
         gOXK7eltK3L0VeY6ViODOnOEB7CLnVioyw6rGuZbNRX9GIeVLXeIjXFf/mplQnockM3Q
         aRkDCqv7tqzEacSTstt/T95A10AdmFDqWzyVBJuYqfJrfbmWzZ65e2z91vM+B6YYMkoI
         oFeUa1BdvdbpITj9zIE6XOMfBbgpt14jKqjiWtbttsFA0DRm1iG6pr8OLt8QQ5JYMQlS
         8r5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683563648; x=1686155648;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zNrcNKI3kICArS7t8GClBlVXIXiQxlkex2o1RaeVkAM=;
        b=ILpUGfkh+3QE7JHp5UBoM4xVkhmZmFJtqMEe5fBg1oiS6C+Hk8Q55K+ErKL9qnTXFd
         Lfeg/DvpVopcn0R9Epc9FkcKnXGGeAItIVeV3l35h55xLSrcErVbh1RU36LqpII0lXLU
         5TQ38rkbQQ4coYNEZWgPOFA/vwCpQvXETcqxfZFUmsT+ERMF/4u01cGqs5PmBtCBhXu7
         SobY0vCg3Jbi5OL9B9wATdGznlu8SjUmJj+ObdVTm/q4IqaVfpcELIhY7YX9Rr5CurGd
         xVs8ha/8bLLLDHMW12DPvWENjJfGtAGXXuoYA5ZIKhB+IKnGuJED+y1IbdSHBtbkYL/6
         Yzcg==
X-Gm-Message-State: AC+VfDyKFPBy5iYI0NctLYOYvxsjqxH91dBxzIhpS+wjIifvw3aSMVo6
        QIYJ6yXOQTPgwpVibVVe3cuOng==
X-Google-Smtp-Source: ACHHUZ4CdoPU10LEgoyuRPnokuJ9LTkNvbjtjTNSFZc3CjQpZHZZxhybyE1BPFPskERmKA9wItcwug==
X-Received: by 2002:a17:907:9308:b0:965:b2c3:9575 with SMTP id bu8-20020a170907930800b00965b2c39575mr8598586ejc.57.1683563647903;
        Mon, 08 May 2023 09:34:07 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:50e0:ebdf:b755:b300? ([2a02:810d:15c0:828:50e0:ebdf:b755:b300])
        by smtp.gmail.com with ESMTPSA id ka11-20020a170907990b00b0096602a5ab25sm169419ejc.92.2023.05.08.09.34.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 May 2023 09:34:07 -0700 (PDT)
Message-ID: <e25760bd-1de0-5ac1-868b-50299e83d70b@linaro.org>
Date:   Mon, 8 May 2023 18:34:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 1/2] dt-bindings: net: realtek-bluetooth: Fix RTL8821CS
 binding
Content-Language: en-US
To:     Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, netdev@vger.kernel.org,
        anarsoul@gmail.com, alistair@alistair23.me, heiko@sntech.de,
        conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, pabeni@redhat.com, kuba@kernel.org,
        edumazet@google.com, davem@davemloft.net,
        Chris Morgan <macromorgan@hotmail.com>
References: <20230508160811.3568213-1-macroalpha82@gmail.com>
 <20230508160811.3568213-2-macroalpha82@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230508160811.3568213-2-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/05/2023 18:08, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Update the fallback string for the RTL8821CS from realtek,rtl8822cs-bt
> to realtek,rtl8723bs-bt. The difference between these two strings is
> that the 8822cs enables power saving features that the 8723bs does not,
> and in testing the 8821cs seems to have issues with these power saving
> modes enabled.
> 
> Fixes: 95ee3a93239e ("dt-bindings: net: realtek-bluetooth: Add RTL8821CS")
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

