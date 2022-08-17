Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7765596B5A
	for <lists+devicetree@lfdr.de>; Wed, 17 Aug 2022 10:31:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235234AbiHQI3X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Aug 2022 04:29:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233381AbiHQI3W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Aug 2022 04:29:22 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 926E86BD78
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 01:29:20 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id a9so18089550lfm.12
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 01:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=LlRoK8GCouttuQaBiu3XZNyJMKx9NckoSxJlAPIv4MY=;
        b=BNa4kzN4tStk2kyeoWATpkWYOOrU/u42HkDaDm2RyGzskUGA1OS98DKDu1ZO8TeyAc
         BHlGTLFvooBdLrQ7bsGjHyYLXjT7U/XTPw5XtNXVB4DmN/k3ooISitVoSvRIe0jo63MY
         lCcg1xcDs63reLeAyJgfToUbtlbtP1e/bJcsgIb9/ZFKekQUywKC+kfTTRYYfXkQpiVa
         GBXTd4Fhe8jOx6NHT4i8DvZN66P846rCuttcsOqO2aigTpUnw0k/d/vy7Kragknk0xEl
         +uTxBH1xVZUqPd1mz5kYCWkyV36LyiV5EWF/Ik0hqjJXCxdqwHlu2ac1m7hso6chDzRi
         QFbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=LlRoK8GCouttuQaBiu3XZNyJMKx9NckoSxJlAPIv4MY=;
        b=nzAJ7qQGjeZx7NsZi+xqJA6JNOI3iScNttLCK1K5dx8kKIos9Lkoe9DgY9E7hiRvzt
         dzyOblFz+d4GaR+2Zq6ipgSDrPfsX4SlLIymmS3XiGpmETKoirBPHh4p/vs4Z9VhHxKM
         ruJQPmP9UK01q+r22fVPku3jk2qIxfEeGv/PqTDZczOccryowB92nTg10zcc7k7hLwOG
         wdiQlm5Ym8uDZr6WI+7lOxHCJZyM2hwsF6lbjlSSAZk7uE+1f7kA9ZRqS4laSRGYFWNn
         8F8PRYjrXqfpZFros8hd2AQbJ65Q/XCAidQs5jSIebGrUPLWBV36A54/0Qn9QLKEM3Fb
         ik3w==
X-Gm-Message-State: ACgBeo02y03TnaZWKH2vn+MiE330omVCt/JXEzYHIy6FGIYNNJepkX1B
        uza/EpMUK0rYdUbJyZD88GtOEQ==
X-Google-Smtp-Source: AA6agR4HHYiX+08ES6ynJULFRUES7PlCFeft6BMZRI/rn6fM+kl/t2dpDlDozOXX4PW1JsquPkATig==
X-Received: by 2002:a05:6512:3e0c:b0:48a:fdb2:f1c4 with SMTP id i12-20020a0565123e0c00b0048afdb2f1c4mr9470671lfv.379.1660724958883;
        Wed, 17 Aug 2022 01:29:18 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:1b1c:14b7:109b:ed76? (d15l54h48cw7vbh-qr4-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1b1c:14b7:109b:ed76])
        by smtp.gmail.com with ESMTPSA id e7-20020a05651c038700b0025df04af0f0sm2123207ljp.51.2022.08.17.01.29.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Aug 2022 01:29:18 -0700 (PDT)
Message-ID: <f9729b31-c487-ea0a-d329-2efb7765d5fe@linaro.org>
Date:   Wed, 17 Aug 2022 11:29:16 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 06/12] riscv: dts: allwinner: Add the D1 SoC base
 devicetree
Content-Language: en-US
To:     Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        linux-sunxi@lists.linux.dev, Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        linux-riscv@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20220815050815.22340-1-samuel@sholland.org>
 <20220815050815.22340-7-samuel@sholland.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220815050815.22340-7-samuel@sholland.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/08/2022 08:08, Samuel Holland wrote:
> D1 is a SoC containing a single-core T-HEAD Xuantie C906 CPU, as well as
> one HiFi 4 DSP. The SoC is based on a design that additionally contained
> a pair of Cortex A7's. For that reason, some peripherals are duplicated.
> 
> This devicetree includes all of the peripherals that already have a
> documented binding.
> 
> Signed-off-by: Samuel Holland <samuel@sholland.org>

(...)

> +
> +		codec: audio-codec@2030000 {
> +			compatible = "simple-mfd", "syscon";

This alone is not correct. You must use device specific compatible.

> +			reg = <0x2030000 0x1000>;
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			regulators@2030348 {
> +				compatible = "allwinner,sun20i-d1-analog-ldos";
> +				reg = <0x2030348 0x4>;
> +				nvmem-cells = <&bg_trim>;
> +				nvmem-cell-names = "bg_trim";
> +
> +				reg_aldo: aldo {
> +				};
> +
> +				reg_hpldo: hpldo {
> +				};
> +			};
> +		};


Best regards,
Krzysztof
