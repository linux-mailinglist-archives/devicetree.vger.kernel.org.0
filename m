Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 140EA27B4E0
	for <lists+devicetree@lfdr.de>; Mon, 28 Sep 2020 20:58:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726566AbgI1S6g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Sep 2020 14:58:36 -0400
Received: from mail-ot1-f66.google.com ([209.85.210.66]:45909 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726500AbgI1S6g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Sep 2020 14:58:36 -0400
Received: by mail-ot1-f66.google.com with SMTP id g96so1981277otb.12;
        Mon, 28 Sep 2020 11:58:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=our4e3t8Fy5vpY5pkLJ9z16fOvHGdXxd8oZFBivNpAM=;
        b=D31KEhzNibZ1jjPlcIyy50Yp287G4N/i8AGLdFdXROFmqJe4xGn7mi95D5IqUfs3GH
         AFDnfq4+ICmIF7TB4aKJdUIbl5rWrtmWU/17WqjuVouJYQ1UTRm9q/kzgnIfudQdThK0
         gHEFiYI3s3hy1Rl8XAqXezE81UW2lF+6+kY6vXdjqodHXayY42BjiahRXs3Yt28sYffc
         KgNxGuUuCZ8G8El0a5+lV6V+d4S/ARpBMBRrF1vDURRiVVabdUvKoS1eD9Q3me+376n3
         3XKcOvk7z32oFY8naym2bLjhubok3EFbN22cWlnIruUafYP7xSJI4/k5+IXIBM682EWm
         LuOg==
X-Gm-Message-State: AOAM532GCqrs7h2OW/q2Mzdru8kTgt6pdw5Y/rLambgEqiG0yfbEaexf
        m1LwlWT/GLNXfemn/qA59g==
X-Google-Smtp-Source: ABdhPJw6uss+SWgcm4Fl7VZl3bXDiABQeOiKW34TbMrFBMi9e7LJ7/IxFm+mZ8CBnIMa5tyBo3ymeA==
X-Received: by 2002:a9d:335:: with SMTP id 50mr280179otv.90.1601319515157;
        Mon, 28 Sep 2020 11:58:35 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id r33sm2230430ooi.48.2020.09.28.11.58.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2020 11:58:34 -0700 (PDT)
Received: (nullmailer pid 3078868 invoked by uid 1000);
        Mon, 28 Sep 2020 18:58:33 -0000
Date:   Mon, 28 Sep 2020 13:58:33 -0500
From:   Rob Herring <robh@kernel.org>
To:     Vadim Pasternak <vadimp@nvidia.com>
Cc:     devicetree@vger.kernel.org, linux@roeck-us.net, robh+dt@kernel.org,
        linux-hwmon@vger.kernel.org
Subject: Re: [PATCH hwmon-next v4 2/2] dt-bindings: Add MP2975 voltage
 regulator device
Message-ID: <20200928185833.GA3078816@bogus>
References: <20200926204957.10268-1-vadimp@nvidia.com>
 <20200926204957.10268-3-vadimp@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200926204957.10268-3-vadimp@nvidia.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 26 Sep 2020 23:49:57 +0300, Vadim Pasternak wrote:
> Monolithic Power Systems, Inc. (MPS) dual-loop, digital, multi-phase
> controller.
> 
> Signed-off-by: Vadim Pasternak <vadimp@nvidia.com>
> ---
> v2->v3
>  - Fix after 'make dt_binding_check'.
> ---
>  Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
