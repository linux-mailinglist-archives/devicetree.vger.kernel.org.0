Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2829B65AB05
	for <lists+devicetree@lfdr.de>; Sun,  1 Jan 2023 19:48:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229552AbjAASss (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 Jan 2023 13:48:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229550AbjAASsr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 Jan 2023 13:48:47 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 600F62182
        for <devicetree@vger.kernel.org>; Sun,  1 Jan 2023 10:48:46 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id m6so28411724lfj.11
        for <devicetree@vger.kernel.org>; Sun, 01 Jan 2023 10:48:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NEnkYW37C9AQ6Rc2DVAeJqCNB7H/T0PjY6e9OKE45gE=;
        b=sAtMG3+OPdFNUTwZW25P3IKpzs/wvkgtTbLnSKVv6Zww0p05G4RCNMV1lVUxzkCbxQ
         HEDQXt+pSPT+hZSZYcJrRqwk+XNWgXDfObOu7eqXr85plfR6Lahm/FRPKRnI/qo4gVRh
         zLCkxTa9DUmCXu9Fywp2xjQbKcnZ93goF6NOVRQt3g5q77E3gAEvLSuToibuonerFzM2
         72nZ5I9f2gcEaATGFXKEi5nFc4kVCVzpEj8qRfheZr8ySWrOSlA2nq2fjUdpTKOHWJuL
         AcsjUyuV+Ac6e0oo6NY6kRFpqnr7ulrFtqsDcY1g3RZSvh8tzqcz02GJZcBELjwvbnPB
         Uq9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NEnkYW37C9AQ6Rc2DVAeJqCNB7H/T0PjY6e9OKE45gE=;
        b=q2/aMvFhORKE2+eNRMSVRH7b4jr7DVTJVgpwsXy0FtYv+859UISd4Z5WCAwpsSYQWh
         k4wI7stLrIDBhON5Yg0UdvLX4ctiOA/ehSeyIxy7pK13vBsKND/nhlsPybKTXzSITE43
         KEAB0+9g85OAApltVOXdog7ZGpVx6L17X6C64GHy0SijRqj3DSdrUV1/MpZnxKhoxDPK
         g3rPIJFtXUJrZRq7WwphR6D7O4VL2LHvGRlQ34LRKjyimhXwEyL/Vdg9lZ2iLP9XXBYJ
         GeWnrReNEvSzo8+pAcV3g/0oMYPGOTKdZu8wNA1846usHtTaYovklBolQOYo6znlnN92
         yRlQ==
X-Gm-Message-State: AFqh2koqU1HaTQjGpzM5xtxVLiZoyJGP/Uw8J9LY1NceoztaB2pe3pDY
        48yc8bJfYEM+QMQikEhOlIo2wQ==
X-Google-Smtp-Source: AMrXdXutEh5oGaTRPjDvCRtgPmdh7Ay1al8ViDXBwQzW7bCvEyIQMTB0DtfWDfskquDptmw2yZuwcA==
X-Received: by 2002:ac2:5e99:0:b0:4cb:35dd:e588 with SMTP id b25-20020ac25e99000000b004cb35dde588mr658375lfq.66.1672598924799;
        Sun, 01 Jan 2023 10:48:44 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id a8-20020a19f808000000b004cb1a9d1f88sm1683496lff.185.2023.01.01.10.48.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Jan 2023 10:48:44 -0800 (PST)
Message-ID: <7166589a-e358-8eaa-787b-2bd1f4538322@linaro.org>
Date:   Sun, 1 Jan 2023 20:48:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v2 3/3] ARM: dts: imx: Add support for SK-iMX53 board
Content-Language: en-GB
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230101184651.807900-1-dmitry.baryshkov@linaro.org>
 <20230101184651.807900-3-dmitry.baryshkov@linaro.org>
In-Reply-To: <20230101184651.807900-3-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/01/2023 20:46, Dmitry Baryshkov wrote:
> Add support for the StartKit sk-imx53 board, a simple development board
> with the iMX536A SoC.
> 
> Tested and works:
> - UARTs
> - SPI
> - I2C
> - GPU
> - USB
> - uSD
> - NAND
> - Ethernet
> 
> Not tested:
> - Display
> - VPU
> - capture
> 
> Not yet working:
> - Sound
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   arch/arm/boot/dts/Makefile           |   1 +
>   arch/arm/boot/dts/imx53-sk-imx53.dts | 362 +++++++++++++++++++++++++++
>   2 files changed, 363 insertions(+)
>   create mode 100644 arch/arm/boot/dts/imx53-sk-imx53.dts

Forgot to include changelog:
- Dropped vpu redundant node
- Moved phy-reset-gpios to the mdio->phy node
- Replaced default pinconf with specific values

-- 
With best wishes
Dmitry

