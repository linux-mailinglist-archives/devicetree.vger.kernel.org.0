Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82F6B564FD6
	for <lists+devicetree@lfdr.de>; Mon,  4 Jul 2022 10:37:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232779AbiGDIhv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jul 2022 04:37:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232529AbiGDIhu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jul 2022 04:37:50 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6629B483
        for <devicetree@vger.kernel.org>; Mon,  4 Jul 2022 01:37:48 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id a39so10163970ljq.11
        for <devicetree@vger.kernel.org>; Mon, 04 Jul 2022 01:37:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=BVumSd6OAlZBaE7+K04OaQDyhILwK0GhxGuwr/Eb69g=;
        b=CQp9Dk5cFgj1HWRlUDMuLvg34vYSdWnnEqOCpPFGJmOrMFvxQaVKtMkSqJp9BdTJM2
         MQMBdRIzGG0WE8P6J/MfWHNxu8MkncJTWM2HOTa2Ah5MFTzGRCNyGYGhOtQQREjkg0L/
         t0uQ4uBONpzUDoRswyDcboA9QWyCc/HPb5ec69WtpoGfGI9EdNFOjcv8E3DppickJXcI
         +OHQ/r3mhTaV7qa7ILsuJaH6O+vyWcV4WrJ37fz0qChsCvyCOozGKFH5Wx23piQiwbyE
         0FKJYcrwF8C2aBjEcBjEOxJhTXeoHIxkeQBUIpgnO8d6CYfEif/6QwxTMZIMR61XZb92
         wJyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=BVumSd6OAlZBaE7+K04OaQDyhILwK0GhxGuwr/Eb69g=;
        b=sYO5jrAc0u9V6SmBX/+dS/Qo/ldZZbAZoarZSX0LSZK3W2ihXcfwe04+PHj/6AcRUW
         tYgqWb8GNJRutI1tSZr7fS9t571jhR1wJJx17bbsS5BJ7n9MOmmPDjB2m0EUeFnSjWnY
         Mj3cKpBauyqGa0DMQtULJwFyq7DDreucZFYRZ6yctpPz/O6Wza4xavzGl5zBbbOHc5ce
         OcYiL03gr6xP3W5JN9qJcYuuLIrs8MCWiICQ+QtUfGojWEXtfoewgVD1VDOrqNB9Plfj
         mInaJkbvCLmd5fjM+lvkZ37C6xUJ41sqkqc9G8zsZ96s7dAg6EV/HSo4EGfUbrr14zPx
         XXXw==
X-Gm-Message-State: AJIora8c4WKafIJ4Ydg8j128HSBQWW/yTpTsWUvQ2z+1aqutnBzGhI5p
        h3B81lIFs9n/rj8xD+6S1qD+gQ==
X-Google-Smtp-Source: AGRyM1tNxCCqqeAOY9POgE4znozoheYaBD4bnI+6rh8hF6RpFIgk1inxP6NsXfJnfNC6VcNTZ6EwJQ==
X-Received: by 2002:a05:651c:545:b0:25b:c791:816c with SMTP id q5-20020a05651c054500b0025bc791816cmr16004756ljp.161.1656923867061;
        Mon, 04 Jul 2022 01:37:47 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id a30-20020a195f5e000000b0047f7fc29169sm5031860lfj.223.2022.07.04.01.37.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jul 2022 01:37:46 -0700 (PDT)
Message-ID: <4c43cdf1-c3ab-4445-456a-0487a671c20b@linaro.org>
Date:   Mon, 4 Jul 2022 10:37:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 1/2] dt-bindings: i2c: mv64xxx: Add variants with offload
 support
Content-Language: en-US
To:     Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>
Cc:     Andre Przywara <andre.przywara@arm.com>,
        Wolfram Sang <wsa@kernel.org>,
        Gregory CLEMENT <gregory.clement@bootlin.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220702052544.31443-1-samuel@sholland.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220702052544.31443-1-samuel@sholland.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/07/2022 07:25, Samuel Holland wrote:
> V536 and newer Allwinner SoCs contain an updated I2C controller which
> includes an offload engine for master mode. The controller retains the
> existing register interface, so the A31 compatible still applies.
> 
> Add the V536 compatible and use it as a fallback for other SoCs with the
> updated hardware. This includes two SoCs that were already documented
> (H616 and A100) and two new SoCs (R329 and D1).
> 
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
