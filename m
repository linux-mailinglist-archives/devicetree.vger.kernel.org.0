Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 27D19506B3C
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 13:42:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351691AbiDSLn1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 07:43:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352324AbiDSLnM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 07:43:12 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 182BE1EEEB
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 04:40:24 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id u15so32246695ejf.11
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 04:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=hcwhzmzfL26TAKtQRPD1wNariBwcxaFreylxMdtXb80=;
        b=MwJ/XiGAyyPrcSbgJo3k5Qt6BHxqWTh4LApUB/2udnABbiFsrTItmlOpmxNseH09Cl
         XEIoaRZ3y49NNb+TWkoxlJ7GuV+20JT+pL+P3yU/c0i/cnROK+4P4zhm7n1cg8negyHp
         Ecc7487RWUynXX95NupT0Plw9izrrFIhFv0YES89lwEyaabL8OFlMMDCvgySp5pQNJx6
         7MryYQIFMfSIo+XJ8rz/qDB8GNb+E1a0SISdkKqPte9xKldZyy9XMDN05AIq14B+OuCN
         s+obkZssE2zV+x7mrnmnEnEgzJDz9O/KfDs1/3RYl4YrlPd3tt7I0W8C3QIN3aDAyDby
         GCHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=hcwhzmzfL26TAKtQRPD1wNariBwcxaFreylxMdtXb80=;
        b=tbLFrOWM/xpxoU6baXP3myvHZUnxx5VpTDBepHGYMzoug4kCaeXIyGS2aw0PRXjROm
         ib+7k1zylUaiAxCPeoUhpbhIFQUmZQHhkVIxzMVGsZG/XbH/G2b+huQ8SSPFVXVgZ4eD
         4XELBePs+z2uKWy5jdLG5GCG23aSCO1TukC+oF2pMr8vi1xbMlaCq0Azo+bucTw4VgTC
         mOpsKktaQpYTc+qi8Y2213t0sIk1/F7LxAHqw3yABpHMOTPLXFkgnxl5bzo6TcTcdqKr
         33JYiRoPoWaQpKkSvN29zLeaHkhFTmDwnw+nc2Xq+HMrpv8rqZysFV63i31FMfqDMW/+
         F4lQ==
X-Gm-Message-State: AOAM5304Toa0PG7GqkqPgqB1H6yu1EWGdeBy14D36Aoc3UoXU63eSvy5
        z1MvnszNZzpW3fyebqHLo1unbw==
X-Google-Smtp-Source: ABdhPJz1P9B0z3QsIUrpZk+2ju/oxQxuz+zzvYNFL0xJnzmXCwLmLp18B+zu9L//zCVqfBZ1agRh0g==
X-Received: by 2002:a17:907:a425:b0:6ef:8e2f:4215 with SMTP id sg37-20020a170907a42500b006ef8e2f4215mr10377380ejc.283.1650368422694;
        Tue, 19 Apr 2022 04:40:22 -0700 (PDT)
Received: from [192.168.0.217] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id b20-20020a1709063f9400b006e12836e07fsm5600637ejj.154.2022.04.19.04.40.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Apr 2022 04:40:22 -0700 (PDT)
Message-ID: <efb859ec-4ca4-ca2e-bc6c-c3e50e779dc6@linaro.org>
Date:   Tue, 19 Apr 2022 13:40:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v8 06/13] arm64: dts: freescale: Add i.MX8DXL evk board
 support
Content-Language: en-US
To:     Abel Vesa <abel.vesa@nxp.com>, Rob Herring <robh@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-mmc@vger.kernel.org, netdev@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, Jacky Bai <ping.bai@nxp.com>
References: <20220419113516.1827863-1-abel.vesa@nxp.com>
 <20220419113516.1827863-7-abel.vesa@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220419113516.1827863-7-abel.vesa@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/04/2022 13:35, Abel Vesa wrote:
> From: Jacky Bai <ping.bai@nxp.com>
> 
> Add i.MX8DXL EVK board support.
> 

Thank you for your patch. There is something to discuss/improve.
(...)

> +		/* global autoconfigured region for contiguous allocations */
> +		linux,cma {
> +			compatible = "shared-dma-pool";
> +			reusable;
> +			size = <0 0x14000000>;
> +			alloc-ranges = <0 0x98000000 0 0x14000000>;
> +			linux,cma-default;
> +		};
> +	};
> +
> +	reg_usdhc2_vmmc: usdhc2-vmmc {

usdhc2-vmmc-regulator or regulator-0

(...)

> +&thermal_zones {
> +	pmic-thermal0 {

Are you sure this passes the dtbs_check?

> +		polling-delay-passive = <250>;
> +		polling-delay = <2000>;
> +		thermal-sensors = <&tsens IMX_SC_R_PMIC_0>;
> +

(...)

> +	pinctrl_usdhc1: usdhc1grp {
> +		fsl,pins = <
> +			IMX8DXL_EMMC0_CLK_CONN_EMMC0_CLK	0x06000041
> +			IMX8DXL_EMMC0_CMD_CONN_EMMC0_CMD	0x00000021
> +			IMX8DXL_EMMC0_DATA0_CONN_EMMC0_DATA0	0x00000021
> +			IMX8DXL_EMMC0_DATA1_CONN_EMMC0_DATA1	0x00000021
> +			IMX8DXL_EMMC0_DATA2_CONN_EMMC0_DATA2	0x00000021
> +			IMX8DXL_EMMC0_DATA3_CONN_EMMC0_DATA3	0x00000021
> +			IMX8DXL_EMMC0_DATA4_CONN_EMMC0_DATA4	0x00000021
> +			IMX8DXL_EMMC0_DATA5_CONN_EMMC0_DATA5	0x00000021
> +			IMX8DXL_EMMC0_DATA6_CONN_EMMC0_DATA6	0x00000021
> +			IMX8DXL_EMMC0_DATA7_CONN_EMMC0_DATA7	0x00000021
> +			IMX8DXL_EMMC0_STROBE_CONN_EMMC0_STROBE	0x00000041
> +		>;
> +	};
> +
> +	pinctrl_usdhc1_100mhz: usdhc1grp100mhz {

and this as well... I don't remember if we have schema for this but even
without it, it breaks the convention. See other files.


Best regards,
Krzysztof
