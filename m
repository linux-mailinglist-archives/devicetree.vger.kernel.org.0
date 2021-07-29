Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AA8353DAF50
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 00:45:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229749AbhG2Wpt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Jul 2021 18:45:49 -0400
Received: from mail-io1-f53.google.com ([209.85.166.53]:42914 "EHLO
        mail-io1-f53.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229891AbhG2Wpt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Jul 2021 18:45:49 -0400
Received: by mail-io1-f53.google.com with SMTP id h1so9104228iol.9
        for <devicetree@vger.kernel.org>; Thu, 29 Jul 2021 15:45:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=3BXxrhEGe+Rbqpb7WaDz36d8Kkxif5Rn6zf3mxZdC7E=;
        b=HDPyIjws7HileE1npY7osIBvbDL7xHahYwoSPhUSJ6X3uXtgSSXoXkil+nw1dRX7YT
         uE0fZ3gyYOhL0lZrj2+pI8eQrEuyKDVbbs8uQkR2c5IUGcJn0l2BEsnK4KUGlUqRn6by
         KhyABxquIVA1ydLsAYMdtL7sTFf7kZf12Y4AN8zwjx5SJDaEaWSI9tmnW4rPFA42JKsF
         gP2i3jTUISJz1oDjoTgVR43CSlsumjhJySsh+5/YW3GBflIuAPfSRjfr03Yct7k5tQPO
         DuPFRpMPHSvAVgaSZM3qTNsdxrM1Mbm0by7UdLrAh+NklEde1cILNFioqs7sWLhlSU2Y
         2n2Q==
X-Gm-Message-State: AOAM531omOBQ1ykcNRAdtgU5KaHg9KaqhhRa1lpraKsh3sTU8YpJRroa
        5XRW0e4QVIeYzncPmKddhA==
X-Google-Smtp-Source: ABdhPJz9jRxjczOdLZpfwBPpRuY++mHuYN6+T4gLNFK/HirWXB5Y7rDfWQXbZdtVTSGTbxGKda0kTw==
X-Received: by 2002:a5d:974f:: with SMTP id c15mr5705399ioo.190.1627598744304;
        Thu, 29 Jul 2021 15:45:44 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id h6sm2797645ilo.0.2021.07.29.15.45.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jul 2021 15:45:43 -0700 (PDT)
Received: (nullmailer pid 1044671 invoked by uid 1000);
        Thu, 29 Jul 2021 22:45:41 -0000
Date:   Thu, 29 Jul 2021 16:45:41 -0600
From:   Rob Herring <robh@kernel.org>
To:     Mathew McBride <matt@traverse.com.au>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH v2 4/5] dt-bindings: arm: fsl: Add Traverse Ten64
 (LS1088A) board
Message-ID: <YQMvlful9OrC8nUq@robh.at.kernel.org>
References: <20210722042450.11862-1-matt@traverse.com.au>
 <20210726071216.22711-1-matt@traverse.com.au>
 <20210726071216.22711-5-matt@traverse.com.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210726071216.22711-5-matt@traverse.com.au>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 26 Jul 2021 07:12:15 +0000, Mathew McBride wrote:
> Document the compatible for the Ten64 board which will
> be included as freescale/fsl-ls1088a-ten64.dtb in arm64.
> 
> Signed-off-by: Mathew McBride <matt@traverse.com.au>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
