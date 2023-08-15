Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56AF377CD81
	for <lists+devicetree@lfdr.de>; Tue, 15 Aug 2023 15:47:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234253AbjHONq3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Aug 2023 09:46:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237462AbjHONqH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Aug 2023 09:46:07 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E0CA1BCE
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 06:46:05 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-3197b461bb5so1447188f8f.3
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 06:46:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692107164; x=1692711964;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PdoIoyEfFtrAGBNvXTdtRRwuLOGU26w0ux4bbqR59AM=;
        b=YAxQqHwb3prrRhvA57OrqC+R1wyYDNy8sWF1cTteK2aERqD2LIiCaKPZSMAQH0ll0H
         43sA4MZDEH3mGYXmc9LFl1im7xbuvD6gg1DDkpfZ7XjJXH/CORbS20JrIDqRZpXHlG4m
         jFu6Wi6izPoN+0BvJnGq0Gr2aCTyO/hgAoKsciKZuDF7eODIx5Tplx+J5E/4fAeBGwGF
         OOg4ncpqoUYrjN4gw9Fsj8DVhI34YHM19umCn8JhY1vdUkGdEs950L6yFUrjBxXy70Dc
         BK/mkRpEU+mPxNghDM910p2yN9FoiRKCikN6qkswlRxfaIwEOJg6mJYEVlBRqfEFhdd2
         wwSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692107164; x=1692711964;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PdoIoyEfFtrAGBNvXTdtRRwuLOGU26w0ux4bbqR59AM=;
        b=QRxqYVhQ1t0xGDsUCUxjANeYLRe8/c4ueWuztfJF1PXgKPiQiZOM1oZtafhutgJm0g
         Y15m3Ki+7RLKUBW59TAyXtfvmjTa+wGQyIbeWBZ+9XE5qdjI8sc/cTM5c9NoSKidHrVD
         e+vcsMeSPIFA3NMX8jHmIGUiYjuL5wwUC5z2YniOKr45PYZFihXmZxeMJcx7HMSPyCL+
         or9rX0xY89D/LepbI0OsR6SLMY4PNXJDyGbpsJ6me5jhd/jN7ktVV02s0ZWmLN8CVLrH
         e0IAwvlwUcJ12OVT8N+VYxaz8+6bkZiet8KZnpqksiyV01G7Ylz+tVx1v2RyulrPMxBJ
         hbIQ==
X-Gm-Message-State: AOJu0YwMuFn4aFz4/cwhswOVaIgN7/j6xlcvqf2wDIxcoMElcp7oeb18
        akLOL/8iZdj1L555ddo1gSCJhg==
X-Google-Smtp-Source: AGHT+IHr4xaMAD/NMX18+TDEJgv/DkPtZYCXEMen/XWmwLrowKVUseC57g8I2H5M+OIStteWaMVGtA==
X-Received: by 2002:adf:e30b:0:b0:314:11fe:c72e with SMTP id b11-20020adfe30b000000b0031411fec72emr9500471wrj.46.1692107163664;
        Tue, 15 Aug 2023 06:46:03 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id a2-20020a5d4d42000000b00317ca89f6c5sm17917534wru.107.2023.08.15.06.46.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Aug 2023 06:46:03 -0700 (PDT)
Message-ID: <4ee6db8d-014d-7c8d-f1d8-bf5b1518d6f0@linaro.org>
Date:   Tue, 15 Aug 2023 15:46:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 1/3] dt-bindings: arm: rockchip: Add Orange Pi 5 board
Content-Language: en-US
To:     Muhammed Efe Cetin <efectn@6tel.net>,
        linux-rockchip@lists.infradead.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        heiko@sntech.de, sebastian.reichel@collabora.com
References: <cover.1692102057.git.efectn@6tel.net>
 <cdb5f1d686425e7dcb953c83749153f9321f9afc.1692102057.git.efectn@6tel.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <cdb5f1d686425e7dcb953c83749153f9321f9afc.1692102057.git.efectn@6tel.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/08/2023 14:58, Muhammed Efe Cetin wrote:
> Add Orange Pi 5 SBC from Xunlong.
> 
> Signed-off-by: Muhammed Efe Cetin <efectn@6tel.net>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


---

This is an automated instruction, just in case, because many review tags
are being ignored. If you know the process, you can skip it (please do
not feel offended by me posting it here - no bad intentions intended).
If you do not know the process, here is a short explanation:

Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions, under or above your Signed-off-by tag. Tag is "received", when
provided in a message replied to you on the mailing list. Tools like b4
can help here. However, there's no need to repost patches *only* to add
the tags. The upstream maintainer will do that for tags received on the
version they apply.

https://elixir.bootlin.com/linux/v6.5-rc3/source/Documentation/process/submitting-patches.rst#L577

Best regards,
Krzysztof

