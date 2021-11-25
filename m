Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D24E45DD6E
	for <lists+devicetree@lfdr.de>; Thu, 25 Nov 2021 16:28:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237283AbhKYPbh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Nov 2021 10:31:37 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:52044
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1345632AbhKYP3d (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 25 Nov 2021 10:29:33 -0500
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com [209.85.208.200])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 668CB40749
        for <devicetree@vger.kernel.org>; Thu, 25 Nov 2021 15:26:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1637853980;
        bh=amcl3GANIPe7PKb9EAnOXSQfzXD0HZLDodu/ulsFM2Y=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=Ag6YqmtRsI9vEsojUOsyjrtiDPFE0CRGWTNZN4PHFpBDLlTyHBWkUpxBI5cbox84c
         HAUiCIuprJu2z6ZtCmNZmpeic3TLAJWSyVF3D/17xHCSFKWcnyr0RHXMG1H4+uUu8N
         O+V7jpP2DHydSjT9sCcYBbeHcn+LeBJven+eL9/9X7pRQioyuLPvCRTxoiPuh0JO0R
         B5lC+B1uz2pU5cveF68SrhzlNdgpltqn/dqQwhjzmMr5h2aG0ZKwvTSbwsArM0mUei
         PP2yVea1HTo6x9BykTmTfroPd87CDKzgtTIz29BAoVVGVptN+/2+cFiJzfwSF4JcYn
         KkpPI2e42ZdIQ==
Received: by mail-lj1-f200.google.com with SMTP id i14-20020a2e864e000000b00218a2c57df8so1934813ljj.20
        for <devicetree@vger.kernel.org>; Thu, 25 Nov 2021 07:26:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=amcl3GANIPe7PKb9EAnOXSQfzXD0HZLDodu/ulsFM2Y=;
        b=ry/UF+wIU0kOQ4E2vJTXAwKXjCVpQGoXjYy846NYAcMpQf8YoKaZ7NSS4+HmWjXcEG
         DNgq0v6BF2frbzTqR6ThUF8dN87rvAu4WkO5YvreXpr4i9v2Km7VDh+Gmm7/POFGyKS3
         /Rth2yTXwpxNQqt6GY0BgmQPpLGojXNrQ9V2MtXldGpv8F724a004HWDtBX0aPkgD5tv
         fuDv5VsELac+BqTig5GoR9a1N9gr/vROOTzKumb4QXnPI267xY3anSH9mE5W93zHLMro
         /FY/ikG26E/tzOmi3poO/KzUbGGjkp1f1k+vzFzY3tM8lqxYrRjlzjQ/ioXVAcT5nzN8
         MzrQ==
X-Gm-Message-State: AOAM531fyrtQkk0a13FTsLdK2ep40/vEFaKFmupHJ6W77wNSaI+RrJfn
        E0CxApFKxATim/VT8lc+2JAoc2y2Of7VzTy51at/ZlaXK79r5M2OZHh6FVTflVl5M03XghvM42D
        Ao7l4q3jf28gfHyDr8zZXp7/pdk0th7NW0rDlXoc=
X-Received: by 2002:a05:6512:2292:: with SMTP id f18mr23946190lfu.18.1637853979334;
        Thu, 25 Nov 2021 07:26:19 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzn1+RB7r3XOlGNO+ahbHGIswkd1Eeqf82NkcTdL785D/0mOk8ak+h7JW+P5FnFls+yKf4Cpg==
X-Received: by 2002:a05:6512:2292:: with SMTP id f18mr23946175lfu.18.1637853979173;
        Thu, 25 Nov 2021 07:26:19 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id w16sm285015lfa.271.2021.11.25.07.26.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Nov 2021 07:26:17 -0800 (PST)
Message-ID: <3fec093a-df46-6096-3f66-891734a5f140@canonical.com>
Date:   Thu, 25 Nov 2021 16:26:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH] dt-bindings: iio: adc: exynos-adc: Fix node name in
 example
Content-Language: en-US
To:     Geert Uytterhoeven <geert@linux-m68k.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
References: <20211125152154.162780-1-geert@linux-m68k.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211125152154.162780-1-geert@linux-m68k.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/11/2021 16:21, Geert Uytterhoeven wrote:
> "make dt_binding_check":
> 
>     Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.example.dt.yaml: ncp15wb473: $nodename:0: 'ncp15wb473' does not match '^thermistor(.*)?$'
> 	    From schema: Documentation/devicetree/bindings/hwmon/ntc-thermistor.yaml
> 
> Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
> ---
>  .../devicetree/bindings/iio/adc/samsung,exynos-adc.yaml         | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
