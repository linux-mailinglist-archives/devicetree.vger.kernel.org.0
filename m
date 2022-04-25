Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E587850DB62
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 10:40:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236284AbiDYImH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 04:42:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234904AbiDYImG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 04:42:06 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D3766FA01
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 01:39:00 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id u15so28107147ejf.11
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 01:39:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=QbEF4qFNLXRA2Mh5ymqohDq27cRk1ERbjnuwvIvXpNs=;
        b=lhdEJ0nXJSseOKcda97U9Uiz8QjsEbGs05TmptJGOMSMUP42qs6k4aNVh9PSN+UMFt
         BgIED4Cgslr1dGcWfGFHbVYeazmmr7WtgubdyZIacyE3PfKrVtPZcwXV1NXS1KyQzWU4
         SLnCACbci/qtEScO3E/jJVaIlXUw/FWrYDdN2gTyMWgUhzC3vZXaTl5m4d5HLcT56gG/
         eV2TPKpZbhljCQC3kj56j7DPjvFtXKlaGdeeUILFGekDM1dM2HAhHy4CQ+RCorBN2o6b
         1ArWiJ3rYfKIvr15UMZ+91v0kFVGOSOlD6ZQvJ5E3dGwfsiuUPlNCy++nu1luqpgLbKm
         CrKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=QbEF4qFNLXRA2Mh5ymqohDq27cRk1ERbjnuwvIvXpNs=;
        b=0Amw78qMLtiV1op8Qy3gz1YufbgkPM07ig05VECmvYl6eJgMH2aYHpXOfJ5JEtG0se
         xqSauMkuZ8i7pi0QwfrHQDJecicleVbuYJv6NcCpNdzQbsJiRNf9hRs/dXCGAD3zDnId
         WNMMPwy41W8njOOH/E5BiG3sL6u4qd9IWzPNMipydt7RbrCM2ylIJ2F4cjgoEs0YLlxp
         bfXdnhlZkTy0jKODGthG4YRtMHpCNzyY1w2OiG5tmkgJIlzSDrWMAJuNy8d3AZNDPFyI
         X5UZ0uByA6VUmV3KTegAClRWplu7BqvwzYFGzzbujQijtvfaXB6qI5vJyyeB9kFGhjB8
         C06A==
X-Gm-Message-State: AOAM532M4KYTnwAQx4cDjdOjlyluhq3iGVwP6zHZpCG+rNCn6Dcp18yE
        VbuCiHj2xaUOWSsCFGhDbs9tsA==
X-Google-Smtp-Source: ABdhPJyZ9/gVVCkh1Yxdughre/E3F2MUxbOp3vw5ku2ymXTYYMfeLNv9mb2IJMEjnjZGSRPYhdrmYg==
X-Received: by 2002:a17:906:7c5:b0:6e8:7c6f:4f49 with SMTP id m5-20020a17090607c500b006e87c6f4f49mr15325007ejc.378.1650875938808;
        Mon, 25 Apr 2022 01:38:58 -0700 (PDT)
Received: from [192.168.0.240] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id z16-20020a05640235d000b004258d76a908sm4301359edc.54.2022.04.25.01.38.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Apr 2022 01:38:58 -0700 (PDT)
Message-ID: <316737f4-2581-0bad-37da-9bddbb415231@linaro.org>
Date:   Mon, 25 Apr 2022 10:38:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: mediatek: topckgen: Convert to
 DT schema
Content-Language: en-US
To:     Yassine Oudjana <yassine.oudjana@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Sam Shih <sam.shih@mediatek.com>, Ryder Lee <ryder.lee@kernel.org>,
        devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
        linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Yassine Oudjana <y.oudjana@protonmail.com>
References: <20220424084647.76577-1-y.oudjana@protonmail.com>
 <20220424084647.76577-2-y.oudjana@protonmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220424084647.76577-2-y.oudjana@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/04/2022 10:46, Yassine Oudjana wrote:
> From: Yassine Oudjana <y.oudjana@protonmail.com>
> 
> Convert topckgen bindings to DT schema format. MT2701, MT7623 and
> MT7629 device trees currently have the syscon compatible without
> it being mentioned in the old DT bindings file which introduces
> dtbs_check errors when converting to DT schema as-is, so
> mediatek,mt2701-topckgen and mediatek,mt7629-topckgen are placed
> in the last items list with the syscon compatible, and syscon is
> added to the mediatek,mt7623-topckgen list.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
