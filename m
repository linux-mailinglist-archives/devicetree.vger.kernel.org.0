Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 403D9402D8F
	for <lists+devicetree@lfdr.de>; Tue,  7 Sep 2021 19:17:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345640AbhIGRSL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Sep 2021 13:18:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345625AbhIGRSL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Sep 2021 13:18:11 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AD6CC061575
        for <devicetree@vger.kernel.org>; Tue,  7 Sep 2021 10:17:05 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id u11-20020a17090adb4b00b00181668a56d6so2581443pjx.5
        for <devicetree@vger.kernel.org>; Tue, 07 Sep 2021 10:17:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=UgUKf1zfv7Iv9K1/QMBuK/EaIX52kjKIAjzLX0KxJFs=;
        b=U8k+CXlANwg8Cf2xtjJLtlZNK/EAg/moqeCu1EZJl9lyvt2pUXKPM/tyYD/MDAdFBw
         Z6JFY0pEYMyZz/Flf/vC0MMCngkW4h7TqXMiQuepw5GEYNEtEUtvvbIUj6Hfv8PCpxAP
         exZrICCJQlNMQATFFZXRAsV2CrBBB0j61zirUWLeOBy7a0+TjuuXE2w+KBODtZx2rgmZ
         5k4j0reK/3WcD4snhMf2oSnN5IU0+yn984xZ1zAMQ6oddFL+VqPRUaayCT96UliZGIJW
         KQ/QFQpp4syxHkfOIBz5JiLarYWDM1f3wsnoDaZ6goc91gnHaJdb9sj14sr+nRIrQnB7
         UhJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=UgUKf1zfv7Iv9K1/QMBuK/EaIX52kjKIAjzLX0KxJFs=;
        b=S6i37rYqMV5egzf3ej8QrGHT3o0oIgTjloSnKpG81FvEvcG+Mb9rS9Fj/wBdP9KL6O
         0pi7nvg8iMOJYfBmoALYNxU5T1pmievMWj9KaCphgJxqB35YSG27PI/RRPXncvMW8kjC
         gtz90Wrg2vFgTTZYgo1mxcbaXu6E1nyIhlyZdljcsLsa3hqI0uXLBIILHFDHG+F2VSRA
         6PpE517RZj4RnJsxtaeWCSCkFSX32SGzwwJR7/vv6t8+ffqZR1qZge7BJXBGrgX+LIJK
         Qf7+Mq5qFLVFcTXe05+hYdQj1Zn//NdyBNGiu9Edw0OcPDuogqbmcaCc+elqOhRLV9nj
         URJQ==
X-Gm-Message-State: AOAM533w6czy2874n72cRz1qtC087hi9xAh/0onGZK7XmlzOAQUSawVc
        yNXVen1MisIKGGwCGio+DTrHwg==
X-Google-Smtp-Source: ABdhPJyCEN6a+pYZ9ILh3SAZiegGtH5vI2T6vIQR6d8gzjWPmYbYW7Oh1SEe6oQOxQMP2NmbFfyjGw==
X-Received: by 2002:a17:90b:3547:: with SMTP id lt7mr5709076pjb.23.1631035024611;
        Tue, 07 Sep 2021 10:17:04 -0700 (PDT)
Received: from p14s (S0106889e681aac74.cg.shawcable.net. [68.147.0.187])
        by smtp.gmail.com with ESMTPSA id w11sm13922430pgf.5.2021.09.07.10.17.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Sep 2021 10:17:03 -0700 (PDT)
Date:   Tue, 7 Sep 2021 11:17:01 -0600
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
To:     Tanmay Jagdale <tanmay@marvell.com>
Cc:     suzuki.poulose@arm.com, mike.leach@linaro.org, leo.yan@linaro.org,
        robh+dt@kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        al.grant@arm.com, sgoutham@marvell.com, lcherian@marvell.com,
        bbhushan2@marvell.com
Subject: Re: [PATCH 0/2] coresight: tmc: Add support to configure AXI burst
 size
Message-ID: <20210907171701.GA1284915@p14s>
References: <20210901131049.1365367-1-tanmay@marvell.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210901131049.1365367-1-tanmay@marvell.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 01, 2021 at 06:40:47PM +0530, Tanmay Jagdale wrote:
> Add a new device tree parameter, "arm,max-burst-size" to configure
> the max burst size that can be initiated by TMC-ETR on the AXI bus.
> 
> Also add description of this property in coresight documentation.
> 
> This patch series applies on top of the coresight next branch [1].
> https://git.kernel.org/pub/scm/linux/kernel/git/coresight/linux.git/log/?h=next
> 
> Tanmay Jagdale (2):
>   dt-bindings: coresight: Add burst size for TMC
>   coresight: tmc: Configure AXI write burst size
> 
>  .../devicetree/bindings/arm/coresight.txt     |  5 +++++
>  .../hwtracing/coresight/coresight-tmc-core.c  | 21 +++++++++++++++++--
>  .../hwtracing/coresight/coresight-tmc-etr.c   |  3 ++-
>  drivers/hwtracing/coresight/coresight-tmc.h   |  6 +++++-
>  4 files changed, 31 insertions(+), 4 deletions(-)

I have applied this set - it will show up in the coresight-next branch on Monday
once 5.15-rc1 has been released.

Thanks,
Mathieu

> 
> -- 
> 2.25.1
> 
