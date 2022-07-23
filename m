Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 505B357F195
	for <lists+devicetree@lfdr.de>; Sat, 23 Jul 2022 22:59:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238822AbiGWU7h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Jul 2022 16:59:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238815AbiGWU7h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Jul 2022 16:59:37 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F000113EAA
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:59:35 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id bp17so12712510lfb.3
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:59:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=WwWq4pQq3KpAF4vZSyzfIHczd+yLMoGMXQMiyrcDtUo=;
        b=RF56donK2hZgNer2URwSK6BpA2vX1NduJhbeN/Tmw5LTwWQ/Y/ejr5RYuNH9YoWv4Q
         vI8VLjGbxeHH4JiQEeS+d5yYM50Pa6HLz7waHpadKZLKFhNGZhts4ODlaNuUAo5n4/8R
         lo4/NYqQmGpIjnNNjVkJWpCr81LjKmJZKmcHLQfYza7cksgz5RFh0TF3FOOJDCHzJ6oP
         WTcpUU2JrZkrUPGAUfaq9rE/80RhvyYgX9hmoJbqzud8rZdQ6bu5cDjyZFPyfAPLvjzV
         fVR0L+QkDEpizMnUWZtYWEEJA2dR4+y/+fs1XdW9N2bimI+3GzYE24jfkSyRQ2uWcOPQ
         fXCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=WwWq4pQq3KpAF4vZSyzfIHczd+yLMoGMXQMiyrcDtUo=;
        b=LK4VqDHvP1PZrbuI+UOz6NXL2U0vr6c/cpTMpoH3lYmAkbUKOFiU+x83bRjaaNMgV/
         JEO2YGiUiQQKoHEoedCn3s2jTAfXzY6cmEdEGDkaNIBxXytAe18JkWG0oLkApWecQEAD
         noXwoD0x1FtkR+2Zt/miw523qbKNuq+BalriCcSXxnmcnvYP8LMUXtar2BbI74FoXhOz
         6evHZzb3QTNFuiizcRj+4WrHuuUefbfmwYYSsAqjVIQ2weWey6ofSqzcV7sWDQlelLo9
         qifqepisjt2RTJ+P2eWovlKB++e3h11M9vOoFysyVq3lvqcjgs01YO6k0H5yLeFHMuEk
         PpCA==
X-Gm-Message-State: AJIora/gDIfFx0OFiGB0fK7Q7hIDO/Zb9OsPJRYpQS2cBXRZ+Dq3r0wh
        vgCcXIFHFvC0Lcu6Dx4aBgOIGA==
X-Google-Smtp-Source: AGRyM1uafTV4YGCtd1OGhpgkDgbBmgFk3KwI4+Zk90rtlplUCPn2aEMnuAqetuorS9sNWDI/QSWTNw==
X-Received: by 2002:a05:6512:3d92:b0:487:5cea:a68b with SMTP id k18-20020a0565123d9200b004875ceaa68bmr2126962lfv.21.1658609974100;
        Sat, 23 Jul 2022 13:59:34 -0700 (PDT)
Received: from [192.168.10.173] (93.81-167-86.customer.lyse.net. [81.167.86.93])
        by smtp.gmail.com with ESMTPSA id q9-20020a056512210900b0048646c0af5csm1813707lfr.263.2022.07.23.13.59.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Jul 2022 13:59:33 -0700 (PDT)
Message-ID: <ddb20078-80d9-0c0d-8e20-4c1c3ee0b0ef@linaro.org>
Date:   Sat, 23 Jul 2022 22:59:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 06/22] dt-bindings: pinctrl: rockchip: Document RV1126
 pinctrl
Content-Language: en-US
To:     Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-gpio@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>
References: <20220723204335.750095-1-jagan@edgeble.ai>
 <20220723204335.750095-7-jagan@edgeble.ai>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220723204335.750095-7-jagan@edgeble.ai>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/07/2022 22:43, Jagan Teki wrote:
> Document dt-bindings for RV1126 SoC pinctrl support.
> 
> Cc: linux-gpio@vger.kernel.org
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
>  Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 1 +


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
