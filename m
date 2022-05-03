Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05DF05180CA
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 11:16:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233327AbiECJUA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 05:20:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233317AbiECJUA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 05:20:00 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABA3D1F616
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 02:16:27 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id y21so19187915edo.2
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 02:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=jcci8Frb3M0qrnvosf/PO+Bj2q6afYrP4tQydJOi9pU=;
        b=dKcAfh2yAQOmPybEDvPbFsFprrKOs7OGXatbULZ7Iab/OGoRkuTv+RRfzF7oJOEqXW
         mexB6wINAq31qDS3dx3flivkEvSeHZiBGaGpwtekVyYOBPynVzF2kmhzEe/YRnYBRoCe
         mtmFjNgqP2ieZsSCWFoh4/AK2xi1tKqrtRESBbKOOGFcDPiW65PZlaYn4BW9hfCjDH0/
         5Gto8e8plDC62lQTFCqOOZJfgC6U/SQ/P8jZjuTJ7WnODVBZKaD/Hzffi2pz/2K6H87X
         unt7IX9XDMJLFqj6VjwzJEqINTUKPHkY26n5BYOhS5xqfIjNBAHJ+jIUkcZHhFCzzyue
         mwKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=jcci8Frb3M0qrnvosf/PO+Bj2q6afYrP4tQydJOi9pU=;
        b=ak5SRAGRSyJ8Nyfx6yn0rLDUeKWP6nOC83c1hSRMdqsqP9hF6ZwJhuENwWA7tIPcQy
         twO2FiB1UAtjjjSv6g1XzNE1HJB5xjwR6uPXve0wwZepBy+tVGPNwo68wCqW5qncPlmm
         ZWDmu9iKT8SkKU9xJt6vOZ/wgjpx/7MKdt841kCfn50bXUc5Zr1CqKFOSJ1Wj4+g3u/S
         T43BXOIX++DrO+Jz0DidjS/Cf89bxrleoQP6eMbQDYj4QLaZCvgm92ke6wf+FLXhfhpI
         KK9qNrD9hUb3kCXB6RVRJNvkIw6/QOjtINcSmdsA72s260t0GGumPs/SoOsdkY1Acc9T
         yd1Q==
X-Gm-Message-State: AOAM532WakxiHrpmlcWgUyStKrEDau58/xYv+t9yjKURNemYLiesBdf9
        hWgQl/QUCKSMjreiPwtISkGvYQ==
X-Google-Smtp-Source: ABdhPJwJuIY3i3mTIfkadFU4/tg6fDQoPzPyrUw30FzAQKMPIp9zP6rs/z9sOWIym9nG9wSHFSOpAg==
X-Received: by 2002:a50:fe1a:0:b0:425:e276:5adf with SMTP id f26-20020a50fe1a000000b00425e2765adfmr16841671edt.284.1651569386299;
        Tue, 03 May 2022 02:16:26 -0700 (PDT)
Received: from [192.168.0.201] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id yo1-20020a170907136100b006f3ef214e0dsm4423528ejb.115.2022.05.03.02.16.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 May 2022 02:16:25 -0700 (PDT)
Message-ID: <eb127948-d20d-19b2-a177-b4dac02986d5@linaro.org>
Date:   Tue, 3 May 2022 11:16:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 06/12] clk: samsung: exynosautov9: add cmu_busmc clock
 support
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
 <CGME20220502090100epcas2p35615025b6f6295af9323d0514015d5af@epcas2p3.samsung.com>
 <20220502090230.12853-7-chanho61.park@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220502090230.12853-7-chanho61.park@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/05/2022 11:02, Chanho Park wrote:
> CMU_BUSMC is responsible to control clocks of BLK_BUSMC which represents
> Data/Peri buses. Most clocks except PDMA/SPDMA are not necessary to
> be controlled by HLOS. So, this adds PDMA/SPDMA gate clocks.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof
