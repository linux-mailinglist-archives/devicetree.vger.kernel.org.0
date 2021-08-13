Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 08F7D3EBDA8
	for <lists+devicetree@lfdr.de>; Fri, 13 Aug 2021 22:54:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234332AbhHMUzW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Aug 2021 16:55:22 -0400
Received: from mail-ot1-f54.google.com ([209.85.210.54]:45762 "EHLO
        mail-ot1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229519AbhHMUzW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Aug 2021 16:55:22 -0400
Received: by mail-ot1-f54.google.com with SMTP id r17-20020a0568302371b0290504f3f418fbso13504448oth.12
        for <devicetree@vger.kernel.org>; Fri, 13 Aug 2021 13:54:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=e7obZQIXIJ90oiyGQcBq80Z6Ly8ShtrfGKC2ujXAAi8=;
        b=k41WzUFMzPQN3imucHNAOuEXvpREITOaIcxl5PcCkkOilfCAf6gmF3OQdllOCPNAbr
         jY7vP036rLCVaAVCgezdv33CYh4RvjwYsrZilq8zPnWbdUj2pyZLVYv+ymplb+2QV5vZ
         rv89FvIUoLlMeG1nr2xuPtMCEiS4PZAnnG+orgN8uXoMgs5eBAB3kAiYj3ajp9XvxzcH
         gxH/7HZwB0BT5SSjz/KglIIocfgWz/3zkVqho69HzfunI/hdMtaInFdt26pa5KVWM+Lo
         APIz4+/0YFouFNX3s7555So4ZDNx1hte0KOVZizzI8IJopB9S44yYM2vSCDE7Fg8b7Tj
         j5Xw==
X-Gm-Message-State: AOAM530axJRL7UnYq8tPIB3PMPeIxlqSjApEnmdgC0DeDi9NXxDZhHBG
        EXrUA1MJXmghbn9ZWd+hAeUcF+NyYg==
X-Google-Smtp-Source: ABdhPJx74xgDqvGtsahOfUGt/xUyVop0aeUbpm+X9Wn69ZuvwCkE5MQ2rgYziIKt37zWV07IwPlToA==
X-Received: by 2002:a05:6830:44a8:: with SMTP id r40mr3611829otv.222.1628888094843;
        Fri, 13 Aug 2021 13:54:54 -0700 (PDT)
Received: from robh.at.kernel.org (2603-8080-2a06-ed00-a2a6-2d62-395f-9378.res6.spectrum.com. [2603:8080:2a06:ed00:a2a6:2d62:395f:9378])
        by smtp.gmail.com with ESMTPSA id o26sm534396otk.77.2021.08.13.13.54.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Aug 2021 13:54:53 -0700 (PDT)
Received: (nullmailer pid 4015418 invoked by uid 1000);
        Fri, 13 Aug 2021 20:54:52 -0000
Date:   Fri, 13 Aug 2021 15:54:52 -0500
From:   Rob Herring <robh@kernel.org>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Rob Herring <robh+dt@kernel.org>, dri-devel@lists.freedesktop.org,
        Michal Simek <michal.simek@xilinx.com>,
        Jianqiang Chen <jianqian@xilinx.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 01/36] dt-bindings: display: xlnx: zynqmp-dpsub: Add OF
 graph ports
Message-ID: <YRbcHBZn5QX5Q5mQ@robh.at.kernel.org>
References: <20210809013457.11266-1-laurent.pinchart@ideasonboard.com>
 <20210809013457.11266-2-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210809013457.11266-2-laurent.pinchart@ideasonboard.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 09 Aug 2021 04:34:22 +0300, Laurent Pinchart wrote:
> The DPSUB doesn't live in isolation, but is connected to the
> programmable logic for live inputs and outputs, and also has a
> DisplayPort output. Model all those using OF graph.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  .../display/xlnx/xlnx,zynqmp-dpsub.yaml       | 67 +++++++++++++++++++
>  1 file changed, 67 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
