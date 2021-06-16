Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 856F93AA7A7
	for <lists+devicetree@lfdr.de>; Thu, 17 Jun 2021 01:45:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231468AbhFPXrP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Jun 2021 19:47:15 -0400
Received: from mail-io1-f41.google.com ([209.85.166.41]:37393 "EHLO
        mail-io1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231389AbhFPXrP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Jun 2021 19:47:15 -0400
Received: by mail-io1-f41.google.com with SMTP id q15so1089193ioi.4
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 16:45:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=K3vSYXX79Dvg7WGQ6/VCFoRSM0nJQLmnzT8Zl2sP4WY=;
        b=FnOr/QYr3sJ6fsRrnFqhkFN3AEosFzvWNVrgZd/GVnplddLzDDHjbT5zDHJPeXdSnF
         in2tYQXcddvlxv2B3e9aFF/4Cb9cGO6kwNX4sQsn0GcPgp8BsJDcMmyB2MvAN/j0Empu
         jBbRGGvKZlJ81x2tm11l2yg4FSX5SjRFCWeuD4h9XgU5Zz88i4uo7cbS59dYgnhqxn/O
         BsH/Jx0+Y7OqyhdYdPUBAnhvuJ0eo2ZnrXjPzmz9Cua6GeqHXzSJ+xA8HeOzB2PcUWRH
         XefQ5hsqEE/Gg7enu81d2HaqcX5WeLzSMHERxmrCE9mAxZXQlvbUJfF//6e3YC2RsZfs
         IQ2g==
X-Gm-Message-State: AOAM533Nf8r0gO+XVG845/wM4YRZvuOMf2H3BKrsdLxMP1jhq9OlGZSY
        Oj+c9YYQiwhAMeklGTVtJ6SnM57phg==
X-Google-Smtp-Source: ABdhPJy8wotjdCCYpx8ttVLSqGHMaCFaTzJRuCjMZZvAnZn1zG8Y0yckVVLjw5jakTnkPrxxD9wjvw==
X-Received: by 2002:a02:b188:: with SMTP id t8mr1621814jah.102.1623887108467;
        Wed, 16 Jun 2021 16:45:08 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id r11sm1892857ilm.23.2021.06.16.16.45.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jun 2021 16:45:07 -0700 (PDT)
Received: (nullmailer pid 307412 invoked by uid 1000);
        Wed, 16 Jun 2021 23:45:03 -0000
Date:   Wed, 16 Jun 2021 17:45:03 -0600
From:   Rob Herring <robh@kernel.org>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     shawnguo@kernel.org, sboyd@kernel.org, s.hauer@pengutronix.de,
        linus.walleij@linaro.org, aisheng.dong@nxp.com, festevam@gmail.com,
        kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 05/11] dt-bindings: spi: fsl-lpspi: Add imx8ulp
 compatible string
Message-ID: <20210616234503.GA306699@robh.at.kernel.org>
References: <20210607083921.2668568-1-ping.bai@nxp.com>
 <20210607083921.2668568-6-ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210607083921.2668568-6-ping.bai@nxp.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 07, 2021 at 04:39:15PM +0800, Jacky Bai wrote:
> For i.MX8ULP, it uses two compatible strings, so update the
> comaptible strings.

typo here.

> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> ---
>  .../devicetree/bindings/spi/spi-fsl-lpspi.yaml        | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)

Acked-by: Rob Herring <robh@kernel.org>
