Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BF7D03158D2
	for <lists+devicetree@lfdr.de>; Tue,  9 Feb 2021 22:43:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233768AbhBIVmg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Feb 2021 16:42:36 -0500
Received: from mail-ua1-f46.google.com ([209.85.222.46]:34891 "EHLO
        mail-ua1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234392AbhBIVPA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Feb 2021 16:15:00 -0500
Received: by mail-ua1-f46.google.com with SMTP id o31so6305238uae.2
        for <devicetree@vger.kernel.org>; Tue, 09 Feb 2021 13:14:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=VOtt3prjmqypaQTJ4pYSOiaPQHntAWw3Q/krYTfHSSk=;
        b=tpPXHwsozWuFvIOPJ9hZ/FBosveCqMnfvwabNi+icvcPWnPROBZiqcphQ3pZDyPc6y
         lbXxe0bl6+tXzPmvFcmAamXKUpwl+UU5dF10voXOK+WsmB/B3V23WIXLVtKrvtQbysdL
         i2jfjlGjIelWifTU7428hGSwvsO9OIyOaUJYxzl5DzAIONqAl6R3xU6nfzOcq0mrPFfv
         QE27iG71L/98GC6z9Ho8pHWfm1YqQKrCl3nWQFTJ1V6Ck7BSM8FuaOyxFXmy0bYSgamJ
         AexrLxyS5KcPqN2O0XLbjtd6DMn6cICRDUiCYhPp9Y/R0vQhAM1WOcsYj6VxW8tSLYuD
         rtbw==
X-Gm-Message-State: AOAM532wvczKt4Jw0H45Em5GM4QSzsEaQYRngYVOj0Bun4Piya8GpFoN
        zkvTB3vi/znjvkjJV21uco6CYSNfEQ==
X-Google-Smtp-Source: ABdhPJxZR0I7iOxekYCbNXoQvdkurgLtI6UNYp7oKlGrjOT91AqHiylCg2zCTplwkzqaYRmDj/mP3g==
X-Received: by 2002:a4a:b987:: with SMTP id e7mr17130855oop.92.1612904584869;
        Tue, 09 Feb 2021 13:03:04 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id v17sm4510401ott.7.2021.02.09.13.03.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Feb 2021 13:03:03 -0800 (PST)
Received: (nullmailer pid 178168 invoked by uid 1000);
        Tue, 09 Feb 2021 21:03:02 -0000
Date:   Tue, 9 Feb 2021 15:03:02 -0600
From:   Rob Herring <robh@kernel.org>
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     devicetree@vger.kernel.org, cmuellner@linux.com,
        linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
        dri-devel@lists.freedesktop.org, dafna.hirschfeld@collabora.com,
        hjc@rock-chips.com, linux-kernel@vger.kernel.org,
        ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
        robh+dt@kernel.org, sebastian.fricke@posteo.net,
        linux-media@vger.kernel.org,
        Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Subject: Re: [PATCH 2/6] dt-bindings: display: rockchip-dsi: add optional
 #phy-cells property
Message-ID: <20210209210302.GA178138@robh.at.kernel.org>
References: <20210202145632.1263136-1-heiko@sntech.de>
 <20210202145632.1263136-3-heiko@sntech.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210202145632.1263136-3-heiko@sntech.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 02 Feb 2021 15:56:28 +0100, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> The Rockchip DSI controller on some SoCs also controls a bidrectional
> dphy, which would be connected to an Image Signal Processor as a phy
> in the rx configuration.
> 
> So allow a #phy-cells property for the dsi controller.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>  .../bindings/display/rockchip/dw_mipi_dsi_rockchip.txt           | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
