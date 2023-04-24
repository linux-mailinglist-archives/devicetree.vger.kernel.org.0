Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 110056D156F
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 04:03:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229871AbjCaCDe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 22:03:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229842AbjCaCDc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 22:03:32 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 954771883B
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 19:03:28 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id o20so18637244ljp.3
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 19:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680228207;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Teb3RkoKLbXHatcrqXDgj+FPUExuCZUr8HBNb56xUco=;
        b=d7aZ8dhKOVXSWTpf3jbqTcXtKRjPfvNgTKsatDsCDUAqG2bOHdgxVGq83s7Ue7kz2l
         BN9yw8/paWv+Kui59POlRRQTytJYALFVixHxJjN62xfC/I98wDOYsa6vXGir8vROuMnJ
         2GCoDfeUWG7LxxzrUpXLqx5B/nkbbgSKnc5E9f0mFf2NK0b6YIeimOrfWGtMxrL+61E5
         CKODdwSLggSAbCu6aOI/wrlnbVb6oM+f/Q/om+dVatVYYu45MDWvxspmGuLmEN1BC3RE
         7svcXvd780yvf+kJmrOY2mo+EdgSHqgTiuCh03jPoq8yaqtTUywKV3pffmVveDKLJIlr
         fzAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680228207;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Teb3RkoKLbXHatcrqXDgj+FPUExuCZUr8HBNb56xUco=;
        b=DxgsuJ6HdVklYiTt1E9wBS0H+oeTOREsdtz5b+59OIojx5JhJ6HNMg0C9uPXpGLQO0
         qvGSxazRaFbQ87a/UPzbgcFEl7wI2oilovJp6HcSRoMdS7fbf44JEOwuQi4MtxcRIlUM
         clkJ3AjwC3ppru9yYQJCTwgSc37e2e7ZP0uvSUhbKtqKlVwiT2+uDwZD4PeTfmDC2C5W
         YPqlQncH/1xErR+EJn+L7RuZIne+iUbWMIv1Xwg34Ppqgczr/3k9NItMTqitR4j0JB2M
         XvjZMeQpGVnAlHvqJFuS57R4jYRO3hEYc5ncDcBsY2ejKtqkqAj/FjIySAeny44ENC+j
         pQWg==
X-Gm-Message-State: AAQBX9cLZqu4fjMLPQejecjpqmHQIS2xZ+y3i1A1GqVI1dmtpraiPk1I
        7WRn38HRsdKxf9VJ93ANCNoknA==
X-Google-Smtp-Source: AKy350ZJd0VKknxcJhfO+myFGnaqZHPGraALBp0worrJzEDUq+0qlSBXcrrlLKK3R6RGPIa6Xq9MSg==
X-Received: by 2002:a2e:7a0d:0:b0:2a6:199a:bd49 with SMTP id v13-20020a2e7a0d000000b002a6199abd49mr1223209ljc.46.1680228206779;
        Thu, 30 Mar 2023 19:03:26 -0700 (PDT)
Received: from [192.168.1.101] (abxj225.neoplus.adsl.tpnet.pl. [83.9.3.225])
        by smtp.gmail.com with ESMTPSA id u24-20020a2ea178000000b002a61bd34f63sm145777ljl.84.2023.03.30.19.03.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 19:03:26 -0700 (PDT)
Message-ID: <f9a4a2de-42f8-676a-ae6d-d20391206f83@linaro.org>
Date:   Fri, 31 Mar 2023 04:03:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v3 2/4] dts: arm64: qcom: sdm845: add SLPI FastRPC support
Content-Language: en-US
To:     Dylan Van Assche <me@dylanvanassche.be>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20230330165322.118279-1-me@dylanvanassche.be>
 <20230330165322.118279-3-me@dylanvanassche.be>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230330165322.118279-3-me@dylanvanassche.be>
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



On 30.03.2023 18:53, Dylan Van Assche wrote:
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
>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> index 3b547cb7aeb8..8ea4944f3ad6 100644
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
Please move it last to get a nice reverse-Christmas-tree layout.

> +			alloc-ranges = <0 0x00000000 0 0xffffffff>;
Would there be any issues with it starting over (1<<31 - 1)?

> +			alignment = <0 0x400000>;
Please use 0x0 for the 0 here, as it's essentially reg.size with
size-cells = 2

> +			size = <0 0x1000000>;
Ditto

> +		};
>  	};
>  
>  	adsp_pas: remoteproc-adsp {
> @@ -3344,6 +3352,22 @@ glink-edge {
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
Please use the recently-introduced header and depend on (and
make a patch atop)

https://lore.kernel.org/linux-arm-msm/8685b710-b74d-556a-815d-0ffef2b0eeff@linaro.org/T/#t

Konrad

> +					memory-region = <&fastrpc_mem>;
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					compute-cb@0 {
> +						compatible = "qcom,fastrpc-compute-cb";
> +						reg = <0>;
> +					};
> +				};
>  			};
>  		};
>  
