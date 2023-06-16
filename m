Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F44C732CE1
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 12:05:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245245AbjFPKFJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 06:05:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241493AbjFPKEt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 06:04:49 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F940194
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 03:04:48 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-982ae93386aso73301966b.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 03:04:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686909887; x=1689501887;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uYBJJFpgemmy6W4txbxWomnmBYNEc2Pci2rgkT0U7hg=;
        b=WeM4PckhJwPQ1923kkK/m24dg7JziG6V4ajokijrPIYQHuZp5fTGYVsti5xHtHMZbE
         OjRnMw4ofWUHcGbWQbNu10iJrQVNfgAaEnCAHvAs/ZTPLLiYgzlcURrMAUgsRyyiKq5z
         yi/gkplSCNfDeiFqKmzghI7XGH19x5qWCpCIeZkx8HAGV5PvMPHr8uE9tltyhabd0lAe
         pSf9WZ82qoRpGkZZnsAGG4qs0g73oT1uIN5kSmb5qqQMWRzDJ5ArvsJLwKSjWQfwxhC1
         YYKkr4heeFlGCIK3ck0mukJh4avG2R51W+EqtmzLSKgGrohcL8F5xhSm8hKse0auGsxO
         r1Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686909887; x=1689501887;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uYBJJFpgemmy6W4txbxWomnmBYNEc2Pci2rgkT0U7hg=;
        b=Stnf2shWJTdQ2gKELOR4ywJF9IVeJp3KrhhIdhspB8SnDT6L3qDpRZUMUleXOypQfj
         ZIv5tCDhXGtChMU3Z0WgrfzdlKyGfdaNgrr+c4mIlrezqp90jBFEuELCasQFo56sjabr
         cHRS2856vfZAzcRS9i10TIRBG84lQv9XF45zhHOR3IxUhZjbFCmjTp0zqrARlfUqAH76
         IszznZ5oCkcRwCUTHzctEHuFh8LwKDhsOjiyfDdGFUQZJ6phNHwRHlscgDvqrx4FCgaZ
         R7yrMrm7fkA9vqKPsUXW20WIjgfBjvbRLhc7UAl6nGNHiPsXAdOJNhaQVl07zbeizoEU
         mVGA==
X-Gm-Message-State: AC+VfDwZdqOFicZkowoNQHYKqsVly4J4WMGmcvErw/0bTfbQTRst7hsk
        xqd4mzClCHjB/kIvpILlSo3ANA==
X-Google-Smtp-Source: ACHHUZ4rcmI11g1mhDGNXV6YANHaooS38LFWir880NILrYi+St8Lb9fV6/jlWjeoYYiY2HdPxS6i2w==
X-Received: by 2002:a17:907:86ab:b0:973:a30d:b264 with SMTP id qa43-20020a17090786ab00b00973a30db264mr1281273ejc.46.1686909887022;
        Fri, 16 Jun 2023 03:04:47 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id s16-20020a170906355000b00982943c7892sm2383714eja.134.2023.06.16.03.04.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jun 2023 03:04:46 -0700 (PDT)
Message-ID: <ca49f782-7e5f-5203-c981-e601eb2ff4c5@linaro.org>
Date:   Fri, 16 Jun 2023 12:04:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 4/6] LoongArch: DeviceTree for Loongson-2K0500
Content-Language: en-US
To:     Binbin Zhou <zhoubinbin@loongson.cn>,
        Binbin Zhou <zhoubb.aaron@gmail.com>,
        Huacai Chen <chenhuacai@loongson.cn>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Cc:     Huacai Chen <chenhuacai@kernel.org>,
        loongson-kernel@lists.loongnix.cn, Xuerui Wang <kernel@xen0n.name>,
        loongarch@lists.linux.dev, Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Hongliang Wang <wanghongliang@loongson.cn>
References: <cover.1686882123.git.zhoubinbin@loongson.cn>
 <c7087046a725e7a2cfde788185112c150e216f1b.1686882123.git.zhoubinbin@loongson.cn>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <c7087046a725e7a2cfde788185112c150e216f1b.1686882123.git.zhoubinbin@loongson.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/06/2023 08:10, Binbin Zhou wrote:
> Add DeviceTree file for Loongson-2K0500 processor, which integrates one
> 64-bit dual emission superscalar LA264 processor core.
> 
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> ---


> +
> +		pixi2c@1ff4a800 {
> +			compatible = "loongson,ls2k-i2c";
> +			reg = <0 0x1ff4a800 0 0x0800>;
> +			interrupt-parent = <&eiointc>;
> +			interrupts = <19>;
> +			status = "disabled";
> +		};
> +
> +		pmc: acpi@1ff6c000 {
> +			compatible = "syscon";

One more - this is not allowed and clear NAK.

Best regards,
Krzysztof

