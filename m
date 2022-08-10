Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29E1D58E7FE
	for <lists+devicetree@lfdr.de>; Wed, 10 Aug 2022 09:45:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229498AbiHJHpY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Aug 2022 03:45:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230020AbiHJHpX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Aug 2022 03:45:23 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C80D321269
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 00:45:21 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id bx38so15229022ljb.10
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 00:45:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=4Y8I/o2ZbiCR2XoMPvfK2Mfm06LP8ATnJlBaZaL2WHs=;
        b=ZPY3vZrZ8hfIfAKR0pHDDnplr3AJ0h5vaoF072rkhn/U+6pqhT/wRJ9o9tyGJsPz7R
         qkSLwvL2Hnj97oxpl/z2GYLfUUXIdoCs5zPPo9ELk7jm2lsNmmYMg+RcAmuyTSIPjPeZ
         uoyeWXFLbXar6ODfT6wr25kab3akxPDlGMqO3RKne6tRgNlSsK+ncKwjoqgQkfKnW/iL
         xnUiepF+ox5Igd7zPp1NRbCxR2i2xCQUISY7YZ033V4C7DMCsrQ4Ml5WyHatKEcZY73C
         lQez4RsUV98ozXfwhVIZ0GhG9LE/Zp0cKSA9GS2Bg1W3JnUxDiOjLDFSUCNQE3DTLtH8
         No3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=4Y8I/o2ZbiCR2XoMPvfK2Mfm06LP8ATnJlBaZaL2WHs=;
        b=4d/0zAfVTkIvkQ+oE5Ht+LVOUyiHra1CWXRQBujAjB4OdQp3enVcaPSvSBXHcnE7iW
         vz6G4a5CEnzJeagUoDEJbMLT29LLmwtdYz65tICeIcGa0rIUIEirTEr6qrN5mua7jzz5
         jDWLXk1pHBT6Y1D9URoIQJySaQ2uR07OhjJ51puJfgGBBYJwO/XNEBBj0MGe79qhyDhO
         rh1WqrkWf66L9wjT+sPmrIyrlZE0Xot9sALU3ypMQUOg03l6cSRxN5/ZKb+wHOhNx8i3
         JeoCz0UIjfA063NhrbfArmjjGc42+GRmuDAf4gupQrnvNWjGe7XLGowhN8fMhDCTpNWT
         BAcw==
X-Gm-Message-State: ACgBeo31hxcUBwd+QhWoyn5E79nTwraVvFRfR26HYwOtPIURF28qGFTn
        lIk1laawRQ7kcPttfM8CFlyuCijoMDYFkmjU
X-Google-Smtp-Source: AA6agR7B5+SnMSke7I7OLX8tC2RJaujbBSE5MWsv2wnEiHh8r7AIqvCB6ZCQ66mKP71PVcQhW/VGLg==
X-Received: by 2002:a2e:9cc2:0:b0:25e:4ec0:19cc with SMTP id g2-20020a2e9cc2000000b0025e4ec019ccmr8160991ljj.401.1660117520209;
        Wed, 10 Aug 2022 00:45:20 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id u17-20020ac243d1000000b0048b0975ac7asm240813lfl.151.2022.08.10.00.45.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Aug 2022 00:45:19 -0700 (PDT)
Message-ID: <6771dc13-36ab-dc86-e231-4f9caaa06bcd@linaro.org>
Date:   Wed, 10 Aug 2022 10:45:18 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH] dt-bindings: mfd: x-powers,axp152: Document the AXP228
 variant
Content-Language: en-US
To:     Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>,
        Lee Jones <lee.jones@linaro.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220810013430.27061-1-samuel@sholland.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220810013430.27061-1-samuel@sholland.org>
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

On 10/08/2022 04:34, Samuel Holland wrote:
> AXP228 is a PMIC used on boards such as the Clockwork ClockworkPi and
> DevTerm. Its register map appears to be identical to the AXP221 variant.
> The only known difference is in the default values for regulator on/off
> states and voltages.
> 
> Signed-off-by: Samuel Holland <samuel@sholland.org>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
