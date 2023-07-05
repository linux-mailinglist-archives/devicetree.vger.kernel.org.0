Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8FB80747D31
	for <lists+devicetree@lfdr.de>; Wed,  5 Jul 2023 08:37:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231555AbjGEGhr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jul 2023 02:37:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229635AbjGEGhq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jul 2023 02:37:46 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 291D7173E
        for <devicetree@vger.kernel.org>; Tue,  4 Jul 2023 23:37:36 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-992e22c09edso431962466b.2
        for <devicetree@vger.kernel.org>; Tue, 04 Jul 2023 23:37:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688539054; x=1691131054;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cpP88mf+3RwT3RQQZwbh7gS0aJM/McgN4Cq6ljoPHaw=;
        b=SYqgRkooI2H+SlFPD5UN209G74Y6Eip99V1n+GE/gCO9XiOZRbH2+LFQYV4zK8XgTl
         9S/CsLWHQTqc1+eMbLG5kvdGpJJ4VvHX6QKLXnMpMuzAAl/xB7RfkRRzfHqCury8hFeZ
         0mHRuWViiDIdlyMg5xP3ZE8ed3ENZSbRd42QOnZkO/HKu/pqIZe391PPXKal8BWzsK/5
         3z07nJz13y09AXfugtbdDxOO/UKJ+dr7MPS/srDw4sngeL42LF2+wqgy5RcwUblMdipz
         RZEO15ePbl7cKJS5tizvb7whyfjLYm/EPWK0Nw/KNP+c7YaPtnbJKjTiaA8Q7zEHqHyt
         VM0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688539054; x=1691131054;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cpP88mf+3RwT3RQQZwbh7gS0aJM/McgN4Cq6ljoPHaw=;
        b=SLRH25szSTq2acLHTRxTW31COvhb5wCOoP3HqOqOSoJaJ10S7dODhNJgwjsvTdWnYu
         Vh7yqLRFCsfd5wtSaHor1QIoRfxFYFKsTRuGwJL+UttpSN567SW2zNcflN4RHWtN3cNt
         xE4USZDslYhLboyHIfA49MNDr8YUpy5mBb14YxxIvRkUJLOL5NIW1jcg+CV0wV781XKD
         lusYcFPBfJKhtrjBSlNLBvamAn3L+4tLoGdIRe+nc3mVUeRYNJHHgNZztLiZxSM52l+w
         xGCZh7z8f0jilmgz28l1Jcm164WOcV3k/jBcKqKcUPHywHiI5Y1B+Kt8IKvtW5clKD2G
         7oFQ==
X-Gm-Message-State: ABy/qLZdF3VsuY0/V9jr7D8KoF4UjpO6IrgU52mVorTmdhyD1keVNCPp
        LofrfjbOx6kC7pvPdqFKER1p7g==
X-Google-Smtp-Source: ACHHUZ73axf5oiNG42bIdXcPUUsxukZp+Ncl16plzTfGlPENelpuGWvLivoUs657INDgvbG+rxISlw==
X-Received: by 2002:a17:906:3405:b0:982:9b01:a57c with SMTP id c5-20020a170906340500b009829b01a57cmr11049094ejb.12.1688539054522;
        Tue, 04 Jul 2023 23:37:34 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id i26-20020a1709063c5a00b00991d54db2acsm11702913ejg.44.2023.07.04.23.37.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Jul 2023 23:37:34 -0700 (PDT)
Message-ID: <0a664d16-22e7-6061-db0e-9669ab40af73@linaro.org>
Date:   Wed, 5 Jul 2023 08:37:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 3/3] arm64: dts: freescale: Add DEBIX SOM A and SOM A I/O
 Board support
Content-Language: en-US
To:     Marco Felsch <m.felsch@pengutronix.de>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        shawnguo@kernel.org, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, marex@denx.de, frieder.schrempf@kontron.de
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230704184109.991104-1-m.felsch@pengutronix.de>
 <20230704184109.991104-3-m.felsch@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230704184109.991104-3-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/07/2023 20:41, Marco Felsch wrote:
> Add support for the Debix SOM A + SOM A I/O board. The commit enables
> only the basic features like:
>  - 2x UART
>  - 2x Network
>  - eMMC/µSD
>  - CAN
>  - QSPI

...

> +&i2c1 {
> +	clock-frequency = <400000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c1>;
> +	status = "okay";
> +
> +	pmic@25 {
> +		compatible = "nxp,pca9450c";
> +		reg = <0x25>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_pmic>;
> +
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <3 GPIO_ACTIVE_LOW>;

Wrong flag.


Best regards,
Krzysztof

