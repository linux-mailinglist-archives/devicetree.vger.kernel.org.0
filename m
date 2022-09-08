Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 204B95B17BC
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 10:53:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231379AbiIHIxG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 04:53:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231697AbiIHIwn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 04:52:43 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D10EF7772
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 01:51:49 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id l12so10619250ljg.9
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 01:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=EwWxrorUf0t5RelWvYwxkGlKAd06wzLiUvgHfS7saik=;
        b=V4ujnzw8vMuY/a05YcTrFpZgg/5LFWS4wW5dJiv0AsoB4o63I5VUBvtF0SNMRRsD4T
         P+iIMwIHS5+xR0r1Jp5E6vuIDEktjNeuzhWABTroJ3cjo1CgBxgXCWPqCjOLIsYXRJu5
         67C8s/Q9m3Qnh3UnzQT53njfKnfkqsVxPSvnlFxsMyhTFTwj46+voSNUFSH5pn75T0Wy
         LrNkEUc6vlp0csIHShHvS1fkFYb+t9NKThJv4Cqi6Izg+K14Kn3y8oMIqkFN+PQeg43R
         34S/RGduROl1gmzE+Q4C7ZAU+gAlGUF8JqnVR0tdPPn1XgQ12rax/1e6kEM3mCIb4Kqj
         vW+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=EwWxrorUf0t5RelWvYwxkGlKAd06wzLiUvgHfS7saik=;
        b=678BAAYcb1NqkWShpwouNPv0+cAy8Iureu/sRdUT57YNzs0knLBpg8hhl3D+WdpFKG
         oqjzmlJqDHeqhkSa2WQE+Z4ULRS12XGpd6VefIQqOvau08iA3y+z8H2dYKluopLp8REz
         JlKr5TELbUoWQzOmtEFMyKFfl4iuBGKAyCOGaQn+3XEDSk11p/EB6adQRleGdPhHc+RK
         OTC3VUz08XpNJh2bnN637UCXGhCsuCwAtwJizyxku3aPBVoSF1/z2pHV5QV64ZYxwuA/
         x2axSguQAxPUFJl0HOOw41U1oVGzT9v4PB+akNoz+gqSqfZRmQmXtMasf4jUs+BuJBc5
         cWMA==
X-Gm-Message-State: ACgBeo2WBLhXt9KXN4zhV3EXfKrRx9RlV0HAiN8tniVOVcJe/pmem1hr
        aH8r+ZNLGz17XXJCSWBPbhdXzw==
X-Google-Smtp-Source: AA6agR4H2rl5PlGAfHTnEpgX47j+gq6PJsyRerCQ8mwff5P0b7qJAm8bn2Htk9/8uNc/bXqX49eWqQ==
X-Received: by 2002:a2e:8181:0:b0:25f:e028:a67 with SMTP id e1-20020a2e8181000000b0025fe0280a67mr2269290ljg.89.1662627107903;
        Thu, 08 Sep 2022 01:51:47 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id f10-20020a05651232ca00b00497ab39bcd0sm695212lfg.96.2022.09.08.01.51.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 01:51:47 -0700 (PDT)
Message-ID: <0a977d86-e137-c328-ce7f-ef7941860936@linaro.org>
Date:   Thu, 8 Sep 2022 10:51:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCHv2 08/13] dt-bindings: mfd: add rk806 binding
Content-Language: en-US
To:     Sebastian Reichel <sebastian.reichel@collabora.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lee Jones <lee@kernel.org>
Cc:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Alessandro Zummo <a.zummo@towertech.it>,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20220908003107.220143-1-sebastian.reichel@collabora.com>
 <20220908003107.220143-9-sebastian.reichel@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220908003107.220143-9-sebastian.reichel@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/09/2022 02:31, Sebastian Reichel wrote:
> Add DT binding document for Rockchip's RK806 PMIC.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---

Thank you for your patch. There is something to discuss/improve.

> +  vcca-supply:
> +    description:
> +      The input supply for pldo-reg6.
> +
> +  regulators:
> +    type: object
> +    patternProperties:
> +      "^(dcdc-reg([1-9]|10)|[pn]ldo_reg[1-6])$":

You still have underscore in the pattern. This should pop-up during
test: please run `make dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).


Best regards,
Krzysztof
