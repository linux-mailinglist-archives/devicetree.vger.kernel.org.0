Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E3EF38BC1C
	for <lists+devicetree@lfdr.de>; Fri, 21 May 2021 03:58:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238121AbhEUB7q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 May 2021 21:59:46 -0400
Received: from mail-oi1-f174.google.com ([209.85.167.174]:44616 "EHLO
        mail-oi1-f174.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238017AbhEUB7q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 May 2021 21:59:46 -0400
Received: by mail-oi1-f174.google.com with SMTP id d21so18247803oic.11
        for <devicetree@vger.kernel.org>; Thu, 20 May 2021 18:58:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=UvcU4EeUaIjV+Ny7V91j+mXar+CTc1dWe9HkTz10n94=;
        b=e4sL97/RA5T5W6gMqeQTtw5ySUqHUD4uWdTJbNwFZ+zXNP17gCjlxUZPb6TVrlFzWU
         tWMs2IwHXhQa8cyJ2tJr3saRSC+CPjIThJZpifv5KR5R7IBGq6EAcwD9O60JwyFwr+f+
         g2jOG1nGMt2modLm/7/DTeAVRNAevQ8LT5Ra2qo1IFEVUGPy+1ACn+QLxQf3CeGmigMO
         2CahVnJ0vZ53vh2iR7oIkllUJnNs4ls4KvtOVGR6WaEKneydftbpmXsVYUCrWv39RpWI
         oe7PERk8O7S9TEJyAQBUhznBVXeSqVqSj08sVZtIVpO/wBj/V9LUfmhOZ8f0B6bcphVM
         1w3Q==
X-Gm-Message-State: AOAM533y7V1m7BeXUzg0FycZuMWQPnk2cdZT8YhdzE1BEMnmYV8WJRoC
        jzp/QW58jwEAsmXH+LdUhw==
X-Google-Smtp-Source: ABdhPJyh2Y2kbzs7se4ZbLfeXy4GL9pyfcBP9KvUd+7br3OFbQ8gORAMzZAnc0R/8RK4ctVbaMrGGA==
X-Received: by 2002:aca:4a8b:: with SMTP id x133mr338546oia.124.1621562303797;
        Thu, 20 May 2021 18:58:23 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id f13sm1061181ote.46.2021.05.20.18.58.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 May 2021 18:58:23 -0700 (PDT)
Received: (nullmailer pid 2495659 invoked by uid 1000);
        Fri, 21 May 2021 01:58:22 -0000
Date:   Thu, 20 May 2021 20:58:22 -0500
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Amit Kumar Mahapatra <akumarma@xilinx.com>,
        Helmut Grohne <helmut.grohne@intenta.de>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        Srinivas Goud <sgoud@xilinx.com>,
        Siva Durga Prasad Paladugu <sivadur@xilinx.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Michal Simek <monstr@monstr.eu>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v20 05/19] dt-binding: memory: pl353-smc: Fix the example
 syntax and style
Message-ID: <20210521015822.GA2495628@robh.at.kernel.org>
References: <20210519182636.1110080-1-miquel.raynal@bootlin.com>
 <20210519182636.1110080-6-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210519182636.1110080-6-miquel.raynal@bootlin.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 19 May 2021 20:26:22 +0200, Miquel Raynal wrote:
> Enhance the spacing, the comment style, add { }, remove (...).
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../bindings/memory-controllers/pl353-smc.txt | 48 ++++++++++---------
>  1 file changed, 25 insertions(+), 23 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
