Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0467013476A
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2020 17:14:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727390AbgAHQOd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jan 2020 11:14:33 -0500
Received: from mail-oi1-f196.google.com ([209.85.167.196]:36780 "EHLO
        mail-oi1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727428AbgAHQOd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jan 2020 11:14:33 -0500
Received: by mail-oi1-f196.google.com with SMTP id c16so3108085oic.3
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2020 08:14:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=SrlaliDEGGOH4VVc2RtqMQylQGZdgoDQmUqlf4dPj7U=;
        b=G3Iblve/lgtrPiyF2yzXLXzUM5iFWXVz2qOBSqH3MricpVkf0jLc1lhIGcd1WzfiGh
         SVDs5CEgnhXmpXQH9wdviLIwb54Ge+xp14rp0SGIkUmKLsjG2RZRY0a6rAdGz+Mq8EWC
         B8htihSvXbp8do2zqbhnvGgsA27ylfjLSsEFoQ+2fmpaDezOjVbywhBAU/t+A9AqpISN
         ecll8wPJ0YRs27Q4Tz+Yd+BGdQ6RflM+1LYaSKuCd0l4lkkRL7tiBtzSMabsOTV1jatm
         3lipr5sHT+WVufJ84tFBeq+HnXXjWhGU7pK3yCkcRt7SXva8iXm5bP1uj1yR30TZ+s43
         W9Rg==
X-Gm-Message-State: APjAAAUeiwLgnvwI+DHCZWX/rjyJqofPiifTCJ1R/o2XGE8GDhQ2mFLQ
        DInZmmgslWq6hD27bWY1crAoRdQ=
X-Google-Smtp-Source: APXvYqxOpKeCM4zqVX9XpNaEcOkUBKexWsp7Xhu6h2j1/ZebgiI3jxMHli9k8ONMDT0K/GORUNGgdQ==
X-Received: by 2002:aca:d787:: with SMTP id o129mr3725411oig.75.1578500072757;
        Wed, 08 Jan 2020 08:14:32 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id t23sm1205904oic.28.2020.01.08.08.14.31
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2020 08:14:31 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 220333
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Wed, 08 Jan 2020 10:14:30 -0600
Date:   Wed, 8 Jan 2020 10:14:30 -0600
From:   Rob Herring <robh@kernel.org>
To:     Thierry Reding <thierry.reding@gmail.com>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Jon Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 01/13] dt-bindings: memory: Add Tegra186 memory client IDs
Message-ID: <20200108161430.GA8334@bogus>
References: <20191222141035.1649937-1-thierry.reding@gmail.com>
 <20191222141035.1649937-2-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191222141035.1649937-2-thierry.reding@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 22 Dec 2019 15:10:23 +0100, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> Add IDs for the memory clients found on NVIDIA Tegra186 SoCs. This will
> be used to describe interconnect paths from devices to system memory.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  include/dt-bindings/memory/tegra186-mc.h | 139 +++++++++++++++++++++++
>  1 file changed, 139 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
