Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3355A67E188
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 11:24:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229596AbjA0KYI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 05:24:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229579AbjA0KYI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 05:24:08 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EF0C265A2
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 02:24:07 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id y1so4542663wru.2
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 02:24:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B1g62FaAwzxRCWTCMBiuBoyOeT/DGaVIfmpUN4XH4l8=;
        b=WBlhHJ+QydO7/c8H/iv+cPA7WBy/euWH0c8rSU9mF1lm2EpoVxBq+pVtfH+47E98M6
         +LgVVY709ef+XJl6G++miNZIJFhxCswEpPlWqHNOnrYCd/THbh2EqLDQMAEIB2rcAkt7
         sUyrebJsnBw5YmDFJzjhYF4op3LYqIvJdPfISDfh/G4H/jmVQqbWxhBbcvK8PlgoX3O9
         7oQqATG5Y4noaKCX6g8Jd1lCqjY7c2/I5Hog7Of5ye+dSSyvMmOlPUHcNoI3yn/eWrgA
         kdGSqnAW1ZFawjT75+5dC1O/2bE17OJTDg45ix6c2eLnZ2r7nbMtK1/qbeaVhqENNKjy
         iLkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B1g62FaAwzxRCWTCMBiuBoyOeT/DGaVIfmpUN4XH4l8=;
        b=6bU+ACnfb8grEzNRpZkiEs815VqUdLos22P9tG0o0Wg+mqCPvpJ9u7yHgsHLOlD9YD
         fU8CXFEMsC7lXACze/bMAmCWBIj6Dcc8wHviZLu5AhVRGsofUCroGt+22ONizo4d/Z/G
         L/8w3z6MX2uFyZZ73zbr2pwevjkt76DqfhBtxqnsUS+pPOeNaW2Xl7jsMiaS+LbEbcAM
         SBNqmP8QaD/wg1p/LZAgO8GnriT6X2TE2i8BNkWcyBESbPqpsZQZh4TNMEDhDFVB1YU6
         O3lSXLKJ5wWTpBAbko948cpddcQg9Q3xITyjjyU6OM4ZMQ7pIUmGC/7aYtvFRk+Znv36
         myGw==
X-Gm-Message-State: AFqh2kqJlVVLOiLLt4B+0Twk5Bz1xFNFf7UIsbBDvDg1O7638tlB2L1Q
        gHjkB0TMfOzDLqtdFy0K0IpLqw==
X-Google-Smtp-Source: AMrXdXte3GUMCRyW8iKhTS2WKAAQM1NZf4WbfuSy6VgAENXlAWYiUaqyjwMtBrRnpXlHV1p9vrcnBA==
X-Received: by 2002:a05:6000:5c2:b0:2bb:eb3d:8d20 with SMTP id bh2-20020a05600005c200b002bbeb3d8d20mr32682504wrb.43.1674815045619;
        Fri, 27 Jan 2023 02:24:05 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id j15-20020a5d452f000000b002be505ab59asm3704070wra.97.2023.01.27.02.24.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jan 2023 02:24:05 -0800 (PST)
Message-ID: <02bddab6-4c63-bb39-9a11-8dab81322c28@linaro.org>
Date:   Fri, 27 Jan 2023 11:24:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH RFC 1/2] dt-bindings: net: realtek-bluetooth: Add
 RTL8821CS
Content-Language: en-US
To:     Chris Morgan <macroalpha82@gmail.com>,
        linux-bluetooth@vger.kernel.org
Cc:     devicetree@vger.kernel.org, alistair@alistair23.me,
        anarsoul@gmail.com, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, marcel@holtmann.org, johan.hedberg@gmail.com,
        luiz.dentz@gmail.com, max.chou@realtek.com, hildawu@realtek.com,
        Chris Morgan <macromorgan@hotmail.com>
References: <20230126165529.1452252-1-macroalpha82@gmail.com>
 <20230126165529.1452252-2-macroalpha82@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230126165529.1452252-2-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/01/2023 17:55, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add compatible string for RTL8821CS for existing Realtek Bluetooth
> driver.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  Documentation/devicetree/bindings/net/realtek-bluetooth.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Based on your driver it is compatible with rtl8822cs, so you can
indicate it in the binding and use just one of_device_id entry.

Best regards,
Krzysztof

