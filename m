Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 602D56484BA
	for <lists+devicetree@lfdr.de>; Fri,  9 Dec 2022 16:12:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229703AbiLIPMS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Dec 2022 10:12:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230202AbiLIPLv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Dec 2022 10:11:51 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DA8A8424F
        for <devicetree@vger.kernel.org>; Fri,  9 Dec 2022 07:11:48 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id b3so7496264lfv.2
        for <devicetree@vger.kernel.org>; Fri, 09 Dec 2022 07:11:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7cuUWzalGLeE3U/K66CMEQVIJgCrRwDmBLE6q4R3bQQ=;
        b=O50DfcpCmh/95hsBmIq4ezUYhOmXILd+8P/BZDcOZHpbQa+wNnV1R5daYSfIMEKqEl
         qBli7kSxAExZi5vJg4or3a7jDyHQAXTz2EPAjRQRLGzTgfDoykJ3063Mwoa4i4R2ju2S
         OMBp3EKAEh4l2n6pBIkCCobTu8qFRrRrtNUtKfHP44I3ar6RHWBW/iQRymjpYNj2uvfz
         AohNzZWIywFGMCBkHAhWZGCgCtb5PhsN8x7BsjBs/erDxKKicTmbzN9tdiovn1/aaImb
         E2naBnMqxuDwFGpK2ZpkJg6iamp4fPmAP9KTkuNryTouapq/ON8RQmHH1ld2n9xhoOVB
         QRNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7cuUWzalGLeE3U/K66CMEQVIJgCrRwDmBLE6q4R3bQQ=;
        b=ZjUOrBNsGAHzHdnZ52UMgE7IdFEJJqKm8bLwZ9cYsHu5W0LHv/G9vPYVKgRD6HtE0q
         lw+mWLkGIgWXj6Qv3N3c33caElvclW83nGfbBKV+yo1lggUjWeCe8JC9cbSnb6kNjpta
         B0ToKYUTYNwNEVm1ICWw8hSmTHuDbsmDpVMXRoqtFCd1LJ7CLATUeS+UGxuLOTopcHCC
         gsRHhbcHP0rq4s6w+oGZE/8B06R/6n/gwIK5d5ExRW2B8QMUYMxHS1LY6MhyAsBjQGEC
         nrAPtBIEiW0IsOgXJwYcfU8IeiOojCCC6PIjbWDhgb180NuKUej8yIkZWnX3nIybclqZ
         vM+A==
X-Gm-Message-State: ANoB5pki5la1eSIxwsKapUHfSARTiPvykmEnOqYQdOSaSpvsDEryjq2X
        8zHaVUlzZbN/I0TAhjEWExisbw==
X-Google-Smtp-Source: AA0mqf58IgWVzN5mqZ7Bf20XMCGVYjy5o/MHY56iAFYEDVMalm0AKxvwtUjT5a3UKzEG221l1DLUYg==
X-Received: by 2002:a05:6512:1318:b0:4a5:3735:9cc5 with SMTP id x24-20020a056512131800b004a537359cc5mr1937755lfu.33.1670598706741;
        Fri, 09 Dec 2022 07:11:46 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id y3-20020a199143000000b004b4bb6286d8sm297232lfj.84.2022.12.09.07.11.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Dec 2022 07:11:46 -0800 (PST)
Message-ID: <ff731bed-1df5-aafd-d490-7bdf9382ff38@linaro.org>
Date:   Fri, 9 Dec 2022 16:11:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH] arm64: dts: zynqmp: Add xlnx prefix to GEM compatible
 string
Content-Language: en-US
To:     Michal Simek <michal.simek@amd.com>, linux-kernel@vger.kernel.org,
        monstr@monstr.eu, michal.simek@xilinx.com, git@xilinx.com
Cc:     Harini Katakam <harini.katakam@amd.com>,
        David Heidelberg <david@ixit.cz>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michael Grzeschik <m.grzeschik@pengutronix.de>,
        Michael Tretter <m.tretter@pengutronix.de>,
        Piyush Mehta <piyush.mehta@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>,
        Robert Hancock <robert.hancock@calian.com>,
        Sean Anderson <sean.anderson@seco.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <718283a9f5493ab63b4aaa12337dd5cab6538ff5.1670594172.git.michal.simek@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <718283a9f5493ab63b4aaa12337dd5cab6538ff5.1670594172.git.michal.simek@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/12/2022 14:56, Michal Simek wrote:
> From: Harini Katakam <harini.katakam@amd.com>
> 
> cdns,zynq/zynqmp/versal-gem was recently deprecated in Linux in
> favour of xlnx prefix. Add this new compatible string and retain
> the existing string for compatibility with uboot drivers.
> 
> Signed-off-by: Harini Katakam <harini.katakam@amd.com>
> Signed-off-by: Michal Simek <michal.simek@amd.com>
> ---
> 
>  arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> index 8553299f12eb..233127d94204 100644
> --- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> +++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> @@ -507,7 +507,7 @@ nand0: nand-controller@ff100000 {
>  		};
>  
>  		gem0: ethernet@ff0b0000 {
> -			compatible = "cdns,zynqmp-gem", "cdns,gem";
> +			compatible = "xlnx,zynqmp-gem", "cdns,zynqmp-gem", "cdns,gem";

That's not what the bindings are saying. If this was the intention of
AMD, you should have replied to my patch that you need prolonged
backwards compatibility.

Best regards,
Krzysztof

