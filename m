Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7F7E82852A5
	for <lists+devicetree@lfdr.de>; Tue,  6 Oct 2020 21:47:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726103AbgJFTrX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Oct 2020 15:47:23 -0400
Received: from mail-oo1-f67.google.com ([209.85.161.67]:33429 "EHLO
        mail-oo1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725943AbgJFTrW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Oct 2020 15:47:22 -0400
Received: by mail-oo1-f67.google.com with SMTP id g8so7961oov.0
        for <devicetree@vger.kernel.org>; Tue, 06 Oct 2020 12:47:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=XhWyrqYULwV9OVXX+4LC2QjNYOn29sdvbzzceUf7CwQ=;
        b=rP3wj05tDPtz79R8kVI6u37c/+86H+/ihTZHGPWek0dJ6ACgG2DDbOyaG27r6th+Qm
         a9tnfqtxZVZZKecTnhqtyidIGNISUdvcjP6T859PL4rQjbtU7gSyZnBgVsMfHj4wLz0q
         EDRmej1Ln1Qoe1AQULFM/j+0OeSFYf4xtiOAOxN2SslzOEISVsH7hYOkgegCI0cnxiMI
         H5LYoOHpoJY/PWV7ffHuIPkexHIliUtA5Ef+pwQmb64XhRHOR/MhImx6YHo6MckYkr7Z
         a2f9dzbgAgZLWER4N0Wc7tkK5z1vb3FWwuJD5aW9x1sBOybS+FS0dZO6hns5tzk8Rckl
         IJ8A==
X-Gm-Message-State: AOAM531qkwlrUIRp7LjFbUwQjYiYS1P31NetD59dZEWROhYUQQ4bbAB5
        3UOqdLAboGD8WpbcA0bxsA==
X-Google-Smtp-Source: ABdhPJy8pmzR6POrCB5y1IwKg2QH5ewHL4YIoPoH5mRx9ep4stpO0BHl+5N5hf5KmxAcp2upyezgRQ==
X-Received: by 2002:a4a:4406:: with SMTP id o6mr4196794ooa.48.1602013641946;
        Tue, 06 Oct 2020 12:47:21 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id v17sm1473429ote.40.2020.10.06.12.47.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2020 12:47:20 -0700 (PDT)
Received: (nullmailer pid 2716089 invoked by uid 1000);
        Tue, 06 Oct 2020 19:47:20 -0000
Date:   Tue, 6 Oct 2020 14:47:19 -0500
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>, patchwork-lst@pengutronix.de,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH 08/11] dt-bindings: add defines for i.MX8MM power domains
Message-ID: <20201006194719.GA2716030@bogus>
References: <20200930155006.535712-1-l.stach@pengutronix.de>
 <20200930155006.535712-9-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200930155006.535712-9-l.stach@pengutronix.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 30 Sep 2020 17:50:03 +0200, Lucas Stach wrote:
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../bindings/power/fsl,imx-gpcv2.yaml         |  2 ++
>  include/dt-bindings/power/imx8mm-power.h      | 22 +++++++++++++++++++
>  2 files changed, 24 insertions(+)
>  create mode 100644 include/dt-bindings/power/imx8mm-power.h
> 

Reviewed-by: Rob Herring <robh@kernel.org>
