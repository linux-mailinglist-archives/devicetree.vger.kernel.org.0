Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F0C3338F5FB
	for <lists+devicetree@lfdr.de>; Tue, 25 May 2021 00:59:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229541AbhEXXBC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 May 2021 19:01:02 -0400
Received: from mail-ot1-f51.google.com ([209.85.210.51]:35479 "EHLO
        mail-ot1-f51.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229503AbhEXXBC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 May 2021 19:01:02 -0400
Received: by mail-ot1-f51.google.com with SMTP id 69-20020a9d0a4b0000b02902ed42f141e1so26785793otg.2
        for <devicetree@vger.kernel.org>; Mon, 24 May 2021 15:59:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=MN5rE1L8ZSbGjPnq6EnMYy5FsgHp93VbHdRdlY6RMbs=;
        b=uF+5+4KPB9qAzkBbRGOpVAGfKZ9UK5pUcmPhhLaVdd0SsmmsryYVk4VGgr0cFsU7sk
         CPPz5VoXaNdTqm5TjLeKa+abYPkdBvurC4LRdwfCFOq7VkmsviSkfHPodG3/BmdtuL3h
         JzpD94chYkYpcCVHx5T/xc1lri2m4cfaxdf0TptgIOpE97tPMjHZUWbdHqnqJ9QOJ36P
         Zgr/19hzO3PsAUEJErMGGD8RFABI4U+SdxsWfGq/DXxuaL9KzuxLmV0dJ55tAFPbhCu0
         CZnWRF8fx3l4WVLpf0KDUJqSSpexsKyJzLyJmRQmc8YLkkupv8XUxT5ZYrztED5oY7MU
         6EBg==
X-Gm-Message-State: AOAM533Q5xgY5SLh77xIqJWkKmogTeRsesqs1Lvo9zGI7E/AMA5/aLY+
        WW618gFo+qNG5E/AHvqemw==
X-Google-Smtp-Source: ABdhPJyHUdXwFyaBbwssi4b1+Bd35eELEEj8ZZW+JocuiB6hvfw6n4+qzO+0eQ5Djf0hK5fM9EEMNg==
X-Received: by 2002:a9d:1b5:: with SMTP id e50mr16581500ote.134.1621897173402;
        Mon, 24 May 2021 15:59:33 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id c17sm3456979otn.45.2021.05.24.15.59.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 May 2021 15:59:32 -0700 (PDT)
Received: (nullmailer pid 1337824 invoked by uid 1000);
        Mon, 24 May 2021 22:59:31 -0000
Date:   Mon, 24 May 2021 17:59:31 -0500
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <dev@lynxeye.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        kernel@pengutronix.de, NXP Linux Team <linux-imx@nxp.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "Lukas F . Hartmann" <lukas@mntre.com>
Subject: Re: [PATCH v3 1/4] arm64: dts: imx8mq: add Nitrogen8 SoM
Message-ID: <20210524225931.GA1337645@robh.at.kernel.org>
References: <20210524124536.27854-1-dev@lynxeye.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210524124536.27854-1-dev@lynxeye.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 24 May 2021 14:45:33 +0200, Lucas Stach wrote:
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

Acked-by: Rob Herring <robh@kernel.org>
