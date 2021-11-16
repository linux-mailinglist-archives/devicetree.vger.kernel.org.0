Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D88145363A
	for <lists+devicetree@lfdr.de>; Tue, 16 Nov 2021 16:44:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238393AbhKPPqo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Nov 2021 10:46:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238507AbhKPPqd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Nov 2021 10:46:33 -0500
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 601CBC061207
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 07:43:35 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id b15so89472315edd.7
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 07:43:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=5aVRsL9BgtWuBmT3ahZ2vhpwBbSn39kzECaSNgBwqKw=;
        b=c6X7kn2AIS1OZtKHSE0inktLzjU5KSCa/Nb8TqkJsa/pBXkM5v+Fv/W7SlBRWYzds4
         1OzuvsxfGBXNrAwZxTi1zPS99/9Y1OYaabugz6BcFZOOEUUorUxA7SxLfFB/5BBalCNU
         K5TvJd6/5TqQUzxYnlL05T/iQvSBoJT+Jgh/IGk1avf9+lfx5qR/OlqwUSkhKJcz/V1J
         NAdvpIOtwxQqD/7L1Z1LFEJEFU198X5LZYl/P101uGbR2oOAGeZOOIKFYoDgazHnmzfq
         3A12fIy/lPG7KwUNztHd34ZiPgZKPpUCtd7iwyc5a5x2FBqFiOyYQsDizIi+BPVuXPg4
         DMfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=5aVRsL9BgtWuBmT3ahZ2vhpwBbSn39kzECaSNgBwqKw=;
        b=uaTuBHPrzMSlkHhko3rSiltQRtgXe8VY7qlfT17lTC0yi6on8CG1RcCOMxUlNz/mnW
         7m2ATt4rEx9DbxQ5Fa9831gTQSnJ4KkwH/NoMcAWD3RagD97F4Dl3GZmKS3c53zeGfr0
         e1819cAOgoLLTYY8xULPX9Z0rSKYG8oWkb+6Lb0UMUD7k/jas1KKAdGwe4yl9YxtbGSo
         jeyQ4CJpDaskkDNPqk3nFz9Cgma7Qkeow8Nfbh4gBr3UAyQCC7J0YcCz/hdzyqYFNZZf
         gKHWWbi74hSFXCpkGwAZRP2qO1428pCo7E0w8wI5cXxeXi7DAvkqK/YbkBJxMFnDI5DZ
         +7Mw==
X-Gm-Message-State: AOAM5320yKrEuVuRCpBE3a7aotlcFYlWAGHJo9aAfW8AzQp3GK+Ifsou
        hq0S0E8iH8UOOjkoClc8JKQM3A==
X-Google-Smtp-Source: ABdhPJwi9H2HaoW1lVB301nRq/HD7R3uM+Gy4F0+t0NQ+v3dJyqfgmfCwqm49KVqXUeLazSns2evNA==
X-Received: by 2002:a50:e683:: with SMTP id z3mr11614453edm.206.1637077413955;
        Tue, 16 Nov 2021 07:43:33 -0800 (PST)
Received: from myrica (cpc92880-cmbg19-2-0-cust679.5-4.cable.virginm.net. [82.27.106.168])
        by smtp.gmail.com with ESMTPSA id hd18sm8603095ejc.84.2021.11.16.07.43.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Nov 2021 07:43:33 -0800 (PST)
Date:   Tue, 16 Nov 2021 15:43:12 +0000
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     uchida.jun@socionext.com, iommu@lists.linux-foundation.org,
        jkchen@linux.alibaba.com, devicetree@vger.kernel.org,
        will@kernel.org, linux-arm-kernel@lists.infradead.org,
        robh+dt@kernel.org, joro@8bytes.org, mark.rutland@arm.com,
        robin.murphy@arm.com, leo.yan@linaro.org
Subject: Re: [PATCH 1/2] dt-bindings: Add Arm SMMUv3 PMCG binding
Message-ID: <YZPRkOii110K6dr2@myrica>
References: <20211116113536.69758-1-jean-philippe@linaro.org>
 <20211116113536.69758-2-jean-philippe@linaro.org>
 <1637071373.514426.3444644.nullmailer@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1637071373.514426.3444644.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 16, 2021 at 08:02:53AM -0600, Rob Herring wrote:
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> ./Documentation/devicetree/bindings/iommu/arm,smmu-v3-pmcg.yaml:24:9: [warning] wrong indentation: expected 10 but found 8 (indentation)
> ./Documentation/devicetree/bindings/iommu/arm,smmu-v3-pmcg.yaml:25:11: [warning] wrong indentation: expected 12 but found 10 (indentation)
> 
> dtschema/dtc warnings/errors:
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/iommu/arm,smmu-v3-pmcg.example.dt.yaml: example-0: pmu@2b420000:reg:0: [0, 725745664, 0, 4096] is too long
> 	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/reg.yaml
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/iommu/arm,smmu-v3-pmcg.example.dt.yaml: example-0: pmu@2b420000:reg:1: [0, 725811200, 0, 4096] is too long
> 	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/reg.yaml
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/iommu/arm,smmu-v3-pmcg.example.dt.yaml: example-0: pmu@2b440000:reg:0: [0, 725876736, 0, 4096] is too long
> 	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/reg.yaml
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/iommu/arm,smmu-v3-pmcg.example.dt.yaml: example-0: pmu@2b440000:reg:1: [0, 725942272, 0, 4096] is too long
> 	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/reg.yaml
> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.ozlabs.org/patch/1555758
> 
> This check can fail if there are any dependencies. The base for a patch
> series is generally the most recent rc1.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit.

Right I'll fix those, I had only run dtbs_check

Thanks,
Jean

