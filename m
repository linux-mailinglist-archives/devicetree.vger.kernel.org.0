Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 22F3273E38D
	for <lists+devicetree@lfdr.de>; Mon, 26 Jun 2023 17:38:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231130AbjFZPik (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jun 2023 11:38:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231289AbjFZPij (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jun 2023 11:38:39 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5390D10EB
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 08:38:30 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-3fa7cd95dacso42657585e9.3
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 08:38:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687793909; x=1690385909;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Aowf3vYu+TzusHuYBS30zZpzrQhDchfRz0fvyLxDepg=;
        b=Z/r1Wfd7CYtynhOebMVYp+4fsXcivyGaGsftCeD/zNgZCaKVFNC0i6AxAcgx1u32BH
         Bo5pmsmabOniCJBWTixY2SykTl0V5ZCBb5XOzcpVEXtg1KYejeyhxQSbWik04Nw2LNFq
         qRINqZEYDzSDNYxGVocv5HjRs8KPBK+Law1GRf6uiGdOqjY3JP26R9eDzSuXCZx6chF4
         szThVO9VHv/Y2n7YBSaVjjeufKELJvK1y5kl8CP5v2HKkT/Bbs+6gRD658XBp46EhTPR
         ilDRPQ8HFFBFHgQMJ2riWBLMXobCVamENebS1SKwCL9jdVfpKp+3ShmGbVcdO45n7Ob5
         IHkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687793909; x=1690385909;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Aowf3vYu+TzusHuYBS30zZpzrQhDchfRz0fvyLxDepg=;
        b=hKsHrzVHZXvX37bYaJr0uuKUVEcBiVvhHlajP8NBfOABDPkNCCKV/Sv6bXeXq5DpGW
         5w/dm9HcXo9JOve/46BlL/CbcQL44XAZypszW7UzRmtFffuk0Y+wQJNyLd0CrFjL40E8
         EQ1jzamxbwwtF0l8JXVY0TcJS7MDrrEi8mAhpjUKzy8nYcOp9O4HFfVQ2afkWZvvytCn
         75ckFQfjhR9IO2arGX/QKbs/83SjPjC61giIb/gpI/8e9DUWqnZVlzVfrjUZJOEU7fEb
         FFfy1zt6xSLiCwWWjJG0yDlHjk65BSv0tzXcDh2y81DoezAlc3K8CV26D7KUOi+ABLnS
         KAKQ==
X-Gm-Message-State: AC+VfDyryNNexd5Ys9qCy5+eSqxxro+0F+PAeDJqbFsW64VTs5A0ap1q
        SmelL2tfZIqxSH3IZnP4v/bOwA==
X-Google-Smtp-Source: ACHHUZ6hBxdWt0pk22ZtTSP8LLaFYHBix/uPdvH4jb1EhndRhUe4vv/qftln+OheZD+7CTDamEG8wA==
X-Received: by 2002:a05:600c:250:b0:3fa:8987:3c0c with SMTP id 16-20020a05600c025000b003fa89873c0cmr3919959wmj.9.1687793908732;
        Mon, 26 Jun 2023 08:38:28 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id p8-20020a7bcc88000000b003fb225d414fsm1710268wma.21.2023.06.26.08.38.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jun 2023 08:38:28 -0700 (PDT)
Message-ID: <cd9d82cc-d98c-f4d8-8dd5-01ce4130aa78@linaro.org>
Date:   Mon, 26 Jun 2023 17:38:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 1/2] dt-bindings: arm: amlogic: add T7 based AN400
 bindings
Content-Language: en-US
To:     Xianwei Zhao <xianwei.zhao@amlogic.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
References: <20230626095223.721011-1-xianwei.zhao@amlogic.com>
 <20230626095223.721011-2-xianwei.zhao@amlogic.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230626095223.721011-2-xianwei.zhao@amlogic.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/06/2023 11:52, Xianwei Zhao wrote:
> Document the new T7 SoC/board device tree bindings.
> 
> T7 is an advanced application processor designed for smart display.
> It integrates a powerful CPU/GPU subsystem, a secured 8K video
> CODEC engine with all major peripherals.
> 
> The main system CPU is based on Big.LITTLE architecture,
> with quad core Cortex-A73 cluster and quad core Cortex-A53 cluster.
> 


If there is going to be new version, subject: drop second/last,
redundant "bindings". The "dt-bindings" prefix is already stating that
these are bindings.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

