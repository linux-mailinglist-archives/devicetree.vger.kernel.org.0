Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 622FF50E7B1
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 20:02:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241441AbiDYSEj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 14:04:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244196AbiDYSEi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 14:04:38 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DE4B46B10
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 11:01:32 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id kq17so8020868ejb.4
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 11:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=cfMZHvtfOOtpqzqGF7A7q6AfqNEDLTUzF7hzywhBr9Q=;
        b=vH2QMU1ey6We0PvkEgJ/ptfQ175t6wD0xgpkFMMJMtwcftkUya13dSdTWRiFwzN1+d
         aDpiA6ZMLjVAXPi/Xoj7F3FZ3wfptJoJIk1TZ2WLz2yceAZTXkX4Y+scllFD90vAvhRp
         xwnnOLG3IT6XofLBMwBCizXRXkJVLnfZSe4vtBjMFmM7OWOGVUoeeqNe8SX2fmAgzQxa
         vXh7RG6OUiSRuOSn3bIwrZLj6HVxjkMMTDeuYfma7FPn5s7jWz+6jx+L6QAB5tSRPkie
         lvloABrLkCYcs5wm2YgP11janJcJ2tFFBYESxzXUjmHr4pSgtPmfz4d4ByZEy/zEmEfR
         Z9Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=cfMZHvtfOOtpqzqGF7A7q6AfqNEDLTUzF7hzywhBr9Q=;
        b=vBjILefYgaIpm3e6wEb1RLy4Li/qyL8hhT1HEpIIRYQZQaUWQdmI/3b0ZpYgfz94Pi
         gu60/XdzAtGd+9tF/7W4+gW4Lm//xMYGs62LnaE96RCuhnTVW9c29rBhpV16MYz8Ro6M
         HyWGx6kU6/7AufcvjNahFJMwBsWZLJ2lKmaEmdP3ap7ZBVTGYu+CNhS5RMKjxWKr5t8g
         C1MQ6o0nJEp/gCoq0zd10OA3luVwp9qqEGxP3q4lE9CIMmVdUG+a50bjNqfsbbGfIfsk
         KMmefO5zEuB/VCWdgmiTq0ld/RCbVY+5H+uJevdzL84qYXXCVn9WzEU87pmUQW1gX89g
         48SA==
X-Gm-Message-State: AOAM5303FlYy5i7Z1PY4I28CQyUinhUlKj8BycKdNJ2vNgTTMbpE4A1H
        MyUpI1NEo8Drspm/xovYRx+c1A==
X-Google-Smtp-Source: ABdhPJzuXJBp2Ze6NPBKVZ/WJjzHtg+vePMnM6AFJx0uKL77SlAvF6GDXQNiVPtKP6xDyT8jIjWOAg==
X-Received: by 2002:a17:907:6d8a:b0:6f1:7143:1ca3 with SMTP id sb10-20020a1709076d8a00b006f171431ca3mr16005452ejc.219.1650909691148;
        Mon, 25 Apr 2022 11:01:31 -0700 (PDT)
Received: from [192.168.0.244] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id b8-20020a056402084800b004207931a9cbsm5171751edz.36.2022.04.25.11.01.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Apr 2022 11:01:30 -0700 (PDT)
Message-ID: <3bae519e-be5f-2736-0e7e-d23ea06121c8@linaro.org>
Date:   Mon, 25 Apr 2022 20:01:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v1 2/7] dt-bindings: arm: rockchip: Add Pine64 SoQuartz
 SoM
Content-Language: en-US
To:     Peter Geis <pgwipeout@gmail.com>,
        linux-rockchip@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20220425171344.1924057-1-pgwipeout@gmail.com>
 <20220425171344.1924057-3-pgwipeout@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220425171344.1924057-3-pgwipeout@gmail.com>
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
> The SoQuartz system on module is designed to be pin compatible with the
> RPi CM4 SoM. It is based on the rk3566 SoC and outputs on uart2 for
> debug and console. The first carrier board supported is the CM4IO board
> from RPi.


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
