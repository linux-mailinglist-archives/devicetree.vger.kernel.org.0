Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7FE7974E8AE
	for <lists+devicetree@lfdr.de>; Tue, 11 Jul 2023 10:08:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231140AbjGKII3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jul 2023 04:08:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230431AbjGKII3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jul 2023 04:08:29 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFD4A1A8
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 01:08:27 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2b6ff1a637bso84787091fa.3
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 01:08:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689062906; x=1691654906;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BLmUFGwfTl5d7peQc8oEF/elxy8zWH/3ORhscxEFK0U=;
        b=nP9WabHlPMdbcSp3oTyWhNsqaQ3pso0XT1u2sNdEPHVCN8ltcL8+aU1Lq2OjjjzUex
         mftFkHm1QWxy569qxjCmA4u9u/nA94kCNPjuS1bZTrfZE8HWlhR0nHMcyQTJfsTLJ1R4
         M6y2+qBgIYsSqE7uHcGuspKwombVYW3M8kookglR7giL7HKkaiuWjNsNAFGKzGWJ3Iqa
         /At/j9wwt+b3tYt/o0vV6stLKtfVZAwfPvKWIgXIFrPyrPP0FvyhNCakIGD44SI9l+T5
         eHQp3hloDJicm1+Z2B8fiSDYNQymTW+dgpjzPePrXRNOM/NW4fWRVVid9SWypGVXl7W7
         ZSyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689062906; x=1691654906;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BLmUFGwfTl5d7peQc8oEF/elxy8zWH/3ORhscxEFK0U=;
        b=V4DQxzjeCgWDIe4CJS9ppAdOONfUsYEg89ZwrUj3fM7n9SljQ1Hz7OY0Cl3PnZBEum
         8kHUV1GGw6UgRCTZat+KB7XPoDDT0Rrzq78VY7+nAH7LY9taLWWlSGzatcp6Al/R4oFt
         U9fh23FsUKjUNWwSNqShY5k0OigWV0EA4f+Lm0/sBOU3BWMScOLxT81Aj00jljBr1jrs
         JRUPKJMxPpjfYDYI+RTlFnPe6kzgn6nkhQCkudEiQeXU5rZh4WxcjqLPbJRE6CQWDjzg
         e9ulJKzi3JEgrC7dkeekQ5dvULdd3LlCR94vQOSweeP5xng654Cg6lHUQH3qbe83+dZR
         L3hQ==
X-Gm-Message-State: ABy/qLarfAQfmOH+D/d3OxGAYWCULHF0Ue+x2oNMkHCaeHGdhL3KHPHJ
        YVp3m0rrrZgYn0VL/zuBg95Sww==
X-Google-Smtp-Source: APBJJlFvNSih/UoRx5M5PvuXG3f58K6EnCrhbCUgcPvh/ZYh56IVMWdbMf/5tWqUFjG8Hw04r981Jg==
X-Received: by 2002:a2e:8450:0:b0:2b6:d137:b5a1 with SMTP id u16-20020a2e8450000000b002b6d137b5a1mr13371003ljh.43.1689062906382;
        Tue, 11 Jul 2023 01:08:26 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id ss25-20020a170907039900b0098921e1b064sm798375ejb.181.2023.07.11.01.08.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Jul 2023 01:08:25 -0700 (PDT)
Message-ID: <03542d9a-42fd-94d5-2895-9fe5f2ed3345@linaro.org>
Date:   Tue, 11 Jul 2023 10:08:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 2/3] regulator: dt-bindings: qcom,rpmh: Add PMX75
 compatible
Content-Language: en-US
To:     Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org,
        lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <1689062414-3654-1-git-send-email-quic_rohiagar@quicinc.com>
 <1689062414-3654-3-git-send-email-quic_rohiagar@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1689062414-3654-3-git-send-email-quic_rohiagar@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/07/2023 10:00, Rohit Agarwal wrote:
> Add PMX75 compatibles for PMIC found in SDX75 platform.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

