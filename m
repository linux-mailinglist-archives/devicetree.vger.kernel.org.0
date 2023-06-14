Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A07F9730B1D
	for <lists+devicetree@lfdr.de>; Thu, 15 Jun 2023 01:02:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234524AbjFNXCW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jun 2023 19:02:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233912AbjFNXCV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jun 2023 19:02:21 -0400
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 949B92688
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 16:02:20 -0700 (PDT)
Received: by mail-io1-f41.google.com with SMTP id ca18e2360f4ac-77797beb42dso259713939f.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 16:02:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686783740; x=1689375740;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i+oJArc8uAvSjYWuHWPF0atumRybtBa7bAhsBTMg56c=;
        b=U5RIoFrDpt6I2pF5NMJkjifBLmhBX/18/bQ+xkkm+WvME4B8a0em4Kf2J/btG8O4ak
         aCvYfA61BSSsbINFPxZBtDS2d1mOxO+RkFuKQKkO6deA+q6vYb59Rxy99yO36jCKVehk
         RQNv3UqyCABZ/ZUnJPFC4iz5ufPZ/moFIV1spwxHTOPCg21sCJwMNsE8WwtzpMI3GHZ4
         lsPeUseq+LqiqzEKv0oC1DYGO4vCkNqQQSDiFcmvAeJtMURDNbSVvNBsNC+Ej+maUlnf
         JnyRQnWyJR9C0k5TFmhGrYoQs9x9ye8bwzGV/DTjVMviwVVPmClZqHDCCkksCN0mL5oA
         JYHw==
X-Gm-Message-State: AC+VfDyjI5RRAv3NQxH3UCDtwpAMPXAXuyCgZmXtKz2Tss/hFfAm0pGU
        8u4wGi/X3oZGhf4ZDF5nYA==
X-Google-Smtp-Source: ACHHUZ727/hpgCodL36K3eU8j5Yekr14/ouFU0Ez4UR3lmvKKtDazpT2aDUicH0AkvAs2EUoL4W/ZA==
X-Received: by 2002:a92:c806:0:b0:33b:f0a0:8dea with SMTP id v6-20020a92c806000000b0033bf0a08deamr13206590iln.26.1686783739818;
        Wed, 14 Jun 2023 16:02:19 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id l12-20020a92d94c000000b00340ccdac682sm226266ilq.84.2023.06.14.16.02.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jun 2023 16:02:19 -0700 (PDT)
Received: (nullmailer pid 3026833 invoked by uid 1000);
        Wed, 14 Jun 2023 23:02:17 -0000
Date:   Wed, 14 Jun 2023 17:02:17 -0600
From:   Rob Herring <robh@kernel.org>
To:     Conor Dooley <conor@kernel.org>
Cc:     Andrew Jones <ajones@ventanamicro.com>,
        Sunil V L <sunilvl@ventanamicro.com>,
        Yangyu Chen <cyy@cyyself.name>,
        Conor Dooley <conor.dooley@microchip.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-riscv@lists.infradead.org, palmer@dabbelt.com,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Palmer Dabbelt <palmer@rivosinc.com>,
        Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH v3 6/7] dt-bindings: riscv: explicitly mention assumption
 of Zicntr & Zihpm support
Message-ID: <168678373679.3026773.4984572337017783163.robh@kernel.org>
References: <20230607-audacity-overhaul-82bb867a825f@spud>
 <20230607-rerun-retinal-5e8ba89e98f1@spud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230607-rerun-retinal-5e8ba89e98f1@spud>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Wed, 07 Jun 2023 21:28:30 +0100, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Similar to commit 41ebfc91f785 ("dt-bindings: riscv: explicitly mention
> assumption of Zicsr & Zifencei support"), the Zicntr and Zihpm
> extensions also used to be part of the base ISA but were removed after
> the bindings were merged. Document the assumption of their presence in
> the base ISA.
> 
> Suggested-by: Palmer Dabbelt <palmer@rivosinc.com>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  Documentation/devicetree/bindings/riscv/cpus.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

