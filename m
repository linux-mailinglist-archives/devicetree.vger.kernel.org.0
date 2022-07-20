Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 37F6B57B494
	for <lists+devicetree@lfdr.de>; Wed, 20 Jul 2022 12:36:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236846AbiGTKgq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jul 2022 06:36:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234094AbiGTKgq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jul 2022 06:36:46 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BB994B0F8
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 03:36:40 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id u14so12619698lju.0
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 03:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=eOQs/h3TvmwMGsHYWl9U3/WtYoMV9gdMa1dgDXwlbSQ=;
        b=fkB0BJqfPCtZaMfiYdGb3bdOxfiLSBeYykX2v5HfeUI0qT9RCYWjYKZwN2H2/Lcklg
         5AtcySUHDocU/gfgqQ6VWa5vXLUeoBByLaXwcyqmEMHN/lC6o1LBfrPHatb2VG1Eheoj
         uLEPyQzCB8wzzWwIqTO9fAzIK81bYmX8sZuKQn2O6Eqk08vYjGUGX0zg1BDxszd2cGwH
         BJHeSB3ql3PnNoCjParSAlqbboMcvdkkApwZgirbZGwvTV8dh4aky4QdjnMkgpQ2pCFD
         mUH0PJziq/T1HRPDay71Oiw5Rxu6yMU2spGr7/T+3+rh0cKImMnmNv8XOtmuAJk5lfk4
         QQBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=eOQs/h3TvmwMGsHYWl9U3/WtYoMV9gdMa1dgDXwlbSQ=;
        b=TlDDjvvnO9nrFFPl24AE/TEfYFkwmjFmXc0+2IOrYSGN5YuqoNeaN4QCr2359ds8zc
         wWHm643BXPmz6nx+kOx8RQzKlXRuHPRBdMfcNyCUlLn1pcR5m0RJtvihmbpZ+v24qh9V
         aRUvS5PED80IHrVJNjYqhJ6JZn5JkWZwvbxXN1TrqNscL25mgGYRNaQkJxNDc14aGVCz
         7bgX1kNpV3QAq8XYVBKdO7v5nOPj7AaaurTRIm1PmkP421j80gF+n5sqXbQN/KpqeUn6
         T9p/096Fw3MFTf3HKyVeBWIzjPLuNZWL/pU2THln0Xws4+jfYr8Je/G7BCDbHQIkthro
         Qc0w==
X-Gm-Message-State: AJIora8M7dNgkn0RkX8UFfxMbhAKxzgWJYl8TAJzFa+l958x+Dy4OWtm
        xEwsQnbG9E998gW1bm19mOfaIQ==
X-Google-Smtp-Source: AGRyM1shKllIGiUnXHGiJLH6+O6rAfySNJxSL+EK7w+lV4RU9sESPdtwOwhOZz2Yrya3DaMVYGje0w==
X-Received: by 2002:a2e:a788:0:b0:25d:94fd:1a84 with SMTP id c8-20020a2ea788000000b0025d94fd1a84mr14986884ljf.177.1658313398531;
        Wed, 20 Jul 2022 03:36:38 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id d29-20020a0565123d1d00b0047255d21124sm3752136lfv.83.2022.07.20.03.36.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jul 2022 03:36:38 -0700 (PDT)
Message-ID: <ab78f85c-dd0a-9176-103f-8e4abe01b8f9@linaro.org>
Date:   Wed, 20 Jul 2022 12:36:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 2/2] ARM: dts: aspeed: Add device tree for Ampere's Mt.
 Mitchell BMC
Content-Language: en-US
To:     Quan Nguyen <quan@os.amperecomputing.com>,
        openbmc@lists.ozlabs.org, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>, soc@kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
        Open Source Submission <patches@amperecomputing.com>
Cc:     Phong Vo <phong@os.amperecomputing.com>,
        thang@os.amperecomputing.com
References: <20220720085230.3801945-1-quan@os.amperecomputing.com>
 <20220720085230.3801945-3-quan@os.amperecomputing.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220720085230.3801945-3-quan@os.amperecomputing.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,WEIRD_QUOTING autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/07/2022 10:52, Quan Nguyen wrote:
> The Mt. Mitchell BMC is an ASPEED AST2600-based BMC for the Mt. Mitchell
> hardware reference platform with AmpereOne(TM) processor.
> 
> Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>
> Signed-off-by: Phong Vo <phong@os.amperecomputing.com>
> Signed-off-by: Thang Q. Nguyen <thang@os.amperecomputing.com>
> ---
> v2 :
>   + Remove bootargs                                       [Krzysztof]
>   + Fix gpio-keys nodes name to conform with device tree binding
>   documents                                               [Krzysztof]
>   + Fix some nodes to use generic name                    [Krzysztof]
>   + Remove unnecessary blank line                         [Krzysztof]
>   + Fix typo "LTC" to "LLC" in license info and corrected license
>   info to GPL-2.0-only
> 
>  arch/arm/boot/dts/Makefile                    |   1 +
>  .../boot/dts/aspeed-bmc-ampere-mtmitchell.dts | 577 ++++++++++++++++++
>  2 files changed, 578 insertions(+)
>  create mode 100644 arch/arm/boot/dts/aspeed-bmc-ampere-mtmitchell.dts
> 

(...)

> +
> +&i2c3 {
> +	status = "okay";
> +};
> +
> +&i2c4 {
> +	status = "okay";
> +
> +	adc_i2c: adc-i2c@16 {

Node name: just "adc"

> +		compatible = "lltc,ltc2497";
> +		reg = <0x16>;
> +		vref-supply = <&voltage_mon_reg>;
> +		#io-channel-cells = <1>;
> +		status = "okay";

Isn't this new node? Why do you need status here?

> +	 };
> +
> +	eeprom@50 {
> +		compatible = "atmel,24c64";
> +		reg = <0x50>;
> +		pagesize = <32>;
> +	};
> +

(...)

> +
> +&gpio1 {
> +	gpio-line-names =
> +	/*18A0-18A7*/	"","","","","","","","",
> +	/*18B0-18B7*/	"","","","","emmc-rst-n","","s0-soc-pgood","",
> +	/*18C0-18C7*/	"uart1-mode0","uart1-mode1","uart2-mode0","uart2-mode1",
> +			"uart3-mode0","uart3-mode1","uart4-mode0","uart4-mode1",
> +	/*18D0-18D7*/	"","","","","","","","",
> +	/*18E0-18E3*/	"","","","";
> +};
> +

You have a trailing line error.


Best regards,
Krzysztof
