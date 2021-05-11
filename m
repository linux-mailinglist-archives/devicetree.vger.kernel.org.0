Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 558DF37EDF6
	for <lists+devicetree@lfdr.de>; Thu, 13 May 2021 00:54:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1388008AbhELU5a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 May 2021 16:57:30 -0400
Received: from mail-ot1-f44.google.com ([209.85.210.44]:43667 "EHLO
        mail-ot1-f44.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1385263AbhELUHy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 May 2021 16:07:54 -0400
Received: by mail-ot1-f44.google.com with SMTP id u19-20020a0568302493b02902d61b0d29adso20890172ots.10
        for <devicetree@vger.kernel.org>; Wed, 12 May 2021 13:06:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=28rXAB5eeFBQ1izxOgSM2h2FAojZwTPtnwLVVW+gTcU=;
        b=NrQNVwZDFP3ZMrRuGYJKva/Ol616KekYsajaRQ4NSy6hRp2FeQcvR4vFFr2RLoxdaA
         O1r44IpusguCF+4ZvUU8CWmowTnEnWEg8UecelrCECncERXIjDEQmUK0WU5Ni2Hy+U0X
         rs0k2ONm+ynthLwenRw8PFfrj282T/0lXZG79QZmguCJ2j5Rti9WfeKDdjFxkAHGPd3T
         1ae7uF/BtiOZdUJ1TsXqvhKRBKOBF1xLP3XtUH8+fPyVwBVTJIO0tXZiY11o6+v6WBpd
         hyyvtuZuZW3KoWuc3T1ASzK/nTCbl1B51AO9hZWJllgdJ3sheDtLldeR4AXrxtdt1jZU
         m32g==
X-Gm-Message-State: AOAM533U3CLp6rpuxXssAP9Z7pekWF0TRtVR1O1klQKSa+AIbPYDK769
        f0l9F2YoDNmQkHvuG5oI/QQGMNQh4Q==
X-Google-Smtp-Source: ABdhPJzN+BSXEx1g2P37aMUOAgdKJpImShLBdbT0kmaG0c2uZPHHYcCFezow/lAkSMFIxybueeYQHw==
X-Received: by 2002:a9d:68cc:: with SMTP id i12mr31848955oto.205.1620850005900;
        Wed, 12 May 2021 13:06:45 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id p11sm167580oti.53.2021.05.12.13.06.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 13:06:45 -0700 (PDT)
Received: (nullmailer pid 2433876 invoked by uid 1000);
        Tue, 11 May 2021 19:03:52 -0000
Date:   Tue, 11 May 2021 14:03:52 -0500
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     NXP Linux Team <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        "Lukas F . Hartmann" <lukas@mntre.com>,
        Fabio Estevam <festevam@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
        kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/3] arm64: dts: imx8mq: add Nitrogen8 SoM
Message-ID: <20210511190352.GA2433823@robh.at.kernel.org>
References: <20210510185931.104780-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210510185931.104780-1-l.stach@pengutronix.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 10 May 2021 20:59:29 +0200, Lucas Stach wrote:
> From: Lucas Stach <dev@lynxeye.de>
> 
> This adds the description of the Nitrogen8 System on Module. The module
> is quite simple with only a few (almost) fixed regulators and a eMMC
> on-board.
> 
> The eMMC is currently limited to 50MHz modes via the pinctrl, as the board
> has not wired up the data strobe line, which prevents HS400 mode from
> working. As both the controller and the eMMC support this mode, it is
> automatically selected when we allow the faster modes, leading to failing
> transfers. Until we have a proper solution to only disable HS400 mode,
> keep the eMMC at the slow bus modes.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
> v2:
> - remove 100/200MHz pinctrl states for usdhc1
> - rename i2c nodes
> ---
>  .../devicetree/bindings/arm/fsl.yaml          |   1 +
>  .../dts/freescale/imx8mq-nitrogen-som.dtsi    | 242 ++++++++++++++++++
>  2 files changed, 243 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mq-nitrogen-som.dtsi
> 

Reviewed-by: Rob Herring <robh@kernel.org>
