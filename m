Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 26C1237F154
	for <lists+devicetree@lfdr.de>; Thu, 13 May 2021 04:28:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230367AbhEMC3v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 May 2021 22:29:51 -0400
Received: from mail-ot1-f47.google.com ([209.85.210.47]:36744 "EHLO
        mail-ot1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230366AbhEMC3n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 May 2021 22:29:43 -0400
Received: by mail-ot1-f47.google.com with SMTP id n32-20020a9d1ea30000b02902a53d6ad4bdso22486403otn.3
        for <devicetree@vger.kernel.org>; Wed, 12 May 2021 19:28:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=1R4NK7sXPmJsCqubEpuc25FerWW0N8S/UMeRUegpPe4=;
        b=Y+4DC615vK2tQIawroX3yBw1N8qZ3khSlqnLb+taoWmt13JUM5+kwjnZDKCf3modv7
         LkDVdJxhyuZ97/6GrN4clX7vnDuqS8MALz0dh+rmK5RDkfVReA6NW7vieAKrSJyHHkOo
         9sIXsqClyJ+LupJzP675cBpjRVroSMYI2SwnkzrwBzTlyEDrTzAGixuOPEknhojLsihw
         RD8H/CgcjB00LwiQcXrJRDR7DFjYN84LojcTotaH8ewu4xYKiwky73i4KwYuSZK3+oIE
         mVsnPe9v9H4dW9CS6j89SC/t9lCz8q8IZQcLEN/bbNJtNEpoKAdIyvDdsaiQtpD0aIiT
         EsqA==
X-Gm-Message-State: AOAM532+zmLJWcUBPJ2WvdSXuGzYLAvniZLxMiAHWXZCQCxmTMFK45ib
        KLUVLlc2zf3hLFcawqGPnw==
X-Google-Smtp-Source: ABdhPJz4o3CzX1oUjO2CQ8KfltMzT6Fd6QQbDaWnSbfbVJpq6srieZQhjqi8zTnaM0y6EUqGqcnKGg==
X-Received: by 2002:a9d:5e02:: with SMTP id d2mr19538766oti.171.1620872914602;
        Wed, 12 May 2021 19:28:34 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id t23sm364265oij.21.2021.05.12.19.28.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 19:28:34 -0700 (PDT)
Received: (nullmailer pid 908835 invoked by uid 1000);
        Thu, 13 May 2021 02:28:33 -0000
Date:   Wed, 12 May 2021 21:28:33 -0500
From:   Rob Herring <robh@kernel.org>
To:     Boris Lysov <arzamas-16@mail.ee>
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org,
        matthias.bgg@gmail.com, linux@roeck-us.net,
        linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v3 2/3] dt-bindings: watchdog: mediatek: add support for
 mt6577 SoC
Message-ID: <20210513022833.GA908695@robh.at.kernel.org>
References: <20210513013515.31329-1-arzamas-16@mail.ee>
 <20210513013515.31329-3-arzamas-16@mail.ee>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210513013515.31329-3-arzamas-16@mail.ee>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 13 May 2021 04:35:14 +0300, Boris Lysov wrote:
> Add support for Mediatek mt6577 SoC to device tree binding
> documentation.
> 
> Signed-off-by: Boris Lysov <arzamas-16@mail.ee>
> ---
>  Documentation/devicetree/bindings/watchdog/mtk-wdt.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
