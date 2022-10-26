Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 468D060E3B6
	for <lists+devicetree@lfdr.de>; Wed, 26 Oct 2022 16:49:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230522AbiJZOtC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Oct 2022 10:49:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234392AbiJZOsy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Oct 2022 10:48:54 -0400
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com [IPv6:2607:f8b0:4864:20::830])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BAC311D982
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 07:48:54 -0700 (PDT)
Received: by mail-qt1-x830.google.com with SMTP id g11so10055350qts.1
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 07:48:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EyiTlyJ01pSvgi3tVsGtomDjKxV6caRV7vZmxm6jAcI=;
        b=Zr/RD7yYaeTI1USXg8ctU/s8v2Bv7ifrh1KugVqcPcaIvngY+Im9ImHTsrY8TNaUPK
         T//pVbtxSmjkF+fizGBzC+MdQhRrGXbYEa7H63zOg+d+EZgxgi1n9lIGmp5mUUwEkw8U
         8lfsIpuAyNJFlgzFxBg86ck2FHh7HpL9vyTQKA1stMObAyyUXfNMJDRz502JRwXlIYAZ
         UA737suO8xfal+556Q66Hv85ItNb6r/dTK/IJk8l7FZU6aTBwz8U0Bd3pFPSuH8EWP1X
         tJr5HnrXJHWZNYJ9+5a5uZ1cb8rCtTkcpIxKlylN83+PaouMh6q+mskFJMW3kE3zHKjq
         NTxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EyiTlyJ01pSvgi3tVsGtomDjKxV6caRV7vZmxm6jAcI=;
        b=gc9d83BfnNonYMwAihhFV4kpf/+tMx2dzLuseCNIwO7nw1jq2Eewzuwc9cWca5rkdP
         UxWRJBBJsO6B+zifwyyoYAH/Hoz0ggrAuKMf2kU/imuJFwUw1Oc4eTU/7Y6vtuA16YKP
         TfcesETv8hsY7toPDq8xhey5KzOI5A6QY5RXccJTF7Yyva0tWpMdl48dl7wNKkmiry/0
         J9YqO+bndgtHfUfr2hBZScm+Om+zYVDQvunUvEkk+ShNEEUL2VjPWtIdBbK3M4Siifnb
         NjaCCQ2Je9kXgOTXMbYFYIzqNC+/6aG1yefshL88DYAk7ApT6f2ZWouglnbVsTIXWJcl
         MnXQ==
X-Gm-Message-State: ACrzQf2lpjqtf3oSXQm+5VlmfKHCIZySpdouLlagrpTCntyYwv+6yoxr
        GG+ti0NKTcbnd6XUlt1d1es0ccv3koM0PA==
X-Google-Smtp-Source: AMsMyM6k7MmKnk41e8lRpCBFrGkW5W6dmu5xM86aVn7Lh2FqBrwtTSNse/IpBp3m5R2hdy4w6J7xrA==
X-Received: by 2002:ac8:59c1:0:b0:39c:d5c3:6859 with SMTP id f1-20020ac859c1000000b0039cd5c36859mr37884295qtf.230.1666795733380;
        Wed, 26 Oct 2022 07:48:53 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id l10-20020ac84cca000000b0039d0366af44sm3307247qtv.1.2022.10.26.07.48.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Oct 2022 07:48:52 -0700 (PDT)
Message-ID: <ee427afa-ea1f-5537-abfe-22386d3be4b8@linaro.org>
Date:   Wed, 26 Oct 2022 10:48:51 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH RESEND v2 1/2] dt-bindings: mfd:
 ti,j721e-system-controller: add compatible strings for other platforms
Content-Language: en-US
To:     Matt Ranostay <mranostay@ti.com>, nm@ti.com, vigneshr@ti.com,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        lee@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20221024035405.366208-1-mranostay@ti.com>
 <20221024035405.366208-2-mranostay@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221024035405.366208-2-mranostay@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/10/2022 23:54, Matt Ranostay wrote:
> There are multiple J7 based platforms, and the j721e-system-controller
> shouldn't be define in non-j721e devices device trees.
> 
> This is mainly for clarity; but also useful in case there are future
> erratas that need to be fixed for a specific platform.
> 

This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions. However, there's no need to repost patches *only* to add the
tags. The upstream maintainer will do that for acks received on the
version they apply.

https://elixir.bootlin.com/linux/v5.17/source/Documentation/process/submitting-patches.rst#L540

If a tag was not added on purpose, please state why and what changed.

Best regards,
Krzysztof

