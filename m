Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 118D46C3878
	for <lists+devicetree@lfdr.de>; Tue, 21 Mar 2023 18:42:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229990AbjCURms (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Mar 2023 13:42:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229666AbjCURmr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Mar 2023 13:42:47 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB540244A5
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 10:42:41 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id b20so29913755edd.1
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 10:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679420560;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FjExtZEUXlFqKijOc5SpKpQtx0RxFs51bp1LOxqiYes=;
        b=JyjTJ8hbuscJ+rzpwN7y6zy/FUzj9dHDNlJJAY9R+aS4bZZ8KWamb9FEZjRiduKVb6
         DYekmnsuD33DIchQZCskfR0DCXF//3b/FnPqfZkJDYkpjojjfBfbOd2OGTgO+r0Z6Wyn
         BRb/o4CY67bzBTrfGSmsDH1oMFfRplIzvB4YM91xA7KVXjBl9JVi82HSzKoyH0iYnlDB
         u1WYdZZlmc5ed41KtX185yfOFo5oBxxtBJ5wI2Sur6QK48T2IQEC4UtN+ytHlVIsDvTs
         oaJb4zh6E2seR6YAqt2Vlm/VDJf2ekW7gJgaklksF6rmLkxOFkY4EMk0bmasreT+5fCZ
         0OOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679420560;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FjExtZEUXlFqKijOc5SpKpQtx0RxFs51bp1LOxqiYes=;
        b=Jw7gCp+FBbS+b0h6bHJX28rzoVBp+YBRd2y3mCPfZoQ9Yk511tNtH79AJpaS8c8//G
         aqlZTq8Zr8P33VyPlVaQ09P1u+wdcU0c1L2dxUay/F0+jqquf+zYkhnFIi7Y20G1j297
         +1OaPfF9GVCoin6twtoODB8VnQvIUpX896CGVOw8MclfVlt/9bBj7b9K1f0u2J6f8jWb
         6cbQGC4aSvhavE+qch6BBG/SQRkOu8lZNKtgmqIHAa/Jb3CHu9uKQEyzJD8sbS/Bnedt
         VJVL0p4vuBKqmyKKddIxaVvgjxDuj962elPmRsWnI89sgM/5c296DGG9csb17nWVP36i
         h/2g==
X-Gm-Message-State: AO0yUKUlTdZwm9k54iDFf0TEDVH2tX7VEQiVRO83N91sqcZqF7hkv36Q
        mb2MlU0nhZTwNrAi2ZHIoqEfsQ==
X-Google-Smtp-Source: AK7set8+Ch+5qH+X4ADs0Q7/+1S2ttktlYpI6nfvJHImN6MHidV02PrrUIE5GGsUcbnLXaUK4O8IAw==
X-Received: by 2002:a17:906:4f82:b0:931:8ad4:a586 with SMTP id o2-20020a1709064f8200b009318ad4a586mr3964990eju.30.1679420560276;
        Tue, 21 Mar 2023 10:42:40 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:2142:d8da:5ae4:d817? ([2a02:810d:15c0:828:2142:d8da:5ae4:d817])
        by smtp.gmail.com with ESMTPSA id a11-20020a170906670b00b0093a0e5977e2sm1044562ejp.225.2023.03.21.10.42.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Mar 2023 10:42:39 -0700 (PDT)
Message-ID: <67b73929-ac8b-0e41-1940-89dcd1090da0@linaro.org>
Date:   Tue, 21 Mar 2023 18:42:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v1] arm64: dts: mt8195: add display node for vdosys1
Content-Language: en-US
To:     "Nancy.Lin" <nancy.lin@mediatek.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        singo.chang@mediatek.com
References: <20230321131251.3351-1-nancy.lin@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230321131251.3351-1-nancy.lin@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/03/2023 14:12, Nancy.Lin wrote:
> Add display node for vdosys1.
> 
> Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> 
> ---
> 1. The dts patch is separated from the following patch:
>  - [v21,25/25] arm64: dts: mt8195: add display node for vdosys1
>    20220512053128.31415-26-nancy.lin@mediatek.com
> 
> 2. This patch is based on the following series:
>  - Add MediaTek SoC DRM (vdosys1) support for mt8195
>    20230321121859.2355-1-nancy.lin@mediatek.com
> ---
>  arch/arm64/boot/dts/mediatek/mt8195.dtsi | 223 +++++++++++++++++++++++
>  1 file changed, 223 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> index 8fc527570791..c6b625350583 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> @@ -24,6 +24,22 @@
>  	aliases {
>  		gce0 = &gce0;
>  		gce1 = &gce1;
> +		ethdr0 = &ethdr0;
> +		mutex0 = &mutex;
> +		mutex1 = &mutex1;
> +		merge1 = &merge1;
> +		merge2 = &merge2;
> +		merge3 = &merge3;
> +		merge4 = &merge4;
> +		merge5 = &merge5;
> +		vdo1-rdma0 = &vdo1_rdma0;
> +		vdo1-rdma1 = &vdo1_rdma1;
> +		vdo1-rdma2 = &vdo1_rdma2;
> +		vdo1-rdma3 = &vdo1_rdma3;
> +		vdo1-rdma4 = &vdo1_rdma4;
> +		vdo1-rdma5 = &vdo1_rdma5;
> +		vdo1-rdma6 = &vdo1_rdma6;
> +		vdo1-rdma7 = &vdo1_rdma7;
>  	};
>  
>  	cpus {
> @@ -2575,7 +2591,10 @@
>  		vdosys1: syscon@1c100000 {
>  			compatible = "mediatek,mt8195-vdosys1", "syscon";
>  			reg = <0 0x1c100000 0 0x1000>;
> +			mboxes = <&gce0 1 CMDQ_THR_PRIO_4>;
> +			mediatek,gce-client-reg = <&gce0 SUBSYS_1c10XXXX 0x0000 0x1000>;
>  			#clock-cells = <1>;
> +			#reset-cells = <1>;
>  		};
>  
>  		smi_common_vdo: smi@1c01b000 {
> @@ -2604,6 +2623,17 @@
>  			power-domains = <&spm MT8195_POWER_DOMAIN_VDOSYS0>;
>  		};
>  
> +		mutex1: mutex0@1c101000 {

So is it mutex1 or mutex0? Or maybe hwlock?

Node names should be generic.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation



Best regards,
Krzysztof

