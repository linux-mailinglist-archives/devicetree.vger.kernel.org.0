Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B26977000EA
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 08:54:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240054AbjELGyt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 May 2023 02:54:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240005AbjELGyl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 May 2023 02:54:41 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3F44DC43
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 23:54:39 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-94f4b911570so1514037766b.0
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 23:54:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683874478; x=1686466478;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FjXUkXzHmLJkLJqGLPZFXqBqkIkhEgvZocnaDYnUcUg=;
        b=NNUd1P4piw1vL7STEfyXPEakse7eOF1CEYsj3zx6+aoQfc81g50Hb+o7tN9yPC/xZC
         7SFeVpqQjfnzWv8Q4l8DQz3L6yj8SeEi7QZKDAkcDBL3qL4dP1CC7bEEGXbabW6IYcEW
         GaYkg9UsrmgR81loqen4dwEByQQd0eJFgAgPRZWXGRSdFiqcy1N+CLa+HYSMQ4/Lck3f
         uhDLT3aZBK09/iBP9STeIhdx3PYHvG5aWvOVjyxo1UAhWxDE0LYtHVdqyDLDaUCZFY01
         dsKJydZeU9Wl35NAPsig8FlcQxT0j/bvfWmulbF7sNEm4RJJS7Ajt/YeQdEXtghwwRR9
         pFbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683874478; x=1686466478;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FjXUkXzHmLJkLJqGLPZFXqBqkIkhEgvZocnaDYnUcUg=;
        b=kGX16QsgY2ASqr36pf5mfASw39xWYBTvcS0X6YUdxoSXM/ZzSgfEol539aUPqxiqbE
         T+71lcO3CL/rLvbUKzJF7H7At7Eo+hUOWiXud7NvhPE3qKVK0wV0siWofxXNv5JJ5/x5
         1nqS+E1iTTQlod2/IwFhUD8aou077xiPE01rKMX5JfH/SXEJDfRxuW+YEXXRQqsEvJi0
         8d2cDkdM+GDYNnlZbaud3dWyoHDZcBzwvVN9OaIJGWdK5bQZz5v/hWkkm0hBTP1u6JWe
         6McRrtox3L8iSZWupaZXgfxbWhTFKbgup/93cdi/w0tydT/daF1gXVr1r0L9x1jZ8WVS
         +hhw==
X-Gm-Message-State: AC+VfDwYxquvOpb97sHkxYwoyDII/QWGqgFeyOW0PuFAB0Teigtq+HZd
        DGZaOIdKFB/0ra+lgErNoYypPjtKDW/9CKmvCYY=
X-Google-Smtp-Source: ACHHUZ4yy5HgsrY8PHBO7NaE2kkMJm6oRaQhNMbX4qWxwK89SLe2e4ju+bwDOzRDTJUx/bMnGgBdrg==
X-Received: by 2002:a17:907:3f0a:b0:967:21:5887 with SMTP id hq10-20020a1709073f0a00b0096700215887mr16008252ejc.40.1683874478238;
        Thu, 11 May 2023 23:54:38 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:7ede:fc7b:2328:3883? ([2a02:810d:15c0:828:7ede:fc7b:2328:3883])
        by smtp.gmail.com with ESMTPSA id k10-20020a1709067aca00b0096a1ba4e0d1sm3386641ejo.32.2023.05.11.23.54.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 May 2023 23:54:37 -0700 (PDT)
Message-ID: <7e8d0945-dfa9-7f61-b075-679e8a89ded9@linaro.org>
Date:   Fri, 12 May 2023 08:54:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH net-next v4 1/2] dt-bindings: arm: mediatek: add
 mediatek,boottrap binding
Content-Language: en-US
To:     Andrew Lunn <andrew@lunn.ch>, Daniel Golle <daniel@makrotopia.org>
Cc:     devicetree@vger.kernel.org, netdev@vger.kernel.org,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Russell King <linux@armlinux.org.uk>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Qingfang Deng <dqfext@gmail.com>,
        SkyLake Huang <SkyLake.Huang@mediatek.com>,
        Simon Horman <simon.horman@corigine.com>
References: <cover.1683813687.git.daniel@makrotopia.org>
 <f2d447d8b836cf9584762465a784185e8fcf651f.1683813687.git.daniel@makrotopia.org>
 <55f8ac31-d81d-43de-8877-6a7fac2d37b4@lunn.ch>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <55f8ac31-d81d-43de-8877-6a7fac2d37b4@lunn.ch>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/05/2023 17:53, Andrew Lunn wrote:
> On Thu, May 11, 2023 at 04:10:20PM +0200, Daniel Golle wrote:
>> The boottrap is used to read implementation details from the SoC, such
>> as the polarity of LED pins. Add bindings for it as we are going to use
>> it for the LEDs connected to MediaTek built-in 1GE PHYs.
> 
> What exactly is it? Fuses? Is it memory mapped, or does it need a
> driver to access it? How is it shared between its different users?

Yes, looks like some efuse/OTP/nvmem, so it should probably use nvmem
bindings and do not look different than other in such class.

Best regards,
Krzysztof

