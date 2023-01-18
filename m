Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B287671BBA
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 13:16:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230369AbjARMQo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 07:16:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230296AbjARMQW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 07:16:22 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2A1287656
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 03:38:02 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id q8so12649171wmo.5
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 03:38:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qOIO1rE9PZCrABiEdWhnhRZVKZAIBDgbALKy+wZ9WZU=;
        b=yEEDWz+DBCwKVuO01d/Sn6NPLU6NuUCJl87MclQJCiAPh2nhWPX2DD2g8VuiMrO35D
         KXSyGWXqE1DlTjYaKtdSeOJfYeRZgc37CduZ5tdB0DvbCVp2FlnXrrnB8F0RtQ9TdOaE
         fuo6Io2j+yQG+bWlu0fMBJ45q1RQKSi4UMu91A947b9JNZeb1iBAZ/75v1IXF6AnWRHl
         8UPv5vhtnETEsbgMzKjr5uNZdUG12cpfmdikOFgymleePBoyR03KwxZnFiiarVMGWlAG
         2wMMBtYFdX4jR19qTObucelDhmRmTRixAKvnfMuleKwKjoJ5E67JdsF/zqkdhu/3lUa6
         Z8Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qOIO1rE9PZCrABiEdWhnhRZVKZAIBDgbALKy+wZ9WZU=;
        b=e/Bt+evwrwJ0DtlLLlR7vULoZpJqp/eoQXmqUyU6VgtTELoq+pUfibRv4hbdJ/n0rA
         aDe/mXg9K7uNUKycuQoqnQvvZybguqDkwnMC7cspvdEuctlkyUOrKvCee7HH1oE6Z7oq
         OpxX4gRXBLlCSReqo7ruv1elIPpK5U1MsukvbOhjKVurq0hcpoeE00L2C7ZcYJmC5qs0
         HFlMM8W32tTCAvv6OAA2FacV2Sf2TtliIeH7sOwt+/R+pElX3c68v1zUG7Eb1crzbkhb
         TTGAsY44B//CcoJiuay2c1Jmb8E58svm62SAfKZIzteVlNtJRdLj1xS6Cqjrf1Q4YYPl
         by1w==
X-Gm-Message-State: AFqh2krrHzQrpBj7R531XphdA5f2Aqz3agvuSyOk562QjLQVlJntyP5c
        CQ4OTxxI/2tlPCnI+9yr6Ioptg==
X-Google-Smtp-Source: AMrXdXsQ3cy6DIdh7n50FsR1WDFr2hHnUUKkJQZ96IKPItPCzcVlVbfw8MyaCzLb7hWt71G/FO7fkg==
X-Received: by 2002:a05:600c:4256:b0:3da:1d51:ef9e with SMTP id r22-20020a05600c425600b003da1d51ef9emr6259902wmm.17.1674041881259;
        Wed, 18 Jan 2023 03:38:01 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id j32-20020a05600c1c2000b003c6b7f5567csm2610092wms.0.2023.01.18.03.37.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jan 2023 03:37:57 -0800 (PST)
Message-ID: <e3b73baf-b36b-17c0-f414-bbf2dd746411@linaro.org>
Date:   Wed, 18 Jan 2023 12:37:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH] MAINTAINERS: Add entry for DHCOM i.MX8M Plus SoMs and
 boards
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
References: <20230117223852.130143-1-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230117223852.130143-1-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/01/2023 23:38, Marek Vasut wrote:
> Add maintainers entry for DH electronics DHCOM i.MX8M Plus
> based SoMs and boards.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Christoph Niedermaier <cniedermaier@dh-electronics.com>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Marek Vasut <marex@denx.de>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: devicetree@vger.kernel.org
> To: linux-arm-kernel@lists.infradead.org
> ---
>  MAINTAINERS | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index d0a36e45aa4be..e9be585d507e9 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -5968,6 +5968,12 @@ S:	Maintained
>  F:	arch/arm/boot/dts/imx6*-dhcom-*
>  F:	arch/arm/boot/dts/imx6*-dhcor-*
>  
> +DH ELECTRONICS IMX8M PLUS DHCOM BOARD SUPPORT
> +M:	Marek Vasut <marex@denx.de>
> +L:	kernel@dh-electronics.com
> +S:	Maintained
> +F:	arch/arm64/boot/dts/freescale/imx8mp*-dhcom-*

We do not keep maintainer per board. The idea was to use in-board
emails, but the patch doing that was not accepted. But regardless -
entries per board in maintainers is crazy amount of new entries. Way too
many.

Best regards,
Krzysztof

