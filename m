Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 20F71660EE8
	for <lists+devicetree@lfdr.de>; Sat,  7 Jan 2023 13:52:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229974AbjAGMwY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 7 Jan 2023 07:52:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229517AbjAGMwX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 7 Jan 2023 07:52:23 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1229B76EC4
        for <devicetree@vger.kernel.org>; Sat,  7 Jan 2023 04:52:23 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id w13so2314190wrk.9
        for <devicetree@vger.kernel.org>; Sat, 07 Jan 2023 04:52:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RtSSUpkTAAa0faMSMLcMFUOC97GMlBMYMzm7yGq40bY=;
        b=iJ4WHksj2oew1dt3rIq81RPdZCU9GWksJsdgW7NOvJSWseL3YoFqhKxqnAXybVofjD
         h/g5rROVjku4gGE51scJ8Ms9sikj8q8zsyZXPfJSzYX6SYVy13yMk2bcLOMnKnIdhLcR
         D3tM0vAXDzv4w91iwHJt5MgYAnHiYJLvHbPJkSRBv3wWGvek6mBA6BCvQ88Mv+WaVF4r
         6vbaRJaGkXk7M+GFPPZQ/H2tKralEeEv5APseAWNwYMa0BuDCxRsYHPTSI7TGnSdIEKG
         +ZVSnvfmo6wbkIMis5OWPknV9QEvh8ihPkbgPKoy7NXAERkoJuB+xcuU1v3yMrLEzPBo
         Ql0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RtSSUpkTAAa0faMSMLcMFUOC97GMlBMYMzm7yGq40bY=;
        b=lbWUpuAEnB4OkPfnmxY39ifxF1C9QUI5raA5QYrUEU49pwlBstCIp1x/qhBxdklkTz
         8SJAiq0BrcBuT4L0iL4ZXZpliBg6TXAQkXOrTVlgisRHcWMbbd4nBSyJqDoa8bevwYLx
         UWz3V3Px7mG5G1k5gOHVi9mPRONUbL986cv2XdHazPM7jpQfpEv393AKGVeR6V9Z/dB1
         QQMRFjFIILZDyhopq0uKZ2/hBg2ZNd2bP005j5q022BxpqYOdFCpE0dwKtzTXPAkWu7R
         CwvAOJ2jAPv+7woacNDCDBnS6VLAGbeyICP5GvBR91JWJEufxf1NG+Jhs1ELCV8qary5
         EGSA==
X-Gm-Message-State: AFqh2koqpy8Nl8WFCZ7i1fbOSXPWNH1VpOXW3HK+mT4hjRuqluJJ5NZr
        jtiSm4gOFoNW4OwWcssebV6vQA==
X-Google-Smtp-Source: AMrXdXvhTbH70fsGHU1PGOG3wCiR5c7GutjmKKF07AQH50OdjrzYRUX3fRIvdFX1bTP9vN3sxbMBng==
X-Received: by 2002:a5d:5d8a:0:b0:274:fae4:a518 with SMTP id ci10-20020a5d5d8a000000b00274fae4a518mr35751416wrb.11.1673095941632;
        Sat, 07 Jan 2023 04:52:21 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id t17-20020adff611000000b00236488f62d6sm3715025wrp.79.2023.01.07.04.52.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jan 2023 04:52:20 -0800 (PST)
Message-ID: <d28e1516-f98f-42f4-7a9a-f71c57fe2b64@linaro.org>
Date:   Sat, 7 Jan 2023 13:52:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add dts for EmbedFire rk3568
 lubancat 2
Content-Language: en-US
To:     Andy Yan <andyshrk@163.com>, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc:     lasstp5011@gmail.com
References: <20230107115159.2125308-1-andyshrk@163.com>
 <20230107115320.2125479-1-andyshrk@163.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230107115320.2125479-1-andyshrk@163.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/01/2023 12:53, Andy Yan wrote:
> Lubancat 2 is a rk3568 based SBC from EmbedFire.
> 
> Specificati

(...)

> +
> +&pinctrl {
> +	leds {
> +		user_led_pin: user-status-led-pin {
> +			rockchip,pins = <0 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	usb {
> +		vcc5v0_usb20_host_en: vcc5v0-usb20-host-en {
> +			rockchip,pins = <0 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		vcc5v0_usb30_host_en: vcc5v0-usb30-host-en {
> +			rockchip,pins = <0 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		vcc5v0_otg_vbus_en: vcc5v0-otg-vbus-en {
> +			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	pcie {
> +		vcc3v3_m2_pcie_en: vcc3v3-m2-pcie-en {
> +			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		vcc3v3_mini_pcie_en: vcc3v3-mini-pcie-en {
> +			rockchip,pins = <3 RK_PC3 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	pmic {
> +		pmic_int: pmic_int {

No underscores in node names.

> +			rockchip,pins =
> +				<0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +};

Best regards,
Krzysztof

