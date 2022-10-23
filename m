Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AFBC0609330
	for <lists+devicetree@lfdr.de>; Sun, 23 Oct 2022 15:02:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229772AbiJWNCI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Oct 2022 09:02:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229782AbiJWNCH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Oct 2022 09:02:07 -0400
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com [IPv6:2607:f8b0:4864:20::732])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6C0E6FA24
        for <devicetree@vger.kernel.org>; Sun, 23 Oct 2022 06:02:06 -0700 (PDT)
Received: by mail-qk1-x732.google.com with SMTP id o2so4735237qkk.10
        for <devicetree@vger.kernel.org>; Sun, 23 Oct 2022 06:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UNgs4AH8DNTMDDUnaT0KpoY1XnOr2MAK7JMz+AGKlRc=;
        b=xsHYCWSYkHGvZBJ/KeKhIVspZ8CLcsQO6+X5vXlehnfWOMpqxijbG5EFdsU+n+pQhP
         n/FzpkV3dLz4ZEYtFolYUSpmTogxxvL0YrN4tqhfsLZ4+1o6Wgug35BvoycGNL9McLh7
         zM3PCCdpYHUg5rGkx7r3JpJPM6KtD+J37YaJmGlwVOOQsv8clJP0Qn1cb0nW1CgcA7lf
         UOVKQdF/6kPPHf+EHeY53uBNQYZAsaAiQQQb/3eo5Zu06U9ZUFSwnorfdIq5fdzq3bsz
         UhL6ZMSu22I6ssbFZBOYuFeyDPTYqDcUlCzl8PRGH7pVsFPyiRpxQuVlBCYMMBUi4tzd
         ZHqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UNgs4AH8DNTMDDUnaT0KpoY1XnOr2MAK7JMz+AGKlRc=;
        b=eU8Jrcswc9DY8Jx9idQR+odqSlx3dggUFZ0/2UKdW34VQjgLT3HCNeF4ZmOTUZ9iFq
         UJB4q4W4G5xPONzcOz7axHiKINCWpRCmHN2dwTvsL4hNNJMafnxH+inA/jzSvjexKgyy
         5+7NNG/7ChkK9vwRZU4i9JgefR6aKQraUU0UFZNEQtkslHvaBdMP2Z3dWXz3dNhTtSzI
         Z8qfDzFk9vYZK4brT4MPZhsN31xXXWdu9YHSG5ApAmAkowaS0NNyAc1StDRBMb+UH0PZ
         b7dG0LxwNBlSt/a5SOHwIIEynLJ+pw/rpT12hC2tEjsg1fxWZLscM983sQpSVLw2Gvvl
         Q2Jg==
X-Gm-Message-State: ACrzQf1psUI7CxVisJ0AzuSCHH2COC1eKm+Y9NQuLAMu/dhDXPmRR6jo
        jO2GUBFBsSz7qWpnvnH5bR5pZA==
X-Google-Smtp-Source: AMsMyM7jUm70oHMIQ8dggKdKa1v6VrDiAwx9g7lzwLLJ81cJuhpjEKaGAVLMwDRxWjUGg1DwZ/Xh0A==
X-Received: by 2002:a05:620a:10a1:b0:6ed:3b23:6991 with SMTP id h1-20020a05620a10a100b006ed3b236991mr19147066qkk.683.1666530126056;
        Sun, 23 Oct 2022 06:02:06 -0700 (PDT)
Received: from [192.168.1.8] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id r19-20020a05622a035300b00398313f286dsm11437608qtw.40.2022.10.23.06.02.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Oct 2022 06:02:05 -0700 (PDT)
Message-ID: <cd98ceb0-29be-9453-8cc1-8bf67b6a8369@linaro.org>
Date:   Sun, 23 Oct 2022 09:02:03 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Add initial device tree for SM6375
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        ~postmarketos/upstreaming@lists.sr.ht
Cc:     martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org, jamipkettunen@somainline.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221022194218.210941-1-konrad.dybcio@somainline.org>
 <20221022194218.210941-3-konrad.dybcio@somainline.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221022194218.210941-3-konrad.dybcio@somainline.org>
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

On 22/10/2022 15:42, Konrad Dybcio wrote:
> Add an initial device tree for the SM6375 (SD695) SoC.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
> ---
>  arch/arm64/boot/dts/qcom/sm6375.dtsi | 808 +++++++++++++++++++++++++++
>  1 file changed, 808 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/sm6375.dtsi
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6375.dtsi b/arch/arm64/boot/dts/qcom/sm6375.dtsi
> new file mode 100644
> index 000000000000..30cdc7d50f72
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sm6375.dtsi
> @@ -0,0 +1,808 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2022, Konrad Dybcio <konrad.dybcio@somainline.org>
> + */
> +
> +#include <dt-bindings/clock/qcom,rpmcc.h>
> +#include <dt-bindings/clock/qcom,sm6375-gcc.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/mailbox/qcom-ipcc.h>
> +#include <dt-bindings/power/qcom-rpmpd.h>
> +
> +/ {
> +	interrupt-parent = <&intc>;
> +
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +
> +	chosen { };
> +
> +	clocks {
> +		xo_board: xo-board {
> +			compatible = "fixed-clock";
> +			#clock-cells = <0>;
> +			clock-frequency = <19200000>;
> +			clock-output-names = "xo_board";

This a DTSI for the SoC and these clocks do not exist on the SoC. So as
usual - either they are part of board, or at least you move there the
frequency to indicate that, or put them in DTSI and include from the board.

See entire thread:
https://lore.kernel.org/linux-arm-msm/9fbe1bf5-a84d-c56b-1c0e-6848ee3d30fe@linaro.org/


Everything else LGTM.

Best regards,
Krzysztof

