Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 515B43670DD
	for <lists+devicetree@lfdr.de>; Wed, 21 Apr 2021 19:05:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240322AbhDURFr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Apr 2021 13:05:47 -0400
Received: from mail-ot1-f46.google.com ([209.85.210.46]:42562 "EHLO
        mail-ot1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234291AbhDURFr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Apr 2021 13:05:47 -0400
Received: by mail-ot1-f46.google.com with SMTP id y14-20020a056830208eb02902a1c9fa4c64so3059457otq.9
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 10:05:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=8FXKniw8jHOTahM/pwMH/P6A02dlxXcwmF/jIM5RqeA=;
        b=Itfnl+BL/WytscgrQ7qGh1ZK5eR044z9E9D5ehTT1EZOsyjHuk+qO+5MZDl8DwV1Kk
         3/3BkOniAcLQz8u65jjWucOxVjqt4F0o/PA8R06RA+3PDRI5NKgnFXRpSdcTgSW1J1v+
         mqR/PtNca0H/FjCJSg+wG34sfxQa+cQ7a59UbwLCa6b1lVkCLfrMq1SOb84Nx2JfQ0RR
         k5ey5YLh7lP44BlJGt3Z7ZbWSVJaGxiQoDQpEyLzhBBQGwbMGLiMEGCKRdrqjxTUpoZo
         RimGfaTpPtqqHjrM59mr4216PRcjXzpNZ4GoY4U3AXImq1D33woZliibFxO4Z/nKVjGI
         OHaQ==
X-Gm-Message-State: AOAM530d3rYsnBfDZNTcHDciI4xlKCBgsTA6ZJW40Y9+IQjA+8xBXxSo
        6zNiMIkDqamYlFCFuOKsww==
X-Google-Smtp-Source: ABdhPJzzucGM3FgxeYjJT19A18C4RGp+yiS9lYimDHaT+KnSAYKGvVLYHSUZvZFtvFirzQHOyETmVQ==
X-Received: by 2002:a9d:5c87:: with SMTP id a7mr6928563oti.292.1619024712567;
        Wed, 21 Apr 2021 10:05:12 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id a6sm563809oiw.44.2021.04.21.10.05.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Apr 2021 10:05:11 -0700 (PDT)
Received: (nullmailer pid 1299462 invoked by uid 1000);
        Wed, 21 Apr 2021 17:05:09 -0000
Date:   Wed, 21 Apr 2021 12:05:09 -0500
From:   Rob Herring <robh@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Kamal Dasu <kdasu.kdev@gmail.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        linux-mtd@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com,
        Richard Weinberger <richard@nod.at>,
        Brian Norris <computersforpeace@gmail.com>
Subject: Re: [PATCH V3] dt-bindings: mtd: brcm,brcmnand: convert to the
 json-schema
Message-ID: <20210421170509.GA1299408@robh.at.kernel.org>
References: <20210416195432.24595-1-zajec5@gmail.com>
 <20210420212008.13174-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210420212008.13174-1-zajec5@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 20 Apr 2021 23:20:08 +0200, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This helps validating DTS files.
> 
> Changes that require mentioning:
> 1. Property "clock" was renamed to "clocks"
> 2. Duplicated properties (defined in nand-controller.yaml) were dropped
> 3. Compatible "brcm,nand-bcm63168" was added
> 4. SoC specific "compatible" cases got limited controller versions
> 
> Examples changes:
> 1. Nodes "nand" were renamed to "nand-controller"
> 2. Nodes "nandcs" were renamed to "nand"
> 3. Dropped partitions as they were using old syntax and are well
>    documented elsewhere anyway
> 
> This rewritten binding validates cleanly using the "dt_binding_check".
> Some Linux stored DTS files will require updating to make "dtbs_check"
> happy.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
> V2: Drop example partitions that were using deprecated syntax-thanks Rob
> V3: "SoC specific "compatible" cases got limited controller versions"
>     Thanks Rob for teaching me the items: enum [] trick (no "-")
> ---
>  .../devicetree/bindings/mtd/brcm,brcmnand.txt | 186 --------------
>  .../bindings/mtd/brcm,brcmnand.yaml           | 242 ++++++++++++++++++
>  2 files changed, 242 insertions(+), 186 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt
>  create mode 100644 Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
