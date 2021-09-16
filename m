Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CFD9F40EBB0
	for <lists+devicetree@lfdr.de>; Thu, 16 Sep 2021 22:28:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237226AbhIPU3i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Sep 2021 16:29:38 -0400
Received: from mail-ot1-f53.google.com ([209.85.210.53]:40750 "EHLO
        mail-ot1-f53.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230338AbhIPU3h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Sep 2021 16:29:37 -0400
Received: by mail-ot1-f53.google.com with SMTP id l16-20020a9d6a90000000b0053b71f7dc83so9910300otq.7
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 13:28:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=IoD7a1HPYyTmBF3qUxg3ylJtemVi3oyKIfMVDL3ojdg=;
        b=3MKq0+7trXne55EagutHWYtuc1V1YSpqXKWAPVq4Iahk5vhfvUNDtOZqwAnzLKG7B6
         OayKQ64i2S0u3IgtNWkslZPJR9dS9G9tYUo7LBQ9YPxqovSzLjw09dUcshgE35wW3Rb6
         Olj6oY67MxmQuAfkyWU2tIURKu57AEaCJl4ekh4Z4JJJhrpNpg7d3TNIOSixAuyA7ulX
         KBBNHBV37DQwFCi+q9zUZ9vKo7/ef6nfShrjAtxJJZAMoyDfuFJ8z8rQ3hrrc/a1hmZT
         oyHInekmcu7qbYrOBv7jY0PIDdCg8U18Imw8rbFyRQeHc1HdY2voHNU5enXnshbroHb1
         B+bw==
X-Gm-Message-State: AOAM530ldlCeg7dyCto2V73/zKmQpgSHmMGbtN/z8Rs20bmqG/8nH5HF
        ddIYoK3cOrY1gBqartWs6A==
X-Google-Smtp-Source: ABdhPJzLwk2/PaOKC/yIQpbdB7xB4zoQcPxZYB7EZTlz/WBVjx63k9Ia8xFeNzyFzkdZzKubzkZm5A==
X-Received: by 2002:a05:6830:2151:: with SMTP id r17mr6481185otd.141.1631824096670;
        Thu, 16 Sep 2021 13:28:16 -0700 (PDT)
Received: from robh.at.kernel.org (107-211-252-53.lightspeed.cicril.sbcglobal.net. [107.211.252.53])
        by smtp.gmail.com with ESMTPSA id n23sm408399otj.70.2021.09.16.13.28.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Sep 2021 13:28:16 -0700 (PDT)
Received: (nullmailer pid 1446078 invoked by uid 1000);
        Thu, 16 Sep 2021 20:28:13 -0000
Date:   Thu, 16 Sep 2021 15:28:13 -0500
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Adam Ford <aford173@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        NXP Linux Team <linux-imx@nxp.com>,
        Tim Harvey <tharvey@gateworks.com>,
        patchwork-lst@pengutronix.de, Marek Vasut <marex@denx.de>,
        Frieder Schrempf <frieder.schrempf@kontron.de>
Subject: Re: [PATCH v4 11/18] dt-bindings: soc: add binding for i.MX8MM DISP
 blk-ctrl
Message-ID: <YUOo3batnxjyDRoi@robh.at.kernel.org>
References: <20210910202640.980366-1-l.stach@pengutronix.de>
 <20210910202640.980366-12-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210910202640.980366-12-l.stach@pengutronix.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 10 Sep 2021 22:26:33 +0200, Lucas Stach wrote:
> This adds the DT binding for the i.MX8MM VPU blk-ctrl.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml     | 94 +++++++++++++++++++
>  1 file changed, 94 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
