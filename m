Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A716731139B
	for <lists+devicetree@lfdr.de>; Fri,  5 Feb 2021 22:33:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229537AbhBEVdI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Feb 2021 16:33:08 -0500
Received: from mail-oo1-f50.google.com ([209.85.161.50]:33243 "EHLO
        mail-oo1-f50.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232917AbhBEVcV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Feb 2021 16:32:21 -0500
Received: by mail-oo1-f50.google.com with SMTP id u7so1999894ooq.0
        for <devicetree@vger.kernel.org>; Fri, 05 Feb 2021 13:32:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=51yMkEGX5IS1Ajpcy4ttPstNBwB1noi6PUvzP4p9kZM=;
        b=s1wETLku3NPF72zXpM82lmigiSHDNMtbU9/tBDfkLNbk3hFP4GTCviY4yESGteBXmp
         qAAtsIgTyd7OIsjx/tIi/cqZmeOD2hF5au9lo1RnN5F3Wjh5bLADtTyLss4vSxz22DEQ
         p3lJ5r6CtNc/wEyctHT/34M5H7CHT8CnXHC3rcbPS5dQdy085ibZfkBwbJr3LiUj4sh4
         iyaKbMBpg6DCLSkFuSFBOgVHfkf65/hih5sEH4TiqNeoZ3g7ukXdY2P2ICyioKxGLmgq
         uM/eS91HtmDt8NcuCQZbmV9l+nvb9Pwb2UrBHqfagF+JjDdkaLOU2sNJ2kvvorSUZ586
         1v0w==
X-Gm-Message-State: AOAM532WhswsKYP21Qc0q9qHE23B6nETN0EH6nd3KA2xsRhQVN42usl7
        EgsU/UPKbgdpeWGxq+6hKA==
X-Google-Smtp-Source: ABdhPJwARWPCShOnAAQiNyWPIzvQa48JBNir8z43ORo9IjaIWHeK4CPbEVN6ZK6jgChUa0NRGo0xdQ==
X-Received: by 2002:a4a:e9f2:: with SMTP id w18mr4983914ooc.88.1612560701290;
        Fri, 05 Feb 2021 13:31:41 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id y22sm2041130oot.7.2021.02.05.13.31.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Feb 2021 13:31:39 -0800 (PST)
Received: (nullmailer pid 3782753 invoked by uid 1000);
        Fri, 05 Feb 2021 21:31:38 -0000
Date:   Fri, 5 Feb 2021 15:31:38 -0600
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Rajeev Huralikoppi <rajeev.huralikoppi@silvaco.com>,
        Conor Culhane <conor.culhane@silvaco.com>,
        Nicolas Pitre <nico@fluxnic.net>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        linux-i3c@lists.infradead.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v5 1/6] dt-bindings: i3c: Convert the bus description to
 yaml
Message-ID: <20210205213138.GA3782695@robh.at.kernel.org>
References: <20210121101808.14654-1-miquel.raynal@bootlin.com>
 <20210121101808.14654-2-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210121101808.14654-2-miquel.raynal@bootlin.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 21 Jan 2021 11:18:03 +0100, Miquel Raynal wrote:
> Attempting a conversion of the i3c.txt file to yaml schema with
> minimal content changes.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  Documentation/devicetree/bindings/i3c/i3c.txt | 140 --------------
>  .../devicetree/bindings/i3c/i3c.yaml          | 179 ++++++++++++++++++
>  2 files changed, 179 insertions(+), 140 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/i3c/i3c.txt
>  create mode 100644 Documentation/devicetree/bindings/i3c/i3c.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
