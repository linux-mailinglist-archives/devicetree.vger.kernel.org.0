Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34C58579687
	for <lists+devicetree@lfdr.de>; Tue, 19 Jul 2022 11:44:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237103AbiGSJn6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jul 2022 05:43:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237102AbiGSJn5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jul 2022 05:43:57 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 719312873F
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 02:43:55 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id u14so8725640lju.0
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 02:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=84RzFoKtMc2/ZjjPuPtVtXWjarXKSIB7sb0q76AuPcY=;
        b=yusJ7LqH9eQRAJ6fCcm65sA3oLqnF2TUdczdiyz1JIUDm/yNqdoe7FZEILdRTLRzdw
         sD5bmFjURACLtIkcQcxqi1rXwrxXVjjTkjKz6K0bQKFcOQdmLeCGRF1GWKZiio0mCe+y
         NEPVsqDPfMgjVrj9Y62pnB4ieLYzi7JfTCXad1v6VOsIEPTZQ/74MKKWSABGYTaGqabU
         9DUHqHvCGGFUSdPIr8CvI5Ewcav2i+5OvApdroPUJjCvvcivBHC1kjx95APG/ryrLiV2
         9fLukKBnYAdsNi0SKkni3yBN/gvCBnPeOmsnyIqdEInbUBmLaBO6OjDFA4Er4WaoQczl
         sPuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=84RzFoKtMc2/ZjjPuPtVtXWjarXKSIB7sb0q76AuPcY=;
        b=w8EfRaZ0Y01dzytp9jJEqKnOncve/4Ebs4ADSrJ4STG7wsbvIuSmR4fKqfv0hQu63l
         SjGstdhdwQ7j0cS1dXxFZSihWahJlFIcwN5MlOeLBtwquz5jznaQJxlW8F63X1fgcvMs
         /qic0GgZK/CMuzijb2UgaE63Vkprj3jPpJZ96KK+G1EsAbI711flaLcYl1PUerVswaGf
         DvuF1jwv/V9e7TFIuzR5WAYxpT9SDriPP40+CUUvom0JV1o7WsUJ0xDnmOnTmK/7Zxv2
         Lky8FJWLQwto1O8MO9TqbkGSByvL0q43sakAOvci6jt/SeBPkfuPzl0MjUvnWmLpTKIW
         fM4w==
X-Gm-Message-State: AJIora/DZ+X5Je13keRcY8b/GTIMyDiwqGdAdOcXEwTkaFc8f8xlu6Kg
        UvG2Bqzf/uKNKot28HsJTn/y+w==
X-Google-Smtp-Source: AGRyM1tnWRH7+IivJbUMILMsRpZVfnctAwepj1Ya9V6LtKET9gwmWWr1/mvRLo9Q/SOufGCWWzuCYA==
X-Received: by 2002:a2e:9dd0:0:b0:25d:46d7:6bd with SMTP id x16-20020a2e9dd0000000b0025d46d706bdmr14208111ljj.502.1658223833795;
        Tue, 19 Jul 2022 02:43:53 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id c4-20020a056512324400b00477c0365b20sm3115122lfr.188.2022.07.19.02.43.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jul 2022 02:43:52 -0700 (PDT)
Message-ID: <8a7c8c65-fb7e-b2f0-2990-a2badfd3e895@linaro.org>
Date:   Tue, 19 Jul 2022 11:43:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v4 2/2] dt-bindings: fpga: add binding doc for ecp5-spi
 fpga mgr
Content-Language: en-US
To:     Ivan Bornyakov <i.bornyakov@metrotek.ru>, mdf@kernel.org,
        hao.wu@intel.com, yilun.xu@intel.com, trix@redhat.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     linux-fpga@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, system@metrotek.ru
References: <20220719092539.6748-1-i.bornyakov@metrotek.ru>
 <20220719092539.6748-3-i.bornyakov@metrotek.ru>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220719092539.6748-3-i.bornyakov@metrotek.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/07/2022 11:25, Ivan Bornyakov wrote:
> Add Device Tree Binding doc for Lattice ECP5 FPGA manager using slave
> SPI to load .bit formatted uncompressed bitstream image.
> 
> Signed-off-by: Ivan Bornyakov <i.bornyakov@metrotek.ru>
> ---
>  .../bindings/fpga/lattice,ecp5-fpga-mgr.yaml  | 75 +++++++++++++++++++
>  1 file changed, 75 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/fpga/lattice,ecp5-fpga-mgr.yaml
> 
> diff --git a/Documentation/devicetree/bindings/fpga/lattice,ecp5-fpga-mgr.yaml b/Documentation/devicetree/bindings/fpga/lattice,ecp5-fpga-mgr.yaml
> new file mode 100644
> index 000000000000..7d2bd386b533
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/fpga/lattice,ecp5-fpga-mgr.yaml
> @@ -0,0 +1,75 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/fpga/lattice,ecp5-fpga-mgr.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Lattice ECP5 Slave SPI FPGA manager.

Skip trailing dot.

> +
> +maintainers:
> +  - Ivan Bornyakov <i.bornyakov@metrotek.ru>
> +
> +description:
> +  Lattice ECP5 sysCONFIG port, which is used for device configuration, among
> +  others, have Slave Serial Peripheral Interface. The driver is to program

s/The driver is to//
Do not refer to driver implementation in the bindings. The entire
bindings and description field is about the hardware, not driver.

With the changes:
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof
