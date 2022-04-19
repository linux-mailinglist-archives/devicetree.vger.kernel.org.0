Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B321350786A
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 20:26:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357118AbiDSSZi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 14:25:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1357037AbiDSSWi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 14:22:38 -0400
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BDE11F630
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 11:15:07 -0700 (PDT)
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-e5e8523fcbso6844038fac.10
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 11:15:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=0f5ESvk5no91Evc+VlvCmzhRMl9OaSk9/2vAcz9fKzU=;
        b=0g3HGwTxi+KjxPkQ4Na97P54CU9U+y0xPV5bpViKcGGUJl5vaO6v4sEHI27SG3LDGa
         nI7PGxX8ikoyIQDA1O6sdTqyRLKN6MZKUrmd3IbkLN1Rs+OsMJkwow7hEcUMwcw6DpuG
         w3TeZuvDQmnc4MmJ0K3JR8oY/uM5Gr9cJz9cQquVuiKr4sn+jcK/J3omkcNe/cQWNU/i
         3BER0ekfCU4jSFkQDOqFIhWpTQ5fFTrsyBABT+JpcDSslem2uvF7MM8gDEAHybLYGbcC
         edAJsMjCatEtZ3ETnUHEu5uxtqfBSiRuCNRiXg3ePFm1vcHTcIah+p0F1avWtHK7Hq3J
         kJMg==
X-Gm-Message-State: AOAM533gsRbb+F/4y2ndOeorx0YouXcgWg/8swlXnQZCMNzzeFlbgA3c
        +oUKOzPteBiZ8ai18PZOmA==
X-Google-Smtp-Source: ABdhPJx2f2P2BP0Gu7JNPZo5Y3Y1oiwvqFlWJ5xIXkYbqjgRJvbsWsN4AozuJdoJQCM/Km1ZXLDIXw==
X-Received: by 2002:a05:6870:51c9:b0:da:b3f:2b75 with SMTP id b9-20020a05687051c900b000da0b3f2b75mr9133260oaj.276.1650392106357;
        Tue, 19 Apr 2022 11:15:06 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id j5-20020a4a9445000000b00329dab1a07fsm5694911ooi.17.2022.04.19.11.15.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Apr 2022 11:15:05 -0700 (PDT)
Received: (nullmailer pid 3086196 invoked by uid 1000);
        Tue, 19 Apr 2022 18:15:05 -0000
Date:   Tue, 19 Apr 2022 13:15:05 -0500
From:   Rob Herring <robh@kernel.org>
To:     Niklas Cassel <niklas.cassel@wdc.com>
Cc:     Albert Ou <aou@eecs.berkeley.edu>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        devicetree@vger.kernel.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        linux-riscv@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH] dt-bindings: riscv: Add mmu-type riscv,sv57
Message-ID: <Yl78KUfJcu40U5Fj@robh.at.kernel.org>
References: <20220414151639.1359969-1-niklas.cassel@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220414151639.1359969-1-niklas.cassel@wdc.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 14 Apr 2022 17:16:38 +0200, Niklas Cassel wrote:
> sv57 is defined in the RISC-V Privileged Specification document.
> 
> Additionally, commit 011f09d12052 ("riscv: mm: Set sv57 on defaultly")
> changed the default MMU mode to sv57, if supported by current hardware.
> 
> Add riscv,sv57 to the list of valid mmu-type values.
> 
> Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
> ---
>  Documentation/devicetree/bindings/riscv/cpus.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
