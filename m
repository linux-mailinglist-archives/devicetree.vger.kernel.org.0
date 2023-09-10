Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 21C44799DB6
	for <lists+devicetree@lfdr.de>; Sun, 10 Sep 2023 12:52:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346599AbjIJKwX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Sep 2023 06:52:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345116AbjIJKwW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Sep 2023 06:52:22 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2BAECCC
        for <devicetree@vger.kernel.org>; Sun, 10 Sep 2023 03:52:17 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-99bcf2de59cso437821966b.0
        for <devicetree@vger.kernel.org>; Sun, 10 Sep 2023 03:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694343136; x=1694947936; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eT9j+frCSTkj1005bwu2HtB6PUCSDjOepczmwk8Folg=;
        b=CXXzRhakqm7SGxjeHxOnZI4vyTA6UVPSwU3NKWAg2b6Y/fZOrKwxbNMf45Vh86k8q+
         PSwocqsOHmXDtcVygJdq6iOgfj1TULCDHPBqoL7Ei7apA8kt3pCizozja8HdUhuae4Tg
         olLzGJ+w4Wj8NLkQqM+P2I5sBM3nYjiAVIdb4uBSzC6DkGPhTbYLBOAM2hJOzaJAVsiI
         S6S/dpD4rLEW7HZOaB4sfsdiJXMZlpl/UpUWXxLcWLmMRymv/C3Sdodd/s5Fzm/8Lnt+
         DfKJL2Ov24YNLBUJWoWEKJo9NhyDpJ4tuuCOfFDvn9DFYpS5PxFFgIiJsqVFr+cWGhIV
         SQHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694343136; x=1694947936;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eT9j+frCSTkj1005bwu2HtB6PUCSDjOepczmwk8Folg=;
        b=RKrpJ3g/QbUOZHwQZvTMJKG7T9gUndsuMXbX2egY6DKpX+psOh3WJ1UPZZyy7dYV12
         VM3E1W6YgYou3sD+Q319HKQz8Md1nVowAgQxs4uqWwMus2ImUSZJ9geXVO3mdXjN0OFu
         eyF6C8bso4QTT28LKPKv78UQldHZ/P3vpPO8IrF0LBFSpNdyolrbEY0PFjpPZj3D0Azh
         xg4SrzH7JfviIEc8aNQRzo25P4/GRzR/4m+13iZe79g8bwA/GGQ9Afj9Zd6MXPDQp0m1
         2I33LEtApibxF9dSghyZJnTrgOpa/gr7PXsZANbSTn2JO1DpdHQYp29Rasl3q+luE8/V
         NXsQ==
X-Gm-Message-State: AOJu0YxOuSWqA8Up40rVOUz6A0oxt2xr3GgDPXOTiwfO1U3Y7oCZPZuC
        a+ZmdLgjylE7cM0GUM484aQCgw==
X-Google-Smtp-Source: AGHT+IGUc5jqdfkPhcVvRV6sbJBNxlXjoRoV3hzDPp/mXkWjeyZ+OLdEhHat3k7DMxKiDnrnd7eYdw==
X-Received: by 2002:a17:906:7486:b0:99e:1581:6437 with SMTP id e6-20020a170906748600b0099e15816437mr5816246ejl.46.1694343136278;
        Sun, 10 Sep 2023 03:52:16 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id e14-20020a1709067e0e00b0098f33157e7dsm3630076ejr.82.2023.09.10.03.52.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Sep 2023 03:52:15 -0700 (PDT)
Message-ID: <012ae913-0be3-e38a-9070-c75ae2d64468@linaro.org>
Date:   Sun, 10 Sep 2023 12:52:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 2/3] arm64: dts: imx8qxp-mek: Fix gpio-sbu-mux compatible
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc:     andersson@kernel.org, linux-usb@vger.kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
References: <20230909202957.1120153-1-festevam@gmail.com>
 <20230909202957.1120153-2-festevam@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230909202957.1120153-2-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/09/2023 22:29, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Per gpio-sbu-mux.yaml, the compatible entry is incomplete.
> 
> The imx8qxp-mek board uses a CBDTU02043, so complete the gpio-sbu-mux
> compatible accordingly.
> 
> This fixes the following schema warning:
> 
> imx8qxp-mek.dtb: gpio-sbu-mux: compatible:0: 'gpio-sbu-mux' is not one of ['onnn,fsusb43l10x', 'pericom,pi3usb102']
> 	from schema $id: http://devicetree.org/schemas/usb/gpio-sbu-mux.yaml#
> 	
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  arch/arm64/boot/dts/freescale/imx8qxp-mek.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> index 7924b0969ad8..a06a6491ef20 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> @@ -31,7 +31,7 @@ reg_usdhc2_vmmc: usdhc2-vmmc {
>  	};
>  
>  	gpio-sbu-mux {
> -		compatible = "gpio-sbu-mux";
> +		compatible = "nxp,cbdtu02043","gpio-sbu-mux";

Missing space after ,

Best regards,
Krzysztof

