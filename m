Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9477727D67D
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 21:10:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728276AbgI2TK2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Sep 2020 15:10:28 -0400
Received: from mail-oi1-f195.google.com ([209.85.167.195]:42175 "EHLO
        mail-oi1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728166AbgI2TK2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Sep 2020 15:10:28 -0400
Received: by mail-oi1-f195.google.com with SMTP id x14so6670558oic.9
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 12:10:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=cxjVSznZfD5H5D7jNFeaCK/3LXiy41wXF6wkmxY3ifY=;
        b=G9c1IoD4k28eBp7pcUhnmWQuxm4N0SqqA6a/uJJAW8z3BVB1I2x23umlVf52TFRvKs
         m+nibaSnpIbZIVnkBRq4zWwMgh4sJcK9kGmesACPTQVf9iGrzusy8UrYeHcZi1WjYLrj
         En9QaAuF4urkEj9udXSGQov8kWOwVpdqCDpIxToyS1rmrsJnacY+6bu/Sb3nJnXnvdJQ
         XAM89T85lOXBT1qITcfqaDZ/XLBNisiqZBiqRcTW7GZQrI5Yrq57QIuzDTPcEQw47rlk
         RojJL2Spu1Kmv0HDXSQXsqmTZ45H5+YpNqq9Nk2wXgpEDgTJQAfVfBwtpAQWilTx1cKh
         QSxw==
X-Gm-Message-State: AOAM5332TE4D07d5jkFf4DHGO4eAwPXqLZ3AJ3ewnw1ZKkluNEN/HkxY
        Jj0P6rKFU7V+S1VhYdP1WQ==
X-Google-Smtp-Source: ABdhPJwm4edm0GRNxj84lz3qtUqOpChCjn3yeTsuleYTjV+KFKKFz8rW/ZkLc41LHtC/hzaaQc0erw==
X-Received: by 2002:a05:6808:183:: with SMTP id w3mr3565180oic.176.1601406627731;
        Tue, 29 Sep 2020 12:10:27 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id y24sm3140448ooq.38.2020.09.29.12.10.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2020 12:10:27 -0700 (PDT)
Received: (nullmailer pid 983690 invoked by uid 1000);
        Tue, 29 Sep 2020 19:10:26 -0000
Date:   Tue, 29 Sep 2020 14:10:26 -0500
From:   Rob Herring <robh@kernel.org>
To:     Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Cc:     Aditya Prayoga <aditya@kobol.io>,
        linux-rockchip@lists.infradead.org,
        Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: vendor-prefixes: Add kobol prefix
Message-ID: <20200929191026.GA983622@bogus>
References: <20200925214003.27186-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200925214003.27186-1-uwe@kleine-koenig.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 25 Sep 2020 23:40:02 +0200, Uwe Kleine-König wrote:
> The prefix is already used in arm/armada-388-helios4.dts.
> 
> Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
