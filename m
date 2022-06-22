Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B886B55472A
	for <lists+devicetree@lfdr.de>; Wed, 22 Jun 2022 14:11:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353295AbiFVIch (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jun 2022 04:32:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352513AbiFVIcg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jun 2022 04:32:36 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D941D78
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 01:32:35 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id t5so93085eje.1
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 01:32:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=WIUcmFiN2jsL7oALDMp5YXGwCzJ0JqW4KnAxg4P/XMU=;
        b=k9Gvq7+J9mhzaht3u87CbdlwP+NVlSPWWWYmFGGNQIro/etVMQlfRMzzkmHXJjZLPT
         /2jU0et3pQJq3gG8wjqHhubqpZ8qBWdSe1957mW+R4AJtmASHzjgTyIApF3wYvyND+3g
         aUkPpPsFP8scmGhOZVTm/rPjEO87fQrl1bQO8axt/Kl7rVfE4dxMUEG6fZ9/21JCvJWt
         eNdIEIBF8HAoi8bZTGT83Q53cj1GvkbqS8Fshh5NyqUsWIhcjfRfAgm+IH2hC3VO5hn5
         9pQojSP5EOT+qi4lWC6syDqO1phDO4rVqb5KHTHPSDlqUso+gb+q4uZYq+dGzs+svKB6
         rUpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=WIUcmFiN2jsL7oALDMp5YXGwCzJ0JqW4KnAxg4P/XMU=;
        b=fPQSwrKmSUF+ap1y31BQgGX0xtsOITGSMLF/VKoHSJVoylNg7R812GIqXwm/0bggJl
         cxj8fGSUoaMc396+VmmxmG1Ke1jgpdms13M+AUCBHIEcQNMP1fmaao5bY/5LoZIHxEoE
         5ZH34WyhpLhgNPRVCv2Ht7TL79ShqoPNvfPrcSNd1OulxuESnLwFZgml3aCWUOe8CRsf
         tBmVxsbTpSP7oKYWw8KQnwB7WeVnkvNoPCqwZYjvyl601A6kCffNIH6DTW4ft9LJd7Rf
         C5IOYej0DfyygNkucREULRdR1WXGAEtQDUyA8Fmz/VNbqdNOX5kqvgw5ORpIm0xsMYdw
         qf7g==
X-Gm-Message-State: AJIora8o+FanlR3nnQ6WFy3lEL5Jvnh5W4Z3mDpDCjZzx63h52cgWID7
        tmqupmhwdeV/i5/qWOQDg0Ck3Q==
X-Google-Smtp-Source: AGRyM1tkWJaPUpA9hMb6RtgYb3GvUnb8qwNoBsCBzv6suFeJmRITYuJ/8pOTGlbh5lQl9YoNbT7gSA==
X-Received: by 2002:a17:906:2806:b0:70d:ed7a:ca5b with SMTP id r6-20020a170906280600b0070ded7aca5bmr2012582ejc.173.1655886753696;
        Wed, 22 Jun 2022 01:32:33 -0700 (PDT)
Received: from [192.168.0.223] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id y4-20020aa7ccc4000000b004316f94ec4esm14477994edt.66.2022.06.22.01.32.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jun 2022 01:32:33 -0700 (PDT)
Message-ID: <50ab1e83-f14b-6d2c-df31-60a255552c46@linaro.org>
Date:   Wed, 22 Jun 2022 10:32:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 11/40] arm64: dts: marvell: align gpio-key node names
 with dtschema
Content-Language: en-US
To:     arm@kernel.org, soc@kernel.org, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>, Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org>
 <20220616005333.18491-11-krzysztof.kozlowski@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220616005333.18491-11-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/06/2022 02:53, Krzysztof Kozlowski wrote:
> The node names should be generic and DT schema expects certain pattern
> (e.g. with key/button/switch).
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts     | 2 +-
>  arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)

Andrew, Gregory, Sebastian,

Any comments on Marvel parts? Shall I grab them with rest of cleanups?

Best regards,
Krzysztof
