Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 179F167770A
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 10:06:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231535AbjAWJGw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 04:06:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231524AbjAWJGv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 04:06:51 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95DC71CAF6
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 01:06:49 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id r9so10096235wrw.4
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 01:06:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Kx6lFX3j04Q0LzfM4ypmKaDgLGfR8Nzb5Ptw2ZM7Ai0=;
        b=Q9rwXWmKNkh3imiVeAMPf9xbwXOYzS7OVZYehFEOJ/w+VMwzKWrPZYoPrhwR2pXsyI
         jFLgfo1o1ekaQz6y7hGp52dlEWnTRW8R2jMCu42nzRvTPdLJXcGxxQLjEj4Pg3yic8o2
         /u75y734LDoHV1i9uEGxH2Fq30hy/0A84M52eyEIKRjEATC5IAFzU1wIq3Gq2xbyU0zH
         nCtjnU00n5sSbj0KccAK9oySkL0t8prqLXbZTyW7ClXDFwLsLjqkFbT5FlvlyzsxYm5P
         xLz3TdTKqpb71HcvBzwT3WrWD1Ifqo1nTw4HFu7hpcsz7091YugF8xLsa6I0ESn4+Mer
         RDfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Kx6lFX3j04Q0LzfM4ypmKaDgLGfR8Nzb5Ptw2ZM7Ai0=;
        b=eDhS9TwPSp72QeNKHpJ+qsBvVjD/IgSnpYFk/aH7cZKH7IDpQBuI87CuceSvxC4Fh3
         tfV/CefF5fZSIP50wQ918DPuSKRYfyenv7w2hgzZGVCVq9GnWSdLIVJUvMMje42I/R7X
         8k4k0dpiOGkrJj4D8V1ZdxkNIVucx3Y+KDJ3M9bHHQWi4KUl0MALU7t+Pju4D0pSlJfI
         9CAY61/6Xx5JQwUtPMKJlFs9h16NfJIgec9TNlKWPjgyQS23hOwosg6tHh+lCOOT/ACq
         tQSVkGvbJb2elhSP47QvHSBqG3XDooqNP/euD3OT/7nwPapvxIqC6XM2PHoSnAai2cb9
         E96A==
X-Gm-Message-State: AFqh2krCEaZepSqyfaYN7ePZP4eh611Mu+g7Qds0xoE52Ot+vB0GMpuJ
        DSTZqjIVjT0DE1Yl8DRYn9FmEw==
X-Google-Smtp-Source: AMrXdXsFjvmYYKBk3lKGUaDn6ljTehr4S0fyGsCTso32csm32DOPPv4UKuqI0VryfPqFx1JBDLOXVw==
X-Received: by 2002:a5d:4842:0:b0:2bd:eccd:7ea4 with SMTP id n2-20020a5d4842000000b002bdeccd7ea4mr21041451wrs.47.1674464808207;
        Mon, 23 Jan 2023 01:06:48 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id g12-20020a5d554c000000b00275970a85f4sm4120891wrw.74.2023.01.23.01.06.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jan 2023 01:06:47 -0800 (PST)
Message-ID: <be938064-60dc-e54c-473d-f7acd799c959@linaro.org>
Date:   Mon, 23 Jan 2023 10:06:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH] dt-bindings: iommu: renesas,ipmmu-vmsa: Update
 descriptions for R-Car Gen4
Content-Language: en-US
To:     Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
        joro@8bytes.org, will@kernel.org, robin.murphy@arm.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     iommu@lists.linux.dev, devicetree@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org
References: <20230123012940.1250879-1-yoshihiro.shimoda.uh@renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230123012940.1250879-1-yoshihiro.shimoda.uh@renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/01/2023 02:29, Yoshihiro Shimoda wrote:
> Since R-Car Gen4 doens't have the main IPMMU IMSSTR register, but
> each cache IPMMU has own module id. So, update descriptions of
> renesas,ipmmu-main property for R-Car Gen4.
> 
> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> ---
>  The old R-Car S4-8 datasheet had described IPMMU IMSSTR register, but
>  the latest datasheet undocumented the register. So, update the propeties
>  description. Note that the second argument is not used on the driver.
>  So no behavior change.
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

