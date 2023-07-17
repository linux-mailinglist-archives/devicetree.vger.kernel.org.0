Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC5A9755DBE
	for <lists+devicetree@lfdr.de>; Mon, 17 Jul 2023 10:03:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229539AbjGQID2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jul 2023 04:03:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231226AbjGQID1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jul 2023 04:03:27 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 854ADE56
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 01:03:23 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-51e429e1eabso6012003a12.2
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 01:03:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689581002; x=1692173002;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tZHHwD1zM4Zx8LGWaUEDa1H6Zt0saXCDHWEyOcVi++E=;
        b=lpwPHa34dU6D0PS/3roFsr48qQ5n/DyS9+8Fdzja1ODIgukpS2BJ41TYv76huRH4h2
         oFCfmniU6wMh8iz8aENGRP9e35Z1EFYnexDAQ4PAGNCvLZJTr2FvwaIyVbi5Zh/CnpsP
         LsccJVfP4ahGjt6Qg1i//laWNwaQszNR2iEUOE7eS/ry3DmQlCPH1KdLEMHGn2LWIOxw
         CQiBKdTIZH2XBmUiXOYfE9cAadWogyAgfmr/fcku5g1Fo+Z6IRO4hMCWabNdcTTELyrB
         /gvVH1kd7EdXFl2pdvkvnbgkgAS683EDk1VXQ7PgxQRbQkvl1UzWmXhi++wwgLQf8YMk
         tYHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689581002; x=1692173002;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tZHHwD1zM4Zx8LGWaUEDa1H6Zt0saXCDHWEyOcVi++E=;
        b=l86u5Dcxq3hEWc/eHoWo8axM5HP/U/qp1FkXiX+MCTD64j7DamoLTdGFs4hqSIVjSr
         STKnqEDWQbjfmlpxFqUz3n0xMIVdDltjr5zVZIhMw2g5wgth22ub8Er0uh8u21XLU3Bb
         izL37wmGDOlnKglfYrr8V3q1fmRvRJ5qbcqTMgpdgtv/pU5kD5zDveLk6KHPDTOuTDU0
         aY5xdCE7LXjFRMKKZWFx+ffl74XnphuhPF+s8bmHoJS8S0pNMAZZoiWLOf7qetNaMMkd
         5vKHbjjRp5I79wbI7ShDzfv1tlQd2eHjsyOkqDOZs3U44Dhl7z2+wDuQi8l2xIZCfbng
         PrHw==
X-Gm-Message-State: ABy/qLaHAAG3MaVM57RAIVmVsKaeEcDCXQn2MVZDVUIr5Ny7rt2hFtjO
        DocgMtWlKfG+4ilRvJ4KN1C4DA==
X-Google-Smtp-Source: APBJJlHMkwln++jumBBEk8DQG95I5uNY+j0lnVLVVsO5g9bfv405MjUbtG/FCeNexvNQ0BiCPxywmQ==
X-Received: by 2002:a17:906:2096:b0:982:2ece:2a32 with SMTP id 22-20020a170906209600b009822ece2a32mr10958981ejq.26.1689581001747;
        Mon, 17 Jul 2023 01:03:21 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id h4-20020a1709063b4400b00989027eb30asm328939ejf.158.2023.07.17.01.03.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jul 2023 01:03:21 -0700 (PDT)
Message-ID: <b3755c4b-fee0-85e3-4066-fb20c1ad99a3@linaro.org>
Date:   Mon, 17 Jul 2023 10:03:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] arm64: tegra: Fix HSUART for Smaug
Content-Language: en-US
To:     Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        thierry.reding@gmail.com, jonathanh@nvidia.com,
        devicetree@vger.kernel.org, linux-tegra@vger.kernel.org
References: <20230714101018.10617-1-diogo.ivo@tecnico.ulisboa.pt>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230714101018.10617-1-diogo.ivo@tecnico.ulisboa.pt>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/07/2023 12:10, Diogo Ivo wrote:
> After commit 71de0a054d0e ("arm64: tegra: Drop serial clock-names and
> reset-names") was applied, the HSUART failed to probe and the following
> error is seen:
> 
>  serial-tegra 70006300.serial: Couldn't get the reset
>  serial-tegra: probe of 70006300.serial failed with error -2
> 
> Commit 71de0a054d0e ("arm64: tegra: Drop serial clock-names and
> reset-names") is correct because the "reset-names" property is not
> needed for 8250 UARTs. However, the "reset-names" is required for the
> HSUART and should have been populated as part of commit a63c0cd83720c
> ("arm64: dts: tegra: smaug: Add Bluetooth node") that enabled the HSUART
> for the Pixel C. Fix this by populating the "reset-names" property for
> the HSUART on the Pixel C.
> 
> Fixes: a63c0cd83720 ("arm64: dts: tegra: smaug: Add Bluetooth node")
> Signed-off-by: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
> ---
>  arch/arm64/boot/dts/nvidia/tegra210-smaug.dts | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts b/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
> index 2c608d645642..bcb533cc002c 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
> +++ b/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
> @@ -1364,6 +1364,7 @@ serial@70006000 {
>  
>  	uartd: serial@70006300 {
>  		compatible = "nvidia,tegra30-hsuart";
> +		reset-names = "serial";

Why reset-names is board specific? This makes little sense. If you need
reset-names, then it is part of SoC.

Best regards,
Krzysztof

