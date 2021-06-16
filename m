Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A2CFB3AA7A4
	for <lists+devicetree@lfdr.de>; Thu, 17 Jun 2021 01:44:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232946AbhFPXqk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Jun 2021 19:46:40 -0400
Received: from mail-il1-f182.google.com ([209.85.166.182]:41710 "EHLO
        mail-il1-f182.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231389AbhFPXqh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Jun 2021 19:46:37 -0400
Received: by mail-il1-f182.google.com with SMTP id p14so3819052ilg.8
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 16:44:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=CRxe22MHvpodil+F6pLTrxy8TT0WuyD3HOAUJ0Tk4DQ=;
        b=b2pavWOScidxi+sB79zpdS6nWKaBIRj7Qp2eEZ41j9kBBjUd38A0JQ+8AOCiPSH225
         CbTsnsBsUXQQfu9IdxwywgPTqHzzsW0WslHiKq9Wtj2ARbAi6Vi+XtABiJdQpNy8ePst
         K43pRAY11O19EmhCkkpLP62teCQQJDFVsQ4TFr5V5wsMbLv44I4OCfMVlNc1a5NnO1Yu
         3ywi15wOyylvKxmKBub7kcizMhFJMCqWG3oGjkYbiLPmpoFpOANimp6+xDrrS/oCZJ/E
         Cc9+huVFZ9PeSjm/t3/zyOP1S8Cq49T+HQnUBmZMitop6HCwrTRQHtHQ46ueLM2kdMWf
         ++VQ==
X-Gm-Message-State: AOAM530eM3xgcG5R7t+yzEo83vTrUTL/GClNyoXV/vSRmb9FA5U6gMbq
        lTQkn73qT/KURD11H2J3xA==
X-Google-Smtp-Source: ABdhPJxPbFnXBXMZlzzcccA/GtxBuLfvSEmv+xIBIWBrqaLJNd5YkEcWqiJXum/YsrGwe8TAA5MUAA==
X-Received: by 2002:a05:6e02:1a6a:: with SMTP id w10mr1468619ilv.130.1623887069264;
        Wed, 16 Jun 2021 16:44:29 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id z3sm1959112ior.14.2021.06.16.16.44.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jun 2021 16:44:28 -0700 (PDT)
Received: (nullmailer pid 306557 invoked by uid 1000);
        Wed, 16 Jun 2021 23:44:27 -0000
Date:   Wed, 16 Jun 2021 17:44:27 -0600
From:   Rob Herring <robh@kernel.org>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     aisheng.dong@nxp.com, robh+dt@kernel.org, linus.walleij@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
        sboyd@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de
Subject: Re: [PATCH 04/11] dt-bindings: serial: fsl-lpuart: Add imx8ulp
 compatible string
Message-ID: <20210616234427.GA306510@robh.at.kernel.org>
References: <20210607083921.2668568-1-ping.bai@nxp.com>
 <20210607083921.2668568-5-ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210607083921.2668568-5-ping.bai@nxp.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 07 Jun 2021 16:39:14 +0800, Jacky Bai wrote:
> For i.MX8ULP, it uses two compatible strings, so Update the
> compatible string for i.MX8ULP.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> ---
>  Documentation/devicetree/bindings/serial/fsl-lpuart.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
