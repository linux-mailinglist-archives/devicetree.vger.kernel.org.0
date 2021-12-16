Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C356477DAC
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 21:33:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238115AbhLPUdU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 15:33:20 -0500
Received: from mail-ot1-f47.google.com ([209.85.210.47]:45868 "EHLO
        mail-ot1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236123AbhLPUdU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Dec 2021 15:33:20 -0500
Received: by mail-ot1-f47.google.com with SMTP id a23-20020a9d4717000000b0056c15d6d0caso292970otf.12;
        Thu, 16 Dec 2021 12:33:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=S5itqos3S2gfjHvMiUVSPUyY8C6DmM9vGehMTR77TH0=;
        b=dEibA3HgmDYeNEyua09jTlHXB1NJ0Ju281tJklH2896kKTlGL6lYCL95US5uYOf2OX
         i//oBCzMAVXeUne08ED3AmeLHHn5n8Dn9QbupUXLWCtU+GaCIFoFutu8u/tyk1WAlz5Q
         csWbqF85Gz5sAzV2uzdaZZVm4cGmyaO7iZugCkrb4TdExKZlbaF7NQ+Fk0HFXpF/PlFX
         6LWlVCcjxipRPTZeWBxDFcVHmUAejCADtz4Vcnpu9kKcjAbKde/mRBkhLmZb6x+5cM8I
         zvqlNtRPpxYF+dU7d29cc4+5eMRlSL7AThRb4A9/XE4CqSNPlHB7Ldt740XM7dkYYqnj
         mB5w==
X-Gm-Message-State: AOAM533V98qdAmG1F+x/644pSRq6iPBEPa6TQDpvCGiDKGApMaq8kBJT
        RGzH2ur24iETx56l1kSCQA==
X-Google-Smtp-Source: ABdhPJzv/FeybRcBuyyXpZYN71332lFFtLkBWCq5kBZ1LQTJ7sYXnZN9Spv0o2W5bgMJ/2Zbl5cqkw==
X-Received: by 2002:a05:6830:4d1:: with SMTP id s17mr14096885otd.246.1639686799636;
        Thu, 16 Dec 2021 12:33:19 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id q65sm622039oih.45.2021.12.16.12.33.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Dec 2021 12:33:18 -0800 (PST)
Received: (nullmailer pid 708223 invoked by uid 1000);
        Thu, 16 Dec 2021 20:33:18 -0000
Date:   Thu, 16 Dec 2021 14:33:18 -0600
From:   Rob Herring <robh@kernel.org>
To:     Tony Huang <tonyhuang.sunplus@gmail.com>
Cc:     linuxkernel@vger.kernel.org, arnd@arndb.de,
        devicetree@vger.kernel.org, dragan.cvetic@xilinx.com,
        gregkh@linuxfoundation.org, wells.lu@sunplus.com,
        robh+dt@kernel.org, tonyhuang@sunplus.com, derek.kiernan@xilinx.com
Subject: Re: [PATCH v4 1/2] dt-binding: misc: Add iop yaml file for Sunplus
 SP7021
Message-ID: <YbuijvpJvfWLQzFi@robh.at.kernel.org>
References: <cover.1639557112.git.tonyhuang.sunplus@gmail.com>
 <27a26f5ac62dfabc47b27cde2488f79bf7bd68c1.1639557112.git.tonyhuang.sunplus@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <27a26f5ac62dfabc47b27cde2488f79bf7bd68c1.1639557112.git.tonyhuang.sunplus@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 16 Dec 2021 09:38:15 +0800, Tony Huang wrote:
> Add iop yaml file for Sunplus SP7021
> 
> Signed-off-by: Tony Huang <tonyhuang.sunplus@gmail.com>
> ---
> Changes in v4:
>  - Addressed comments from Rob Herring.
> 
>  .../devicetree/bindings/misc/sunplus-iop.yaml      | 65 ++++++++++++++++++++++
>  MAINTAINERS                                        |  5 ++
>  2 files changed, 70 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/misc/sunplus-iop.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
