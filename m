Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 340905E7740
	for <lists+devicetree@lfdr.de>; Fri, 23 Sep 2022 11:33:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229975AbiIWJd4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Sep 2022 05:33:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230318AbiIWJdV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Sep 2022 05:33:21 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67A95DE3
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 02:33:20 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id a3so18851535lfk.9
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 02:33:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=/1zWz4RAz6GhvSHODyajxEJWqiPa/dQJx8t/qw4HSK0=;
        b=K4H1lSMPWWMiRRDPDaq35x6ujEOODzFh6A/EaaM/mWbzhLlpQ0P/BOocBzrUV0Fd98
         npZAXkK/7Er3RGiwp8Qb8DIwA2YJP5rUCCwOFLpPxpqU2z/NQNjUt+SMvtRkM/IZq0RY
         ombjuJwkXszA9Q5kOGe1F/BcOSicgOSwFR4UHjN34pcec4snAUPvUQpljTX2gh62WsrW
         PxiNOIAn1vDm7Y0u0z9jcxIW90qoc5BNe3nLhF5fb7wiaZ75YJkMx7rkKGCkgzXZqTHg
         /QUjU55p6j8C1XC6LPQ51CDT0CDPbon/EBgCguQxeuZzzrB/h8Oc4tVR65SF94C6s/Jx
         3WMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=/1zWz4RAz6GhvSHODyajxEJWqiPa/dQJx8t/qw4HSK0=;
        b=zKl7+S9fwa8cKcm4k3Jn2zffFnYNvuQtY92ZTx2yDwuT1VRvEo4l0ikB5Y30MtAl5t
         ti6Q5sm5i0LRYLjojQQksConEcATdqswFzlfvVlp6ZejdkENfhTWfGhWQHTyT3DTpAnZ
         u/n2jyp51y0JMM48x1P0aTPfKEcU3zm+AFJNv+xJRzPfAwav/gW+JD8s2UeiszVXFQIk
         GRS3ha88w9ry2onXphQtcoQhNslCcD43MCSKYzh3UyZXD7q2aoTJAAqaYgMDQNL76v5h
         sAmVv07KFhN5foTn2uFcydqX65HXG71pd6iGszqCHdwleetNw78JvdlJsWjZm4h3AOZD
         ZlTw==
X-Gm-Message-State: ACrzQf24D32C7+Phquzhz1de5GSQL2FgQ2BZXAXDN2uox8J68B2HBOKB
        p7o17IVzGzuwBCOO8xGAlKnqjQ==
X-Google-Smtp-Source: AMsMyM5VN9/CfZfVeYSAYQM++Lenknzgtx8nf7w9p/a8Gb7nAciHGu2nyG9jCGxmSOR+HRitP4uoGw==
X-Received: by 2002:a05:6512:6c7:b0:49f:5491:3330 with SMTP id u7-20020a05651206c700b0049f54913330mr2837981lff.197.1663925598753;
        Fri, 23 Sep 2022 02:33:18 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id 11-20020ac25f4b000000b00494978b0caesm1356275lfz.276.2022.09.23.02.33.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Sep 2022 02:33:18 -0700 (PDT)
Message-ID: <ceb1125c-ff71-997f-5d0c-ce1887cc4bfb@linaro.org>
Date:   Fri, 23 Sep 2022 11:33:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v3] dt-bindings: virtio: Convert virtio,pci-iommu to DT
 schema
Content-Language: en-US
To:     Jean-Philippe Brucker <jean-philippe@linaro.org>,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     virtualization@lists.linux-foundation.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220923074435.420531-1-jean-philippe@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220923074435.420531-1-jean-philippe@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/09/2022 09:44, Jean-Philippe Brucker wrote:
> Convert the binding that describes the virtio-pci based IOMMU to DT
> schema. Change the compatible string to "pci<vendor>,<device>", which is
> defined by the PCI Bus Binding, but keep "virtio,pci-iommu" as an option
> for backward compatibility.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

