Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8143D4CFC41
	for <lists+devicetree@lfdr.de>; Mon,  7 Mar 2022 12:07:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234259AbiCGLI1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 06:08:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241746AbiCGLHy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 06:07:54 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30F3AB1AA9
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 02:29:09 -0800 (PST)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 6E2323F5F9
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 10:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646648914;
        bh=n4LldnGelhoblkd1zTeAcrQUBsJGtchc+UnMsYoKCgg=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=LvrHybSk+9Npw4GvcsX63AebRCSrJLA/K8IcCJ/gqoj+BSMzGBtDxBdEgGgHBCZQf
         gOc4qmG/iv8hgjRDBF7dztVEeIIDkOJ10Sy+rwdfAtDv7bwUxotAuAscSwqRsMo1Xc
         OKqmz8tl5qghqCen9+dB17K2WfHGDmJtcf+/tmv5fma/4PufSvCWV3WbOfrwjHElBz
         rIA7LDLoIyZtjcGITlgK23EApYx0XDTPlD8/S58b/IZ5AsxYHN84WkUHqMVROeRJwy
         6pk5CcJGaql09pr93OIFAy3Xsr0s4yL29RVgmLtRWBGJcnpafD7ylWnlPhYQYCgG7k
         xKKYgdUNtXUow==
Received: by mail-ej1-f70.google.com with SMTP id go11-20020a1709070d8b00b006cf0d933739so6776940ejc.5
        for <devicetree@vger.kernel.org>; Mon, 07 Mar 2022 02:28:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=n4LldnGelhoblkd1zTeAcrQUBsJGtchc+UnMsYoKCgg=;
        b=qLbY25TTqjPfUQAx9XXFwutDi6zjTeClgqs4Z0tzU6rZPBeFpJGiuZJqLaQQaKIRxa
         A+egJ1WR2O50SfQ33cLccBrJShTBAzj2WfnwtYV7sCGEyJ4Pxidd1scM9KKjeA1UPjCJ
         OX0xFaC5hG1ktA3Lx2jeoJdWqMxjnxLCqRGwi5IWNRAz3NiYi/b6oqqsjxRJVzygBxUB
         JPGXbK+yTgBaNEXX0sXwyM4LtFX4bNZ2kfDkmQE3jNt69KlOXQZaNM6z9eZTZ00vlvxj
         eI4hakHaeMEHNFoXxv8JZ0fJXyP36Ef9HaftHVd/lIowp9I7HzSES/6+CkytS3HlZDUz
         AbqQ==
X-Gm-Message-State: AOAM530t7G8VEekE6/vO0jkOx6NPB0rYtiEtXQUdGLXcxERN/ty7fYI5
        +tjL2ja/Dhh3I4jZfXpKxBpJ7h5g1fOwVnID1hgMm1aP0IRNmAoi3fiQBwk1YCyVOK1BV8D87L8
        cpkUFInUUOmGsret3QkSd5UQJR88QFZ7uRB0pvug=
X-Received: by 2002:a17:907:7815:b0:6ce:5242:1280 with SMTP id la21-20020a170907781500b006ce52421280mr8358573ejc.217.1646648914048;
        Mon, 07 Mar 2022 02:28:34 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwgVGHw806iLNc31AIobcdf7SovFCeUFaY2HECf3Fa28ex2JcevW04haDjZiWoqSaBkFMAV0Q==
X-Received: by 2002:a17:907:7815:b0:6ce:5242:1280 with SMTP id la21-20020a170907781500b006ce52421280mr8358545ejc.217.1646648913829;
        Mon, 07 Mar 2022 02:28:33 -0800 (PST)
Received: from [192.168.0.141] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id q9-20020a170906770900b006d20acf7e2bsm4618438ejm.200.2022.03.07.02.28.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Mar 2022 02:28:33 -0800 (PST)
Message-ID: <0b516030-cb4d-106e-57cc-06767702724e@canonical.com>
Date:   Mon, 7 Mar 2022 11:28:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v7 1/3] dt-bindings: dma-engine: sifive,fu540: Add
 dma-channels property and modify compatible
Content-Language: en-US
To:     Zong Li <zong.li@sifive.com>, robh+dt@kernel.org,
        paul.walmsley@sifive.com, palmer@dabbelt.com,
        aou@eecs.berkeley.edu, conor.dooley@microchip.com,
        geert@linux-m68k.org, bin.meng@windriver.com, green.wan@sifive.com,
        vkoul@kernel.org, dmaengine@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org
Cc:     Palmer Dabbelt <palmer@rivosinc.com>, Rob Herring <robh@kernel.org>
References: <cover.1646631717.git.zong.li@sifive.com>
 <1e75ad35b7d1fb6156781bf9c545e1f084c43a1e.1646631717.git.zong.li@sifive.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <1e75ad35b7d1fb6156781bf9c545e1f084c43a1e.1646631717.git.zong.li@sifive.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/03/2022 06:44, Zong Li wrote:
> Add dma-channels property, then we can determine how many channels there
> by device tree, rather than statically defining it in PDMA driver.
> In addition, we also modify the compatible for PDMA versioning scheme.
> 
> Signed-off-by: Zong Li <zong.li@sifive.com>
> Suggested-by: Palmer Dabbelt <palmer@rivosinc.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Palmer Dabbelt <palmer@rivosinc.com>
> Acked-by: Palmer Dabbelt <palmer@rivosinc.com>
> ---
>  .../bindings/dma/sifive,fu540-c000-pdma.yaml  | 19 +++++++++++++++++--
>  1 file changed, 17 insertions(+), 2 deletions(-)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
