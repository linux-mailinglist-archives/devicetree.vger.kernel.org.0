Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CAA9C2F22A0
	for <lists+devicetree@lfdr.de>; Mon, 11 Jan 2021 23:22:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388682AbhAKWWR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jan 2021 17:22:17 -0500
Received: from mail-ot1-f43.google.com ([209.85.210.43]:37778 "EHLO
        mail-ot1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726725AbhAKWWR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jan 2021 17:22:17 -0500
Received: by mail-ot1-f43.google.com with SMTP id o11so428581ote.4
        for <devicetree@vger.kernel.org>; Mon, 11 Jan 2021 14:22:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=lwowg8R3zoAp02uZXuJJnsblBT2j5J753GEYS/wG8zI=;
        b=OW2J6s7452VGRVjjwFBBSRletQhJlMdx96mdVxVtAXp0ds8+a87Ae1rYDZPaSwkVVn
         PmH7WZ+E1T6ktLVul5HvbiPWO1unUBvhpVV2+JqmWpXam4hVtOxymfQd6uWwy9hmh6f/
         Cr1zADaJWHKp8yZAGCMDxhNzcSIcDNy9UYmZTxivyg2g+JsEiQ9DJ8tXeMGoMwY9Blom
         79bmlLLcoUNZYJtvWxIbRLDBKvkE6xPTq/IWon3BCaY/6511e9PMobfx3S8ykoTkWTbB
         MXgJoo96Eq9iXCJsVsHjFOC3x81xBfG5942y61hEdN5df4qsPFshzY7ujtDok8oHvSre
         hgHQ==
X-Gm-Message-State: AOAM530eTB6T1th9uf6dpEZ11Le9mSsaUN3iDz7GD22dC+UjDx57M1Xd
        kOWelFRQqtJehOX2MFNveQ==
X-Google-Smtp-Source: ABdhPJzPp8WM4Egm10CAP1cpF87KCuj9jo/3pxO6fl8N1h0Y4dT98FDOaAIfzhTbbjBxnX0c74DSOA==
X-Received: by 2002:a9d:3ef6:: with SMTP id b109mr865032otc.288.1610403696301;
        Mon, 11 Jan 2021 14:21:36 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id v13sm186944ook.13.2021.01.11.14.21.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Jan 2021 14:21:35 -0800 (PST)
Received: (nullmailer pid 3162618 invoked by uid 1000);
        Mon, 11 Jan 2021 22:21:34 -0000
Date:   Mon, 11 Jan 2021 16:21:34 -0600
From:   Rob Herring <robh@kernel.org>
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     devicetree@vger.kernel.org,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org
Subject: Re: [PATCH] dt-bindings: display: Augment s6e63m0 bindings
Message-ID: <20210111222134.GA3162565@robh.at.kernel.org>
References: <20210101114522.1981838-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210101114522.1981838-1-linus.walleij@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 01 Jan 2021 12:45:22 +0100, Linus Walleij wrote:
> This fixes the following problems with the s6e63m0 display
> bindings:
> 
> - When used on the DSI bus, the panel is listed directly as
>   a subnode on the DSI host so the "port" node is not
>   compulsory. Remove "port" from required properties.
> 
> - The panel contains its own backlight control, so reference
>   the backlight common properties and list default-brightness
>   and max-brightness as supported but optional properties.
> 
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  .../devicetree/bindings/display/panel/samsung,s6e63m0.yaml    | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
