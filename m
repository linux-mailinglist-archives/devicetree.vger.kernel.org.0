Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 47A5D2D6EA9
	for <lists+devicetree@lfdr.de>; Fri, 11 Dec 2020 04:34:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2395128AbgLKDc4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Dec 2020 22:32:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732919AbgLKDce (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Dec 2020 22:32:34 -0500
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com [IPv6:2607:f8b0:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DE9BC061793
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 19:31:48 -0800 (PST)
Received: by mail-pg1-x542.google.com with SMTP id w4so6188301pgg.13
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 19:31:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=y91nmoJ33/DVuxYypisPMf8rbIWy+AIDH8dAhBZDQ1w=;
        b=y0Z8hdWuCcPWIHLD8nGhmLjl6sgFkiiAFpbnABd9ffPeWvaMhXWC0lWy8trhgt50dA
         DDTlwlH4cox4K8dcvzh01RT0bobVAiT/PCmyBMD66caOcSZU8R92/MQzTUyBSfAW/P9s
         b/MCI+0Et5/G+5amGgv9s0VThc8NllwSn0Pya3Ox6q/9QuZHFUzfibQXEglI7tmjlcKd
         eerpJEoIoI2pcENH65KJm30+qVK0DAJgjOTA1CmCmz/E+mipY63Ek5OMjMY5sE94Cl5l
         HVvz2fb0MmZkaOMc8O3vY/yl+jTOLTFxx5J1uamQ/cIKMc3/Eoo0MDAoeLC+4MH9vA1a
         TtqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=y91nmoJ33/DVuxYypisPMf8rbIWy+AIDH8dAhBZDQ1w=;
        b=sFB18dncOn7l/r++V8VpwwcPURp8p85Y+HwkzzPYGQr8JYVI/DVVPRsHLmTiwP7PT3
         URW3vgBLAxQTSYzLyIW9hcCoz6/W+QhIFE4fsK4nmgTAVl9r2unNLFQ4iN7wbZraMlzs
         bzM6Wai5NrAgq0YVyO7EGnjIXie68CmPGQokHgbhsKbltGpewbaXvUV5glhvH+4Wreq+
         Ei9yGtuj3RxIZczoCelWHzsq6v8U4+e7XZ4HNlxlYWXe9yGFDDxNvYvmO93sGOHbS/yw
         cDHLrGa+mRq3Am97JoLL4aogD1U6ir73f1B3K0GNuPwaVeoVAgqSKO2M2SA7VAgnFYy9
         WA7g==
X-Gm-Message-State: AOAM531NMuvMBOCp0XayWoai/r0/yxO98Yqq6P6ZYDG13TAY8HXfNP6t
        Dd7RUV1TthtVSBfFEhIzpXqF
X-Google-Smtp-Source: ABdhPJwmYGB3znEkW5I/5BDEVH4lhxpW/+DkHztLxFxfiyIPh59HV8+xUCkDoBKyNFuQVWgaUsWBQg==
X-Received: by 2002:a65:6253:: with SMTP id q19mr9559894pgv.412.1607657507999;
        Thu, 10 Dec 2020 19:31:47 -0800 (PST)
Received: from work ([103.59.133.81])
        by smtp.gmail.com with ESMTPSA id v19sm8455043pjg.50.2020.12.10.19.31.44
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 10 Dec 2020 19:31:46 -0800 (PST)
Date:   Fri, 11 Dec 2020 09:01:40 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        bjorn.andersson@linaro.org, linux-mtd@lists.infradead.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/4] dt-bindings: mtd: partitions: Add binding for
 Qcom SMEM parser
Message-ID: <20201211033140.GA4222@work>
References: <20201119071308.9292-1-manivannan.sadhasivam@linaro.org>
 <20201119071308.9292-2-manivannan.sadhasivam@linaro.org>
 <20201207215236.GB892840@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201207215236.GB892840@robh.at.kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 07, 2020 at 03:52:36PM -0600, Rob Herring wrote:
> On Thu, Nov 19, 2020 at 12:43:05PM +0530, Manivannan Sadhasivam wrote:
> > Add YAML binding for Qualcomm Shared Memory (SMEM) Flash partition
> > parser.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  .../mtd/partitions/qcom,smem-part.yaml        | 33 +++++++++++++++++++
> >  1 file changed, 33 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/mtd/partitions/qcom,smem-part.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/mtd/partitions/qcom,smem-part.yaml b/Documentation/devicetree/bindings/mtd/partitions/qcom,smem-part.yaml
> > new file mode 100644
> > index 000000000000..cf3f8c1e035d
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mtd/partitions/qcom,smem-part.yaml
> > @@ -0,0 +1,33 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/mtd/partitions/qcom,smem-part.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Qualcomm SMEM NAND flash partition parser binding
> > +
> > +maintainers:
> > +  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > +
> > +description: |
> > +  The Qualcomm SoCs supporting the NAND controller interface features a Shared
> > +  Memory (SMEM) based partition table scheme. The maximum partitions supported
> > +  varies between partition table revisions. V3 supports maximum 16 partitions
> > +  and V4 supports 48 partitions.
> 
> V3 vs. V4 (and any other version for that matter) is discoverable?
> 

Yes, it is discoverable based on the partition header and we do that in
the parser.

Thanks,
Mani

> > +
> > +properties:
> > +  compatible:
> > +    const: qcom,smem-part
> > +
> > +required:
> > +  - compatible
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    flash {
> > +        partitions {
> > +            compatible = "qcom,smem-part";
> > +        };
> > +    };
> > -- 
> > 2.17.1
> > 
