Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 00903274D6F
	for <lists+devicetree@lfdr.de>; Wed, 23 Sep 2020 01:41:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726880AbgIVXlP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Sep 2020 19:41:15 -0400
Received: from mail-il1-f195.google.com ([209.85.166.195]:46998 "EHLO
        mail-il1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726641AbgIVXlP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Sep 2020 19:41:15 -0400
Received: by mail-il1-f195.google.com with SMTP id l16so5597387ilt.13
        for <devicetree@vger.kernel.org>; Tue, 22 Sep 2020 16:41:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=OfW/V2Pzyweuv8wjRYUAt6/Pisui3bUjTLWjBwZTA44=;
        b=p7yvVGizsTPllcaG0e8OtdN7Kro69td2PSVlrrhUQouL9aUUNhFGbfJSdll3FWyJYT
         7H0jE6IktOLox1S9ecrxERQFkuqy1kS2gYF9/h+yMEoNuWmKDZXahd9G5oa0rhI/UNsy
         0Yko9FvsMj+f1m/b4EJd8fFEO64y/cP43VCO6jImlzdXnT+vsp8UU2OO3Z4rVX1r/KhI
         8Au14QhGGEHyQwbzCY+9F7vOG6UeNIRAnF59obUYKu4CJqpjBMwflo6w3xy1x25Z+wFb
         uVV68wPkdQO66qBZEXFAt4iap88lnBFx3VDnRAKKPF61EgNwGNzSJkgr5SRwD/RvdKZV
         1nrg==
X-Gm-Message-State: AOAM5307DPbgUL+jBD9pgs5X41dAdh+8pub55jChHRE3aSrUwxf6Bby9
        x+FVQeRv1iQ5RyChwD/qAw==
X-Google-Smtp-Source: ABdhPJzY0eQPg02BnGT1qnrHY/cLG0w7vMZozWoDJC+aG29SNSzQqPjyuAnr5IcXIp32RUr2oiQ3bA==
X-Received: by 2002:a05:6e02:ea2:: with SMTP id u2mr6246279ilj.95.1600818074652;
        Tue, 22 Sep 2020 16:41:14 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
        by smtp.gmail.com with ESMTPSA id 64sm10093431ilv.0.2020.09.22.16.41.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2020 16:41:14 -0700 (PDT)
Received: (nullmailer pid 3488762 invoked by uid 1000);
        Tue, 22 Sep 2020 23:41:12 -0000
Date:   Tue, 22 Sep 2020 17:41:12 -0600
From:   Rob Herring <robh@kernel.org>
To:     Lokesh Vutla <lokeshvutla@ti.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Nishanth Menon <nm@ti.com>, Sekhar Nori <nsekhar@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Tero Kristo <t-kristo@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v4 2/5] dt-bindings: arm: ti: Convert K3 board/soc
 bindings to DT schema
Message-ID: <20200922234112.GA3488699@bogus>
References: <20200914162231.2535-1-lokeshvutla@ti.com>
 <20200914162231.2535-3-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200914162231.2535-3-lokeshvutla@ti.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 14 Sep 2020 21:52:28 +0530, Lokesh Vutla wrote:
> Convert TI K3 Board/SoC bindings to DT schema format.
> 
> Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> ---
>  .../devicetree/bindings/arm/ti/k3.txt         | 26 ----------------
>  .../devicetree/bindings/arm/ti/k3.yaml        | 31 +++++++++++++++++++
>  MAINTAINERS                                   |  2 +-
>  3 files changed, 32 insertions(+), 27 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/ti/k3.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/ti/k3.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
