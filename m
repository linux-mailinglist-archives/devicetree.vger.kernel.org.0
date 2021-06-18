Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC9273AD459
	for <lists+devicetree@lfdr.de>; Fri, 18 Jun 2021 23:19:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234579AbhFRVVV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Jun 2021 17:21:21 -0400
Received: from mail-ot1-f44.google.com ([209.85.210.44]:43998 "EHLO
        mail-ot1-f44.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234573AbhFRVVU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Jun 2021 17:21:20 -0400
Received: by mail-ot1-f44.google.com with SMTP id i12-20020a05683033ecb02903346fa0f74dso11034131otu.10
        for <devicetree@vger.kernel.org>; Fri, 18 Jun 2021 14:19:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=l9X3y+oTgc/s2ZKvtLg5eTECZ40y9Q5YZF/VApYDZBQ=;
        b=OoApouKj0J9vVin8xX3wnV++6QQkMIUZjG5Pr5v/e4fH5q06c1I7xtue0j7Yob+R5e
         mxIKlOVAbQoO34JE+we2F3CTo3pJe09+PlDb8dKcTSzE5DDVSUwNtlRSo2Dj4t/4dd6B
         mxC4yxl8ulah9ZJZnGM4RIb0oKI4lYU5/teThVuzlea8/m7SIDPe/VAw/XrXbWxRHTON
         U/ZUBrv/vaW8H+wI1OES9QSSGQB8coElCniiYZJRrzCCOCgrlo12/FPVjVhIFQ4rVi/W
         oDW/PcoTFPP1r326kTsTX7w60wkALfu9U0/W/5nchcFPdWTLZEdfIm9Ba+35gmKFeip/
         jPEw==
X-Gm-Message-State: AOAM533CC7U42yOhOhlBYMx+tJ9pU+f+lZf2iT4aSDcus0mk3Ij8SXpH
        6n6N+96C/xDZI47nOD6xag==
X-Google-Smtp-Source: ABdhPJzmhQMJ0CZuK+9aZ2YQsXhrGQtK/6F7eadkW7wgdNpSwDHyCtr4t3BoZWIZ5CFVWk+qHiDeiQ==
X-Received: by 2002:a05:6830:90c:: with SMTP id v12mr10672467ott.7.1624051150835;
        Fri, 18 Jun 2021 14:19:10 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id h7sm2368212ots.44.2021.06.18.14.19.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jun 2021 14:19:09 -0700 (PDT)
Received: (nullmailer pid 2927088 invoked by uid 1000);
        Fri, 18 Jun 2021 21:19:08 -0000
Date:   Fri, 18 Jun 2021 15:19:08 -0600
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     linux-mtd@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        "Ryan J . Barnett" <ryan.barnett@collins.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        devicetree@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>,
        Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH] dt-bindings: mtd: gpmc: Fix the ECC bytes vs. OOB bytes
 equation
Message-ID: <20210618211908.GA2927042@robh.at.kernel.org>
References: <20210610143945.3504781-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210610143945.3504781-1-miquel.raynal@bootlin.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 10 Jun 2021 16:39:45 +0200, Miquel Raynal wrote:
> "PAGESIZE / 512" is the number of ECC chunks.
> "ECC_BYTES" is the number of bytes needed to store a single ECC code.
> "2" is the space reserved by the bad block marker.
> 
> "2 + (PAGESIZE / 512) * ECC_BYTES" should of course be lower or equal
> than the total number of OOB bytes, otherwise it won't fit.
> 
> Fix the equation by substituting s/>=/<=/.
> 
> Suggested-by: Ryan J. Barnett <ryan.barnett@collins.com>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  Documentation/devicetree/bindings/mtd/gpmc-nand.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
