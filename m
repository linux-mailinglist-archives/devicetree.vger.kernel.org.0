Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 715A83D1C08
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 04:47:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230161AbhGVCHF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 22:07:05 -0400
Received: from mail-io1-f41.google.com ([209.85.166.41]:33379 "EHLO
        mail-io1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229932AbhGVCHF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 22:07:05 -0400
Received: by mail-io1-f41.google.com with SMTP id z11so4771216iow.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 19:47:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=19xXfJQXm0JE6pCPywd8DImQjl4TXD+UhDpduWAAkDA=;
        b=pRxVX/BAbsWqfkwIvzRJsy28eWTsWHOGhGfile4nNxttdpIUlsUcjO/3200qqJVyy5
         GKLiqhb08X1+TJy0IooS61pQ4UYWitTT1Kubq/YGz/FySyBEbGgspF/lvE/j5le57FLr
         GRhH5TJNPlH+Db6EYIerqvvpPoCBHEX2AZmCcakE49KOJORQdbpAjKw+J/PipYLGJJE7
         tQ3qNNsA7osQk3hfFOzL0c065RxD0DHGRsyiyGG6fFaBGV7FKsJvWADLkrglryWlB0Py
         KmDtXUyoRIWAnlWc8bJ+P3fv5Z1nYZ1BAemdzFDH3LEHZ0Z+YvMGKDpOOZnyDjXAa4ES
         Q5WA==
X-Gm-Message-State: AOAM531ycdwIksRFZb9kAbATvLSU4bMnAwNk1VwghtSIUj1tQ0ELkQVX
        ZCfDPkcvUCITLhRMW2H1KQ==
X-Google-Smtp-Source: ABdhPJwp+5JCc4hxmPbsSw+E/7eMbEfIVYY8LIrpFeJLLDPP06nwccmiyPtOr2D7LGewgtLkxR4JdQ==
X-Received: by 2002:a02:7a50:: with SMTP id z16mr32799050jad.139.1626922059858;
        Wed, 21 Jul 2021 19:47:39 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id a1sm6440643ilp.1.2021.07.21.19.47.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jul 2021 19:47:39 -0700 (PDT)
Received: (nullmailer pid 3198455 invoked by uid 1000);
        Thu, 22 Jul 2021 02:47:35 -0000
Date:   Wed, 21 Jul 2021 20:47:35 -0600
From:   Rob Herring <robh@kernel.org>
To:     Dong Aisheng <aisheng.dong@nxp.com>
Cc:     Li Jun <jun.li@nxp.com>, robh+dt@kernel.org,
        devicetree@vger.kernel.org, shawnguo@kernel.org,
        linux-phy@lists.infradead.org, dongas86@gmail.com,
        linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
        Vinod Koul <vkoul@kernel.org>, kernel@pengutronix.de,
        Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH 4/7] dt-bindings: phy: imx8mq-usb-phy: convert to json
 schema
Message-ID: <20210722024735.GA3198403@robh.at.kernel.org>
References: <20210715082536.1882077-1-aisheng.dong@nxp.com>
 <20210715082536.1882077-5-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210715082536.1882077-5-aisheng.dong@nxp.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 15 Jul 2021 16:25:33 +0800, Dong Aisheng wrote:
> Convert to jason schema.
> 
> Cc: Kishon Vijay Abraham I <kishon@ti.com>
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Li Jun <jun.li@nxp.com>
> Cc: linux-phy@lists.infradead.org
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
>  .../bindings/phy/fsl,imx8mq-usb-phy.txt       | 20 -------
>  .../bindings/phy/fsl,imx8mq-usb-phy.yaml      | 53 +++++++++++++++++++
>  2 files changed, 53 insertions(+), 20 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
