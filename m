Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 701F82F81AB
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 18:10:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727808AbhAORJS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 12:09:18 -0500
Received: from mail-oi1-f169.google.com ([209.85.167.169]:44885 "EHLO
        mail-oi1-f169.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726502AbhAORJS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 12:09:18 -0500
Received: by mail-oi1-f169.google.com with SMTP id d189so10211000oig.11
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 09:09:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=I1zMiJOzPgt68+XQo1G8LgtoKQu5KZI6RnBXilOvELA=;
        b=k8a64i4FX/15CGM2PGx8AGx9ulKCeD9YeaiQIlZN/wguJAHUoOPOhHWl0CRYt4sKKH
         MOP9yLMcIJ17PRj9iJz3AOJx4kKE6HEe8h49XYFgoTja0s9tNU0kD/DvYzJlAQ9yf3lq
         W+flbkej34HDpEEe+S4FtV9PdpRPq5R6S2W3C5yJUAKTUcNBJ238OatUGV/pU4YsbLGt
         +3FNW1UdmSHxUVjx8fk3oD0u8gOGRdRg90OK53J9P8D5NIDFVFFfYmVh/5TQTa/LN5hJ
         Olmyby+t5QPUk8A+fkmvgu7zOxIhRqmA34SNtOiMRWnbNx8mWkM5Gn/4PN0ZRJUhsoB3
         iLUw==
X-Gm-Message-State: AOAM530KenSHRJcGltWx+g3IcsXWk9zOV+HK+3D4T52Y8wT6PXIJ5AZr
        cAGRE0Mu0MU6wvrkhERcHQ==
X-Google-Smtp-Source: ABdhPJyEtxYLccSqTOSgP1cW60xmFwgrK5gyZfqxjvQJTJ4mJzRdGU/EFumF8frbpsBWGBe6HEYLIw==
X-Received: by 2002:aca:1201:: with SMTP id 1mr6215448ois.90.1610730517080;
        Fri, 15 Jan 2021 09:08:37 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id a22sm1903256otr.75.2021.01.15.09.08.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jan 2021 09:08:36 -0800 (PST)
Received: (nullmailer pid 1461760 invoked by uid 1000);
        Fri, 15 Jan 2021 17:08:35 -0000
Date:   Fri, 15 Jan 2021 11:08:35 -0600
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     linux-i3c@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Conor Culhane <conor.culhane@silvaco.com>,
        Nicolas Pitre <nico@fluxnic.net>,
        Rajeev Huralikoppi <rajeev.huralikoppi@silvaco.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v4 4/6] dt-bindings: i3c: Describe Silvaco master binding
Message-ID: <20210115170835.GA1461726@robh.at.kernel.org>
References: <20210114175558.17097-1-miquel.raynal@bootlin.com>
 <20210114175558.17097-5-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210114175558.17097-5-miquel.raynal@bootlin.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 14 Jan 2021 18:55:56 +0100, Miquel Raynal wrote:
> Silvaco provide a dual-role I3C master.
> 
> Description is rather simple: it needs a register mapping, three
> clocks and an interrupt.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../bindings/i3c/silvaco,i3c-master.yaml      | 60 +++++++++++++++++++
>  1 file changed, 60 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/i3c/silvaco,i3c-master.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
