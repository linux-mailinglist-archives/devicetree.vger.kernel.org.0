Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56F166835BB
	for <lists+devicetree@lfdr.de>; Tue, 31 Jan 2023 19:55:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231851AbjAaSzJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Jan 2023 13:55:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231668AbjAaSzF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Jan 2023 13:55:05 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD950568A8
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 10:55:00 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id y1so15178021wru.2
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 10:55:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QuexQnSJj1/dEzqqzwt9cJfQTWna5k6Z7+DQSeslwSo=;
        b=UiFzOWFB4a/3xgSp1yUwchiAQ8AKbNngi8yAmudhhCWJPkH/vxdFxKnmN52dgge+99
         qV3JOlCLHqFjy9hcRlUHUKdwen91bD+PkvYzAYTR2ty2z7aKbQKdw1C8d4VPFkiKKTpl
         m/VAUSTxqu8ueLRRQUL9BBaylQ7omcTh92y39KQGo3LWPTIaYWhsaG23o15L+JPz/CYO
         KkmmixGlhfeo+NMFMvn+tXpyvnXBO2YKnH3OoRDt8BMVJWCKbQTRjKQp1zLrsVWtTC3V
         e6mdZXE6kookzzCJ/wh3wMXHTP/qJy9S92/66UvKZkeI1tYpylvfi1+eioXQCTQRcGYS
         yqHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QuexQnSJj1/dEzqqzwt9cJfQTWna5k6Z7+DQSeslwSo=;
        b=t5w2yo1xYk0m3waZDx8OrU7MlG4JrU6h558p3s0eMF0oJES5K4/sqP99R2l6KwHiPN
         IImKEKDlX9Bzl3hAtFGNTRWcmwOKgMtB53+70zNCZSuqy2lJMYVSUysTiNAKgtaimQ4D
         LDujSrHdiQiNy5wQivZYXfUItDMeHH2o7iV499IUlRvucVf5KFb4PeNCPdX1ZGWUM/sL
         l4i/QUJDA3zYpRA8hD6s+ezo9DRlXlaPqyUzUz0FoZlBmxcY6FAIJWAy1QvipiE6fmkp
         8wZOs/AU5X34piAmSJnzewieGLIgbcTZXA3umXvcYmtbPNIsaD3R9kB4k8tdEURZk60O
         G/7g==
X-Gm-Message-State: AO0yUKVoO+VeiiUi+C6+MwcZBxUjmwjsiZEbUasW6Y+xxd2WOhjILC80
        Wfl833Yig6NjuTv1YtMCuVmJWg==
X-Google-Smtp-Source: AK7set/71U7zFmoH6k8sW32CesgMw/oX9q60A5z4fWakNgzXRDUUedjJa/xOqvp4MjzwwWbSNWAoaQ==
X-Received: by 2002:adf:fe86:0:b0:2bf:b36e:f6ac with SMTP id l6-20020adffe86000000b002bfb36ef6acmr30914wrr.39.1675191299268;
        Tue, 31 Jan 2023 10:54:59 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id v9-20020a056000144900b002c3b2afae00sm112304wrx.41.2023.01.31.10.54.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Jan 2023 10:54:58 -0800 (PST)
Message-ID: <9a3bbaf0-eb1d-613a-a8ba-272896ef2da8@linaro.org>
Date:   Tue, 31 Jan 2023 19:54:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 5/6] dt-bindings: hypervisor: Add dt-bindings for VMBus
Content-Language: en-US
To:     Saurabh Sengar <ssengar@linux.microsoft.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, kys@microsoft.com,
        haiyangz@microsoft.com, wei.liu@kernel.org, decui@microsoft.com,
        daniel.lezcano@linaro.org, tglx@linutronix.de,
        virtualization@lists.linux-foundation.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-hyperv@vger.kernel.org, mikelley@microsoft.com,
        ssengar@microsoft.com
References: <1675188609-20913-1-git-send-email-ssengar@linux.microsoft.com>
 <1675188609-20913-6-git-send-email-ssengar@linux.microsoft.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1675188609-20913-6-git-send-email-ssengar@linux.microsoft.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/01/2023 19:10, Saurabh Sengar wrote:
> 
> Signed-off-by: Saurabh Sengar <ssengar@linux.microsoft.com>

> +  - |
> +    / {
> +        compatible = "foo";
> +        model = "foo";
> +        #address-cells = <0x02>;
> +        #size-cells = <0x02>;

Except previous comments (all of them were ignored), also:
Drop entire part. Not related, not correct, not helping and you cannot
have top level nodes in example.

> +
> +        vmbus@ff0000000 {
> +            #address-cells = <0x02>;
> +            #size-cells = <0x01>;
> +            compatible = "msft,vmbus";
> +            ranges = <0x00 0x00 0x0f 0xf0000000 0x10000000>;
> +        };
> +    };
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 1f7a519a936f..ab74ea97535f 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -876,6 +876,8 @@ patternProperties:
>      deprecated: true
>    "^mscc,.*":
>      description: Microsemi Corporation
> +  "^msft,.*":
> +    description: Microsoft Corporation

Don't duplicate vendor prefixes. Drop and use correct prefix.

Best regards,
Krzysztof

