Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D8EE4B202D
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 09:27:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346561AbiBKI1W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 03:27:22 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:56190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346388AbiBKI1V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 03:27:21 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0C8DE4D
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 00:27:20 -0800 (PST)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 493AC3F32C
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 08:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644568039;
        bh=H3OiQAYk2GIhfaHbvtSPO4n8VIyPVbMldM6/XVwV37Y=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=pPcKkrdA0yCcNPgZwsMF+LBdIDDicMBRbM3WwSHpcsH+xhCOtMcIK4Dq0Koka4ltv
         jjKdzE6Zta445roMpbGK3/2z9D/2E84i06xF8zFZHpPTQ8h8kIGrZ1sfk34Pv9uA8R
         DiffLmeALRYG4g/leq9l0LdT3OQi/HvJqUH64FM66GHlrsVqZPELXCPDUkWACG+c7o
         z0OTeWuPcf5XvTLSNiEZY9Z5Qa4ASuFlBBeVyi/s09z/8yqz4er+ltkIj8lvFAGTjT
         U2ohRAC4Rd7GbGff3y8+VJCmpy9JFKwzQcdmF/Mmgd/8HGe4ybZvBovsMQ5jzd5FrZ
         I5e12D2T4k6Rw==
Received: by mail-ed1-f70.google.com with SMTP id j10-20020a05640211ca00b004090fd8a936so283251edw.23
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 00:27:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=H3OiQAYk2GIhfaHbvtSPO4n8VIyPVbMldM6/XVwV37Y=;
        b=ISlJi5ZMCK0bi2FHDkPOrZOhfrO1YXoxaywj5/sBLZIm5yb+ZQtjK8NYH1i0Hw9YPR
         2hOEkAj7zNpTKYys9DOwDqxum9KXIAhsweyFs1GJl2phOuz2wLetMZWniFRMnwmkUrwS
         xswDC1AioD+FCVU8vVQuuJwHyZNaxNse2lr9MXw9tx7J+cwzVv2Zc/b4+boevOfXHFsE
         rsu7zH2keJFrOa+zO3TA+HNL1kq3UYcvqPsLwR+xpmvgeNtUUW8SmiP+u6nXlnqGCUZq
         g8+dNHnO7/vDEK6REZvyt/Hzn5kJ9ghwiQW7+NdvXBPx5Ft0O5XeTAFGtTxbl3qutR/7
         hHcQ==
X-Gm-Message-State: AOAM532U4ubOQHX+hTDNxDX8F3Uk2s2VNC/cSZHRpFzhlKTl5iXCbqO4
        2Si8CEzxetJphh8h5GWqnMAfW5SB+ItOC90lBIrITJhhWzXWIpd0JmZLhwX2ohexOjFXulBdm8O
        jiYYgdZHgsy+9HQPk0e8bK82S6EXN+Kuh3LW/0dk=
X-Received: by 2002:a17:907:94d4:: with SMTP id dn20mr457901ejc.208.1644568038949;
        Fri, 11 Feb 2022 00:27:18 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxvEor8aOhjExDHEnGKuwIJ3jicI6Tn55jfj3xzH5dAsZ43cnABRsxkYc6p1FL9b9zoGWISFw==
X-Received: by 2002:a17:907:94d4:: with SMTP id dn20mr457888ejc.208.1644568038756;
        Fri, 11 Feb 2022 00:27:18 -0800 (PST)
Received: from [192.168.0.99] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id r2sm6926670ejo.65.2022.02.11.00.27.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Feb 2022 00:27:18 -0800 (PST)
Message-ID: <b6bbaf8b-ecd9-c8e9-c62f-f9c36ea3b013@canonical.com>
Date:   Fri, 11 Feb 2022 09:27:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PACTH v3 2/3] dt-bindings: crypto: Convert Atmel TDES to yaml
Content-Language: en-US
To:     Tudor Ambarus <tudor.ambarus@microchip.com>,
        herbert@gondor.apana.org.au, robh+dt@kernel.org
Cc:     nicolas.ferre@microchip.com, claudiu.beznea@microchip.com,
        alexandre.belloni@bootlin.com, linux-crypto@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        kavyasree.kotagiri@microchip.com, devicetree@vger.kernel.org
References: <20220211082114.452911-1-tudor.ambarus@microchip.com>
 <20220211082114.452911-3-tudor.ambarus@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220211082114.452911-3-tudor.ambarus@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/02/2022 09:21, Tudor Ambarus wrote:
> Convert Atmel TDES documentation to yaml format. With the conversion the
> clock and clock-names properties are made mandatory. The driver returns
> -EINVAL if "tdes_clk" is not found, reflect that in the bindings and make
> the clock and clock-names properties mandatory. Update the example to
> better describe how one should define the dt node.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---
>  .../crypto/atmel,at91sam9g46-tdes.yaml        | 64 +++++++++++++++++++
>  .../bindings/crypto/atmel-crypto.txt          | 23 -------
>  2 files changed, 64 insertions(+), 23 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-tdes.yaml
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
