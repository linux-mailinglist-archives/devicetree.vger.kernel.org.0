Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF79472469E
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 16:46:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237288AbjFFOqA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 10:46:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238438AbjFFOow (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 10:44:52 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FB8630D3
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 07:43:22 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-51491b87565so9436632a12.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jun 2023 07:43:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686062524; x=1688654524;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i4ao4E8ClCEWNvR/XfEvDsYDmrnpxfLNmNLp5Yh1CHk=;
        b=oT7b3/9/75V60KqSaPd+cOmwPnShxQG+f6TJwy2+61Pb9c7LjDoxPGcY5bi+NYS/iM
         kiNxN3CyZWOJsykVLQT3wHohUlVqwl/1RLtbDD4vHqF+SYTKAWuhv5TYOVR7IEjxu13q
         hsZoY7dgMdzEfWMNSXA8yVrl9GfnkYIQ2bBz2JJghLIE6Gt7qjBRK/8fKG7n7/E11gmL
         v6bPf2yjfgLyT8DZ65JCp5RbjK4NyXJ6Oa5nhGIxyi0haiussC9rbomS6HkbYrfj/9aA
         0fPbyLxdNscmDHrM/H9jULqLdNpgVRYovjX4WAE9A4Zw95447RPlc6J6aWHy9rq/Jxu7
         qc3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686062524; x=1688654524;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i4ao4E8ClCEWNvR/XfEvDsYDmrnpxfLNmNLp5Yh1CHk=;
        b=e+sK+18xjM2NxWLIrS2PkMqhp+ZMz+j++azecpHy1z9Neg03c3eIBQdKvlbAerR+uM
         Uf5r8Agdtl6IbUhJyarjp5q5foNfvP+969EGvltxLDHIabgmn6KBkZvVV3gfHbICQtXz
         ThvKQqbAt2kbVnVYom3p+yDfF+oXPaidM0NbpG+dWDk9N+Oizla8PwWLtvSGu7s3qnvU
         OBq7B227fGsBd7uTWjSzDwHIu0xJHO+f81KGw7NZ1BfiTC8gUJ8r0pv23esMFIaG49Vi
         etzSaEEQCwJH3NpgrJzK2GyFLtSO4ziNNjE3d8VoshGIKJDaB/5B9Aoermw5eyKdpHAT
         fpeQ==
X-Gm-Message-State: AC+VfDyio/Jg/GCVKLMOcE5bgGzktZXDiYrj+Np7gSjJxyuZJm8VNfx/
        xwxL0/lQirg292KveJEWfXHWlIlthF7tmz0ZFvRqoQ==
X-Google-Smtp-Source: ACHHUZ6uHm1nli0JlYRJ1g5RUUe8qv6iEShPapCQiVoIL3rCcR37gQfcDi4sApHVba6lUE1nRKNpSw==
X-Received: by 2002:aa7:c492:0:b0:514:9c74:4cdc with SMTP id m18-20020aa7c492000000b005149c744cdcmr2128278edq.15.1686062523794;
        Tue, 06 Jun 2023 07:42:03 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id e10-20020a170906374a00b0096f803afbe3sm5606895ejc.66.2023.06.06.07.42.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jun 2023 07:42:03 -0700 (PDT)
Message-ID: <b1a7e0ea-02c1-ee83-dd20-814d257f908a@linaro.org>
Date:   Tue, 6 Jun 2023 16:42:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v3 1/3] dt-bindings: add fannal vendor prefix
Content-Language: en-US
To:     Paulo Pavacic <pavacic.p@gmail.com>, neil.armstrong@linaro.org,
        sam@ravnborg.org, airlied@gmail.com, daniel@ffwll.ch,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org
Cc:     dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230606140757.818705-1-pavacic.p@gmail.com>
 <20230606140757.818705-2-pavacic.p@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230606140757.818705-2-pavacic.p@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/06/2023 16:07, Paulo Pavacic wrote:
> Fannal is a one-stop-solution provider for touch displays in industrial
> application, committed to delivering a variety of professional high-quality
> products and technical services globally.
> 
> Website: www.fannal.com
> 
> Signed-off-by: Paulo Pavacic <pavacic.p@gmail.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++

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

