Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE8DC54D5E9
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 02:16:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244376AbiFPAQm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 20:16:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244872AbiFPAQl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 20:16:41 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E18B50451
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:16:40 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id i15so11769017plr.1
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=IziWPD/gGlB/cFkyGJLPEuAu7TGyXwh1iU3iR88AWkQ=;
        b=aQgsNbJOMMY7cBdjRJaZEy7NKsac4QSziC48MZeDyKEXSbnrJP1mvonAXyX+CW2StQ
         zoV0RwUXJeof2a+ReES5vfn74WBm292ILZO4Ux5Zf5shV0Xk6ZeSW+OF8Nmyk1qSB1uk
         5dFBMv9oq0I8a7FruG96hqIahmMFi2Kn/IApIADq+SiO1X9K/GSzEBRI2ZJEf2yBqe+F
         6xj3GPS0G3Hpamjh44si1pJfWc6AKmT1DQ6asI7iESybhrlpXXQV8UOi0SquWvfErazF
         U+U/48nVUcNV4FcMBAw6ER+x3iKl3rKRHeRIA2CwJ+wPu0QMHjWvBCL/ZP6VAkuBm25Q
         I+bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=IziWPD/gGlB/cFkyGJLPEuAu7TGyXwh1iU3iR88AWkQ=;
        b=poqh03DCZz2TerSzBRUDcbQPrzimF3gHw8+AJp/DwOKx7wDf5JMXWjyaSxGb+Auvhr
         vDK6LyBpYQErZbmRjqWMyaiX2pWp0C3pHmknKSwY4CKL501ARxRybPTbsJHvxqLA7eeb
         uttDRAJRYUDeLt3ylrExBJ9xbwRi7jwF6WwSAXyn63fCBS5Vd3hfXUPmyuo8x62wFxKB
         eNJ9s6Q3CJ+zyiXWFOXEMFi/BMyzZ0MlSGro4FrrIS/fQwd4C0sq8z8yhLwJ2LBft1gN
         D8Ha6VRYuvMyL1Zq+J4LjIbaAzLHJeFwS+oHnIZg+e8bn3z3iS22RVcmjhr2kemhgZaE
         lSMQ==
X-Gm-Message-State: AJIora8ZS3SVILlnnA+9UTWccxEyHL6DUphBvwANKIhinGPMPZVznQXU
        0bOBdQnGHCaF396mX1HBz0eJAg==
X-Google-Smtp-Source: AGRyM1tpzuPPQlHJU+oFfHHzmIAZClCY2qxZ9MGvZ5GZeJySVob7f46Go/aYGKi78g11uNeSYpS55A==
X-Received: by 2002:a17:90a:4e82:b0:1ea:3f61:51b with SMTP id o2-20020a17090a4e8200b001ea3f61051bmr2130743pjh.16.1655338599492;
        Wed, 15 Jun 2022 17:16:39 -0700 (PDT)
Received: from [172.22.33.138] ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id w21-20020a637b15000000b003fc32f8e030sm174407pgc.79.2022.06.15.17.16.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jun 2022 17:16:38 -0700 (PDT)
Message-ID: <908e2f79-8753-877c-1bdd-f8aa16d1e32a@linaro.org>
Date:   Wed, 15 Jun 2022 17:16:37 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 6/6] arm64: dts: ti: Add missing space around properties
Content-Language: en-US
To:     =?UTF-8?Q?Niklas_S=c3=b6derlund?= 
        <niklas.soderlund+renesas@ragnatech.se>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>, kernel@pengutronix.de,
        Fabio Estevam <festevam@gmail.com>, linux-imx@nxp.com,
        Wei Xu <xuwei5@hisilicon.com>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>, Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20220612223201.2740248-1-niklas.soderlund+renesas@ragnatech.se>
 <20220612223201.2740248-7-niklas.soderlund+renesas@ragnatech.se>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220612223201.2740248-7-niklas.soderlund+renesas@ragnatech.se>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/06/2022 15:32, Niklas Söderlund wrote:
> Add the missing space around properties before the typo spreads to other
> files.
> 
> Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
> ---
>  arch/arm64/boot/dts/ti/k3-am62-main.dtsi           | 4 ++--
>  arch/arm64/boot/dts/ti/k3-am64-main.dtsi           | 4 ++--
>  arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi | 2 +-
>  arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi         | 4 ++--
>  arch/arm64/boot/dts/ti/k3-am654-base-board.dts     | 2 +-
>  arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi    | 4 ++--
>  arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi    | 4 ++--
>  arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi   | 4 ++--
>  8 files changed, 14 insertions(+), 14 deletions(-)

https://lore.kernel.org/all/20220526204139.831895-1-krzysztof.kozlowski@linaro.org/


Best regards,
Krzysztof
