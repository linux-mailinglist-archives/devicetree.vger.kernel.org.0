Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D5CDE55194C
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 14:49:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242252AbiFTMtD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jun 2022 08:49:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240494AbiFTMtB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jun 2022 08:49:01 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A623611C00
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 05:48:59 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id um5so5933099ejb.5
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 05:48:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=25MF9bCZg+nfQVclxRAj22UNao3u9KJnaDQNqtN7pPs=;
        b=y/SePXg4BKIZ2rCBvahqjNHAYrm/fPndCXouPWVx21VOCzQasCbuZb3zCrxchlpc6C
         iNLqkwLxOPlBIw0Z3lSudBi3E6/djVe18sB4x7j031BQDualuu3SkuBoLGffP1aJP6Vk
         dLpb83sPdfz0c06+qNqCPQpckLtIppBn1XoFBBk+ydk4ngQhtd0ymBcqHiSGvBkI7C3B
         4dgJcUNJhfzGzr0Hy9JYSkN3oMtvz6UHUJ/fttdDE0oYd4BUTsAlwgOUJJ5Jr5tP6Aam
         uyhxv7iZ6u1aNkjYChtk8ixoil/arL/mZr84aDEj9oAa7Zfqo+B2EgB+SYztE+GhB2mt
         H7IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=25MF9bCZg+nfQVclxRAj22UNao3u9KJnaDQNqtN7pPs=;
        b=dcgRsyu1m/5j3fheoztl5KSyD8/3n0Gbg9pQhHqLp1m49uZYR1swiRfgJgJRGVyEOD
         Z6H/3wu/kxnJPJRr7oqnxTBBpB+t+r4/vbY/AoytckvcGETa1QSPb5S5x1P28ra31L2c
         eWahBSSwoo15WbEIjN0gPEB6t7lCAaASNefNppFsxQmZ1FWkFGrcr79NpkR1/sP+1e9F
         AZXfILy5wsATNBnK1eo4r3k/AwMDQqNTSE+rT7nE735Qt/AfmRj7TMWiaRiAkLua5boR
         7DfPFewVZ3KRVhCc1rMrLZvepiJZP2G84/GSejRVXC0Mv2m+xPlDP4T31vjBFYeGze7c
         XThg==
X-Gm-Message-State: AJIora9FqtC4QOjKeZs7+0TnUmHrv5b9CtI8Ypt42vSz+0zzR/UAZRPX
        UHahaVPYuKvNnP0HOqQF2ldyNg==
X-Google-Smtp-Source: AGRyM1ua+PHdvFVhKnc7bKaPda6LbhC16pScYCj1ebE9gDhAUmRSsupGeC4bFEC3ObLAmRhQDhE/Tg==
X-Received: by 2002:a17:906:4f:b0:712:af2:29d9 with SMTP id 15-20020a170906004f00b007120af229d9mr21303926ejg.751.1655729338197;
        Mon, 20 Jun 2022 05:48:58 -0700 (PDT)
Received: from [192.168.0.210] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id p3-20020a17090653c300b006fed93bf71fsm6051568ejo.18.2022.06.20.05.48.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jun 2022 05:48:57 -0700 (PDT)
Message-ID: <655c8da3-e4ad-b971-39e7-3d69b4dcd241@linaro.org>
Date:   Mon, 20 Jun 2022 14:48:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v5 01/15] dt-bindings: arm: add AMD Pensando boards
Content-Language: en-US
To:     Brad Larson <brad@pensando.io>,
        linux-arm-kernel@lists.infradead.org
Cc:     linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
        adrian.hunter@intel.com, alcooperx@gmail.com,
        andy.shevchenko@gmail.com, arnd@arndb.de, blarson@amd.com,
        brijeshkumar.singh@amd.com, catalin.marinas@arm.com,
        gsomlo@gmail.com, gerg@linux-m68k.org,
        krzysztof.kozlowski+dt@linaro.org, lee.jones@linaro.org,
        broonie@kernel.org, yamada.masahiro@socionext.com,
        p.zabel@pengutronix.de, piotrs@cadence.com, p.yadav@ti.com,
        rdunlap@infradead.org, robh+dt@kernel.org, samuel@sholland.org,
        fancer.lancer@gmail.com, suravee.suthikulpanit@amd.com,
        thomas.lendacky@amd.com, ulf.hansson@linaro.org, will@kernel.org,
        devicetree@vger.kernel.org
References: <20220613195658.5607-1-brad@pensando.io>
 <20220613195658.5607-2-brad@pensando.io>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220613195658.5607-2-brad@pensando.io>
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

On 13/06/2022 21:56, Brad Larson wrote:
> From: Brad Larson <blarson@amd.com>
> 
> Document the compatible for AMD Pensando Elba SoC boards.
> 
> Signed-off-by: Brad Larson <blarson@amd.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof
