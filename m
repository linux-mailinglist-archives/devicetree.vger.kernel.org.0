Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 624994FB3CF
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 08:37:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234271AbiDKGj6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 02:39:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244974AbiDKGj5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 02:39:57 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 730A222BDE
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 23:37:44 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id b15so17073637edn.4
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 23:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=vzNjZUXGyvh4gu1a5eskzN2ZgAinNkq/VfowbMZKkRY=;
        b=n9tsVChRT1PVIqDW/MqDK2AAvs1Dzp1foGwlobVRiFihFy4lvDQG/DlNcqT7KZoBCw
         /b0cTlbdft9bB57n7QmxErwXwdW+oCBAIceQdsZl1SynUBR2d2DXQNpiSfUpWL2gCTlM
         fEnbLQP3oAeReSQqM8w8+/1LIrkSqlPl6XswAialCagtaqmTvdnjBRXvZt999cniBbYb
         wEPBtVWY0mWdCo4YIFofSwnP/9RtCGySUqGg5iQC8PKIhQCaoLUdc4bz/3ZoDPrZrE/W
         XCKJcdVDAII9iJRM45lmMEExa3pTLJOklS953Ygoc/KbNDSItyZ5i4FkcPwI3lOEQepa
         JTow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=vzNjZUXGyvh4gu1a5eskzN2ZgAinNkq/VfowbMZKkRY=;
        b=IbLyDWPMq3RJ+P6AVMihFqPVa7hFm8Tmx+LiXr+ZXHu5HyEvW6JZDEze+62s6fxn4e
         nsaqO2yVVrHxRv+ZShZRgA/NOcs/nGv1QimOyHBZ797jFhPkHv2janCOs5hOvDUAN1cO
         6M3xCY2zmbwT+1injEZmezW+B8R4JFWzz/FqFGa49IWYO1s+yjxmb+a6KAypUb8I0xQn
         VTPXx75qUDwoEJqLUpKxBwsT8Eqw9QIUev5tq2yRF32KJ04/NF4JWQICkghFCGunYXTC
         vM0v5ZQWeA6wiFq3fgrACtLvh1wblfvocC89WUnnCVMpjx9j5xkO8xPBw34zsgb/674+
         D05g==
X-Gm-Message-State: AOAM5328eQqeicP+fSqj0zdVCBaQt7ONIflXQQHrA1SM3vPk+eZxJU4c
        3z6CSUzihSxxJfYo1FBDa3fLyQ==
X-Google-Smtp-Source: ABdhPJyxeX5ahiPnIwsYZpijDZ2+BJKM+oobLR5YazSI/pEHlQhHy62TVXuI5C0rQe+zdN6vXT8dmQ==
X-Received: by 2002:a05:6402:1c1e:b0:416:5b93:eacf with SMTP id ck30-20020a0564021c1e00b004165b93eacfmr32015436edb.302.1649659063100;
        Sun, 10 Apr 2022 23:37:43 -0700 (PDT)
Received: from [192.168.0.191] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id z11-20020a50e68b000000b00412ec8b2180sm14586743edm.90.2022.04.10.23.37.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Apr 2022 23:37:42 -0700 (PDT)
Message-ID: <ba417ad0-a263-77c4-a7bd-a1e7c43fe6b7@linaro.org>
Date:   Mon, 11 Apr 2022 08:37:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 01/10] dt-bindings: display: Separate clock item lists by
 compatible
Content-Language: en-US
To:     Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maxime Ripard <mripard@kernel.org>
Cc:     Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-sunxi@lists.linux.dev
References: <20220411043423.37333-1-samuel@sholland.org>
 <20220411043423.37333-2-samuel@sholland.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220411043423.37333-2-samuel@sholland.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/04/2022 06:34, Samuel Holland wrote:
> So far, the binding and driver have relied on the fact that the H6
> clocks are both a prefix and a subset of the R40 clocks. This allows
> them to share the clocks/clock-names items and the clock-output-names
> order between the hardware variants.
> 
> However, the D1 hardware has TCON TV0 and DSI, but no TCON TV1. This
> cannot be supported by the existing scheme because it puts a gap in the
> middle of the item lists. To prepare for adding D1 support, use separate
> lists for variants with different combinations of clocks.
> 
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
