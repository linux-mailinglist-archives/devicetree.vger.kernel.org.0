Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 36981645767
	for <lists+devicetree@lfdr.de>; Wed,  7 Dec 2022 11:18:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230297AbiLGKS5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Dec 2022 05:18:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230332AbiLGKSf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Dec 2022 05:18:35 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55FEBCE10
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 02:18:34 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id d6so27923743lfs.10
        for <devicetree@vger.kernel.org>; Wed, 07 Dec 2022 02:18:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Eor8W+zm+Jp4ZkRppZ0lfw3gtR+4VNoW/t/Q2+XiP8k=;
        b=zpN8EKYB2vKGfndHDlkjiSMDMhfUQCp1bxLF6wpVAK9TJox2oHG/rRvng31jch3Uhr
         PNf+lg3Jzl8aMP5Qzj2vPGQezJeeNb9Dbmjsan8NNTOhLvrBm1/4aHv2LlnJAEjXq17Q
         tIiWiw2s+lZioXQTCr3TtU3UiU+V7kgqW4QKDlcIgWhh07BAudhRl8hSYyHtdFuBXoX8
         FUJS1cjuVN2eed6eRZt4hzxNIoI3JOMUpEilKuZRiqbaVV3zh7y0OeHAkX0oydKxx+RK
         jNJzKv/VhTRH3aO4zZk4NInltH1i4auo+Y9+LENJbsCo8X8GMXgyTwO9xF7NWj/fmnYp
         f8NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Eor8W+zm+Jp4ZkRppZ0lfw3gtR+4VNoW/t/Q2+XiP8k=;
        b=mKbWPQcmN9fbdzwk3kPG2HQzQCPQaIEk2EirwS7VBcUIIyhP5Fb9jBo+S08nn5+cXF
         ODzJQ+qCb4nglBuO8sy2k4fXPhH6vehGwRdXZ87AD+y5Lt+IntOhCRNhR+TTTNYEX+J7
         UUHimbPzU6FxlP0OdJPPBdG0mi3LqLxe7Nt+TtaHVkqcPvLSgwPbK+7ld9MSzBcJNueE
         OtCiSAqFHDqxOumH1+nXC3rjgjcTNWMu7QO+QsVgZu0mTG2DBrbT+EaCAiA9TaSdrARl
         CUMelYhZYGiQ9Jz7fVe2AnPse2aZu0MTV5FvTIxlrYw6S3P2Lrww5XdozER8WIY8whuB
         2bQw==
X-Gm-Message-State: ANoB5pkzP6xNY8jt2RoQc0FoCORLE1Dm82tVSIqnVpRKCNYFAEaqXXvw
        J2gzEvxCF3mS1nH9Tg4Lx+CtRQ==
X-Google-Smtp-Source: AA0mqf70IFyuZCxGSXcpUu4K7lM3DhtPL40pyCy+j0FIbeMvfEejj12yM6ycbzDMrREE/k9AuzC/WQ==
X-Received: by 2002:ac2:59c9:0:b0:4b5:5dea:1509 with SMTP id x9-20020ac259c9000000b004b55dea1509mr5685993lfn.129.1670408312743;
        Wed, 07 Dec 2022 02:18:32 -0800 (PST)
Received: from [192.168.31.208] ([194.29.137.22])
        by smtp.gmail.com with ESMTPSA id u11-20020a056512040b00b004a2386b8cf5sm2791347lfk.215.2022.12.07.02.18.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Dec 2022 02:18:31 -0800 (PST)
Message-ID: <b1f6d86a-b937-2de5-a569-6c3d57a4ad0d@linaro.org>
Date:   Wed, 7 Dec 2022 11:18:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.5.0
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sdm670: add missing usb hstx nvmem
 cell
To:     Richard Acayan <mailingradian@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20221206231729.164453-1-mailingradian@gmail.com>
 <20221206231729.164453-3-mailingradian@gmail.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221206231729.164453-3-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 07/12/2022 00:17, Richard Acayan wrote:
> This nvmem cell is present on SDM670 as well as SDM845. Add it in SDM670
> so there is proper tuning.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
> Changes since v1:
>   - remove "primary" indicator (SDM670 only has one USB controller)
> 
>   arch/arm64/boot/dts/qcom/sdm670.dtsi | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm670.dtsi b/arch/arm64/boot/dts/qcom/sdm670.dtsi
> index c78156e03d93..fcea26ba7fe9 100644
> --- a/arch/arm64/boot/dts/qcom/sdm670.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm670.dtsi
> @@ -736,6 +736,11 @@ qfprom: qfprom@784000 {
>   			reg = <0 0x00784000 0 0x1000>;
>   			#address-cells = <1>;
>   			#size-cells = <1>;
> +
> +			qusb2_hstx_trim: hstx-trim@1eb {
> +				reg = <0x1eb 0x1>;
> +				bits = <1 4>;
> +			};
>   		};
>   
>   		sdhc_1: mmc@7c4000 {
> @@ -1418,6 +1423,8 @@ usb_1_hsphy: phy@88e2000 {
>   
>   			resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
>   
> +			nvmem-cells = <&qusb2_hstx_trim>;
> +
>   			status = "disabled";
>   		};
>   
