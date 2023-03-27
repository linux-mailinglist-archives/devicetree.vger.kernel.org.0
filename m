Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E7DC6CAEBD
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 21:36:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231510AbjC0TgK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 15:36:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229822AbjC0TgJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 15:36:09 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDBF210CC
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 12:36:07 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id ew6so40644878edb.7
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 12:36:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679945766;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8X5ofhsYdVp58Cspu3Ij1YBt/DWO/9jcCPenLMMbpMI=;
        b=o6yPinicNfk3/ddau6ZtWUbN3JNlA4h1rMztlw34oc2weFqyRj7do/W1K0EqR0YE18
         yDj4tOs0ElatDGQ5QBUhwfWEmBIw81Iy6KavMbTvaQ/41AWnMjVbv2E2o6OIZvW4m/go
         UyP+A28REoa7nVCkgaPS/0GdQ/rWjkGTCZi+oJxaa5KzUjaNPssQ6KXnhnGlnitDR94N
         67A5681tvpHsFIVlABUsMNEzZj7Y591M9xk2h2bM5r/9idGY+pNbASkijgHFKo8Exe7g
         CZBh/nDg0D0yhHnab6zvGdYsq6wwqOawjIYBuew5Z3el0xk7Gh/L9tHxaiwAYacGgjxC
         0jlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679945766;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8X5ofhsYdVp58Cspu3Ij1YBt/DWO/9jcCPenLMMbpMI=;
        b=YH3CZkRccJ+cNEEIMxDr4W4btJUX2g+7IpIPMassOrevj5762nanQgyN17m8Z/JJGv
         LOzBQJvUwvYI4mMIb5dVtAjaVa/Bd4sTrjVD8Wc4f8nNEVUcpk6RuPqkRK8CMtbcr9Eu
         2dllfi7kj3cLPw/nZvaHXrqzT1o+1/vDkkXWN6bR6JFncYvOwOyen842osh0lBuO0fzE
         JEg5UpssoqLe0AiUkSBxxr+xrGnSibhVq1CFP/moIhKmTEPeuRcpTmFCb3ULsbEZTIeE
         eZLohv/waITxWlkxwS4FiTVqQ4B8eQo1Kl3imUR2Rw81jCqzt41uUMpquoiIHxv2WvRk
         oiYA==
X-Gm-Message-State: AAQBX9eAm0Mkbb2PrW/sOlAsdYEH0/wriadrhnR02ApUPGXQ32jLdgp+
        nieTnoEp2Wm2TsiCUy9ucfd+Jw==
X-Google-Smtp-Source: AKy350b+JJW09vvPTha4B0+PoAK/Vno/nLibnHvUUyGbcNa9PKMVTyPclTVsq2ssnMiZPiam2E+tlw==
X-Received: by 2002:a17:907:cf92:b0:93f:21fa:eabf with SMTP id ux18-20020a170907cf9200b0093f21faeabfmr9458483ejc.22.1679945766383;
        Mon, 27 Mar 2023 12:36:06 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9314:a4b3:ce49:2c6b? ([2a02:810d:15c0:828:9314:a4b3:ce49:2c6b])
        by smtp.gmail.com with ESMTPSA id lc5-20020a170906dfe500b0092973e209f2sm14324287ejc.109.2023.03.27.12.36.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 12:36:06 -0700 (PDT)
Message-ID: <1d389343-9a7e-67e3-6948-8604e33da754@linaro.org>
Date:   Mon, 27 Mar 2023 21:36:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 3/5] dts: arm64: qcom: sdm845: add SLPI FastRPC support
Content-Language: en-US
To:     Dylan Van Assche <me@dylanvanassche.be>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Amol Maheshwari <amahesh@qti.qualcomm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20230327184811.499553-1-me@dylanvanassche.be>
 <20230327184811.499553-4-me@dylanvanassche.be>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230327184811.499553-4-me@dylanvanassche.be>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/03/2023 20:48, Dylan Van Assche wrote:
> Qualcomm SDM845 SoC features a SLPI DSP which uses FastRPC through
> an allocated memory region to load files from the host filesystem
> such as sensor configuration files.
> 
> Add a FastRPC node at /dev/fastrpc-sdsp and a DMA region, similar to
> downstream, to allow userspace to communicate with the SLPI via the
> FastRPC interface for initializing the sensors on the SLPI.
> 
> Signed-off-by: Dylan Van Assche <me@dylanvanassche.be>
> ---
>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> index 3b547cb7aeb8..7412ea938765 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -878,6 +878,14 @@ mdata_mem: mpss-metadata {
>  			size = <0 0x4000>;
>  			no-map;
>  		};
> +
> +		fastrpc_mem: fastrpc {
> +			compatible = "shared-dma-pool";
> +			reusable;
> +			alloc-ranges = <0 0x00000000 0 0xffffffff>;
> +			alignment = <0 0x400000>;
> +			size = <0 0x1000000>;
> +		};
>  	};
>  
>  	adsp_pas: remoteproc-adsp {
> @@ -3344,6 +3352,21 @@ glink-edge {
>  				label = "dsps";
>  				qcom,remote-pid = <3>;
>  				mboxes = <&apss_shared 24>;
> +
> +				fastrpc {
> +					compatible = "qcom,fastrpc";
> +					qcom,glink-channels = "fastrpcglink-apps-dsp";
> +					label = "sdsp";
> +					qcom,non-secure-domain;
> +					qcom,vmids = <0x3 0xF 0x5 0x6>;
> +					memory-region = <&fastrpc_mem>;
> +					#address-cells = <1>;
> +					#size-cells = <0>;

This does not make sense now with children nodes not having unit
addresses... but anyway, I do not understand why this one compute node
cannot have unit address.



Best regards,
Krzysztof

