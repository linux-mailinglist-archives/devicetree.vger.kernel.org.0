Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C2D1945338F
	for <lists+devicetree@lfdr.de>; Tue, 16 Nov 2021 15:03:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237116AbhKPOGL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Nov 2021 09:06:11 -0500
Received: from mail-oo1-f51.google.com ([209.85.161.51]:34412 "EHLO
        mail-oo1-f51.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236984AbhKPOF5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Nov 2021 09:05:57 -0500
Received: by mail-oo1-f51.google.com with SMTP id b31-20020a4a98e2000000b002bce352296cso7235579ooj.1
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 06:03:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=aRxOvxuYhfSjyyWHzEXHeQoimCcPflvJ9I7H8ssvLL8=;
        b=Uisxgxqvn/4MNwDr5hKv5Zy67nzMbn8vBI56JrRxcE52AKHMFpgim5Vq+8423B5qFO
         e32vsOu7SFxFGM9gPc6uMFJKEHtGVyAiOhcgXW4ywL/3breGhQRtfqNf1NKt3AmthIQI
         adfZ1pNj48foNgxSDoB+Ucaknrv1txcd/jYdBEZOVmb5e9n77D6/lkEc68kYGQ3a/fqp
         N89r9S750I7NSIE7SN/ib6CGsd13HKLiJJA+afRfXdpTt0/cGTVvA5auNVINJDblKb1V
         JMKDgFQU0OnZj2e66UmJkbkhqxWVQSYedcoM6VVl78ja1/2U1T0mlGsfigRkE3ejeYBk
         5l7A==
X-Gm-Message-State: AOAM530X5y67YQ+1sWwZ1VDs/FCyVrUgxbOE2lVcradusYSeLKMgYOFt
        CWqPSAZVg2MExvUfuExSXA==
X-Google-Smtp-Source: ABdhPJyZgLhINqHQgKbvpIWeu7RfnoRggYC8kVxIjFnwsU5FGCNQJWnfPucnXss8XrvmGzjMmuFQew==
X-Received: by 2002:a4a:d00a:: with SMTP id h10mr3888859oor.60.1637071380162;
        Tue, 16 Nov 2021 06:03:00 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id v19sm3627393ott.13.2021.11.16.06.02.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Nov 2021 06:02:59 -0800 (PST)
Received: (nullmailer pid 3444645 invoked by uid 1000);
        Tue, 16 Nov 2021 14:02:53 -0000
From:   Rob Herring <robh@kernel.org>
To:     Jean-Philippe Brucker <jean-philippe@linaro.org>
Cc:     uchida.jun@socionext.com, iommu@lists.linux-foundation.org,
        jkchen@linux.alibaba.com, devicetree@vger.kernel.org,
        will@kernel.org, linux-arm-kernel@lists.infradead.org,
        robh+dt@kernel.org, joro@8bytes.org, mark.rutland@arm.com,
        robin.murphy@arm.com, leo.yan@linaro.org
In-Reply-To: <20211116113536.69758-2-jean-philippe@linaro.org>
References: <20211116113536.69758-1-jean-philippe@linaro.org> <20211116113536.69758-2-jean-philippe@linaro.org>
Subject: Re: [PATCH 1/2] dt-bindings: Add Arm SMMUv3 PMCG binding
Date:   Tue, 16 Nov 2021 08:02:53 -0600
Message-Id: <1637071373.514426.3444644.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 16 Nov 2021 11:35:36 +0000, Jean-Philippe Brucker wrote:
> Add binding for the Arm SMMUv3 PMU. Each node represents a PMCG, and is
> placed as a sibling node of the SMMU. Although the PMCGs registers may
> be within the SMMU MMIO region, they are separate devices, and there can
> be multiple PMCG devices for each SMMU (for example one for the TCU and
> one for each TBU).
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  .../bindings/iommu/arm,smmu-v3-pmcg.yaml      | 67 +++++++++++++++++++
>  1 file changed, 67 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iommu/arm,smmu-v3-pmcg.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/iommu/arm,smmu-v3-pmcg.yaml:24:9: [warning] wrong indentation: expected 10 but found 8 (indentation)
./Documentation/devicetree/bindings/iommu/arm,smmu-v3-pmcg.yaml:25:11: [warning] wrong indentation: expected 12 but found 10 (indentation)

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/iommu/arm,smmu-v3-pmcg.example.dt.yaml: example-0: pmu@2b420000:reg:0: [0, 725745664, 0, 4096] is too long
	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/reg.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/iommu/arm,smmu-v3-pmcg.example.dt.yaml: example-0: pmu@2b420000:reg:1: [0, 725811200, 0, 4096] is too long
	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/reg.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/iommu/arm,smmu-v3-pmcg.example.dt.yaml: example-0: pmu@2b440000:reg:0: [0, 725876736, 0, 4096] is too long
	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/reg.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/iommu/arm,smmu-v3-pmcg.example.dt.yaml: example-0: pmu@2b440000:reg:1: [0, 725942272, 0, 4096] is too long
	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/reg.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1555758

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

