Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CDDCE6FD8B4
	for <lists+devicetree@lfdr.de>; Wed, 10 May 2023 09:56:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236481AbjEJH4U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 May 2023 03:56:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236506AbjEJH4Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 May 2023 03:56:16 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3230B6A52
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 00:56:11 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-965c3f9af2aso1017790766b.0
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 00:56:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683705369; x=1686297369;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y9RFoN4O5XFIITa1Nf4m95eLoa2elYnCxA/759kt0FU=;
        b=kLY3wjNehkZwp8cU7rDh4jvPoK+/liRJjcWUMFoEf5+S6QQshsDBVcGbxAUtpXiv4z
         A5jNkENMTTvKKmMYnZwWvhNsHLv/uXGwpsfOjvmLm8hBMRV4rvqzPkLl5bx2C8ns5L0/
         AWoeiiC3eCFihew7jxWnppIelC6/6t5guAxfsqUNT77JiZJ2YuI/+4s2eYyhKDNKrbRZ
         7PFKM1XLFVEXhoV5uATJJlS4vmq4wdBwAXgPOyxMa5rXCCFpdnuSxJF+V8O8zYV473Uh
         QZbR0qJr+ysdiCeddo8co/bu6Lg8G2ER62CRCfNBRp6rDLQNVqT9r736JrjAUQMzS/Lk
         nycA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683705369; x=1686297369;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y9RFoN4O5XFIITa1Nf4m95eLoa2elYnCxA/759kt0FU=;
        b=aVXoJ2A7Y07SJzlERej3V7Voz1nJ97KPfPQfZ5y+uwCTTU0Nf69o2skTC3QpW8UNUb
         KnSyhQpYhzCm1zunCxsbeEY72b8djAUSyr1nS2ss5K4dE+2Vf95JUbUTfiXi9rTZ5FqH
         WaQwtMLO1nF4avo1wQsx7cXM95GJHbEs06Xz+xdaCzrjcL2Es0uE2tHyZISAaqNyr1O/
         GUp9O4zJ0IZaOF8/QzaYFagZOIUMebbfoIkerxpFQ3zT1BcIkAlM6DXSeqIN6xggk8JM
         4+t/sE8YLxZx/yxU8x1BBez2PhIZHRMfLN44dS8lfso5gRdOS/b0zgWvHSYCZAVoHZr1
         WgYA==
X-Gm-Message-State: AC+VfDw+BLyAYl6cEBAs0+SatXCTlPRqnU3X4dmbhn9MRxShsZiGKQ0N
        fBJ6OomCns+7B5ni58unrbECRg==
X-Google-Smtp-Source: ACHHUZ4Zsna71INf2aga4IE3V40t03Umq05b0Y5aPtBM2+siS110hJDZd9+0xlxWAcAEXuHQQ8I3Ag==
X-Received: by 2002:a17:906:eec5:b0:94b:cd7c:59f4 with SMTP id wu5-20020a170906eec500b0094bcd7c59f4mr13529347ejb.16.1683705369733;
        Wed, 10 May 2023 00:56:09 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:c175:a0f9:6928:8c9d? ([2a02:810d:15c0:828:c175:a0f9:6928:8c9d])
        by smtp.gmail.com with ESMTPSA id mz11-20020a1709071b8b00b009603d34cfecsm2311183ejc.164.2023.05.10.00.56.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 May 2023 00:56:08 -0700 (PDT)
Message-ID: <8f9d4228-4414-a299-aa86-07baf5b95af9@linaro.org>
Date:   Wed, 10 May 2023 09:56:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 1/2] dt-bindings: PCI: rcar-pci-host: add optional
 regulators
Content-Language: en-US
To:     Wolfram Sang <wsa+renesas@sang-engineering.com>,
        linux-renesas-soc@vger.kernel.org
Cc:     Marek Vasut <marek.vasut+renesas@gmail.com>,
        Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
        Rob Herring <robh@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230510065819.3987-1-wsa+renesas@sang-engineering.com>
 <20230510065819.3987-2-wsa+renesas@sang-engineering.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230510065819.3987-2-wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/05/2023 08:58, Wolfram Sang wrote:
> Support regulators found on the e.g. KingFisher board for miniPCIe and
> add a 12v regulator while we are here.
> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
> 
> Changes since RFC:
> * added 12V supply for completeness
> * use PCIe slot in the example instead of miniPCIe because that is what
>   the Koelsch board offers (just without the regulators ;))
> 
>  .../devicetree/bindings/pci/rcar-pci-host.yaml        | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/rcar-pci-host.yaml

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

