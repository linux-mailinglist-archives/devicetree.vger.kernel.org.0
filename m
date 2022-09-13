Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E2B7F5B6A96
	for <lists+devicetree@lfdr.de>; Tue, 13 Sep 2022 11:21:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231455AbiIMJVv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Sep 2022 05:21:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231270AbiIMJVv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Sep 2022 05:21:51 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACFDF140FD
        for <devicetree@vger.kernel.org>; Tue, 13 Sep 2022 02:21:49 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id z12so1434583wrp.9
        for <devicetree@vger.kernel.org>; Tue, 13 Sep 2022 02:21:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=ec1g3CWrNzafhsMb+cfu9JbCUupSfipgUIO7L9IZBKU=;
        b=ox8Lw5bG4JhnlxvaRIVMOL97ZPochJEx8oU0kvBoP3mffOr6KjOlqa8yo0UT1zfpRn
         pol+FlGQRMQvxikfN3Vc1235pbaN6EFjZypZvImq3OezkeTx53jRoasj0SesNjhO+J+W
         yKRFOylIBnsztUmCu6JJkM61TLR1EDCV09WPNS02ORk8UV9k0y2VOJv93xzbIB6Frscf
         jCfnTmEfSX3w5WijMg1gg0jgFou0oG908cykxLe2pgfz0w0nsOlEbTvMio+lbfzE8wVv
         gq7UKPGlHmRZfI/DTNi2MSuBsXeA/uvmcKT9xeQEXwSk46u6Oo79Q/jyBJzpx/SJmB5+
         qylA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=ec1g3CWrNzafhsMb+cfu9JbCUupSfipgUIO7L9IZBKU=;
        b=6mzXIBIxY7i+4imINqC505lIn7tgZjqsliMfPnhADkWernwtKKdNQUZm7no62q+tgI
         /pXiNawE7eGDH1YH8Ci2IWOa3ZcA3Sx8UuGWLSVEXo0lKtLUL1uMmfd3MyM0smdn9E0M
         T88wyfUtskSSITRnnmT3QhO7QqIEnskva5qGiFoCtuTH6vy1W2H+NxDfRaBamvZdk+Yc
         oqkmEM6PNqPO9Ziq1mw3b95f3FXZIXc6810KUcUTBE9EhfT3LbGncg1eDk94W0sMnXfn
         OYykwd0B1kdPlKlP0EVLppXemjQ9YLV77vkgX1n5XA8V02CQqbvafe30ScY9HKzdIVa1
         rcGg==
X-Gm-Message-State: ACgBeo31s+Mzwj6JDFTK2I7KZtZRLVZOk44uqlFGEeSDFfeAQoUuwYsO
        ISE1lf/mUfRDR2OoctBSyV3clQ==
X-Google-Smtp-Source: AA6agR5+dW2n2bg76HDr6mbtyh9GZatzMKtyGqiqWgtb3HblKDx0HkuUFKI7JZ3gdaGefaQwBQ1tgg==
X-Received: by 2002:adf:ec03:0:b0:228:76bd:76fc with SMTP id x3-20020adfec03000000b0022876bd76fcmr17648470wrn.533.1663060908297;
        Tue, 13 Sep 2022 02:21:48 -0700 (PDT)
Received: from [10.119.22.201] ([89.101.193.70])
        by smtp.gmail.com with ESMTPSA id ch16-20020a5d5d10000000b0022abd7d57b1sm1837250wrb.115.2022.09.13.02.21.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Sep 2022 02:21:47 -0700 (PDT)
Message-ID: <4cc7a6d2-64ef-c176-21ad-4c3e66f664f7@linaro.org>
Date:   Tue, 13 Sep 2022 11:21:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH] dt-bindings: usb: dwc3: Add interrupt-names to include
 hibernation interrupt
Content-Language: en-US
To:     Piyush Mehta <piyush.mehta@amd.com>, gregkh@linuxfoundation.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        balbi@kernel.org
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, michal.simek@amd.com,
        siva.durga.prasad.paladugu@amd.com,
        Manish Narani <manish.narani@xilinx.com>
References: <20220912085730.390555-1-piyush.mehta@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220912085730.390555-1-piyush.mehta@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/09/2022 10:57, Piyush Mehta wrote:
> From: Manish Narani <manish.narani@xilinx.com>
> 
> The hibernation feature enabled for Xilinx ZynqMP SoC in DWC3 IP.
> Added the below interrupt-names in the binding schema for the same.
> 
> dwc_usb3: dwc3 core interrupt-names
> otg: otg interrupt-names
> hiber: hibernation interrupt-names

This does not make sense in commit msg. Don't duplicate patch in commit msg.

Where is the user (DTS) and implementation of this change? If this is
specific to Xilinx, why you do not have device specific compatible?

> 
> Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> Signed-off-by: Piyush Mehta <piyush.mehta@amd.com>
> ---
>  Documentation/devicetree/bindings/usb/snps,dwc3.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> index 1779d08ba1c0..618fa7bd32be 100644
> --- a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> +++ b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> @@ -53,6 +53,8 @@ properties:
>        - const: dwc_usb3
>        - items:
>            enum: [host, peripheral, otg]
> +      - items:
> +          enum: [dwc_usb3, otg, hiber]



Best regards,
Krzysztof
