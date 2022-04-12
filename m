Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 349144FE076
	for <lists+devicetree@lfdr.de>; Tue, 12 Apr 2022 14:39:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238128AbiDLMhP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Apr 2022 08:37:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240049AbiDLMg5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Apr 2022 08:36:57 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF4C51A3AD
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 04:56:44 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id v15so11972779edb.12
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 04:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=6vxAMFFRr0NPCcUM2OeYvzLThu9KnprPtO/7Wfh+zGw=;
        b=ptim7LvKUVHYzXsNFJJ5lOaaox1uNgxiKhyPHrCda1KZNkPqmpHSSM7S74nwKh0dvL
         q4cVJEO3EkbIGIxyLH0TfH+HhFu8S3eeUES7UGraptR5tLGLxg/ZBaIJjGjNy2yAQ411
         uWchf47F0ACHsaUCiCK25xpQ0DHeL5nvO42fGfhWpzKbtesbxetvVWBKFtMtK3QlbKBz
         oahU5jP207DqRKUf7G82xDiGfJykhP2Q4aHMc8q37r87gs0Rve8ahNDV/Q1036Usxs5a
         aSiovyNq2WTYnHCtFmwmQ/Gbql3e6KlXgej00MEIrsa75JJj9G4N7uo9tII/8ItCdq5y
         NlRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=6vxAMFFRr0NPCcUM2OeYvzLThu9KnprPtO/7Wfh+zGw=;
        b=0po6PO3ReYfzG3vktGGw9OLo8JLnTqIvId+ti8/yfW65WFxXSuVurFOo0Uct3eQlxp
         uQf1silxjEfSt2//1sMRLuwk+d6P6Qbbl4QuJenk7+dJ2HMfXSlyz/RNW+kH/X8sPxjj
         VeFBdyaszNQvmsPKXpJ8zWmEmXQniEgy+JcRif551SvxKzdELbE2rszS1gHf4LD5EIOC
         jiOZDxdLRosZmnMLbGDBU4wE5vHthciuWN9Bm19TCjV/mmsp5l4cRepZ2c4/ra6vtT/U
         sv9gF0UzFK0mqiBNmiuGlpM5e2m62ym9J8UZ3F8LkWv2cxPoXV//tOHRT+LLrO83jyqk
         VKMg==
X-Gm-Message-State: AOAM530Koh2Rvv7enLulvTI/wD06bTm6A85/MWGCSqD4ZEZ3fSBPYx2C
        O/oUIQXcPlnQQs6ApEGKvWxQeA==
X-Google-Smtp-Source: ABdhPJy/oRgec0WQTvkI71j0XXmhBfTd5Z+XNoP8pK290bttfxckXJziNbgyTb89bNmiFkhIQYDrxA==
X-Received: by 2002:aa7:c790:0:b0:41d:7e0f:f15c with SMTP id n16-20020aa7c790000000b0041d7e0ff15cmr9193914eds.129.1649764603156;
        Tue, 12 Apr 2022 04:56:43 -0700 (PDT)
Received: from [192.168.0.195] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id c11-20020a056402120b00b004196059efd1sm17152944edw.75.2022.04.12.04.56.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Apr 2022 04:56:42 -0700 (PDT)
Message-ID: <a8d09ab7-7e5d-2166-13b4-621259bc46d6@linaro.org>
Date:   Tue, 12 Apr 2022 13:56:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 2/2 v2] ARM: dts: Add initial LS1021A IoT board dts
 support
Content-Language: en-US
To:     Changming Huang <jerry.huang@nxp.com>, robh+dt@kernel.org,
        krzk+dt@kernel.org, shawnguo@kernel.org, festevam@gmail.com,
        l.stach@pengutronix.de, alexander.stein@ew.tq-group.com,
        marcel.ziswiler@toradex.com, tharvey@gateworks.com,
        linux@rempel-privat.de, matthias.schiffer@ew.tq-group.com,
        cniedermaier@dh-electronics.com, sebastian.reichel@collabora.com,
        leoyang.li@nxp.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, arnd@arndb.de, olof@lixom.net,
        soc@kernel.org
Cc:     Alison Wang <alison.wang@nxp.com>
References: <20220411090828.1965450-1-jerry.huang@nxp.com>
 <20220411090828.1965450-2-jerry.huang@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220411090828.1965450-2-jerry.huang@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/04/2022 11:08, Changming Huang wrote:
> The LS1021A-IoT gateway reference design is a purpose-built,
> small footprint hardware platform equipped with a wide array
> of both high-speed connectivity and low speed serial interfaces.

Thank you for your patch. There is something to discuss/improve.

> +
> +&enet2 {
> +	fixed-link = <0 1 1000 0 0>;
> +	phy-connection-type = "rgmii-id";
> +	status = "okay";
> +};
> +
> +&esdhc{
> +	status = "okay";
> +};
> +
> +&i2c0 {
> +	status = "okay";
> +
> +	gpio: pca9555@23 {

Here and in all other places - generic node name, please. For example
pca9555 is "gpio"

> +		compatible = "nxp,pca9555";
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +		interrupt-controller;
> +		#interrupt-cells = <2>;
> +		reg = <0x23>;

Please put "reg" after compatible, everywhere.

> +	};
> +
> +	codec: sgtl5000@2a {

Ditto...

> +		#sound-dai-cells=<0x0>;
> +		compatible = "fsl,sgtl5000";
> +		reg = <0x2a>;
> +		VDDA-supply = <&reg_3p3v>;
> +		VDDIO-supply = <&reg_2p5v>;
> +		clocks = <&sys_mclk 1>;
> +	};
> +
> +	adc: max1239@35 {

and so on.


Best regards,
Krzysztof
