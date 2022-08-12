Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 531EC590CB3
	for <lists+devicetree@lfdr.de>; Fri, 12 Aug 2022 09:43:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237470AbiHLHnL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Aug 2022 03:43:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237462AbiHLHnJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Aug 2022 03:43:09 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81B53A61EE
        for <devicetree@vger.kernel.org>; Fri, 12 Aug 2022 00:43:08 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id x25so169290ljm.5
        for <devicetree@vger.kernel.org>; Fri, 12 Aug 2022 00:43:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=3VS7TWQot+IlEnwML927JkmV58E4LYSjP3ZVnbKvo9o=;
        b=H6veR4g/W1qzmoejhWrzNTQwPauG85mbgpysc5AndaHpPwUL46BFgVxeeGb2A66u5P
         IXdCseqv9FE799SRriDfUyuz/1BJcdY522DlofonUQtYQCPqxHzkpWLZKQ+W2CSV7QUo
         09hxtgv2kBaeVaLTKw0A76lTFs2Ua3TSFv3Bq7sWzfIr+HcUZ0p7UUL2ZjmMglDKcyRb
         tsLPdOsyfNd9lUvZMsQlAuimpvqm/V0mVwj8e8azBjnadFAn6+6pa4z1CXX2ZspADiVR
         ExqWeCB6yJKm8solaw/dXy2p2CqnYDt3T18qOd6Z2BPCCjiq42cOMbEFYY+AxQ6Y6uxX
         T8gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=3VS7TWQot+IlEnwML927JkmV58E4LYSjP3ZVnbKvo9o=;
        b=c10DGz9nWGPm+HtVqW3C1EgHN5fTr+eJDVCbpqQqZB95R55zLPqPCwnHVKVsM6jrT0
         9YZabJtHwgp8T/IRrgnmRZsRGIAAcaAxt1Hzw17O3kurQZ7f7J6QV1YImyhhPjeKoHTT
         OLcuRx7xYGQDhRNcD5b5BQSOwNlsmosmG27Sb50andFxnxKvWF20FzviF6PPy7BwJ0tA
         m1Xh3M+4M+VAA9ZuIdvsFPxvw4acbcxhMR58sUZyd2g7OZagJ2YNTF3kM8oeomajT4bT
         U8NkRLtjrKZubJS0TaUJaxIW92tB3RpwAQPTxyIJa+rZP8qUpNBMwdVr5fql3wYCQwFl
         i42g==
X-Gm-Message-State: ACgBeo1oiwx+p8kBxQHcFs8ix2xOjB9JBegVHFQl1iIa/QR+SYo/F3m3
        hVZvOYoV/LuFhayEFonbv9Zd7kBSDpoVsy4D
X-Google-Smtp-Source: AA6agR7ZfeMJcaErbEl0GD4He0/9ETlWF7jSLhneR8xK84QqhWg3QQHewdW5lNe/WC0N5Wv2ZlPPOg==
X-Received: by 2002:a05:651c:c98:b0:25e:6894:650 with SMTP id bz24-20020a05651c0c9800b0025e68940650mr840132ljb.487.1660290186671;
        Fri, 12 Aug 2022 00:43:06 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id m4-20020a056512114400b0048b12c4c7e6sm126911lfg.12.2022.08.12.00.43.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Aug 2022 00:43:06 -0700 (PDT)
Message-ID: <ba1b272c-0d3a-b1c7-0ca3-5279496e1a6a@linaro.org>
Date:   Fri, 12 Aug 2022 10:43:02 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH] dt-bindings: display: sun4i: Add D1 TCONs to conditionals
Content-Language: en-US
To:     Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maxime Ripard <mripard@kernel.org>
Cc:     Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-sunxi@lists.linux.dev
References: <20220812073702.57618-1-samuel@sholland.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220812073702.57618-1-samuel@sholland.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/08/2022 10:37, Samuel Holland wrote:
> When adding the D1 TCON bindings, I missed the conditional blocks that
> restrict the binding for TCON LCD vs TCON TV hardware. Add the D1 TCON
> variants to the appropriate blocks for DE2 TCON LCDs and TCON TVs.
> 
> Fixes: ae5a5d26c15c ("dt-bindings: display: Add D1 display engine compatibles")
> Signed-off-by: Samuel Holland <samuel@sholland.org>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
