Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D1C612D52A5
	for <lists+devicetree@lfdr.de>; Thu, 10 Dec 2020 05:13:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732532AbgLJEKf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Dec 2020 23:10:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731818AbgLJEKc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Dec 2020 23:10:32 -0500
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com [IPv6:2607:f8b0:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A70D5C061793
        for <devicetree@vger.kernel.org>; Wed,  9 Dec 2020 20:09:51 -0800 (PST)
Received: by mail-pf1-x442.google.com with SMTP id q22so2792735pfk.12
        for <devicetree@vger.kernel.org>; Wed, 09 Dec 2020 20:09:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=xcTIK9EuU/nUrywQ42KgiTpojaNUUcCg7lCxBZYe+ro=;
        b=fnU7LyieLQoXRkcIpEG2TC3KGf26P25XUm6Aa6vvnyslUXabLXMqgRcSSk0q+a2ihy
         +Pzl5zOd0BFQiyuVETdHmIMeGm/KkS1MnMfWFVtHcse2QmqwFWUzMWzTUKj5D5x7ENBo
         GrN1HC56GzpnHhGR/+rRgD2jz/0h+izZOjbrfUV87HG130n2pspoymgRfrvWTKjj7Hrx
         xzCZCMUGrCDnGGF/kVXtirv9w3I2QAHMZLTaOlVABbsMKRaj4wkgzhVQCvFoj76/1oN3
         uPnbvD2PN+w42/aVF2V1qL+kvSYOu3ullENf5LsTKM5WAKwKjF1Axdgd7iHzUaAU79m5
         Z9jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=xcTIK9EuU/nUrywQ42KgiTpojaNUUcCg7lCxBZYe+ro=;
        b=uQ4b9BtK1CMFxvHf5e9txarPXQTI8t+6/BSpClyudHIs5AMq4P3Fe52u8aMO3AWyVr
         rqz0wnmaYQuBShORxRwMU4OuZ5KISiYHeMExilIczBhbJNXAr415DkpSZMA2GwFaZImc
         24p9X9SVB3DlehM4K5u8aEqwngKXKW3xcn4kFB0gofxy/DYe5vVA0C4GpAegJ6bqFqFX
         DI6IH+FNlTVeGweItYBq7HO79GFGhswhQoF4JHKgKr4w2rXdncTv5XPr8/5Wada8rf+u
         qekFZR6AhQTD/h+fHhJPYJ4vWDwEJ7WZu+nacD1fZhRq34JB8G41jcw1IF2KPzre34l+
         EBXA==
X-Gm-Message-State: AOAM531lKJZPT0sbgB7SMIB2Kie90yNK25QThmWUzL4hcWqEboa1ZOGi
        JICpeKlyoTSGOcxrmAs0fnDY
X-Google-Smtp-Source: ABdhPJx79zoeXoS4V9GMiwip0g7YFZBRf2fkNcpngbFSVvFH5NMQ3Dqxbn0fdY79tWGZS1R4YEeA9Q==
X-Received: by 2002:a17:90a:d790:: with SMTP id z16mr5493949pju.88.1607573391179;
        Wed, 09 Dec 2020 20:09:51 -0800 (PST)
Received: from thinkpad ([103.59.133.81])
        by smtp.gmail.com with ESMTPSA id f29sm4587205pfk.32.2020.12.09.20.09.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Dec 2020 20:09:50 -0800 (PST)
Date:   Thu, 10 Dec 2020 09:39:42 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org
Cc:     bjorn.andersson@linaro.org, linux-mtd@lists.infradead.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/4] Add support for Qcom SMEM based NAND parser
Message-ID: <20201210040942.GD6466@thinkpad>
References: <20201119071308.9292-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201119071308.9292-1-manivannan.sadhasivam@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Nov 19, 2020 at 12:43:04PM +0530, Manivannan Sadhasivam wrote:
> Hello,
> 
> This series adds support for parsing the partitions defined in Shared
> Memory (SMEM) of the Qualcomm platforms supporting NAND interface.
> Current parser only supports V3 and V4 of the partition tables.
> 
> This series has been tested on SDX55 MTP board which has an onboard NAND
> device.
> 

Any update on this series?

Thanks,
Mani

> Thanks,
> Mani
> 
> Changes in v3:
> 
> * Handled le32 parameters in parser, collected review from Linus W.
> 
> Changes in v2:
> 
> * Added additionalProperties: false and removed unit address in binding
> 
> Manivannan Sadhasivam (4):
>   dt-bindings: mtd: partitions: Add binding for Qcom SMEM parser
>   mtd: parsers: Add Qcom SMEM parser
>   mtd: rawnand: qcom: Add support for Qcom SMEM parser
>   mtd: parsers: afs: Fix freeing the part name memory in failure
> 
>  .../mtd/partitions/qcom,smem-part.yaml        |  33 ++++
>  drivers/mtd/nand/raw/qcom_nandc.c             |   4 +-
>  drivers/mtd/parsers/Kconfig                   |   8 +
>  drivers/mtd/parsers/Makefile                  |   1 +
>  drivers/mtd/parsers/afs.c                     |   4 +-
>  drivers/mtd/parsers/qcomsmempart.c            | 170 ++++++++++++++++++
>  6 files changed, 216 insertions(+), 4 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mtd/partitions/qcom,smem-part.yaml
>  create mode 100644 drivers/mtd/parsers/qcomsmempart.c
> 
> -- 
> 2.17.1
> 
