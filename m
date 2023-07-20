Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 475F075AAA5
	for <lists+devicetree@lfdr.de>; Thu, 20 Jul 2023 11:27:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229801AbjGTJ14 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jul 2023 05:27:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229831AbjGTJ1k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jul 2023 05:27:40 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A83AF49E3
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 02:12:37 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-3fd190065a8so4615645e9.3
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 02:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689844356; x=1692436356;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mLBhqc2CfVFX3pSGzYlz5mlevC+IfeuDoZjqLxaF6sM=;
        b=UzCc/zW8GNlEXZiHHfJSceU86ejjcMBFJUAY/0cWpYgnbmiOioVTNJotqPjH4MivRE
         Kw5QerlIAvE1Ha+xrOtbGtsxce+lqodfEljrd4WolPE02ABNeQT2DP4TdszRk6Pba5FF
         3CO6yYVjRor7mgGl0pQuvV1UBRaGzc6q/Gspqvf2dzYBxTheH0weFUYaZn0Qn6O3RTxL
         M2RfZx1mfR/lJ6vowGemCrJxBnFnmCjzpxB5cVxRQxOZjF797UhPfKicunYsboRFVJQx
         8wTxeOHHzmncfYjJTMirh8FIRF/qi3rFEcazQS5qwHdQsPEl/klrkoj1CmXGuc5NBHum
         5CUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689844356; x=1692436356;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mLBhqc2CfVFX3pSGzYlz5mlevC+IfeuDoZjqLxaF6sM=;
        b=Jpy9ZxDQNRlRY2OE8gdOXf6Rt2CJoXfW7mrRXmTFGlKOcG4C8aiweMjxXS7Gv/SBTQ
         /LjoXDln8COObBw6fvU3+Ulgv92Hi7K4q4Cpnxfb+QXIKZ0m9UgeSDipjueCRzmS0s1w
         cGsoe/Jf2kTQuXYBlW3XAugNTEkIig2k+K2mLb2HMv4RKhCkuIzd8nZvSyc7ycWxCkK8
         ND6T22t3sQeg8HbOu4NfCU87omGuLQjhprnBTSXJah79FviB2eisHSPo+VyYpnTo76Ji
         Kwee0oVlE4Xdq9I9hxdsPYnY+HGqCLzF4jLiSdcaoGfOWy+kEUkwaWRef6Gg08dylPP5
         X+xA==
X-Gm-Message-State: ABy/qLZFtpjQUiyIuV4aPPn/pYwWqLm8KQXGFhipl/V0G4z8RR39z2gj
        AdDJZBQcE3EBcxOcuYJx80BzRzJGqjeDWg/U0gw=
X-Google-Smtp-Source: APBJJlFyqabXcBinhEE6qmbAkQmoFxuTmiSDb/e+O0iJKWJOq7quud5femdWEEDE1R6DbBh2mNZlTQ==
X-Received: by 2002:a05:6512:20c3:b0:4fb:92df:a27c with SMTP id u3-20020a05651220c300b004fb92dfa27cmr1553589lfr.25.1689843512334;
        Thu, 20 Jul 2023 01:58:32 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id 12-20020a05600c020c00b003fc16ee2864sm633408wmi.48.2023.07.20.01.58.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Jul 2023 01:58:31 -0700 (PDT)
Message-ID: <5fdfe7b2-0afb-f7a1-c29a-4a7884ff8f1c@linaro.org>
Date:   Thu, 20 Jul 2023 10:58:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 0/2] Add initial support for RDP404 of IPQ5018 family
Content-Language: en-US
To:     Hariharan K <quic_harihk@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     quic_srichara@quicinc.com, quic_sjaganat@quicinc.com,
        quic_kathirav@quicinc.com, quic_arajkuma@quicinc.com,
        quic_anusha@quicinc.com
References: <20230720074302.13585-1-quic_harihk@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230720074302.13585-1-quic_harihk@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/07/2023 09:43, Hariharan K wrote:
> Add the initial device tree support for the Reference Design
> Platform(RDP) 404 based on IPQ5018 family of SoC. This patch
> carries the support for Console UART and eMMC.
> 
> This series is based on the below series,
> https://lore.kernel.org/lkml/20230720072938.315
> 46-1-quic_harihk@quicinc.com/

Nope. You make it very difficult for us to review and follow your
submissions. Especially considering issues in the old ipq5018 submission.

Best regards,
Krzysztof

