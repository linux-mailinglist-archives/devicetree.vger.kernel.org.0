Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 98845349CEE
	for <lists+devicetree@lfdr.de>; Fri, 26 Mar 2021 00:35:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231262AbhCYXfB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Mar 2021 19:35:01 -0400
Received: from mail-il1-f179.google.com ([209.85.166.179]:42750 "EHLO
        mail-il1-f179.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230486AbhCYXep (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Mar 2021 19:34:45 -0400
Received: by mail-il1-f179.google.com with SMTP id l5so3584287ilv.9
        for <devicetree@vger.kernel.org>; Thu, 25 Mar 2021 16:34:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=pXPsmzBHrVuSmB0yCHN+zczfeKxSBQL95Ki7Pc2BtxI=;
        b=jR8aymtTRdxilTfCtn6j25prNRy3L3+S8I3zRebfRrZOaRLveIIpHFjOSd857hJ6m9
         Th9GlQOJyNutdZmS4fPzmcovPvUl+bGMD8tBZY+XaiBgUYsW6J2Rhnnmxb/dP5hyqtdr
         I1WUumIbQUsCzFG5Tc45SN3vnOiLz3JG7xPvG+ywdnVghJkkJF8H5axbEPDERtcgX7n8
         wdicR+yPMGbnQ1HMOviJHxdaNXtVlwuY5PBaHqE2Keu/ToiAkBGrMgcUiMyXcE0pUbx3
         uw2+Cc8vvQKUQtCT4N7Dibu6D4PE/9QB7mNjbFBb3nE4iIUsA4Hr/7MPKurnXGN9Uzt0
         /HwA==
X-Gm-Message-State: AOAM53071JglM6VI5k9ZazScQ4P1nDYr27BFb2+/UOs0yLFu/D9J4xsa
        MqmPBuj1SZONsUDhRRIehw==
X-Google-Smtp-Source: ABdhPJyc/RFnNYL223Kr2b9GgV/2Q79yjW1KobuOZ/KKjFjWhRHpqvZ6A5P+6yjKhNqeFnPk80mEew==
X-Received: by 2002:a92:cac2:: with SMTP id m2mr8383226ilq.33.1616715285324;
        Thu, 25 Mar 2021 16:34:45 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.253])
        by smtp.gmail.com with ESMTPSA id v12sm694344ilm.42.2021.03.25.16.34.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 16:34:44 -0700 (PDT)
Received: (nullmailer pid 1943450 invoked by uid 1000);
        Thu, 25 Mar 2021 23:34:37 -0000
Date:   Thu, 25 Mar 2021 17:34:37 -0600
From:   Rob Herring <robh@kernel.org>
To:     daire.mcnamara@microchip.com
Cc:     mturquette@baylibre.com, sboyd@kernel.org,
        linux-clk@vger.linux.org, devicetree@vger.kernel.org,
        cyril.jean@microchip.com, lewis.hanly@microchip.com,
        padmarao.begari@microchip.com, conor.dooley@microchip.com,
        david.abdurachmanov@gmail.com
Subject: Re: [PATCH v3 2/2] clk: microchip: Add driver for Microchip
 PolarFire SoC
Message-ID: <20210325233437.GA1940863@robh.at.kernel.org>
References: <20210324104351.2200605-1-daire.mcnamara@microchip.com>
 <20210324104351.2200605-3-daire.mcnamara@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210324104351.2200605-3-daire.mcnamara@microchip.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 24, 2021 at 10:43:51AM +0000, daire.mcnamara@microchip.com wrote:
> From: Daire McNamara <daire.mcnamara@microchip.com>
> 
> Add support for clock configuration on Microchip PolarFire SoC
> 
> Signed-off-by: Daire McNamara <daire.mcnamara@microchip.com>
> ---
>  drivers/clk/Kconfig                           |   1 +
>  drivers/clk/Makefile                          |   2 +-
>  drivers/clk/microchip/Kconfig                 |   7 +
>  drivers/clk/microchip/Makefile                |   6 +-
>  drivers/clk/microchip/clk-mpfs.c              | 444 ++++++++++++++++++

>  .../dt-bindings/clock/microchip,mpfs-clock.h  |  45 ++

This goes with the binding patch.

>  6 files changed, 502 insertions(+), 3 deletions(-)
>  create mode 100644 drivers/clk/microchip/Kconfig
>  create mode 100644 drivers/clk/microchip/clk-mpfs.c
>  create mode 100644 include/dt-bindings/clock/microchip,mpfs-clock.h


> diff --git a/include/dt-bindings/clock/microchip,mpfs-clock.h b/include/dt-bindings/clock/microchip,mpfs-clock.h
> new file mode 100644
> index 000000000000..1169d4ee27c2
> --- /dev/null
> +++ b/include/dt-bindings/clock/microchip,mpfs-clock.h
> @@ -0,0 +1,45 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */

Don't care about your dts with non-GPL projects?

Rob
