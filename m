Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 594675122C1
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 21:30:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231933AbiD0TdR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 15:33:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232679AbiD0Tcy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 15:32:54 -0400
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCB89B4A
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 12:29:22 -0700 (PDT)
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-e2fa360f6dso3055398fac.2
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 12:29:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Y54JJJRAFUg83cYjLhKfKDeEAsFlCqj5+zdDlyIzWwA=;
        b=YO6XeCgUGRb6mwxCDvTFaZwfiKCj1zyD9KrqentSawmUfPogOAoGM9jdeVM0iBGL9h
         Llq7VglLBiGISyDBLjiHaAstr/xwY90bdAN/KOE8o/DMBJpfFT9liZU48cwps74XZbR5
         rirh0fqiNEisSCQBurE+fHEdzSOQqxRkt1w7DtkEei2MX0cCuwvcwtW5XyXUNtwx+MFh
         qRJkB0b4MLfdQ6TduMG/Ld8bqaJWhmarQKDvHYBmBJUpvRXA/9SDRkntrppM2R64N3pt
         20nNpBRgq+BfBuh7oOgwvzR+QjS8BYDzU5fJ6N/8PNcRVrfeLDnjjOpsOErM+lr6xAVv
         +Eiw==
X-Gm-Message-State: AOAM531eow85FEVx3q9a/kFDqUeyf8Jvavz6Sum43oswYFEwh9h8cCy2
        NDInlAB0+sBc0GAkK3DDMBMoNPlmlA==
X-Google-Smtp-Source: ABdhPJzdwZ/OhNkMLSKn5a+ncpKWRmrzCjogPekK5AxVVBvf/Yp5i4oYGAXh5MY3RluVY8DMDqAyEw==
X-Received: by 2002:a05:6871:79b:b0:d3:4039:7e7c with SMTP id o27-20020a056871079b00b000d340397e7cmr16635088oap.121.1651087762103;
        Wed, 27 Apr 2022 12:29:22 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id l8-20020a056808020800b0032575bca0e5sm1158909oie.46.2022.04.27.12.29.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Apr 2022 12:29:21 -0700 (PDT)
Received: (nullmailer pid 525198 invoked by uid 1000);
        Wed, 27 Apr 2022 19:29:20 -0000
Date:   Wed, 27 Apr 2022 14:29:20 -0500
From:   Rob Herring <robh@kernel.org>
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Will Deacon <will@kernel.org>
Subject: Re: [PATCH 00/11] dt-bindings: convert various Arm Ltd. IP to DT
 schema
Message-ID: <YmmZkAvzRx+uhxo1@robh.at.kernel.org>
References: <20220427112528.4097815-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220427112528.4097815-1-andre.przywara@arm.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 27, 2022 at 12:25:17PM +0100, Andre Przywara wrote:
> Hi,
> 
> in an effort to get the FVP DTs to pass the automated DT bindings checks,
> this series collects some DT schema binding conversions for various
> Arm Ltd. IP devices.
> This is mostly for old IP, but it's still used by the FVP, for which we
> have a DT in the tree.
> 
> Please have a look!
> 
> Cheers,
> Andre
> 
> Andre Przywara (11):
>   dt-bindings: iommu: arm,smmu-v3: make PRI IRQ optional
>   dt-bindings: arm: spe-pmu: convert to DT schema
>   dt-bindings: arm: sp810: convert to DT schema
>   dt-bindings: sound: add Arm PL041 AACI DT schema
>   dt-bindings: serio: add Arm PL050 DT schema
>   dt-bindings: arm: convert vexpress-sysregs to DT schema
>   dt-bindings: arm: convert vexpress-config to DT schema
>   dt-bindings: display: convert PL110/PL111 to DT schema
>   dt-bindings: display: convert Arm HDLCD to DT schema
>   dt-bindings: display: convert Arm Mali-DP to DT schema
>   dt-bindings: display: convert Arm Komeda to DT schema
> 
>  .../devicetree/bindings/arm/sp810.txt         |  46 ---
>  .../devicetree/bindings/arm/sp810.yaml        |  82 ++++++
>  .../devicetree/bindings/arm/spe-pmu.txt       |  20 --
>  .../devicetree/bindings/arm/spe-pmu.yaml      |  40 +++
>  .../bindings/arm/vexpress-config.yaml         | 274 ++++++++++++++++++
>  .../bindings/arm/vexpress-sysreg.txt          | 103 -------
>  .../bindings/arm/vexpress-sysreg.yaml         |  89 ++++++
>  .../devicetree/bindings/display/arm,hdlcd.txt |  79 -----
>  .../bindings/display/arm,hdlcd.yaml           |  91 ++++++
>  .../bindings/display/arm,komeda.txt           |  78 -----
>  .../bindings/display/arm,komeda.yaml          | 130 +++++++++
>  .../bindings/display/arm,malidp.txt           |  68 -----
>  .../bindings/display/arm,malidp.yaml          | 117 ++++++++
>  .../devicetree/bindings/display/arm,pl11x.txt | 110 -------
>  .../bindings/display/arm,pl11x.yaml           | 174 +++++++++++
>  .../bindings/iommu/arm,smmu-v3.yaml           |  21 +-
>  .../devicetree/bindings/serio/amba-pl050.yaml |  67 +++++
>  .../devicetree/bindings/sound/amba-pl041.yaml |  62 ++++
>  18 files changed, 1142 insertions(+), 509 deletions(-)

>  delete mode 100644 Documentation/devicetree/bindings/arm/sp810.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/sp810.yaml
>  delete mode 100644 Documentation/devicetree/bindings/arm/spe-pmu.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/spe-pmu.yaml

This should be moved to bindings/perf/. I guess arm/pmu.yaml should be 
too.

>  create mode 100644 Documentation/devicetree/bindings/arm/vexpress-config.yaml
>  delete mode 100644 Documentation/devicetree/bindings/arm/vexpress-sysreg.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/vexpress-sysreg.yaml

>  create mode 100644 Documentation/devicetree/bindings/serio/amba-pl050.yaml
>  create mode 100644 Documentation/devicetree/bindings/sound/amba-pl041.yaml

Please use the compatible string as the file name where there's a 
single compatible. Maybe not SPE though. Minimally, use the vendor 
prefix in the file name ('arm,'). 

Rob
