Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 64FDD3674FE
	for <lists+devicetree@lfdr.de>; Thu, 22 Apr 2021 00:08:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343538AbhDUWId (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Apr 2021 18:08:33 -0400
Received: from mail-oi1-f170.google.com ([209.85.167.170]:40886 "EHLO
        mail-oi1-f170.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235666AbhDUWId (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Apr 2021 18:08:33 -0400
Received: by mail-oi1-f170.google.com with SMTP id u16so26577266oiu.7
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 15:07:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=B7HN9kmJqg3nDcnNpEUGeHtWjMZ+HAbcP7LqiewTvjU=;
        b=qvZGJOiGAI8kfUdBDkrM055s0lbKJG7E+EYaRAomEbbZT1srBKSESRjo+6Q/OY+v3L
         VPsdDdgJ8o5FoL2ce2PJofu4jJvsCFRFYBIJLlF0M37EVFbaWfxnipd/u6nCLeLLHMFS
         dbnW1JdOFIUC71o6pVplig5E9+NkmM+tIh9Tu3qcaTPMFwMDWa1rua5LMLBLJSmVFpfU
         0ya5MSPW31zjP8dLqEKiVTV59eJtuybWajJfKpZqtdPmHw1AH+Zc9fdxS1SRD8OFSHZW
         JB9mehqllL2lKIj71mEJPqh4LSImPiReey4rnnfEG3dijazRip65ELrPng5fZLqIOlIY
         AN6w==
X-Gm-Message-State: AOAM533JLNh+MlUewZMHs3YSEd/RLABdE/Ez0GErVmqsIJN616xmBrvm
        S7ZBFLadUSbgrmPMZztSYQ==
X-Google-Smtp-Source: ABdhPJx/l9P3CfVp/lDyVvVMMVcT02A6NeUzXDvkdb/rJGquK0l6K2PlpbcX527U5HSH3YPvrhcA9g==
X-Received: by 2002:aca:4b83:: with SMTP id y125mr8162994oia.31.1619042879582;
        Wed, 21 Apr 2021 15:07:59 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id 3sm195256ood.46.2021.04.21.15.07.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Apr 2021 15:07:59 -0700 (PDT)
Received: (nullmailer pid 1702061 invoked by uid 1000);
        Wed, 21 Apr 2021 22:07:58 -0000
Date:   Wed, 21 Apr 2021 17:07:58 -0500
From:   Rob Herring <robh@kernel.org>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
        Rob Herring <robh+dt@kernel.org>, soc@kernel.org,
        linux-amlogic@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: amlogic: misc DT schema fixups
Message-ID: <20210421220758.GA1702029@robh.at.kernel.org>
References: <20210421204833.18523-1-khilman@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210421204833.18523-1-khilman@baylibre.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 21 Apr 2021 13:48:32 -0700, Kevin Hilman wrote:
> Take a pass at cleaning up a bunch of warnings
> from 'make dtbs_check' that have crept in.
> 
> Signed-off-by: Kevin Hilman <khilman@baylibre.com>
> ---
>  Documentation/devicetree/bindings/media/rc.yaml    |  4 ++++
>  arch/arm64/boot/dts/amlogic/meson-a1.dtsi          |  4 ++--
>  arch/arm64/boot/dts/amlogic/meson-axg.dtsi         |  1 -
>  arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi  | 14 +++++++-------
>  .../arm64/boot/dts/amlogic/meson-g12b-gsking-x.dts |  2 +-
>  .../boot/dts/amlogic/meson-g12b-gtking-pro.dts     |  4 ++--
>  arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts  |  2 +-
>  .../boot/dts/amlogic/meson-g12b-odroid-n2.dtsi     |  4 ++--
>  .../arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts |  2 +-
>  .../dts/amlogic/meson-gxl-s905d-mecool-kii-pro.dts |  2 +-
>  .../boot/dts/amlogic/meson-gxl-s905d-sml5442tw.dts |  8 ++++----
>  .../boot/dts/amlogic/meson-gxm-mecool-kiii-pro.dts |  2 +-
>  .../boot/dts/amlogic/meson-gxm-minix-neo-u9h.dts   |  2 +-
>  .../boot/dts/amlogic/meson-gxm-wetek-core2.dts     |  2 +-
>  arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi |  4 ++--
>  .../arm64/boot/dts/amlogic/meson-sm1-odroid-c4.dts |  2 +-
>  16 files changed, 31 insertions(+), 28 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
