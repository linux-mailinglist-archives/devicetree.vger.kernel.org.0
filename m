Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F202950E7B3
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 20:02:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244200AbiDYSE6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 14:04:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241958AbiDYSE5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 14:04:57 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C85245791
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 11:01:53 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id g23so12391167edy.13
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 11:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=CQyS9JnYDoE9kJ+jTL0QIFhL2uJUMfyzMi0NzcSj508=;
        b=Hb8RN6EiMjlSvW8/VxYjPfrAHhWf2Onumhs7UYhkmVYJLoIIF+QZ1a2WIQRjafoOox
         7UhsspWR8blftdb+WKialnHA/DQB0YgjUvlM8FaaqmjEM4CL9HhAfDY27znL8KS5qARx
         u3g9fUqAYDQ/Iry9kqMM2wDkHGW0gc3skJ7BcXIdSvZB1BfZkOVzyMq1GdkvPJmUhK0R
         xjgwf3J31MvvMf+u9eoHLxnurwtN75N6Ksa3vmrF46pqas5RGt3Gx2ZxYaW3LQjeU9mN
         /vNvHj/sEESHjmth/lul/zguOf1IWtZam7sQuGamvJZJqGvjraQrV9KCO6BSymRzD8EN
         5S3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=CQyS9JnYDoE9kJ+jTL0QIFhL2uJUMfyzMi0NzcSj508=;
        b=OxHW2ha+MVNEAJx4DnZDSUrvuT1imWTJYru/FruHxFNhaMRVq0I34xKeMWQnrRYuqa
         OiB6bdD79XoAndiuvi7DWAfivXHEo72gx2rlCs9pYLjBPU/4CJ2RddLl/W7aUKzLgIqp
         imiiidTNIToeKdYicrFV8UEbKpN3tUrsBY2d2r5ZQmSKfmSeLKqFA/ylrPBNCb7iZ+sx
         F5coPtM+OZCGJFP16lJsd3zv1N7M3vtBEuG/5H9dYOeXJwmb/jRDr7Hij/VtvuztmIVj
         80815dCHLt+QacTYxGPY0UM+738rhl3Hk8/NrorZYVqQ9NgRPRMQCveDjGgLwEJbFBpY
         Zrpw==
X-Gm-Message-State: AOAM530yIssh4+hkMH1oq1lIvolsiGxS8Y0Xm4mSKRdUgewDpW4Ht0Wp
        T53RL8bQolejZokwc98YMinYMA==
X-Google-Smtp-Source: ABdhPJwO6MUEy9Os7ZJugK0SoQGSRJEX+oveN8kqQtbjJvUSdcJhefbKxH7V6FLGd7Cz/afbWu/MRA==
X-Received: by 2002:a05:6402:845:b0:421:fcb5:55de with SMTP id b5-20020a056402084500b00421fcb555demr20633908edz.124.1650909711992;
        Mon, 25 Apr 2022 11:01:51 -0700 (PDT)
Received: from [192.168.0.244] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id v10-20020a170906380a00b006a68610908asm3845108ejc.24.2022.04.25.11.01.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Apr 2022 11:01:51 -0700 (PDT)
Message-ID: <24bb0631-740f-875f-b65e-9f353fff65eb@linaro.org>
Date:   Mon, 25 Apr 2022 20:01:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v1 3/7] dt-bindings: arm: rockchip: Add Firefly Station M2
Content-Language: en-US
To:     Peter Geis <pgwipeout@gmail.com>,
        linux-rockchip@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20220425171344.1924057-1-pgwipeout@gmail.com>
 <20220425171344.1924057-4-pgwipeout@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220425171344.1924057-4-pgwipeout@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/04/2022 19:13, Peter Geis wrote:
> The Station M2 is a compact single board computer based on the rk3566
> SoC. It outputs on uart2 for debug and console purposes.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
