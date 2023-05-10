Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2878D6FE0E9
	for <lists+devicetree@lfdr.de>; Wed, 10 May 2023 17:00:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237623AbjEJPA3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 May 2023 11:00:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237428AbjEJPA2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 May 2023 11:00:28 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E8207696
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 08:00:26 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-9659e9bbff5so1332180966b.1
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 08:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683730825; x=1686322825;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RtiNrkh2QhwgA/Yef0BWpTiUCIpFoM3AGnkyS7Jdmfs=;
        b=QDiXouLpaYBg7WPG2ARJAs/YOLbrmwWBubIU82c2PGicvzALpXvwZTAd+OrB8LcOdO
         qSUDcfHPtS8DJim5uGqsNvKaQAgeEnzmAB5OZ0LbwJYcLNg7kNc2b2qxCbp7yxrot8qB
         Vmcxm6OFOt96GGiMvWbStmW0ucP1mP1VVnzVNxIRKNh+LKtJkYK+Ujd2Sd6+w9pQHvn5
         ko2vvSUaxFPI/gbKf7n8RyjpF0PZSleYH3TFb3LXSFv/UZ+tTGid1bce29/AdWA3dB4C
         b/mCfFelPVzXOpH3Xqvcmcg+sO9fzIHgkatUK7VitQOZL5CHsc0jWi9+OBlTXYtOf2UO
         6RXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683730825; x=1686322825;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RtiNrkh2QhwgA/Yef0BWpTiUCIpFoM3AGnkyS7Jdmfs=;
        b=OxfPDVwJCb99Gd6MW58k8v0iHtlQNS3INecPR0JAiSGYX/j4xORZfL2uBo0XTVQBTF
         kxZTcRKTDPqUrPTEeSwiDLYp1emQw+fZn7z9uVwCxMtFGeL35D5cLAyfqrzWsGv1RXbB
         ym78swfLyxMVUjUUPaMI0K6skq7g6gQ3Dh44uJ/UjFTM/KS17fxmKGOA3C6udkBVzdV5
         nap5gshCh6dwwCytE9oAQHGi3n/+3O8KZ82DW1eaqARpKOUNIYyesymf1X9u5AZdJEDM
         AKdCoJBIB3qrTzrFgSUqOyi5i4i4ayszq5PXpHbsQBWMW5X7Yop9Sordoj3orf6WpUSF
         TIBA==
X-Gm-Message-State: AC+VfDycExL6jsoWo/mXFUqUrMphbIJGXw2+0S2vNhEqJRBDdyKzzEqT
        Iff+j8vw66pU5VK9T2WXdxYmHQ==
X-Google-Smtp-Source: ACHHUZ7ygoq+P9N7QWkGqQ8akQig23j8CJn8Zam4ACGvB85HbAABfkFwW544ed+C+IjAfprbW9SH1A==
X-Received: by 2002:a17:907:1b24:b0:94e:5c28:1c19 with SMTP id mp36-20020a1709071b2400b0094e5c281c19mr17526255ejc.5.1683730825073;
        Wed, 10 May 2023 08:00:25 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:c175:a0f9:6928:8c9d? ([2a02:810d:15c0:828:c175:a0f9:6928:8c9d])
        by smtp.gmail.com with ESMTPSA id hg8-20020a1709072cc800b00932fa67b48fsm2754259ejc.183.2023.05.10.08.00.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 May 2023 08:00:24 -0700 (PDT)
Message-ID: <51fc4d85-51bd-90c0-632f-291ef6b02c42@linaro.org>
Date:   Wed, 10 May 2023 17:00:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v3 1/6] dt-bindings: mailbox: tegra: Document Tegra264 HSP
Content-Language: en-US
To:     Peter De Schrijver <pdeschrijver@nvidia.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>
Cc:     Jassi Brar <jassisinghbrar@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Joe Perches <joe@perches.com>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-tegra@vger.kernel.org
References: <20230510142248.183629-1-pdeschrijver@nvidia.com>
 <20230510142248.183629-2-pdeschrijver@nvidia.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230510142248.183629-2-pdeschrijver@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/05/2023 16:22, Peter De Schrijver wrote:
> Add the compatible string for the HSP block found on the Tegra264 SoC.
> The HSP block in Tegra264 is not register compatible with the one in
> Tegra194 or Tegra234 hence there is no fallback compatibility string.
> 
> Signed-off-by: Peter De Schrijver <pdeschrijver@nvidia.com>
> ---


Srsly, all tags ignored...

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

