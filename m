Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D4C2565591
	for <lists+devicetree@lfdr.de>; Mon,  4 Jul 2022 14:38:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233912AbiGDMiX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jul 2022 08:38:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233964AbiGDMiV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jul 2022 08:38:21 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA4D2C63
        for <devicetree@vger.kernel.org>; Mon,  4 Jul 2022 05:38:19 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id t25so15566994lfg.7
        for <devicetree@vger.kernel.org>; Mon, 04 Jul 2022 05:38:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=BAn7H856GfFRIZFIPVXMWyj53npckuCFDy0OCv3VUpA=;
        b=ttufPLcTzCznFU5yCsxwU6S2KKVGSbhhl1fAH1EC/QzUhgf5uu757WjgKjCILW6C8G
         ahnSm/UjhZWTglFPNpkRIqigLPNAdTTxYrUW/kvlcHzSP9lHm6LODb7RYRLLrwMvXMyb
         E6MhPv2VXM2CbgjD9ayU4di+itAGXAmQcI0Ubus9FL/o8zGyP3+QXSernOCsmyDXhWSw
         RXv+RR5rzdHAHxxYuJb/VIDS0BB5RwP9qBeV4XqjYZ363eVcqgw3pf42j/Ao0HpPHA7L
         mlpp4lPV6WC9Fmybv7sumvnEDbDhQI16EubQ0mhf+MX+n7+r0ovazuyjaoVNMYIfgZiM
         tDAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=BAn7H856GfFRIZFIPVXMWyj53npckuCFDy0OCv3VUpA=;
        b=fklKC/F1XIvjySVEdBomEHcor6Vaxy0U9f32VbQCHMH50T44BzGUhg4PgWx95oWcLx
         jsjw+x56G2ggKVSMzNHMFXrOYDHsYYnwx5RqPoa4fv1o8QetgGTV8BtPm72nJdbNJE8l
         UJGReb+a5ASiRp5rVPGxn761KSKXIrnh2HBcbgHAPkZ2g1p5ARi2y67kjHuRCEeEgqbj
         tjBJ8o5+6f0JVuZ3sc+PXtsZQpU7ufkZ+UqaOfKyg/oIsESNOS98y+DaQOKvGOeQNQha
         4+9k3+6sjxkbkfl+0iIPDTuF0LZzxJFAQI+Vyp41xdzqwimK/bKl37l5H6LaGPx9yWN3
         dv6A==
X-Gm-Message-State: AJIora+2HQDzHQWpkjpiA3b8NW1GOsMTOLLSB/U/++lmFQ5jnhAjFatO
        6FuguHICWN953ON2hU/+bsoOFg==
X-Google-Smtp-Source: AGRyM1tVufJHyD7qAM2njRRF0qbXtYAbqkVJD/3FnkNNHjFwWDejKXalAn22BDebBg99Lz1Y+vUkXw==
X-Received: by 2002:a05:6512:4006:b0:47f:912d:1400 with SMTP id br6-20020a056512400600b0047f912d1400mr18533386lfb.466.1656938298236;
        Mon, 04 Jul 2022 05:38:18 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id s11-20020a056512214b00b0047fbc399ad2sm5008363lfr.245.2022.07.04.05.38.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jul 2022 05:38:17 -0700 (PDT)
Message-ID: <3b65405d-167f-a0c7-d15e-5da6f08d99b3@linaro.org>
Date:   Mon, 4 Jul 2022 14:38:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v1 08/16] arm64: dts: mt8195: Add power domains controller
Content-Language: en-US
To:     Tinghan Shen <tinghan.shen@mediatek.com>,
        Yong Wu <yong.wu@mediatek.com>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Chun-Jie Chen <chun-jie.chen@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Weiyi Lu <weiyi.lu@mediatek.com>
Cc:     iommu@lists.linux-foundation.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220704100028.19932-1-tinghan.shen@mediatek.com>
 <20220704100028.19932-9-tinghan.shen@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220704100028.19932-9-tinghan.shen@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/07/2022 12:00, Tinghan Shen wrote:
> Add power domains controller node for mt8195.
> 
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> Signed-off-by: Tinghan Shen <tinghan.shen@mediatek.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8195.dtsi | 327 +++++++++++++++++++++++
>  1 file changed, 327 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> index 8d59a7da3271..d52e140d9271 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> @@ -10,6 +10,7 @@
>  #include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/phy/phy.h>
>  #include <dt-bindings/pinctrl/mt8195-pinfunc.h>
> +#include <dt-bindings/power/mt8195-power.h>
>  
>  / {
>  	compatible = "mediatek,mt8195";
> @@ -338,6 +339,332 @@
>  			#interrupt-cells = <2>;
>  		};
>  
> +		scpsys: syscon@10006000 {
> +			compatible = "syscon", "simple-mfd";

These compatibles cannot be alone.

> +			reg = <0 0x10006000 0 0x1000>;
> +			#power-domain-cells = <1>;

If it is simple MFD, then probably it is not a power domain provider.
Decide.

Best regards,
Krzysztof
