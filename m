Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E56E838BC1F
	for <lists+devicetree@lfdr.de>; Fri, 21 May 2021 03:58:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238072AbhEUB77 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 May 2021 21:59:59 -0400
Received: from mail-ot1-f54.google.com ([209.85.210.54]:46015 "EHLO
        mail-ot1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238017AbhEUB76 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 May 2021 21:59:58 -0400
Received: by mail-ot1-f54.google.com with SMTP id t10-20020a05683022eab0290304ed8bc759so16649531otc.12
        for <devicetree@vger.kernel.org>; Thu, 20 May 2021 18:58:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=vvC4Y8CR9bI+JUYqRL1jBowD94kwSZdRtPupkAiyU5s=;
        b=sJaz6QTTEJt2ZXLxYE3PoUxqlw2NS7VUE0KlfrZvRfriiamolMb7mRnSW4Ptcl9/yt
         yQACqawLEXRwmWzEO4L+d9ZWccgI9UAPUP3zEMq0CQGf9KZNvmxnq/0AtrTGbvRWygzI
         Jg82AqiiyzffLQY/vCXYT4x3nmWgppfgVdo+LyCuA9roYWiBv2ZLAXGp9MrAj5lpWfS7
         hlff43u2Fh5yO5ZqNJOVzzTx/oPz9Me4kti5Jq3wKZbcI2e1d1S6x8yCj9DDI9xDFM2b
         AtB7eTSPDnvtXjepjHgvldDBqGepM+cg62oY1hPFFj9S/VPsOyV1qhdIv1X3ANM93rCL
         oVsQ==
X-Gm-Message-State: AOAM531JFHqI+uVD0h0XdxIgLPB3eBIutokDf8Vh9vteeacnYMLUl8Ii
        Do5HVpBtc6BdSET5kRyu6Q==
X-Google-Smtp-Source: ABdhPJyAx6OTiaug8hpl/Ku5ud6j2Rhov9Ij5B1x90Qa5sT7b+rPzq86IuC4/9eZlCjqNDcA0pfM2g==
X-Received: by 2002:a9d:7610:: with SMTP id k16mr3917154otl.32.1621562316433;
        Thu, 20 May 2021 18:58:36 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id o18sm1018873otp.61.2021.05.20.18.58.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 May 2021 18:58:35 -0700 (PDT)
Received: (nullmailer pid 2496157 invoked by uid 1000);
        Fri, 21 May 2021 01:58:34 -0000
Date:   Thu, 20 May 2021 20:58:34 -0500
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        Amit Kumar Mahapatra <akumarma@xilinx.com>,
        Richard Weinberger <richard@nod.at>,
        devicetree@vger.kernel.org,
        Helmut Grohne <helmut.grohne@intenta.de>,
        linux-mtd@lists.infradead.org,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        Siva Durga Prasad Paladugu <sivadur@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>,
        Michal Simek <monstr@monstr.eu>,
        Srinivas Goud <sgoud@xilinx.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH v20 06/19] dt-binding: memory: pl353-smc: Drop
 unsupported nodes from the example
Message-ID: <20210521015834.GA2496096@robh.at.kernel.org>
References: <20210519182636.1110080-1-miquel.raynal@bootlin.com>
 <20210519182636.1110080-7-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210519182636.1110080-7-miquel.raynal@bootlin.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 19 May 2021 20:26:23 +0200, Miquel Raynal wrote:
> These nodes are given as examples and are not described nor used
> anywhere else. There is also no hardware of my knowledge compatible with
> these yet. If we want to be backward compatible, then we should avoid
> partially describing nodes and their content while there are no users.
> Plus, the examples are wrong (the addresses should be updated) so
> let's drop them before converting this file to yaml (only the NAND node,
> which will be fixed in the example and described somewhere else is
> kept).
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../bindings/memory-controllers/pl353-smc.txt          | 10 ----------
>  1 file changed, 10 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
