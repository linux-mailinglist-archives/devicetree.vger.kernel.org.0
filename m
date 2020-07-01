Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CEDAD211605
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2020 00:29:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727768AbgGAW3Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jul 2020 18:29:16 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:37186 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725771AbgGAW3Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jul 2020 18:29:16 -0400
Received: by mail-io1-f66.google.com with SMTP id v6so13113607iob.4
        for <devicetree@vger.kernel.org>; Wed, 01 Jul 2020 15:29:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=QOT+orv/iIIhBSHtyeCPxkWij+Imp8no4QO38CfRyZM=;
        b=U3axyzFTc+3YYGiGLyfDD1yeefy+RUxL3UZkyRuj2/vQMSwDHL64PMLB5pCzO+QJBD
         nmDPBAijbP53t6u5SqyAzuFapoAlqeln373RjyKgqBT64OTDpJRB0DVnestUmH/EDc0k
         l2Hs8dlKPCoKX5o4fvKkfj6w5N7OP5vesU6iEJxfF38vPfilpNylyW73N81tDd2LQsta
         SIkEqe5ticqSz4/cLhgFYjwyJDPNg8seND47zLNjGm1IPtEO7kyZ6wUmGnHs7O/xl7+U
         wXcYwUH5ohrc0DWZYaflyDdEyr0ez5yNbcXOTExmnsr8ZmQd4svSVYwXKb4KM1Go58QN
         U/eQ==
X-Gm-Message-State: AOAM532k6RxHc8+xz3bFy5j50mUNliizm6UpK6ZK4gNsmV8L6oLGS867
        j25eorGOhOq14Cs3sPD18A==
X-Google-Smtp-Source: ABdhPJzFgFBDoAVR0PWInM/J+fqmuNJzfbR5QTTiWVLvzd5fPO9h2AOnFrOZY3u4Qb6qzzNtqv6nAQ==
X-Received: by 2002:a6b:6511:: with SMTP id z17mr4361763iob.104.1593642555949;
        Wed, 01 Jul 2020 15:29:15 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
        by smtp.gmail.com with ESMTPSA id w16sm3723844iom.27.2020.07.01.15.29.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jul 2020 15:29:15 -0700 (PDT)
Received: (nullmailer pid 3764715 invoked by uid 1000);
        Wed, 01 Jul 2020 22:29:14 -0000
Date:   Wed, 1 Jul 2020 16:29:14 -0600
From:   Rob Herring <robh@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org, sboyd@kernel.org
Subject: Re: [PATCH] dt-bindings: clock: imx: Fix e-mail address
Message-ID: <20200701222914.GA3764638@bogus>
References: <20200701005346.1008-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200701005346.1008-1-festevam@gmail.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 30 Jun 2020 21:53:46 -0300, Fabio Estevam wrote:
> The freescale.com domain is gone for quite some time.
> 
> Use the nxp.com domain instead.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
>  Documentation/devicetree/bindings/clock/imx27-clock.yaml | 2 +-
>  Documentation/devicetree/bindings/clock/imx31-clock.yaml | 2 +-
>  Documentation/devicetree/bindings/clock/imx5-clock.yaml  | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 

Applied, thanks!
