Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2274C286348
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 18:10:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729078AbgJGQKw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Oct 2020 12:10:52 -0400
Received: from mail-oi1-f194.google.com ([209.85.167.194]:46132 "EHLO
        mail-oi1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729077AbgJGQKw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Oct 2020 12:10:52 -0400
Received: by mail-oi1-f194.google.com with SMTP id u126so2949208oif.13
        for <devicetree@vger.kernel.org>; Wed, 07 Oct 2020 09:10:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ZkCd5Q5XOHcrBSfd6zLOVdSfEGMnLJVVIVPuFDNL510=;
        b=MAJwldQmY4th/tMbYTH7HbYSUbQrdk0psg67lVuV7SP2rWlIeYKVvxc19cSY2ShYbS
         ACn7mRl7qknncYGplhYZpoNrRr78OByxJ+wV8IIGXH8jtDMKbJmFL3n8wyAun7HpcPmy
         is8hxKEat8k8J2eVXWz55U14Nv4w0esODW+FBc3K9K+vdZSegDxQpduu0GXvGz6psh9F
         YZ9HF+lKFmSGKjJ+/j4ijKqYhOnhWSqXtLvISE/Z7HITTpTJp44IhB0+K1cxniwt0PDF
         X1fxme97oXZ+myvnPB8Wcu+O2ggOQveSwRZgBQ/Tg+Rl/mp+mJsveyt4c7CIqPgfZpew
         5E2Q==
X-Gm-Message-State: AOAM5324jjlhBT9pGIl6LiBg+t1gRL5kIB7bKaskxHKlSvqkgsh88yW8
        2yp8FyXQfgoUpT7jE0tL9w==
X-Google-Smtp-Source: ABdhPJyjkRPs4xy2spgsyCtiEqS1nACQms6ltOUdskLg9lF43urFx4m4Tsoe5c2QgX8V8PZFQHIYSw==
X-Received: by 2002:aca:f203:: with SMTP id q3mr2260757oih.148.1602087051424;
        Wed, 07 Oct 2020 09:10:51 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id w125sm2200399oiw.30.2020.10.07.09.10.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Oct 2020 09:10:50 -0700 (PDT)
Received: (nullmailer pid 312561 invoked by uid 1000);
        Wed, 07 Oct 2020 16:10:50 -0000
Date:   Wed, 7 Oct 2020 11:10:50 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     linux-imx@nxp.com, festevam@gmail.com, devicetree@vger.kernel.org,
        robh+dt@kernel.org, m.podolszki@phytec.de, kernel@pengutronix.de,
        shawnguo@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: add Phytec Nunki boards
Message-ID: <20201007161050.GA312523@bogus>
References: <20201007133037.25315-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201007133037.25315-1-m.felsch@pengutronix.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 07 Oct 2020 15:30:36 +0200, Marco Felsch wrote:
> Add bindings for the Phytec PhyBOARD-Nunki evalboards.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> Hi,
> 
> I copied the imx6q-phytec-nunki-rdk-nand.dts and
> imx6qdl-phytec-nunki.dtsi from the phytec downstream kernel repo and
> added support for the imx6qp-phytec-nunki-rdk-nand.dts.
> 
> @Phytec
> I adapted the "phytec,imx6q-pbac11-nand" to "phytec,imx6qp-pbac11-nand"
> and "phytec,imx6q-pbac11" to "phytec,imx6qp-pbac11". Can you verify that
> since I have no knowledge about the internal naming scheme, thanks.
> 
> Regards,
>   Marco
> 
>  Documentation/devicetree/bindings/arm/fsl.yaml | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
