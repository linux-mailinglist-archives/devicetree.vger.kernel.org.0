Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E79F6B0600
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 12:31:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229814AbjCHLbm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 06:31:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229482AbjCHLbl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 06:31:41 -0500
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8856FA6174
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 03:31:40 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id o12so64363108edb.9
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 03:31:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678275099;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SlEPc3hcrmapBm9NauxvzSjilndCIvXC382t1TVmJ6w=;
        b=yrXqGP4vYmpFUk6t4mwR+2OQS943kWX0+q9ngxezl5yW+dv3aIvRnye8fIHWujpoKV
         Y/dw9uVzHqTEwJtjpoK54vX58BApIurr5vNmHTSlOwtYTqH3Z4ruQ8+V5sfQkBg3fl0t
         lJ0rKK9VO1LosNr8QGSieZf949tzYhEcUUhXg2ly6E/dxMchlkgNyfN+rsvKBNtwt7oe
         oqybiYwJVH0bUSiEJY0p0CsPw+VwHJ4eUN3jJdvW5JLwV3Z3mJRmExL82oHi7k7C1mJx
         6JZTg+dg1qfsnI3l3eTNcERj72RurlTNKGBpOP4w7ABTf1m21rLGArARA2RkAs5xqd0v
         mVDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678275099;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SlEPc3hcrmapBm9NauxvzSjilndCIvXC382t1TVmJ6w=;
        b=wD221AStHS437IA1G7cDQb5nzstUu32YKobTxfnHznZ1qErKHTwFWGBlMxpwy8+qcn
         18EupSw8LO4iHkunttW99LQDxrajpGqE6R106pjj25wdhFTEJg5rPd+tYU1VpZeS8tPl
         rmWHBgvEm6uquGlbz5nCBmpPIFXbn6XfVSmvDGmZ5wzlPTnP2+6KDx6AO65HWJMCaCum
         MdqBg61VuTUrdFnP3fB682wPqMd1omxXOqyMryHsb4fBhVhmALURVQ+QMsRnV/cJotSk
         bOXHS+Yl3dbb1gcDixPLhpnjYLSWosos24F0cAaxsc0u7ccqFBPbzXifG70zDkvaWSq8
         GzJQ==
X-Gm-Message-State: AO0yUKVPCnMg4bTlSwxGerguyOHuKT+nUw5OfCcZWYZ1efNvnox0kKfw
        yCMef1kMCWv72oD4aXwkpFdOTA==
X-Google-Smtp-Source: AK7set+avemZThhDRSso8zHgwhY4mcE82Opsw6cakNWEKQlVoJSZxxbxy34TPwRQ/xGFmLTADrekIg==
X-Received: by 2002:a17:906:64d:b0:8b1:77bf:3be6 with SMTP id t13-20020a170906064d00b008b177bf3be6mr17141027ejb.10.1678275099075;
        Wed, 08 Mar 2023 03:31:39 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:ff33:9b14:bdd2:a3da? ([2a02:810d:15c0:828:ff33:9b14:bdd2:a3da])
        by smtp.gmail.com with ESMTPSA id s15-20020a170906454f00b008d8f1b238fdsm7480048ejq.149.2023.03.08.03.31.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 03:31:38 -0800 (PST)
Message-ID: <4204317f-6715-cdeb-343d-611aea0d554a@linaro.org>
Date:   Wed, 8 Mar 2023 12:31:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R5S
Content-Language: en-US
To:     Vasily Khoruzhick <anarsoul@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Peter Geis <pgwipeout@gmail.com>, Andy Yan <andyshrk@163.com>,
        Chris Morgan <macromorgan@hotmail.com>,
        Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
        Brian Norris <briannorris@chromium.org>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Maya Matuszczyk <maccraft123mc@gmail.com>,
        Chukun Pan <amadeus@jmu.edu.cn>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        Tianling Shen <cnsztl@gmail.com>
References: <20230308063240.107178-1-anarsoul@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230308063240.107178-1-anarsoul@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/03/2023 07:32, Vasily Khoruzhick wrote:
> Add devicetree binding documentation for the FriendlyARM NanoPi R5S.
> 
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 35f74eda30ae..0813ad22dc76 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -201,6 +201,11 @@ properties:
>                - friendlyarm,nanopi-r4s-enterprise
>            - const: rockchip,rk3399
>  
> +      - description: FriendlyElec NanoPi R5S board
> +

Does not look like ordered alphabetically. Are you sure this is correct
place for it?

Best regards,
Krzysztof

