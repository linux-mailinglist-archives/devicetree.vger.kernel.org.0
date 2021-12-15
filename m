Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E9CB476347
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 21:27:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235970AbhLOU1r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 15:27:47 -0500
Received: from mail-ot1-f43.google.com ([209.85.210.43]:42614 "EHLO
        mail-ot1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235986AbhLOU1q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 15:27:46 -0500
Received: by mail-ot1-f43.google.com with SMTP id 47-20020a9d0332000000b005798ac20d72so26309291otv.9
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 12:27:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=hFLJ7V7qbHFu1U3b/WB4rtihfDw+iPNYiD7P9UKQFEc=;
        b=Ucsi2VOr17eCgCPBYvjN0CgRgt06m/BnVBoLZkJn/Kqcj5ybsDgIEOuulkZK0LHClq
         HMw9Lr3UfeDoQQwtQNJZEM28QxvyA6r/3Biur8epMYxnsJJC9+jyx766p9AgEApQjSLy
         s9UDYAu9FzX6Cjwqm6nXZA0IqERb4wyIZvIQeDBpmkvjbuUxa6CJlJTBkpzlzWRp/oN1
         MLfco83Kf+oN9tx7iKT+Y01P98V2RLzGB9cxHwG7QidTo8uIdEx6uXxAB7aGmdGBRsJe
         liLB7urMQ/UfJqn52GoX7YTsE6F8p9BZxSBo10PMpRFk1F/p0WEaU9TCcE77pyDHm9jU
         mbGg==
X-Gm-Message-State: AOAM532iTG/yzpyTDIWKrgg76LN5WYnjWmi/WRx0ZInofdx6ASUyhm58
        ++RafXNQ+md5RkxSWacXwgYnJz4ZNA==
X-Google-Smtp-Source: ABdhPJxT8qC/N4sfet6GjjvcnwckMmN33Tr8mDe4+QN6jGfsVCz/bF8hiR+QhVt0REy3YkKkXy27Ag==
X-Received: by 2002:a05:6830:1bfa:: with SMTP id k26mr10254438otb.139.1639600066111;
        Wed, 15 Dec 2021 12:27:46 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id bk41sm545968oib.31.2021.12.15.12.27.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Dec 2021 12:27:45 -0800 (PST)
Received: (nullmailer pid 1782172 invoked by uid 1000);
        Wed, 15 Dec 2021 20:27:44 -0000
Date:   Wed, 15 Dec 2021 14:27:44 -0600
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     devicetree@vger.kernel.org,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        patchwork-lst@pengutronix.de, linux-arm-kernel@lists.infradead.org,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: arm: imx: add Protonic PRT8MM board
 compatible
Message-ID: <YbpPwIxQY71kgDSK@robh.at.kernel.org>
References: <20211213203909.1260909-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211213203909.1260909-1-l.stach@pengutronix.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 13 Dec 2021 21:39:08 +0100, Lucas Stach wrote:
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
