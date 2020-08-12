Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7565F242F90
	for <lists+devicetree@lfdr.de>; Wed, 12 Aug 2020 21:48:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726542AbgHLTsv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Aug 2020 15:48:51 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:46230 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726512AbgHLTsv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Aug 2020 15:48:51 -0400
Received: by mail-io1-f66.google.com with SMTP id a5so4232657ioa.13
        for <devicetree@vger.kernel.org>; Wed, 12 Aug 2020 12:48:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=hRNiGbsn2Klh2xCNE7Gtg8MuI1Y7qcBaq3qUuH/rT9s=;
        b=cRix17JxrYte5T6PZncWuLsWk0D1q9u+do5Bh5ExJDXj/LZqqOrCWTigWsHUy/bBay
         TQP/PivApgSLu5Is70i48A5IV6PSmkFHXf+AS6sI/rMv31Nu2tM0AMovoil9JQMf1dIK
         YDpOMs3I8pCMCRnOiVYAOwHfXRawjJKVgDn7gbFQhPJ4C0yp5/XhL65wsshxCZudegtu
         le/+i3QXPZb+ofwretqFH2poNRJK0erYZxp4+TJ1cGOymFo9jT/mRShxy9nr+zg4lVfP
         vxCLjmV2H0Winc0KGAs1kJGLN9Si/wk/5BBMJKPVux8J2VWfUUPGOXRgiAGmycTSl5gK
         nC/w==
X-Gm-Message-State: AOAM53074KCrlTMVm1vFlZqZ9+q9C9rnmrJ2gzN2J9vWxB6b9FsWZ7ol
        ds+YAXD9AHm1F0f53/QUGlFQQyg=
X-Google-Smtp-Source: ABdhPJyxAortV0AQ1QeT0h9Xr+MvWeTPQwamvEw4MT49E/2BBXcwCtsNqev9qL0vlOs9rPbK4Ym8bA==
X-Received: by 2002:a02:aa87:: with SMTP id u7mr1124311jai.13.1597261730560;
        Wed, 12 Aug 2020 12:48:50 -0700 (PDT)
Received: from xps15 ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id t14sm1426283ios.18.2020.08.12.12.48.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Aug 2020 12:48:49 -0700 (PDT)
Received: (nullmailer pid 2593379 invoked by uid 1000);
        Wed, 12 Aug 2020 19:48:47 -0000
Date:   Wed, 12 Aug 2020 13:48:47 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH V3 1/2] dt-bindings: Add DT bindings for Toshiba TC358762
 DSI-to-DPI bridge
Message-ID: <20200812194847.GA2593349@bogus>
References: <20200809105705.6334-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200809105705.6334-1-marex@denx.de>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 09 Aug 2020 12:57:04 +0200, Marek Vasut wrote:
> Add DT bindings for Toshiba TC358762 DSI-to-DPI bridge, this
> one is used in the Raspberry Pi 7" touchscreen display unit.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> To: dri-devel@lists.freedesktop.org
> Cc: Eric Anholt <eric@anholt.net>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: devicetree@vger.kernel.org
> ---
> V2: Fix dt_binding_check errors
> V3: Add ... at the end of example
> ---
>  .../display/bridge/toshiba,tc358762.yaml      | 127 ++++++++++++++++++
>  1 file changed, 127 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/toshiba,tc358762.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
