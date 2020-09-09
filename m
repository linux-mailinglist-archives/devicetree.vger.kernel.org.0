Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9A02C26373F
	for <lists+devicetree@lfdr.de>; Wed,  9 Sep 2020 22:24:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726184AbgIIUYE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Sep 2020 16:24:04 -0400
Received: from mail-io1-f68.google.com ([209.85.166.68]:36915 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725772AbgIIUYD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Sep 2020 16:24:03 -0400
Received: by mail-io1-f68.google.com with SMTP id y13so4642479iow.4
        for <devicetree@vger.kernel.org>; Wed, 09 Sep 2020 13:24:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=tg0JeErYuwCgBkot4VAudcjEFcbGOXGX8jN2AzM54wA=;
        b=T6NsxAR+u9au8mbUbqi3h5hbc9bX3V20ohkoD2z2ia0HVVuuj4uqeotBmM9cDo4qFS
         qhfhSXrflTShUg38Hc1MEdwKV5CqFWNcoBR1dZNHr/5k2a5CgSPoVOWYIdaMfgCCetBL
         nN89NOIPRuKvro6Ku8JK2BfQRDZogxNkm6qxs+CUO1vz0DR0xU4kHH/aO5bhoSisUj46
         ftK3CIRsTg/j9N398RAhxsPNkbuGE/GtJ+4IbkWAp8M370RnT5Rkk6eD3Uc9WfDkQl1F
         tVVCcrjkvzwYXm+tys0CPVcDLOy39VU3ighEb5gd4Z3sgFaT4v1No7602vguos4C27f6
         zpqA==
X-Gm-Message-State: AOAM530cfARrYahmL6KfVsc3YjxEvJ5EpilxtyEzPobCJ6SZWU/6tqZm
        2suXLfhlxnzClwXEo5HlkQ==
X-Google-Smtp-Source: ABdhPJyTXIpNxMXxdVdrlVXlMUUmk/CDRm5BY2xPn/DXN7j4XTWB8zGSokPd8VsXoQJ+/dy5btBSUg==
X-Received: by 2002:a05:6602:2d86:: with SMTP id k6mr4959176iow.20.1599683042345;
        Wed, 09 Sep 2020 13:24:02 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id j66sm1955258ili.71.2020.09.09.13.23.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2020 13:24:01 -0700 (PDT)
Received: (nullmailer pid 3018582 invoked by uid 1000);
        Wed, 09 Sep 2020 20:23:54 -0000
Date:   Wed, 9 Sep 2020 14:23:54 -0600
From:   Rob Herring <robh@kernel.org>
To:     Tomi Valkeinen <tomi.valkeinen@ti.com>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Nishanth Menon <nm@ti.com>,
        linux-arm-kernel@lists.infradead.org, Tero Kristo <t-kristo@ti.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: display: ti, am65x-dss: add missing
 properties to dt-schema
Message-ID: <20200909202354.GA3018513@bogus>
References: <20200827083045.76356-1-tomi.valkeinen@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200827083045.76356-1-tomi.valkeinen@ti.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 27 Aug 2020 11:30:42 +0300, Tomi Valkeinen wrote:
> Add assigned-clocks, assigned-clock-parents and dma-coherent optional
> properties.
> 
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
> ---
>  .../devicetree/bindings/display/ti/ti,am65x-dss.yaml  | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
