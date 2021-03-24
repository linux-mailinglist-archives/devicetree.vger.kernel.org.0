Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CA218347D53
	for <lists+devicetree@lfdr.de>; Wed, 24 Mar 2021 17:11:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230174AbhCXQKs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Mar 2021 12:10:48 -0400
Received: from mail-il1-f173.google.com ([209.85.166.173]:45683 "EHLO
        mail-il1-f173.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229653AbhCXQKR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Mar 2021 12:10:17 -0400
Received: by mail-il1-f173.google.com with SMTP id v3so21866330ilj.12
        for <devicetree@vger.kernel.org>; Wed, 24 Mar 2021 09:10:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=VNP7Y6+0uXAbF81x4TSakPwVzbjmi5CX3FP7U60yxNc=;
        b=OZqQtlugIg8GcWmASs1o7ojUyGVXJit82jeZPeBBVY+QdwXifieLDtOQVF/RLTnoux
         DU3HdLJazCygPWcn+UBn+2VnRquj9kZl8pCNlw0mNT4wplGGMg6sSJcFtBvsjRz1cM6j
         vkS8I17YDWnHbB71TMYEgPEvl5VCbqFFUJxByLHcpXaU2DEfZlfh16exLX267bxgMe8d
         xVHCA5NbRBRNkrmdaQgGTA+wmPHVIvCFiQdRGivmE/ln6erdzdppp+I6ZBNKxJ4HkH+0
         +pdsFCMXolVJcwnGFHq35pwmawcYT4xlvIbRJ9bCP2m1s94V/VW+9AwLkygxfqystORh
         7YEA==
X-Gm-Message-State: AOAM531lATsB6cgbAcoeesBtKHJQFwIkr2OCvMJVY1QUINxyyUiTtccw
        M0PdUlVfoUmKkIZUtdI8cQ==
X-Google-Smtp-Source: ABdhPJwmwxbEeSIquUcBlAzmteTnXpQkZkEyemHNVIjdnZEt0hjspkOoJ/XkhvZh0v8Iv4bk/VZfWA==
X-Received: by 2002:a92:c549:: with SMTP id a9mr3257290ilj.300.1616602216731;
        Wed, 24 Mar 2021 09:10:16 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.253])
        by smtp.gmail.com with ESMTPSA id d3sm1315600ilo.32.2021.03.24.09.10.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Mar 2021 09:10:15 -0700 (PDT)
Received: (nullmailer pid 3166203 invoked by uid 1000);
        Wed, 24 Mar 2021 16:10:12 -0000
Date:   Wed, 24 Mar 2021 10:10:12 -0600
From:   Rob Herring <robh@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Vivek Unune <npcomplete13@gmail.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        linux-mtd@lists.infradead.org,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH 1/2] dt-bindings: mtd: add binding for Linksys Northstar
 partitions
Message-ID: <20210324161012.GA3166146@robh.at.kernel.org>
References: <20210312134919.7767-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210312134919.7767-1-zajec5@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 12 Mar 2021 14:49:18 +0100, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Linksys on Broadcom Northstar devices uses fixed flash layout with
> multiple firmware partitions.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>  .../mtd/partitions/linksys,ns-partitions.yaml | 74 +++++++++++++++++++
>  1 file changed, 74 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/partitions/linksys,ns-partitions.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
