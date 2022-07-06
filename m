Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 574665681C2
	for <lists+devicetree@lfdr.de>; Wed,  6 Jul 2022 10:40:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232403AbiGFIjW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 04:39:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232370AbiGFIjV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 04:39:21 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2ABC2496C
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 01:39:19 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id m18so6231678lfg.10
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 01:39:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=4rolgZriEw0mjfMObVXOC5GEec9d4mbnOiwdt1lyu6o=;
        b=U/cfbY8he2tLguA7F1I8Y9rdsL3jwA9Mq3QpLwsoOYU5fQfrdybxJmwoskMWN2Sazh
         K0r1PYTSv77Hz/hOc2YuYe5I2KcHUNv/LmroTalCtJn8yzOHRyJiKIB22uqcfkTeDcQk
         j6zwa7QR7I4Vgum2dg+pp0FXvgCmhmUSPZOFg3m0UUma5PKT/u4Ti8m0botqId91PCPt
         SNdRrWIdNCs8fFzlStlUCDDIG+GlcjHch4ZJ0E1mwrjFAKdnVkw9/naqEo/424TE3Jlg
         jZBpVzbZwuEWRLiDeV1gYz/4g+15L9nomFFgq8h4Skx+CA1XLVPhpYpLaVSM3IDWCKDV
         /0PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=4rolgZriEw0mjfMObVXOC5GEec9d4mbnOiwdt1lyu6o=;
        b=igtogQbAnTmn4CAZTiuMAcOJpjYsL5LYMMUK5O9P9Uus3x5272IQqRfEbhqGAEzhDn
         4jmWfbWOZXtEyY/O/jPXqUzYihmOYJo6CZelkGpZQbvqhCRD69xlyaSMWHQ1hKKa5Jxc
         pm/j5pSoCZ0L3DvlMZECETu8yhR6PL8lYoZWu+hGN0YTbj6LZmJ6Ch0+TJO1/sAgT2EI
         LcVlZBDhE02kBi7NgofggrgEmXdnMUtADmH95a+QS29DNuJ+qcmplx1iIe1+gfrfEQFB
         SlHCWh53AjAs2XMLlbFNy/YXjmHbg92NCYNRRwaK3cBqG6MC/twWkAIPSB+/Pl2tegpj
         TVtw==
X-Gm-Message-State: AJIora/MIeTecrD8+Z7j5rjThE3aXcjIDiJ6Tr/JOEnKpfy7HUhJjj0+
        tTsYcLKvCqgicHm6fnzmV5A6Mg==
X-Google-Smtp-Source: AGRyM1ueDPwdni4YZBo9yg5mGBtL20hdS4GS66swkpFJYnwWdH6yxjQMhH1/QQh1S6Cy0mcDxWG2zA==
X-Received: by 2002:ac2:5de2:0:b0:486:b92d:5d0e with SMTP id z2-20020ac25de2000000b00486b92d5d0emr624614lfq.330.1657096758236;
        Wed, 06 Jul 2022 01:39:18 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id w8-20020a05651c118800b0025d3aac4f62sm588884ljo.3.2022.07.06.01.39.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jul 2022 01:39:17 -0700 (PDT)
Message-ID: <c5bf6246-a350-8a87-71bc-bc13d502a8af@linaro.org>
Date:   Wed, 6 Jul 2022 10:39:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 09/13] ARM: dts: qcom: add smem node for ipq8064
Content-Language: en-US
To:     Christian Marangi <ansuelsmth@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Jonathan McDowell <noodles@earth.li>
References: <20220705133917.8405-1-ansuelsmth@gmail.com>
 <20220705133917.8405-10-ansuelsmth@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705133917.8405-10-ansuelsmth@gmail.com>
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

On 05/07/2022 15:39, Christian Marangi wrote:
> Add missing smem node for ipq8064.
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> Tested-by: Jonathan McDowell <noodles@earth.li>
> ---
>  arch/arm/boot/dts/qcom-ipq8064.dtsi | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom-ipq8064.dtsi b/arch/arm/boot/dts/qcom-ipq8064.dtsi
> index b5aede3d7ccf..98527a7d885e 100644
> --- a/arch/arm/boot/dts/qcom-ipq8064.dtsi
> +++ b/arch/arm/boot/dts/qcom-ipq8064.dtsi
> @@ -908,6 +908,11 @@ lcc: clock-controller@28000000 {
>  			#reset-cells = <1>;
>  		};
>  
> +		sfpb_mutex_block: syscon@1200600 {
> +			compatible = "syscon";

syscon alone is not allowed.

> +			reg = <0x01200600 0x100>;
> +		};
> +
>  		pcie0: pci@1b500000 {
>  			compatible = "qcom,pcie-ipq8064";
>  			reg = <0x1b500000 0x1000
> @@ -1332,4 +1337,17 @@ sdcc3: mmc@12180000 {
>  			};
>  		};
>  	};
> +
> +	sfpb_mutex: sfpb-mutex {

Generic node names, so hwlock

> +		compatible = "qcom,sfpb-mutex";
> +		syscon = <&sfpb_mutex_block 4 4>;
> +
> +		#hwlock-cells = <1>;
> +	};
> +
> +	smem {
> +		compatible = "qcom,smem";
> +		memory-region = <&smem>;
> +		hwlocks = <&sfpb_mutex 3>;
> +	};
>  };


Best regards,
Krzysztof
