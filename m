Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 157E82D6EF9
	for <lists+devicetree@lfdr.de>; Fri, 11 Dec 2020 04:58:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2395302AbgLKD52 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Dec 2020 22:57:28 -0500
Received: from mail-oi1-f195.google.com ([209.85.167.195]:33724 "EHLO
        mail-oi1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2395252AbgLKD47 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Dec 2020 22:56:59 -0500
Received: by mail-oi1-f195.google.com with SMTP id d27so8426303oic.0
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 19:56:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=KNePDxDoWxSGS5qvG1IL1wSOTEdhCnUyMwQIX6YT+T4=;
        b=h/s+ytiO+L7vtHsplW6l/ImeBfUelTzCSKaSHXENJxOwCN7NTrfqvJkfD3jOZTKVLV
         LLtwrsz1JbGuDvWvFB9hw9IbWp8oUD2Kz2kSF/A0Xcyrc1ArNlhhMQ/8qClAUVznMsUi
         wRYd+1a89M3qdvNnqGMaiq6FOGLrknNl61D3ECLLC0CgcN9g3TXxCiqM9BeKaqjGDOer
         wXX2CMSDkacte/1H6fZMecgJcsxMO5gmT3TvXHdVb8szU6qgUW+3ZKP+0r963BdNlbnh
         OZO7M1/UgikBSxzB0lDXe1QXtiFV/4U+EwxiPjfcxtazc6BPjiQyJ83wGekQPRllUd9s
         YBhw==
X-Gm-Message-State: AOAM532FucbGpwELkvT13lKP0aPHnYURhp7SolLN4wCmCjcLN1dqh+wc
        hBOtf8P8w6n3CVhYrW0/dQ==
X-Google-Smtp-Source: ABdhPJweXtVgZup/C5S5WujLl2ghdY7LcCNznXHswkSiBMJamznjD2SEJessyWCiSjvy/DXRYbLwfg==
X-Received: by 2002:a05:6808:28a:: with SMTP id z10mr8159629oic.174.1607658978760;
        Thu, 10 Dec 2020 19:56:18 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id r12sm1515438ooo.25.2020.12.10.19.56.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 19:56:17 -0800 (PST)
Received: (nullmailer pid 3616192 invoked by uid 1000);
        Fri, 11 Dec 2020 03:56:16 -0000
Date:   Thu, 10 Dec 2020 21:56:16 -0600
From:   Rob Herring <robh@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Vignesh Raghavendra <vigneshr@ti.com>, devicetree@vger.kernel.org,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Richard Weinberger <richard@nod.at>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>, linux-mtd@lists.infradead.org
Subject: Re: [PATCH V2] dt-bindings: mtd: convert "fixed-partitions" to the
 json-schema
Message-ID: <20201211035616.GA3616113@robh.at.kernel.org>
References: <20201210172352.31632-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201210172352.31632-1-zajec5@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 10 Dec 2020 18:23:52 +0100, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This standardizes its documentation, allows validating with Makefile
> checks and helps writing DTS files.
> 
> Noticeable changes:
> 1. Dropped "Partitions can be represented by sub-nodes of a flash
>    device." as we also support subpartitions (don't have to be part of
>    flash device node)
> 2. Dropped "to Linux" as bindings are meant to be os agnostic.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
> V2: Add #address-cells and #size-cells
>     Move "compatible =" property up in examples
>     Add minItems to the "reg"
> ---
>  .../devicetree/bindings/mtd/partition.txt     | 131 +--------------
>  .../mtd/partitions/fixed-partitions.yaml      | 152 ++++++++++++++++++
>  2 files changed, 154 insertions(+), 129 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml
> 

Applied, thanks!
