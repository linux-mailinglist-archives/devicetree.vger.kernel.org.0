Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB41A599C4F
	for <lists+devicetree@lfdr.de>; Fri, 19 Aug 2022 14:57:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348114AbiHSMr5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Aug 2022 08:47:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348967AbiHSMrx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Aug 2022 08:47:53 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC513101C61
        for <devicetree@vger.kernel.org>; Fri, 19 Aug 2022 05:47:51 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id m3so328452lfg.10
        for <devicetree@vger.kernel.org>; Fri, 19 Aug 2022 05:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=D4OnEbAEzRBeQeg3hRcaY4ZzP+Li/Cr5jkVWg1DWFSg=;
        b=lUxIIhlKYF+UhNDXmDvDFbRA4kClWNgyDPOsVtb3kuftUEwO4MeFUaeifgbEcC1aIH
         cZgXGrQwVMEGV7gfIY6+mClPE+MLwiZaDBHo4UBrArheiUhVyfatxJ2VXI3qS2AfhXN4
         hPOg+Y+YdNTJFT5w+/dF9BudPumS4EXob0iX3+kyzC/3bzXe0xhpgcOmcYkGlgzHYPXq
         9svJNwzD2yH+MO/nF5qjstIbCGs24QwzKQ6COhxkdLbjBhMwBKscGpbB+fAlvOp78XB5
         RbQedp8cHp++FOI8dfG0/CVSlEu9GOXcooRZy0iPh50g0A23X1Pui73nf8OtHyv//8c+
         LhlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=D4OnEbAEzRBeQeg3hRcaY4ZzP+Li/Cr5jkVWg1DWFSg=;
        b=Ceyqj5kyLwa0X4jVshAi0hcZC+glQUrpnBLazRk2tVAWHqfkaCZAQdU3r0WDq2t+7P
         oLyPZv5BWVhVAF2Py5tD/ALzIAuSranX7lyD/HuOTx1dEsaI4PC/PKbqhOzrUspxd04r
         ERGTs/BWEP06O1Z1aKtURGStQspxid3giydumaoO7EKZF8GQnZIlaXxe94vrzqMXfp3l
         WNWmDPM+VMV4O49MjZaacTiUCEdYisaUt1RzzWxhmfE5sRJxGFwpn32679UbmydkMixO
         h6v0OsLlAnXKm8S6GeFpT8dK4JowcLZXJGmKhjFpM9c515HIFsz8eBk9NG343UHykPdm
         MfSQ==
X-Gm-Message-State: ACgBeo2AGYUdcjxWSpXMr8qvFWzpfjIUJrNwyAUiHgKNiOt1mbLXjg7U
        +mOUu9sS4m8zD5JD8i7cvt4evg==
X-Google-Smtp-Source: AA6agR7Zs8KA0ne3v89QRnCqm9aIw3aFDvAsKmTiXOuNK0AqKhLhnAX2WGbHijJgwKLH2Poxeoq5IQ==
X-Received: by 2002:ac2:5f77:0:b0:48b:3886:5d55 with SMTP id c23-20020ac25f77000000b0048b38865d55mr2259653lfc.668.1660913270258;
        Fri, 19 Aug 2022 05:47:50 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ac:e5a8:ef73:73ed:75b3:8ed5? (d1xw6v77xrs23np8r6z-4.rev.dnainternet.fi. [2001:14bb:ac:e5a8:ef73:73ed:75b3:8ed5])
        by smtp.gmail.com with ESMTPSA id v28-20020ac258fc000000b0048b37d29256sm631729lfo.63.2022.08.19.05.47.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Aug 2022 05:47:49 -0700 (PDT)
Message-ID: <3df8d4bd-3d38-cecd-6589-ccc1be01b886@linaro.org>
Date:   Fri, 19 Aug 2022 15:47:48 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 6/6] riscv: dts: microchip: add the mpfs' fabric clock
 control
Content-Language: en-US
To:     Conor Dooley <conor.dooley@microchip.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Daire McNamara <daire.mcnamara@microchip.com>
Cc:     Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org
References: <20220819122259.183600-1-conor.dooley@microchip.com>
 <20220819122259.183600-7-conor.dooley@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220819122259.183600-7-conor.dooley@microchip.com>
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

On 19/08/2022 15:23, Conor Dooley wrote:
> The "fabric clocks" in current PolarFire SoC device trees are not
> really fixed clocks. Their frequency is set by the bitstream, so having
> them located in -fabric.dtsi is not a problem - they're just as "fixed"
> as the IP blocks etc used in the FPGA fabric.
> However, their configuration can be read at runtime (and to an extent
> they can be controlled, although the intended usage is static
> configurations set by the bitstream) through the system controller bus.
> 

Thank you for your patch. There is something to discuss/improve.

> +&pcie {
> +	clocks = <&fabric_clk1>, <&fabric_clk1>, <&fabric_clk3>;
> +	clock-names = "fic0", "fic1", "fic3";
> +};
> diff --git a/arch/riscv/boot/dts/microchip/mpfs.dtsi b/arch/riscv/boot/dts/microchip/mpfs.dtsi
> index 499c2e63ad35..dd15b6d1a3c9 100644
> --- a/arch/riscv/boot/dts/microchip/mpfs.dtsi
> +++ b/arch/riscv/boot/dts/microchip/mpfs.dtsi
> @@ -236,6 +236,38 @@ clkcfg: clkcfg@20002000 {
>  			#clock-cells = <1>;
>  		};
>  
> +		ccc_se: cccseclk@38010000 {

Although you call it "Clock Conditioning Circuitry", but the role of
this device is a clock-controller, isn't it? If so, node names should be
generic, so "clock-controller".

https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation


Best regards,
Krzysztof
