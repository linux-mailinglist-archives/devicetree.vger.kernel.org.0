Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 96A0D6F4B33
	for <lists+devicetree@lfdr.de>; Tue,  2 May 2023 22:18:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229955AbjEBUSa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 May 2023 16:18:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229939AbjEBUS3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 May 2023 16:18:29 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D62561FDD
        for <devicetree@vger.kernel.org>; Tue,  2 May 2023 13:18:18 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-5083bd8e226so6676201a12.3
        for <devicetree@vger.kernel.org>; Tue, 02 May 2023 13:18:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683058697; x=1685650697;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=A4ISCmcuhHX2z9pKZYH8LMC9+EtTqQuyVN7umKeFQRU=;
        b=RDDcaMz71Ic4o6C9/+g5n2+iU1aySV9KvLyQYNJ3rHH+KoztkkgfVLCFp+vvPpbeQr
         NGR3nAVs0vseESJJvgHeESiS46wf8j1cyWK6+NI5eYeaiyrHR1DHpaBdhhnhWztA44bR
         ltGx2xT55LofCdwtxRxVlxEBhuj8q8oyj3kpyMHvy/mDCSBKppIXdkhTJSD9t8gtRmLk
         xvEzXp506Ocae6xXAOZLRRlVSCUJlSFDwgaMaFim1OAlPqwVyCEeKd6HaWY4/pLqkmBH
         lQ91r0IPOgTqFuEDI+xTfWrYWFHu4HW8EMBoTTNjZhz+FGNrTokFiFiPn4Rs+N2dQYTa
         LlCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683058697; x=1685650697;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A4ISCmcuhHX2z9pKZYH8LMC9+EtTqQuyVN7umKeFQRU=;
        b=MCPgWe5rRu2YtU81Js5NkMzx3gbKqOkPp6/yz8ohOkbxrHmbg+QJhlmttYXPB3TfSr
         xKj80CjSTh6Izo2xtEEyET/GJ+aMtOORBbheRHsyUbrGNr9mB5no0vtc3ablHTXD0uQ/
         aKg2miNL0OCp9B57gGKqOndSqi5L5Xlqm8bbUd6o3/nvDImzcTDFtwmxn3w8zEGWVKwi
         jrTdke9vY/D9z6oGZgzkJblrfjbrPjfn1ZwYvvBPWo4bedeVe6I+Bctx+e3q1xjrCy8k
         HXK0fwIEQL794Z/LnRhJhdeGG9AoXmAt9jnq/aLSf3pz8cZsprSH03A475s+zTMk/MYK
         8yKQ==
X-Gm-Message-State: AC+VfDwA/ZmimrNU30E0wn/JfnDj4NKwIhUydy4E23WFYasypvCwdFvx
        HgfPRDUhGewGTizRtDEmNs6mvA==
X-Google-Smtp-Source: ACHHUZ5tnRUUGfvcUyPfMwzGDJX74OiM8fW4eHIVoypekU08ImzAYAJwT5SdiObPjytpgvKErkwn3Q==
X-Received: by 2002:a50:fc17:0:b0:506:c1a6:2771 with SMTP id i23-20020a50fc17000000b00506c1a62771mr11156753edr.39.1683058697300;
        Tue, 02 May 2023 13:18:17 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:37be:eda5:e303:19e0? ([2a02:810d:15c0:828:37be:eda5:e303:19e0])
        by smtp.gmail.com with ESMTPSA id p15-20020aa7cc8f000000b004aef147add6sm13405675edt.47.2023.05.02.13.18.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 May 2023 13:18:16 -0700 (PDT)
Message-ID: <931c8c6a-eae3-0258-1da6-29e04ff66eb3@linaro.org>
Date:   Tue, 2 May 2023 22:18:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH] dt-bindings: dma: xilinx: Add power-domains
Content-Language: en-US
To:     Michal Simek <michal.simek@amd.com>, linux-kernel@vger.kernel.org,
        monstr@monstr.eu, michal.simek@xilinx.com, git@xilinx.com
Cc:     Hyun Kwon <hyun.kwon@xilinx.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
        dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <a593bbb71df9818cebb4295a1d9ce61e76d48d15.1683035191.git.michal.simek@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <a593bbb71df9818cebb4295a1d9ce61e76d48d15.1683035191.git.michal.simek@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/05/2023 15:46, Michal Simek wrote:
> Describe optional power-domain property to fix dts_check warnings. The
> similar change was done by commit 0aec3958c88f ("dt-bindings: gpio: zynq:
> Add power-domains").
> 

Similar comment as for QSPI. Whether GPIO controller belongs to power
domain is not really related to DMA controller.

Best regards,
Krzysztof

