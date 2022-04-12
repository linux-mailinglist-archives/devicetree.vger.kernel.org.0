Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E989A4FDBE5
	for <lists+devicetree@lfdr.de>; Tue, 12 Apr 2022 12:59:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354843AbiDLKIS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Apr 2022 06:08:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352024AbiDLJmd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Apr 2022 05:42:33 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E1EE13E84
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 01:52:29 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id b15so21526107edn.4
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 01:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=pB+1JohUx/AAEa/eALR+9ZzJFy4+pwowrpjWY0TEY6s=;
        b=g8oMWg7WaTEuIIf7SFur7baOsKDy1aiy27S3Ckz9bAm+8KujIwQkIc97hAPh+AzqEG
         mRg9Bfu3IHa23w/tuKemvpsGngozqjFtft+1gPnxeCG62HCahLmUnOYOVcAbH89MfTxY
         7fHOBXbcyyY/XF+IKx9M8npbHXSzHuVJMCELMOUqW10ce4TIO3+YH4TGsuCvQBbxu68j
         ZgS3euFwXmfjbjBEBQ7Zsk7g2xSHQBFsFPJA8PePYO2Fo6kyKrvP3z+Y00eOAIjZ9YGu
         6So0c3+Qu1ou28750cgLq/BEK/grwoiv+BLMSNzX1J1Q3T9I+rNLqPLoXpJs5fSE2X5N
         i9Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=pB+1JohUx/AAEa/eALR+9ZzJFy4+pwowrpjWY0TEY6s=;
        b=DU7yFxYXCIaEXifcgf062L74sPMG/2Y7fTo8X10gQje2ZzH/huLO3KjB4xuyZrQiOD
         baaPwh6zglS2VDpRonw1Q3MmaFUbx/8aAErJ4+D/xME+FwFqQCePPshy1eeLXUZevhWf
         A2nrQw82t4yPCw0MGwC7uJoHzM82uvPqUlSu2aAV+Oo/iriuGUCfMY9K8PTPR9GMU+zv
         YH2N704rn9yGyVQr22FBN0LBzHbWpqst7EbMPCic7HW9jqcQ6SmB6I4HlY/qpmmV+N+f
         p9kY4RdVt2WnRFkof4g5+wWgIjTA+HOl2RzBBHCUaIa2A6GD7lmkpvNEEQvCakvf90Bx
         faog==
X-Gm-Message-State: AOAM531k6MnUo32St3hJH7QqXKIUlddXwveBgfANi72ZtFB2qW7uaz/K
        3Me89mJ7Lm4f7geMTeztfRrAvg==
X-Google-Smtp-Source: ABdhPJxFhtwpTL4eKhml6vgwWIqP+H4DWUDHQoZAIyaHwztXfad7VbrscMEEk+gBT3gfSXKH703Byw==
X-Received: by 2002:a05:6402:42d4:b0:412:c26b:789 with SMTP id i20-20020a05640242d400b00412c26b0789mr37519085edc.232.1649753547814;
        Tue, 12 Apr 2022 01:52:27 -0700 (PDT)
Received: from [192.168.0.194] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id p15-20020a170906228f00b006e86ff7db33sm3894546eja.68.2022.04.12.01.52.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Apr 2022 01:52:27 -0700 (PDT)
Message-ID: <ab2252b6-a986-6f3b-0b5a-eb1cad3f28ae@linaro.org>
Date:   Tue, 12 Apr 2022 10:52:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 1/2] dt-bindings: i2c: add property to avoid device
 detection
Content-Language: en-US
To:     Vincent Whitchurch <vincent.whitchurch@axis.com>, wsa@kernel.org
Cc:     kernel@axis.com, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, krzk+dt@kernel.org, robh+dt@kernel.org,
        linux-kernel@vger.kernel.org
References: <20220412085046.1110127-1-vincent.whitchurch@axis.com>
 <20220412085046.1110127-2-vincent.whitchurch@axis.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220412085046.1110127-2-vincent.whitchurch@axis.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/04/2022 10:50, Vincent Whitchurch wrote:
> diff --git a/Documentation/devicetree/bindings/i2c/i2c.txt b/Documentation/devicetree/bindings/i2c/i2c.txt
> index fc3dd7ec0445..960d1d5c9362 100644
> --- a/Documentation/devicetree/bindings/i2c/i2c.txt
> +++ b/Documentation/devicetree/bindings/i2c/i2c.txt
> @@ -72,6 +72,10 @@ wants to support one of the below features, it should adapt these bindings.
>  	this information to adapt power management to keep the arbitration awake
>  	all the time, for example. Can not be combined with 'single-master'.
>  
> +- no-detect
> +	states that no other devices are present on this bus other than the
> +	ones listed in the devicetree.


Looks good to me.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
