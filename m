Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3E285671F51
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 15:20:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230261AbjAROUC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 09:20:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230280AbjAROTh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 09:19:37 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17D2459545
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 06:01:10 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id q10-20020a1cf30a000000b003db0edfdb74so1253200wmq.1
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 06:01:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aZBKkU0p1ifB8dy0pGjPYbhLEUEXmJ0xjbIY29Ry3iE=;
        b=b60+q1YjP7qbDh8Kj9T/7sDSquc4YVdiF3FImW5/TAT9aDYKQxnPqo5s0miPCG/GDr
         Ll2zc+iT8HAVOI06P5PrVbmcYiwjTBu5w7OlJ9hy/v8xHhuuBEUB9AnFxOGEA02lzoCI
         ocXUbemRgn/8U7mLf6pz0OQCx6x8TGIE9aDtPFWT2XxZdEAEH24r8bAGnkpxocuPu7Z2
         nYJM0GajJHV/nT70pjARfTjEBHpdDBR5F2bQfRREQQK1R6lafGMc0K9pmUNYyK9toHjP
         Pe21ZbcIE5OAO6wvpFI7TgYsrBYzy2RpPz7hFqdqsKWLKHbPw3pyLiHMIStyIXqF3S+I
         WsJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aZBKkU0p1ifB8dy0pGjPYbhLEUEXmJ0xjbIY29Ry3iE=;
        b=uuQxxqkofHKdLnNUNIERtLODkubMm53E2urBZapYdBmSPnGHTASBBq3kR18EV+ldil
         smjz00sa1PdIJg8TwlnP4zFaiPG1L6xtcr+X46tqaaf7iYnLWnRe8eC02X9czOc7h8UZ
         mYVGFgQxbug1DQeGUfU+C5pb3iWU85h4z97oalkhViSqMRSuQfrvuSidjXA5g8RS1Jmj
         ZHAmAT6YKY+T93ohCHzDrkKbUBVl02ywbnP6gMJdcPl394zroQlKxUhfuraeef4GFBdg
         xsKf3S2ydRi6t0Pj+8dJHA66tDs9Ut/GjqrYlwdmXvKuDsJnUEHtv1Vdfx933ZR4eiia
         GO1A==
X-Gm-Message-State: AFqh2kqvwROP6WMCZ9N3LcJTAxzvBg+gOANfdg+Za44ZjwJB4BjRv0OZ
        op1EpZRZbIuKn9YXqG+qbefz8g==
X-Google-Smtp-Source: AMrXdXsphle9IlmzDkhMoqlXgaa/nlJDQ5WqI5ZTTujbsWYLGVhgECC7mD8WhBGRFmL1yw6hv4Y5TQ==
X-Received: by 2002:a05:600c:34ce:b0:3db:25f:be9e with SMTP id d14-20020a05600c34ce00b003db025fbe9emr6775212wmq.33.1674050468677;
        Wed, 18 Jan 2023 06:01:08 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id p18-20020a05600c359200b003db040f0d5esm2114895wmq.33.2023.01.18.06.01.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jan 2023 06:01:08 -0800 (PST)
Message-ID: <91b93fed-5bf1-b1d8-0bca-1b945b57a576@linaro.org>
Date:   Wed, 18 Jan 2023 15:01:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v4 14/17] arm64: dts: freescale: apalis-imx8: add flexcan
 functionality
Content-Language: en-US
To:     Marcel Ziswiler <marcel@ziswiler.com>, devicetree@vger.kernel.org
Cc:     linux-kernel@vger.kernel.org, linux-imx@nxp.com,
        linux-arm-kernel@lists.infradead.org,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>
References: <20230118072656.18845-1-marcel@ziswiler.com>
 <20230118072656.18845-15-marcel@ziswiler.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230118072656.18845-15-marcel@ziswiler.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/01/2023 08:26, Marcel Ziswiler wrote:
> From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> Add Apalis CAN1, CAN2 and optional CAN3 functionality.
> 
> Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> ---
> 
> Changes in v4:
> - New patch adding flexcan functionality.
> 
>  .../boot/dts/freescale/imx8-apalis-eval.dtsi   | 10 +++++++++-
>  .../dts/freescale/imx8-apalis-ixora-v1.1.dtsi  | 10 +++++++++-
>  .../dts/freescale/imx8-apalis-ixora-v1.2.dtsi  | 12 +++++++++++-
>  .../boot/dts/freescale/imx8-apalis-v1.1.dtsi   | 18 +++++++++++++++---
>  4 files changed, 44 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8-apalis-eval.dtsi b/arch/arm64/boot/dts/freescale/imx8-apalis-eval.dtsi
> index 003bc5377ce7..3212877773e3 100644
> --- a/arch/arm64/boot/dts/freescale/imx8-apalis-eval.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8-apalis-eval.dtsi
> @@ -35,7 +35,15 @@ &fec1 {
>  	status = "okay";
>  };
>  
> -/* TODO: CAN */
> +/* Apalis CAN1 */

Squash the patch.

Best regards,
Krzysztof

