Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E3BE66F5011
	for <lists+devicetree@lfdr.de>; Wed,  3 May 2023 08:27:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229501AbjECG1U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 May 2023 02:27:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229484AbjECG1S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 May 2023 02:27:18 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76B59124
        for <devicetree@vger.kernel.org>; Tue,  2 May 2023 23:27:16 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-94a34a14a54so950159666b.1
        for <devicetree@vger.kernel.org>; Tue, 02 May 2023 23:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683095235; x=1685687235;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ib+NX6C8d73xTfM6SAbpJ0BabmkXxvSxV2SrjCPzJ1o=;
        b=L1IG+Q1hPtesn6elhAq19BbNUAfrubWB0i0LGPQzoM61f6mmhOqF+T/psuBk0DIJCx
         qCtUpofFYmh6gE5KDywkApkla2sKS6DXs04gvaNdFdQsFKeH0a9gV8kF8gUWWKgu6kKy
         IB0X45JtCWptrVuxhlKwJ/utCGYU87ugrKboZYWbJxxd4r/DjqVHmDsNImJA/gko8Blq
         M0TZ8rrQGfr5e35Qg1WWtdM0vtURUU/m90zIS1LS6M4VOxk9XtsEtVU0XLHwZVMxUsvx
         MI8CteKWi5yRQ+GgPtzwJc/XcGZAPgigit/ywNAP6GT3+fqA3gTGdTS8JZVaXVb0ZaZN
         ivyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683095235; x=1685687235;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ib+NX6C8d73xTfM6SAbpJ0BabmkXxvSxV2SrjCPzJ1o=;
        b=lf3u5I3UX9HEehiIaEhOQ/RQBGpqhmfeu/skbxxqQjyoG+8zn1trK3+MBBpwHk6h/h
         dDECuMhcFOgi7TRbeFFUYm57ZMjLful8JKmVbjUHg712Ixbrwt5edPbsJukl3GQUsXUQ
         xf3Bn+vAX3S6FGFX+UofyFuYVPd89ph8QMo9iTzQC2pVkEg4dZHp+1izV/3/UWguU6kP
         YNOsnSM3WCO8iejJbTRsGG47b8cSQnZyh0Y9eIM9csM96X4/npToDX0Wu8mRmetZeF7g
         PZjo0XAVBcejIB+mGC7Dv2/AnwRttPnKZ4hkT54L1kqSBpVEcDMfXPCL2J0+ChgwMqDA
         LXBA==
X-Gm-Message-State: AC+VfDwYte/g1BZu71WVMa1OcQ2bWq5qmbAgKYfFjE3gQ78dST4ojHlD
        zUV74ewKYPbmzGTU87QlKRTEvQ==
X-Google-Smtp-Source: ACHHUZ4ClccjOiqk3u9KuX48FibRso8I7ANwRDV0F/DCMSxt4hNIU37q2EsfuBPMhan5dsaQxfCErQ==
X-Received: by 2002:a17:906:730e:b0:95f:bbb0:6d2d with SMTP id di14-20020a170906730e00b0095fbbb06d2dmr2210265ejc.63.1683095234902;
        Tue, 02 May 2023 23:27:14 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:a40b:9d8:1fa0:ecc5? ([2a02:810d:15c0:828:a40b:9d8:1fa0:ecc5])
        by smtp.gmail.com with ESMTPSA id zu23-20020a17090708d700b0095807ab4b57sm14711637ejb.178.2023.05.02.23.27.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 May 2023 23:27:13 -0700 (PDT)
Message-ID: <87338a93-c285-3149-dc22-0fe4cd446a23@linaro.org>
Date:   Wed, 3 May 2023 08:27:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 1/8] dt-bindings: nvmem: Convert rockchip-otp.txt to
 dt-schema
Content-Language: en-US
To:     Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        Shreeya Patel <shreeya.patel@collabora.com>,
        Kever Yang <kever.yang@rock-chips.com>,
        Finley Xiao <finley.xiao@rock-chips.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        kernel@collabora.com
References: <20230501084401.765169-1-cristian.ciocaltea@collabora.com>
 <20230501084401.765169-2-cristian.ciocaltea@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230501084401.765169-2-cristian.ciocaltea@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/05/2023 10:43, Cristian Ciocaltea wrote:
> Convert the Rockchip OTP memory bindings to dt-schema.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  .../bindings/nvmem/rockchip-otp.txt           | 25 ------
>  .../bindings/nvmem/rockchip-otp.yaml          | 83 +++++++++++++++++++
>  2 files changed, 83 insertions(+), 25 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/nvmem/rockchip-otp.txt
>  create mode 100644 Documentation/devicetree/bindings/nvmem/rockchip-otp.yaml
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/rockchip-otp.txt b/Documentation/devicetree/bindings/nvmem/rockchip-otp.txt
> deleted file mode 100644
> index 40f649f7c2e5..000000000000
> --- a/Documentation/devicetree/bindings/nvmem/rockchip-otp.txt
> +++ /dev/null
> @@ -1,25 +0,0 @@
> -Rockchip internal OTP (One Time Programmable) memory device tree bindings
> -
> -Required properties:
> -- compatible: Should be one of the following.
> -  - "rockchip,px30-otp" - for PX30 SoCs.
> -  - "rockchip,rk3308-otp" - for RK3308 SoCs.
> -- reg: Should contain the registers location and size
> -- clocks: Must contain an entry for each entry in clock-names.
> -- clock-names: Should be "otp", "apb_pclk" and "phy".
> -- resets: Must contain an entry for each entry in reset-names.
> -  See ../../reset/reset.txt for details.
> -- reset-names: Should be "phy".
> -
> -See nvmem.txt for more information.
> -
> -Example:
> -	otp: otp@ff290000 {
> -		compatible = "rockchip,px30-otp";
> -		reg = <0x0 0xff290000 0x0 0x4000>;
> -		#address-cells = <1>;
> -		#size-cells = <1>;
> -		clocks = <&cru SCLK_OTP_USR>, <&cru PCLK_OTP_NS>,
> -			 <&cru PCLK_OTP_PHY>;
> -		clock-names = "otp", "apb_pclk", "phy";
> -	};
> diff --git a/Documentation/devicetree/bindings/nvmem/rockchip-otp.yaml b/Documentation/devicetree/bindings/nvmem/rockchip-otp.yaml
> new file mode 100644
> index 000000000000..658ceed14ee2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/nvmem/rockchip-otp.yaml

Filename matching compatible, or at least it format. rockchip,otp


> @@ -0,0 +1,83 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/nvmem/rockchip-otp.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip internal OTP (One Time Programmable) memory
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +allOf:
> +  - $ref: nvmem.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,px30-otp
> +      - rockchip,rk3308-otp
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 3

Drop minItems, not needed when equal to max.

> +    maxItems: 3
> +
> +  clock-names:
Best regards,
Krzysztof

