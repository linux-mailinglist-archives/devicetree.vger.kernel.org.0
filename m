Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 539BC4F1075
	for <lists+devicetree@lfdr.de>; Mon,  4 Apr 2022 10:03:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347789AbiDDIFm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Apr 2022 04:05:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343920AbiDDIFl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Apr 2022 04:05:41 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4595817E28
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 01:03:45 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id m30so13191119wrb.1
        for <devicetree@vger.kernel.org>; Mon, 04 Apr 2022 01:03:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=8SQNSCl1uQRFQcDuyQdlt7wBlezOf9jiirA2VzBwlTs=;
        b=r7qbe0tbTjLNBedoiJzvlcd0MyQzMz89evtKZ45Moj8D2/wG66KyV1n8k8DOp8d6fj
         Y0/NgMDCFdJPZjLhXBd4X6t3IqVMTtFYcYv2xlc7qmKvB0o2rTaFxJew1fRY5ydikaoS
         6pYJ5mxtpL2IQCKXQFbETsgSOkfwesqVrUGv58cr8VVT9WkvP0TMrVlzJStclZNlCTbz
         xrcCnJX2m6T/5mVZExDIjRN68VcearoFIBnQTINBtWZmuVBnJayyYD5i6SYCZocu/pkl
         MeRSYCNnaT2X2SFZ8LpiktDFhRqmWYVftCc11bmOWdbR2kCUeiJSMftZcE2+RoRqb/XS
         OcTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=8SQNSCl1uQRFQcDuyQdlt7wBlezOf9jiirA2VzBwlTs=;
        b=OWVIU4O9nk4KM3K4ikHP1dQTeTR/h2pBbC60vsDUm1PvhPuJbz1tY/amCMHXfnI5I5
         z2vSM61XuO+hAOQitgQLcUpu8qZXCf364HN0Jxt4V2xrG3BcCyuNGt+U8bgKXHnPf43t
         22HBvITdXe8UB3xnKTQtSZyL7dHlrJ0SC0abV4wiqi2lek4rFpKnTA7LrqRd5AJT9WKG
         +woBUtH8swNjPDGG4ZHtdrbedngfHc9onZO51A1yQq2t4KcOlZGR+9DHkT79i/wU2cRI
         +C3QZnOb8Jd6JQo2hoyKXd+3BJZLlE9IC8dhXzRCh99sGmOXiP3dDXqU4eRDi1nyaa5d
         /t6w==
X-Gm-Message-State: AOAM530V5nJWcBHtY5hPvrCo5oN8ukLNuGFKuEmlWxuKD2vuVyXeJgfx
        ctSmhMoIQG+57nQ8bsKw1jQ2Vw==
X-Google-Smtp-Source: ABdhPJwnzzQCrd/ul/KUoS0o1nlGzDCH/uXy9DdlPxkD6ROj6GeaZpPH1NaKlI/9Hbf7XDWlF5NnvQ==
X-Received: by 2002:a5d:6d8f:0:b0:204:101e:753f with SMTP id l15-20020a5d6d8f000000b00204101e753fmr16529793wrs.707.1649059423757;
        Mon, 04 Apr 2022 01:03:43 -0700 (PDT)
Received: from ?IPV6:2001:861:44c0:66c0:1add:1b28:2457:eb46? ([2001:861:44c0:66c0:1add:1b28:2457:eb46])
        by smtp.gmail.com with ESMTPSA id 2-20020a1c1902000000b00380d3873d6asm8814162wmz.43.2022.04.04.01.03.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Apr 2022 01:03:43 -0700 (PDT)
Message-ID: <048b9b97-62b9-5add-9d37-0f91f708a3dd@baylibre.com>
Date:   Mon, 4 Apr 2022 10:03:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH V0] arm64: dts: add support for S4 power domain controller
Content-Language: en-US
To:     Shunzhou Jiang <shunzhou.jiang@amlogic.com>, robh+dt@kernel.org,
        krzk+dt@kernel.org, khilman@baylibre.com
Cc:     jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
        devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220401110306.3364551-1-shunzhou.jiang@amlogic.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
In-Reply-To: <20220401110306.3364551-1-shunzhou.jiang@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/04/2022 13:03, Shunzhou Jiang wrote:
> Enable power domain controller for Meson s4 SoC
> 
> Signed-off-by: Shunzhou Jiang <shunzhou.jiang@amlogic.com>
> ---
>   arch/arm64/boot/dts/amlogic/meson-s4.dtsi | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
> index bf9ae1e1016b..96ea95ea5eb9 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
> @@ -60,6 +60,12 @@ xtal: xtal-clk {
>   		#clock-cells = <0>;
>   	};
>   
> +	pwrc: power-controller {
> +		compatible = "amlogic,meson-s4-pwrc";
> +		#power-domain-cells = <1>;
> +		status = "okay";
> +	};
> +
>   	soc {
>   		compatible = "simple-bus";
>   		#address-cells = <2>;
> 
> base-commit: 1930a6e739c4b4a654a69164dbe39e554d228915

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
