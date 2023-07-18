Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38F93758428
	for <lists+devicetree@lfdr.de>; Tue, 18 Jul 2023 20:07:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232064AbjGRSHX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jul 2023 14:07:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231733AbjGRSHW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jul 2023 14:07:22 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39095A1
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 11:07:21 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-4fb96e2b573so10014885e87.3
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 11:07:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689703639; x=1690308439;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IGmnpAcv9xHX2PJXznlg8lETRAbcSNyh2k36z5zq72k=;
        b=qhDWNQSf9VGuzieTNsqIAhp3eHO3n0BFHAgI8JgV5U2WmjuOCPxahg3NobdpUJGFh3
         BhLJoNvFzr+nPULDqN9ERcHwJehiNHaC9TGVza45fBemscwED2F0o47VX9zF0D8NExk7
         wQfy8VWJYX0C4cq6N2mMBojUuFm9HocdYfq2LuHBJgfEod3gtK5Bwdv868ERMdZWL7xW
         5GpHXswsTnq9VpKlVV782OW58bOaF7NRAuR+UgmM6fys8JqS2PgPGKFgm08FNhYe24fy
         SfgWVBnimXfAxXW1l4SpVO3XP7zwDSXnU3hbUZ2bzZ7Z7KP87bVTktj0/Ek8PdYuca01
         UPow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689703639; x=1690308439;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IGmnpAcv9xHX2PJXznlg8lETRAbcSNyh2k36z5zq72k=;
        b=FUyBuOghv+mIeelfbOUIMg/9icXBLVT2XITkt8FJFWFfLW4nNXqeEL6GIuRwTjJm3n
         b8lKe966jOr8fRPQ/PVQ8z1uLFTZTKz10KXSguMCYzr2PTeRz2mJxtPQ3eQN+ns/j8gb
         xB6MhRIwT/kJ4hGpMDID452DZZ/A4HEfNj9mWoZCl7R4A1kWTDclgT75J49pDQbqLfF/
         P77bXp/GxOoIlyrxhuZ6K7+2VPAQfywDKBGWBH1EbNfKq0FdrAdwFzu2xGVFkfOS0+xD
         EILKU3B5wihmtQ2VWm4tXVLn5EmsP32n5D4Y/iai0DwSpVT9UbmX7i/uKNHc8wmHCKBB
         wFNQ==
X-Gm-Message-State: ABy/qLZ0tUnofWiOs1EUPW6D1AMp5Dz6eLzZkYGuKLjjZVdeyoNqM9Vy
        DP3Rx0cpFIXrrMq5kNQi+9AVmw==
X-Google-Smtp-Source: APBJJlFkXRFb/GrwzLVv2eKCajwpvO40w3NcsKaHKHsof8a7Jgmk/uII7LhlygPNoOdD3Hv3JMmROg==
X-Received: by 2002:a05:6512:3b08:b0:4f5:1418:e230 with SMTP id f8-20020a0565123b0800b004f51418e230mr3099383lfv.52.1689703639226;
        Tue, 18 Jul 2023 11:07:19 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id v25-20020a197419000000b004f858249932sm546245lfe.90.2023.07.18.11.07.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jul 2023 11:07:18 -0700 (PDT)
Message-ID: <01907421-1003-1041-f1bd-ad11218527e1@linaro.org>
Date:   Tue, 18 Jul 2023 21:07:18 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v4 0/2] Resolve MPM register space situation
Content-Language: en-GB
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawn.guo@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230328-topic-msgram_mpm-v4-0-bae382dc0f92@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230328-topic-msgram_mpm-v4-0-bae382dc0f92@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/07/2023 15:19, Konrad Dybcio wrote:
> v3 -> v4:
> - Fix up indentation in the bindings patch
> - Add an example glink-edge subnode to remoteproc-rpm (its bindings
>    require that..)
> 
> Link to v3: https://lore.kernel.org/r/20230328-topic-msgram_mpm-v3-0-2c72f27b4706@linaro.org
> 
> v2 -> v3:
> - Fix the example
> - Pick up tags
> - remove the outdated example from the cover letter, check bindings
>    should you want to see one
> 
> The bindings for the wrapper node used in the yaml example are merged
> in qcom/for-next
> 
> Link to v2: https://lore.kernel.org/r/20230328-topic-msgram_mpm-v2-0-e24a48e57f0d@linaro.org
> 
> v1 -> v2:
> - deprecate 'reg', make qcom,rpm-msg-ram required [1/2]
> - Use devm_ioremap() [2/2]
> 
> Link to v1: https://lore.kernel.org/r/20230328-topic-msgram_mpm-v1-0-1b788a5f5a33@linaro.org
> 
> Depends on resolution of https://github.com/devicetree-org/dt-schema/issues/104
> 
> The MPM (and some other things, irrelevant to this patchset) resides
> (as far as the ARM cores are concerned, anyway) in a MMIO-mapped region
> that's a portion of the RPM (low-power management core)'s RAM, known
> as the RPM Message RAM. Representing this relation in the Device Tree
> creates some challenges, as one would either have to treat a memory
> region as a bus, map nodes in a way such that their reg-s would be
> overlapping, or supply the nodes with a slice of that region.
> 
> This series implements the third option, by adding a qcom,rpm-msg-ram
> property, which has been used for some drivers poking into this region
> before. Bindings ABI compatibility is preserved through keeping the
> "normal" (a.k.a read the reg property and map that region) way of
> passing the register space.

This almost bleeds to have some uniformity with qcom,rpm-stats (and with 
the boot stats). All these drivers provides us with the insight into the 
RPM memory.

> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
> Konrad Dybcio (2):
>        dt-bindings: interrupt-controller: mpm: Pass MSG RAM slice through phandle
>        irqchip: irq-qcom-mpm: Support passing a slice of SRAM as reg space
> 
>   .../bindings/interrupt-controller/qcom,mpm.yaml    | 52 +++++++++++++++-------
>   drivers/irqchip/irq-qcom-mpm.c                     | 21 +++++++--
>   2 files changed, 53 insertions(+), 20 deletions(-)
> ---
> base-commit: aeba456828b4e47d99ec8ffb01412fbed0f94806
> change-id: 20230328-topic-msgram_mpm-c688be3bc294
> 
> Best regards,

-- 
With best wishes
Dmitry

