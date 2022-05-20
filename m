Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2EA6652EA25
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 12:47:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348224AbiETKrq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 06:47:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234978AbiETKro (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 06:47:44 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 356243DA51
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 03:47:42 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id bu29so13709793lfb.0
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 03:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=+V2iz2tpQK2VKoncM7tkrBv1RkUo/3iqip/6pL9NBT0=;
        b=SKmRAZSXq6NcW5nvMbo+k7TZRg6TyPM5f2AjErTZEBcrBgOgabUGKwc8xAokfk2tuh
         L+joztkQ3ieF24XRT8dlfHbSLX7tiImMFgLoCdnTJ/naAyPzS+iBPtQeAJIdLnF0+hPr
         Gi9zavVwcM/VY8p9WEDyu4TnOI4EtWafOePyADGDB8axC+ARvyyYUrwB8m/LOWc0hiJx
         9z3C3wcYiF4gXBjNcEvQGAUimLhtTmFMQ2PlRFzqc3Gazi2nNEDYu5mi70tlt0KkaT5V
         6kUPoI4lPgqQB5gmOMVpPHO7KWnPfgBqHNwymV/9sOkal23GRlHzZMN3YY7ZnlwCcotK
         6GlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=+V2iz2tpQK2VKoncM7tkrBv1RkUo/3iqip/6pL9NBT0=;
        b=ZJkg4vd4iUpklh/ykhaMkaObupCWuG4CP2gZYUb1ayccuuaBb8laEeHJk0ybd+u2Be
         i15kQelb+kLztPpZysd4k4tqoaKNz1zF7FRaQyB5ReQcb9JOtZk1F3m+BlhJw0/epUdn
         6pwTH3uJMSn7bATJBgEp8UuBxC2p+SzRMLi94oy0yAyK6HxAlbLTXE1hUH8zbCeCsWEF
         70eJLM5GvmjKDHahMrPODb5adFTD4Jtnyt5Zhch4QUCDHmrK1GHYUbDPOesIvLyQofC8
         JkhdDXg3R4wLnC8P1ZZrXtUtIIQy3O20GjrHAIEeWLp5iVwRZQi4XWK5lTFu1xDJa4Rr
         9buA==
X-Gm-Message-State: AOAM530/8CAhN+Y7SIB1m6A6wb4W7cb/FlFbZK3A5139jx7454uuyez+
        KaMNNFQfWPDy347X6pXtenr/tg==
X-Google-Smtp-Source: ABdhPJzntRsz8vlnhJmvVEsolPIB/+0IL2XNDAx06SGJOFAXhwrA5h6ElrgsomuzRBpoBB9guHpRNg==
X-Received: by 2002:a05:6512:3f94:b0:474:68e:46c3 with SMTP id x20-20020a0565123f9400b00474068e46c3mr6786689lfa.431.1653043660624;
        Fri, 20 May 2022 03:47:40 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id y20-20020a2eb014000000b00253ceefb668sm259262ljk.60.2022.05.20.03.47.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 May 2022 03:47:40 -0700 (PDT)
Message-ID: <a2b67f62-b000-5ba3-6989-32221c26f7f0@linaro.org>
Date:   Fri, 20 May 2022 12:47:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH] dt-bindings: clock: exynosautov9: correct count of NR_CLK
Content-Language: en-US
To:     Chanho Park <chanho61.park@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>
Cc:     Alim Akhtar <alim.akhtar@samsung.com>,
        linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
References: <CGME20220520030551epcas2p1a67b9f026ce2ec56b0a167026ef96baf@epcas2p1.samsung.com>
 <20220520030625.145324-1-chanho61.park@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220520030625.145324-1-chanho61.park@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/05/2022 05:06, Chanho Park wrote:
> _NR_CLKS which can be used to register clocks via nr_clk_ids. The clock
> IDs are started from 1. So, _NR_CLKS should be defined to "the last
> clock id + 1"
> 
> Fixes: 680e1c8370a2 ("dt-bindings: clock: add clock binding definitions for Exynos Auto v9")
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
