Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92589629969
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 13:56:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232817AbiKOM4Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 07:56:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238046AbiKOM4X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 07:56:23 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDF3F100F
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 04:56:21 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id g12so24319392lfh.3
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 04:56:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wjdv2UNqYCuw6JZR6Qee1XPUfMLpqLvp5AsLB1cS+Ik=;
        b=OwUZ+bRXRknpv394jiyHB6iYAL8S+/dF0QDWH8P7Tycz1AVEtSjbg5cAP8RAF5DPh0
         KGf6tu9eQ6EEOAtaHOEDCy2veq6w3RXOb77aBzBeZLmZ1kLBqo1MZ0/TepJVSi0CNPj5
         q2YbOwO3mpUEaRmbwYPi/KO++T/o5sZJgrRa//3iMyxa1/hFejq5/insq9fyAGQzCz1S
         /Q5bx6oZZygnFE1ZAuUPfTyDQFG76WxKeXqSrC5+DM8T0qCDEJ4PFDm93WvX/KS5kMbX
         hmf47q3XHnzrgurhmN/e3PrMs48V4rfD1TerZ9ueSXbzmpFxiPSnLoem687ai8D+0Rk5
         W/aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wjdv2UNqYCuw6JZR6Qee1XPUfMLpqLvp5AsLB1cS+Ik=;
        b=bWSMm3gn7EUKt8oV1wUOW9mVJC1DyV0bZUFmw2MxUEMwim1l370J+hHn47DB03Rhkd
         P9nmnZtWqVpfLn+JSZDsv6/YZKGzt7CNtswdu2x3Cjwn7/l2832Xu0U5I3Cx7o5jR7CS
         cPjBzw0oSRS2XW2IDnPAmvnfUk0fgnuENqH7c5CUDehao4FWBgq+GwUvu9sUiQ8vhIQc
         VZiu81BNTphpPHmPoPR9rwi1JAOpxWGa/OwKxFKWFHFojI41uuGMaxseTM+TrcnT+CCs
         ONIPhIU1HF94Gj/Vf/KLudd8n+VeXHM/VsEoILaSqfgKe3fzkPV61Zq2OjS2dnZftt+6
         STSQ==
X-Gm-Message-State: ANoB5pkfycCf1/CZsMIdJ34bO3QPqqnGyoWU6g7tpZY/GWwvLK/VkvLH
        frfUThcjsWfkD496kkpGYnwsPw==
X-Google-Smtp-Source: AA0mqf6CP8Ur/mJFML2icvGxqrOoUsXzsngCLunz9VxC5g5y+d0aiTC9FJSlSZT9+Iyq9wF5rDUCfA==
X-Received: by 2002:a05:6512:530:b0:4a4:77a8:45a4 with SMTP id o16-20020a056512053000b004a477a845a4mr5253259lfc.654.1668516980234;
        Tue, 15 Nov 2022 04:56:20 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id v26-20020ac258fa000000b004a8b9c68728sm2206285lfo.105.2022.11.15.04.56.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Nov 2022 04:56:19 -0800 (PST)
Message-ID: <a4c4257b-1467-2ccb-f546-d58c6356a39a@linaro.org>
Date:   Tue, 15 Nov 2022 13:56:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH net-next v2 4/5] dt-bindings: net: qcom,ipa: support
 skipping GSI firmware load
Content-Language: en-US
To:     Alex Elder <elder@linaro.org>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, davem@davemloft.net,
        edumazet@google.com, kuba@kernel.org, pabeni@redhat.com
Cc:     andersson@kernel.org, konrad.dybcio@linaro.org, agross@kernel.org,
        elder@kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221115113119.249893-1-elder@linaro.org>
 <20221115113119.249893-5-elder@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221115113119.249893-5-elder@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/11/2022 12:31, Alex Elder wrote:
> Add a new enumerated value to those defined for the qcom,gsi-loader
> property.  If the qcom,gsi-loader is "skip", the GSI firmware will
> already be loaded, so neither the AP nor modem is required to load
> GSI firmware.
> 
> Signed-off-by: Alex Elder <elder@linaro.org>
> ---

This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions. However, there's no need to repost patches *only* to add the
tags. The upstream maintainer will do that for acks received on the
version they apply.

https://elixir.bootlin.com/linux/v5.17/source/Documentation/process/submitting-patches.rst#L540

If a tag was not added on purpose, please state why and what changed.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

