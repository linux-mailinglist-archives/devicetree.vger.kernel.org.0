Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1552A4D0A5D
	for <lists+devicetree@lfdr.de>; Mon,  7 Mar 2022 22:55:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237903AbiCGV4v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 16:56:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236751AbiCGV4u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 16:56:50 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E48D47EA03
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 13:55:55 -0800 (PST)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id C15B23F613
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 21:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646690154;
        bh=e/a3LsTPoxxLtAF8uZkD6Lck1aYDoQwFHcagHpP5FUc=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=EkhUBtDDJRiWPrUb9tPfegdjGRnkqGH6toelZxE/YYWtl67VP56+BMHgWXNWFZUnD
         fuJWhX9Y/QtDqJIUtdBUpfYg9gO14/L00uauSNECaeVu+IRPT3uLiJNYXB00jvxWA4
         BYBdxfy0+9gobmCUDtEDIudJXLwyU9d3gXNVc0J49gRrxSOcnmy6y8UgWZDMZ/lA3M
         Gzf6s8avBo8F+KhC4tWmlcR1fcdbk8pejGUcf6P7u1zewWrxNJm0eT/IcKYB3CzC3m
         YbijRpYY3EX1Hpdg/0JuRttCckoT35GHIz+XW/6c8/V6X9kQDOpAVWaAxsORdG+88I
         Uab9dWsxn5OyQ==
Received: by mail-ed1-f70.google.com with SMTP id r8-20020aa7d588000000b00416438ed9a2so2941929edq.11
        for <devicetree@vger.kernel.org>; Mon, 07 Mar 2022 13:55:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=e/a3LsTPoxxLtAF8uZkD6Lck1aYDoQwFHcagHpP5FUc=;
        b=LBQrXN0B7kH36xvaOy7vW6sv0DsIRDP07UZnLQ0AnCSv9r7qBU4FFuM8Dg6EUSbiYy
         GykHuqyY766ID9wBfwBRiIOQD4PAZw0G1fp8ZVZi0gvdIpUJurM6i/4r1jhsEgcxU6fJ
         4ZwsqIyk235+qpmwBFY65gIl0klvMji1uJnt4tExfukuLaI3DAcPEflpG37UKpWQudLY
         V9wYkuC3co9vSLmeW/+OBvqjZ/EToXH4Vsujh78gYn0ktkEPTxTmJEKEkdP+pRMeXY2Z
         7d4gDmZH1SgZ9pfcOZkTT/KAYlWglMhzQ660tqaJGS71yAZQ+8vkLHjyM6Kdk4cNVeYm
         ixZw==
X-Gm-Message-State: AOAM530OkdeaVJrb61AfZX9aye9AdLGcCZzrAg9aTgUh0H9aFmYh3alW
        PbhCRh6FWH7N+OtRQobiJd+rR9ybWogt3dApyUNF11qdS5zxGCb2r71c9Crt+oWmzYkPwiGXsP6
        8LvlxSgivkRLQlKoc8di/72Me9WLm1fwhuSZ9kMY=
X-Received: by 2002:a05:6402:26d0:b0:413:bfbc:8343 with SMTP id x16-20020a05640226d000b00413bfbc8343mr13226013edd.211.1646690154295;
        Mon, 07 Mar 2022 13:55:54 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxIl7YmUUB4rrWfFJ6tLlWUaTVYbuGX4POj6RExTxSHUR0UKHGyWEEoBhH7U7EqB5BknB5l9g==
X-Received: by 2002:a05:6402:26d0:b0:413:bfbc:8343 with SMTP id x16-20020a05640226d000b00413bfbc8343mr13225995edd.211.1646690154082;
        Mon, 07 Mar 2022 13:55:54 -0800 (PST)
Received: from [192.168.0.143] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id k18-20020a50ce52000000b0040f75ad0e60sm6898823edj.83.2022.03.07.13.55.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Mar 2022 13:55:53 -0800 (PST)
Message-ID: <f157651b-07c7-43ee-372a-81bd5d615d5d@canonical.com>
Date:   Mon, 7 Mar 2022 22:55:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 1/2] dt-bindings: spi: Update clocks property for ARM
 pl022
Content-Language: en-US
To:     Kuldeep Singh <singh.kuldeep87k@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        linux-arm-kernel@lists.infradead.org, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Linus Walleij <linus.walleij@linaro.org>
References: <20220307203745.65210-1-singh.kuldeep87k@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220307203745.65210-1-singh.kuldeep87k@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/03/2022 21:37, Kuldeep Singh wrote:
> Add missing minItems property to clocks in ARM pl022 bindings.
> 
> This helps in resolving below warnings:
> clocks: [[4]] is too short
> clock-names: ['apb_pclk'] is too short
> 
> Signed-off-by: Kuldeep Singh <singh.kuldeep87k@gmail.com>
> ---
>  Documentation/devicetree/bindings/spi/spi-pl022.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

I saw these series in the past... please do not send the same version again.

You need to version your series (git format-patch -v2 -2) and add
changelog in cover letter (or for small patches after '---' in commits).

How did you resolve the comments that the DTS might be wrong? It looks
like you simply resent it...


Best regards,
Krzysztof
