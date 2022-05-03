Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B491F5180AA
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 11:08:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233251AbiECJM0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 05:12:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229578AbiECJMZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 05:12:25 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F7073630A
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 02:08:50 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id z19so19113469edx.9
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 02:08:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=1vyqhcFOFRK3lLYR2hhECU81AQwDiHSR9qz/gEUCK+s=;
        b=POmymdkWoLFxC5jIM1kz7BJ+KxGSV205OD5KQkOXGxcmc2Oqcb172rROSwPIi5nKGb
         oAhy4LdXGD4D1ML/J2U5TZKZ/s4hZxZiR4MbIftgmbw8w9DU2eRQb1HAmJXysB+faB+N
         tuiokkH/EM9Lac+rGVJoIgeoxvez4RgCnt6eeXyc+S1tmZ3loTojLEKoVBx1Ufax8ysH
         v+WazIMVnGMda0bBvIyGQBP4SGVU4yoDmPBJGO1WZLJMGR57hUXfidK02Xll+B7d7j03
         rW7BQJIE3p1LrqEkIFwaG6cRuUkZg3PQByF/qGuvm03lDcpeXARLI2NiErfc/yf815dW
         sL/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=1vyqhcFOFRK3lLYR2hhECU81AQwDiHSR9qz/gEUCK+s=;
        b=AcA/Qfs2B4Lvda0BjlCPFLYAdZDwiliYKfQOkrBf5oQHCsAJZ70L0SKj+/zbJPjtjm
         q7PQEBeSCfubrX+4v51xAZT9J6JWOYHOopBSt0tUw6RTqSeNXihQNF4LuKRdMTC4y0rj
         8a6KelEXgCkyEtPp5ofLfwpr53tVsDwbZ7CfnF7WDNIE6kSVCttNnE8aOzQNz2lW6lwO
         wrRYh7aDf1WVs3uvXcHtSQCKyVQ81kswsPUQa5+pIsZlSYm2Jxd/LSnpTkOnBPPSYtG6
         usHHt+C1BM7tbl6FvNwEqrCVGqXEV1JrWUNDS/Yy4l/k0gj8xaLFnJuPRSC3bwXk1fUP
         d/lg==
X-Gm-Message-State: AOAM533UJsjJel8wZMqMiAvIrbwfAE4bVK6RC7SDTkX1fgc57AEZF9KW
        3je0YeNlbv7+T7WtzYrn0j7Kmw==
X-Google-Smtp-Source: ABdhPJxP9OHlIxkEzwkK5f+RwjhuxsIRkV5WE7MuKR0pzd3oI1AWaIivv38AVSp8g2D6+9TWa3QFGg==
X-Received: by 2002:a05:6402:3513:b0:427:dd44:90a5 with SMTP id b19-20020a056402351300b00427dd4490a5mr3922956edd.144.1651568929001;
        Tue, 03 May 2022 02:08:49 -0700 (PDT)
Received: from [192.168.0.201] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id v7-20020a056402174700b004275cef32efsm4370844edx.6.2022.05.03.02.08.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 May 2022 02:08:48 -0700 (PDT)
Message-ID: <219beabb-9969-6455-573b-a4e59b418ef7@linaro.org>
Date:   Tue, 3 May 2022 11:08:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 02/12] dt-bindings: clock: add clock binding definitions
 for Exynos Auto v9
Content-Language: en-US
To:     Chanho Park <chanho61.park@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Sam Protsenko <semen.protsenko@linaro.org>,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org
References: <20220502090230.12853-1-chanho61.park@samsung.com>
 <CGME20220502090100epcas2p128ced14c2463dc64de3571d542614fda@epcas2p1.samsung.com>
 <20220502090230.12853-3-chanho61.park@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220502090230.12853-3-chanho61.park@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/05/2022 11:02, Chanho Park wrote:
> Add device tree clock binding definitions for below CMU blocks.
> 
> - CMU_TOP
> - CMU_BUSMC
> - CMU_CORE
> - CMU_FYS2
> - CMU_PERIC0 / C1
> - CMU_PERIS
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---
>  include/dt-bindings/clock/exynosautov9.h | 299 +++++++++++++++++++++++
>  1 file changed, 299 insertions(+)
>  create mode 100644 include/dt-bindings/clock/exynosautov9.h
> 
> diff --git a/include/dt-bindings/clock/exynosautov9.h b/include/dt-bindings/clock/exynosautov9.h
> new file mode 100644
> index 000000000000..4f14fdda26a6
> --- /dev/null
> +++ b/include/dt-bindings/clock/exynosautov9.h

About file name I commended in previous patch.

> @@ -0,0 +1,299 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
> +/*
> + * Copyright (c) 2021 Samsung Electronics Co., Ltd.

Copyright 2022, unless it appeared somewhere publicly in 2021? (then
2021-2022)

Rest is ok, so:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof
