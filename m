Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F76F5BADA3
	for <lists+devicetree@lfdr.de>; Fri, 16 Sep 2022 14:56:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230491AbiIPM4J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Sep 2022 08:56:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230455AbiIPM4I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Sep 2022 08:56:08 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 235C87C30C
        for <devicetree@vger.kernel.org>; Fri, 16 Sep 2022 05:56:04 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id n17-20020a05600c501100b003a84bf9b68bso15801965wmr.3
        for <devicetree@vger.kernel.org>; Fri, 16 Sep 2022 05:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=FlgUh5+pDn0PTCFu6MENysdcsTjYuALACeiMk1+3GzM=;
        b=UMBnXSenihH6P6oCZLrpTzS5LnafMHOZaBY1de7HlfwJ1BMfyP3aCIlF3tncrofGwL
         aENJI01ZvTyvYNjmCy4OJ+fj1ne14FYUIXFEpI+YAU3ekZwGLnc/s5xMZkPbBCCR1uCt
         T6zeXiyqKjCK87ByFt/X5ApIvQtwoJtFda2BmKiYjoXb3Gjg7+uXHdkL2GuCPQNtDpLE
         /NMzxLFpkm/Obsa9gU+re7MQZmxVMbi1ozSni/7MBrb7dPoJ7kV9MuTf/7XItcl5RKPP
         d3fF/Lba2lhhjAq0F0m+41eqWSXbZHyUn/AXSLlTgqUEjwF76R6+0UyQPyglNvuGQ5I+
         yW8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=FlgUh5+pDn0PTCFu6MENysdcsTjYuALACeiMk1+3GzM=;
        b=N0HZb6DvwpD58T+3xRP51E66Q1XiWBSHK7AFOifbdlblubcfgD6CulO1DMq3i0fP9g
         RmFqhqWDepXJib23jHlD9AbofxsMGHqZ/4j1+T6LAM2ZImY804tb3pobN0nHZ0GWynYB
         2HzYmFoGQt6ifqhqBVfDhqq1MBGzacDP1PHX4LcZfbV6+vo5QnxLnvp7rkywj5kfocPA
         ev8cjL33SbrZGeKN0V0uNc3N3+8MBaKEGAItmMVQMs7Ot4THs8Q9jypcGdhFfh85/z7B
         CKifBWzIYgXseArPXu9q8Wt91HtkmtA8Ghcux/gRa+/8IKtrHuP2VZ9/mml072Rc9F6Y
         s+pw==
X-Gm-Message-State: ACrzQf1MMDa+qARQhbni3UhexXZ+sSShn0yw/QLvq7y/tBqxQPL88ZQj
        Xxj6QSRwevBQsHb/ROZO3e5/sA==
X-Google-Smtp-Source: AMsMyM6S94CyeAVhtUcro6X5ND/HkjA9cvn45gsoLeKfqmfPRi08nogI6dDjR5RpNWhkCQOxxVnB7A==
X-Received: by 2002:a05:600c:34c2:b0:3b4:7a98:5f5a with SMTP id d2-20020a05600c34c200b003b47a985f5amr3238815wmq.156.1663332962696;
        Fri, 16 Sep 2022 05:56:02 -0700 (PDT)
Received: from [192.168.86.238] (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.googlemail.com with ESMTPSA id n2-20020a5d67c2000000b0021badf3cb26sm5715968wrw.63.2022.09.16.05.56.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Sep 2022 05:56:01 -0700 (PDT)
Message-ID: <e085312e-79d7-cd43-169c-0e606f67752f@linaro.org>
Date:   Fri, 16 Sep 2022 13:56:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v3 00/10] misc: fastrpc: Add audiopd support
Content-Language: en-US
To:     Abel Vesa <abel.vesa@linaro.org>,
        Amol Maheshwari <amahesh@qti.qualcomm.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Ekansh Gupta <ekangupt@qti.qualcomm.com>,
        Bharath Kumar <bkumar@qti.qualcomm.com>,
        Himateja Reddy <hmreddy@quicinc.com>,
        Anirudh Raghavendra <araghave@quicinc.com>
Cc:     Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-arm-msm@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org
References: <20220909133938.3518520-1-abel.vesa@linaro.org>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20220909133938.3518520-1-abel.vesa@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 09/09/2022 14:39, Abel Vesa wrote:
> This patchset adds audiopd support to fastrpc.
> 
> The v2 of this patchset is here:
> https://lore.kernel.org/all/20220902154900.3404524-1-abel.vesa@linaro.org/
> 
> Abel Vesa (10):
>    misc: fastrpc: Rename audio protection domain to root
>    misc: fastrpc: Add reserved mem support
>    dt-bindings: misc: fastrpc: Document memory-region property
>    misc: fastrpc: Add fastrpc_remote_heap_alloc
>    misc: fastrpc: Use fastrpc_map_put in fastrpc_map_create on fail
>    misc: fastrpc: Rework fastrpc_req_munmap
>    misc: fastrpc: Add support for audiopd
>    misc: fastrpc: Safekeep mmaps on interrupted invoke
>    misc: fastrpc: Add mmap request assigning for static PD pool
>    misc: fastrpc: Add dma_mask to fastrpc_channel_ctx
> 

thanks Abel for picking this up...

Tested this series on SM8450 with ECNS.

Tested-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


--srini
>   .../bindings/misc/qcom,fastrpc.yaml           |   5 +
>   drivers/misc/fastrpc.c                        | 260 +++++++++++++++---
>   include/uapi/misc/fastrpc.h                   |   7 +
>   3 files changed, 240 insertions(+), 32 deletions(-)
> 
