Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB9785109ED
	for <lists+devicetree@lfdr.de>; Tue, 26 Apr 2022 22:12:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354735AbiDZUP3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Apr 2022 16:15:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354791AbiDZUPX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Apr 2022 16:15:23 -0400
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F778188060
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 13:12:06 -0700 (PDT)
Received: by mail-oi1-f179.google.com with SMTP id a10so21932126oif.9
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 13:12:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=zf/FJrgcWaKnbhEyzrN4beJp4PeyDCaP1eq9pJ0Plhg=;
        b=1G9NzxGt6vI4/xJz26eo+LfyXNlmhfT7j9qdA5OWMP6frAGvoQXPNGyk58aTJ1hZIN
         roR0fFi07OwXlWn6i5prBDEDtltVeAERlzptm50SDCr16uiJbLEytcxdCQkgTOPXv0ZO
         qQuvunCUMArLlLFM4dpHFFGca5e0Rc8/GTk7NDHeaLE/e8UNcpIfG7wMo6UeoUw9bsnf
         cgdtm8KTjOuG8KdzV6hcJlr0gR3ZvKfKHbYz3vN3GR2Brcr+dJyfFQUhcLacpRmcUPPd
         KVYgitdtGKpf0STD41wRjw/kgXAPSCjXR4PBYXbV07uxVga19Ss3atnneJc1ohLwu8xW
         lL7Q==
X-Gm-Message-State: AOAM530e2BzxbJGy4IPzhUQaCxmtdaX0iMSfGHlcrevFHEu4K5erD1jy
        UM3muwBn33jlG7pVkuQHoQ==
X-Google-Smtp-Source: ABdhPJw9x96z6HkNiq9vI0d4v8C2uVW6u6mIqj482niSiY37rQUlwA8ARFZpbyt28gza5FvDfQ4o7Q==
X-Received: by 2002:a05:6808:170d:b0:2f7:338b:1fc2 with SMTP id bc13-20020a056808170d00b002f7338b1fc2mr11555896oib.60.1651003925607;
        Tue, 26 Apr 2022 13:12:05 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id o13-20020a4ae58d000000b00324dfcc5bcfsm6082281oov.12.2022.04.26.13.12.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Apr 2022 13:12:05 -0700 (PDT)
Received: (nullmailer pid 2458919 invoked by uid 1000);
        Tue, 26 Apr 2022 20:12:04 -0000
Date:   Tue, 26 Apr 2022 15:12:04 -0500
From:   Rob Herring <robh@kernel.org>
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     will@kernel.org, linux-arm-kernel@lists.infradead.org,
        mark.rutland@arm.com, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: perf: arm-cmn: Add CMN-650 and CMN-700
Message-ID: <YmhSFO2fJ4cwPeUl@robh.at.kernel.org>
References: <cover.1650320598.git.robin.murphy@arm.com>
 <9b4dc0c82c91adff62b6f92eec5f61fb25b9db87.1650320598.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9b4dc0c82c91adff62b6f92eec5f61fb25b9db87.1650320598.git.robin.murphy@arm.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 18 Apr 2022 23:57:38 +0100, Robin Murphy wrote:
> If you were to guess from the product names that CMN-650 and CMN-700 are
> the next two evolutionary steps of Arm's enterprise-level interconnect
> following on from CMN-600, you'd be pleasantly correct. Add them to the
> DT binding.
> 
> CC: devicetree@vger.kernel.org
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  Documentation/devicetree/bindings/perf/arm,cmn.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
