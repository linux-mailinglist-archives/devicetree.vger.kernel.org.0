Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4986457855B
	for <lists+devicetree@lfdr.de>; Mon, 18 Jul 2022 16:28:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234238AbiGRO2m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jul 2022 10:28:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233817AbiGRO2l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jul 2022 10:28:41 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87DF8E08F
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 07:28:39 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id r9so19613237lfp.10
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 07:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=EEVhzQnfaeo8RGfWKKBG4R4Qy8MCeB6s3/UGPiuFDGk=;
        b=l+RsQJLYuRzU2srE3sz1+Xkobf7m9387jofZ0jO+O+TvEjPQarTlaPm0rNNSA+SA0B
         HCi4EmN3Sv7DV2hE3xB5VTC7xH/1f2pixJndWh2g6VNPb4EfpXb8PDHwxrj3vDnylr9G
         5247m0A2zegEkZLgFbJdYKNQb+WdwSkwumBieFMQKm+8L+tgZL2DWiOQww4UlmzPjpvf
         PmCgajYKDRCGtxckFbX+4FWJNCnN//6e8qA+e4eO7kB/v3E/bS1UHg4tfGcTH6YHK4Ax
         rbfudhIMa9kxgt4h6HAk3bEfmHs29DMwFYP0MvD06qKBvCfcv93jPvz69HGiKPHxI9O0
         6VSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=EEVhzQnfaeo8RGfWKKBG4R4Qy8MCeB6s3/UGPiuFDGk=;
        b=Lt2Hnqa0ipOST/FU3eHY+op71MtTgu7v4Ec3beNIbOMW/PXLarN6tHWJoTAfXbP7kI
         Dk+ml6Ls3oSxrlEOzFylnA2Ztuyms/P88enijtRsc7P3aAQaPufxWAYjn06FoVBGzmrN
         YppjXA/rI1YASGFyVD62Q+YzGnvPB4wGaKm6yHXfNNsVuscvHkq1h1UhBFp8zG1w54OF
         xcHfHz4S8gAozDcjXOKU82aonRjlEALReCInVr23B85StSA3HqdsnfEfqfLS1U9wrOcP
         apsindEcvLwjuxYbfZj8T4IJXyA3Xs0+EOv4TJP5bEzprgx2eeTKVqsv3+Xq6mWscUME
         RaXg==
X-Gm-Message-State: AJIora/fc7qqnCJRnZ4TVPKFoVJzRGFSIAXQPWTIU0WQ8OnclXrVabu+
        l07BKovvcTmYBROEfZveGlWdYw==
X-Google-Smtp-Source: AGRyM1tLMM7i1ct/kXA+jcAh+hm7oU6HjGG0FYLSKpJYiIrCBlnQyGABDVPi9B6996sE3NnmfCEt7Q==
X-Received: by 2002:a05:6512:3d15:b0:489:d97d:8927 with SMTP id d21-20020a0565123d1500b00489d97d8927mr15638309lfv.80.1658154517942;
        Mon, 18 Jul 2022 07:28:37 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id s27-20020a05651c201b00b0025d30dba34asm2130114ljo.113.2022.07.18.07.28.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jul 2022 07:28:37 -0700 (PDT)
Message-ID: <2719bf40-475c-65f6-a537-e2e64b98126e@linaro.org>
Date:   Mon, 18 Jul 2022 16:28:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] arm64: dts: rockchip: Add analog audio output on
 quartz64-b
Content-Language: en-US
To:     Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220718064336.822773-1-frattaroli.nicolas@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220718064336.822773-1-frattaroli.nicolas@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/07/2022 08:43, Nicolas Frattaroli wrote:
> This adds the necessary device tree changes to enable analog
> audio output on the PINE64 Quartz64 Model B with its RK809
> codec.
> 
> The headphone detection pin is left out for now because I couldn't
> get it to work and am not sure if it even matters, but for future
> reference: It's pin GPIO4 RK_PC4, named HP_DET_L_GPIO4_C4 in the
> schematic.
> 
> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> ---
>  .../boot/dts/rockchip/rk3566-quartz64-b.dts   | 32 ++++++++++++++++++-
>  1 file changed, 31 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> index 02d5f5a8ca03..a53cf81494fd 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> @@ -42,6 +42,21 @@ led-user {
>  		};
>  	};
>  
> +	rk809-sound {

Node names should be generic.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

Just "sound"


Best regards,
Krzysztof
