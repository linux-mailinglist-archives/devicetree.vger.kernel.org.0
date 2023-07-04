Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB2D1746DD1
	for <lists+devicetree@lfdr.de>; Tue,  4 Jul 2023 11:41:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231947AbjGDJlh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jul 2023 05:41:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231616AbjGDJlY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jul 2023 05:41:24 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD88210F2
        for <devicetree@vger.kernel.org>; Tue,  4 Jul 2023 02:39:33 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-9891c73e0fbso973166866b.1
        for <devicetree@vger.kernel.org>; Tue, 04 Jul 2023 02:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688463572; x=1691055572;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uJ0qtnupAs7ltHx9bKvNPX83TbrwpqmJjWVOcNgIVHw=;
        b=THisYSUqeNl/i8NXmLzxvee7RSsIi+PJ0hgPODvCHhZ4VsWua0WflWx+IRCsmUXjpq
         drjQYwXK4wZ0iZ9eujy2fYbfv37G1kGqijXN2tDkpYzQ0tdsrshyu3krVhNDDtZcTcnW
         Gk+AHF/A9F8TXdvAvTC+djhiSteHcBAJ9tfIMHjTee96u8Op6yhuST1+1l45tlN77UA6
         biU0qAI+2Rhv+uXDby5aRwOZI8RYkmoB6ipJp+bJlN8tTBST5qscGnJb9mjz8zMMc7/C
         Vxd/kObQHi1VV2CGayihKXOk+Z6ycEGXdAXXSfK0mBZIr7pQ3iB954Mv7ZhS4H6qlhQD
         EqKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688463572; x=1691055572;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uJ0qtnupAs7ltHx9bKvNPX83TbrwpqmJjWVOcNgIVHw=;
        b=L/Ss43CW0nmSrbyiLWkpWg4zBTroslB5kkZdXcO05Zhd4McpJ1Z4CPVAOPAiU4j7vK
         tp30n0pUa6i2baGBoTCTs6UtB8/9+a7+INcUhEaKAum+ji7owyvkklQRwjhk1ZxhwkW8
         99eAaZZ/tYSC2nn328y+SSmAIbEF5wJ6cHN4j6TM/RkgVMMIX4nx4rzhOcgtfloaKpDx
         4Kke6vlrUe7sFVGsZnGfZLUMrc90uO4kGANLzBo8OSFWUH3x7rmjoxElAvQvF8IC1E2+
         UT2jW/8NXZQ+YtsbWvJoMb5uj1fKq58wrVElAyTlHKUMgT7ivUZK1OK7JuQqxx9sSxYW
         xdvQ==
X-Gm-Message-State: ABy/qLZHLGOD2uCdbMfiSzKGYUbEjvxcAAVyTuQOHQETq1I3mYcpLOkx
        TBJbQ6rPqzkTm7PllLQ6RdWu+w==
X-Google-Smtp-Source: APBJJlER9WHFO7KniG1uIOyPZKfVSdRulKONCVGU7aNr+BQ+vjTlPTIx0JV/ZvgkeuQml/6096dhKA==
X-Received: by 2002:a17:906:3bd3:b0:991:b7f4:31dd with SMTP id v19-20020a1709063bd300b00991b7f431ddmr10787322ejf.2.1688463572014;
        Tue, 04 Jul 2023 02:39:32 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id gw26-20020a170906f15a00b009929d998abcsm7422613ejb.209.2023.07.04.02.39.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Jul 2023 02:39:31 -0700 (PDT)
Message-ID: <7f3b600d-d315-22d6-b987-eabfe1b04fdf@linaro.org>
Date:   Tue, 4 Jul 2023 11:39:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [RESEND v1 2/2] riscv: dts: starfive: Add spi node for JH7110 SoC
Content-Language: en-US
To:     William Qiu <william.qiu@starfivetech.com>,
        devicetree@vger.kernel.org, linux-spi@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Cc:     Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Linus Walleij <linus.walleij@linaro.org>
References: <20230704092200.85401-1-william.qiu@starfivetech.com>
 <20230704092200.85401-3-william.qiu@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230704092200.85401-3-william.qiu@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/07/2023 11:22, William Qiu wrote:
> Add spi node for JH7110 SoC.
> 
> Co-developed-by: Xingyu Wu <xingyu.wu@starfivetech.com>

Missing SoB.

> Signed-off-by: William Qiu <william.qiu@starfivetech.com>
> ---
>  .../jh7110-starfive-visionfive-2.dtsi         | 52 ++++++++++
>  arch/riscv/boot/dts/starfive/jh7110.dtsi      | 98 +++++++++++++++++++
>  2 files changed, 150 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> index 2a6d81609284..a066d2e399c4 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> @@ -126,6 +126,20 @@ &i2c6 {
>  	status = "okay";
>  };
> 
> +&spi0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&spi0_pins>;
> +	status = "okay";
> +
> +	spi_dev0: spi@0 {
> +		compatible = "st,m25p80";
> +		pl022,com-mode = <1>;
> +		spi-max-frequency = <10000000>;
> +		reg = <0>;

reg is always following compatible, not somewhere deep in properties.

> +		status = "okay";

okay is by default

> +	};
> +};


Best regards,
Krzysztof

