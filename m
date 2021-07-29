Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AAA803DAF4D
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 00:41:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229788AbhG2Wlf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Jul 2021 18:41:35 -0400
Received: from mail-io1-f43.google.com ([209.85.166.43]:38726 "EHLO
        mail-io1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229749AbhG2Wle (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Jul 2021 18:41:34 -0400
Received: by mail-io1-f43.google.com with SMTP id a13so9130496iol.5
        for <devicetree@vger.kernel.org>; Thu, 29 Jul 2021 15:41:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=WkvptdP4ZcimNkvHrMYZcU+rNGa1aP/R/c6MK8kSK7M=;
        b=lL8KrkVNUiTjH21ZCskqv2rhvM8TDn7xC4J3kZQI8hnEVt2JJW7QQwfsHuJ3n71k+W
         AK3Za1i8sHK/S/AVXgqaqbUpXdC3vbstJ24NI0c9GMOpGm3kNVcI+4v1WE6ODshtS0MT
         H5llKeKa7fN0H5I1JGe2F9yTU4KQVv0cFWRSao37uKFyvhr82AFTN3z8unaonEjVIzbu
         PdNo/kHlO84yEX3WmET2iER3rh16X+k7b6x41/ZTu1AxZlpQtF4jShOKoHNa0SKWAU3Z
         73rWWGWz5XSgH8RGPkX97/WBweTHxOVEosnEtvJQRlRzI5elESEPMsqT19TqFpVmMrh4
         YwgQ==
X-Gm-Message-State: AOAM530437B3ULxcCOoHGpckFY9uKLVS55s+kJaN882C6SZhonb/RR79
        Iu+X6Djhcv5SkKpWHg6HVg==
X-Google-Smtp-Source: ABdhPJxk9sW2SOCJTA3mRTcBieXZH+YYL04W5SmwMB6L/40Htrz3ZX/vsJ0JLjph1NjL7h9n6s00tg==
X-Received: by 2002:a5e:9513:: with SMTP id r19mr5871092ioj.156.1627598490895;
        Thu, 29 Jul 2021 15:41:30 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id a20sm2565695ilk.12.2021.07.29.15.41.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jul 2021 15:41:30 -0700 (PDT)
Received: (nullmailer pid 1038057 invoked by uid 1000);
        Thu, 29 Jul 2021 22:41:28 -0000
Date:   Thu, 29 Jul 2021 16:41:28 -0600
From:   Rob Herring <robh@kernel.org>
To:     Mathew McBride <matt@traverse.com.au>
Cc:     Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 3/5] dt-bindings: vendor-prefixes: add Traverse
 Technologies
Message-ID: <YQMumLDkN1JX0YwW@robh.at.kernel.org>
References: <20210722042450.11862-1-matt@traverse.com.au>
 <20210726071216.22711-1-matt@traverse.com.au>
 <20210726071216.22711-4-matt@traverse.com.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210726071216.22711-4-matt@traverse.com.au>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 26 Jul 2021 07:12:14 +0000, Mathew McBride wrote:
> Traverse Technologies is a designer and manufacturer
> of networking appliances.
> 
> Signed-off-by: Mathew McBride <matt@traverse.com.au>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
