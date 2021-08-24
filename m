Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4FDDE3F641A
	for <lists+devicetree@lfdr.de>; Tue, 24 Aug 2021 19:00:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234872AbhHXRAu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Aug 2021 13:00:50 -0400
Received: from mail-ot1-f43.google.com ([209.85.210.43]:45798 "EHLO
        mail-ot1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238958AbhHXQ7X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Aug 2021 12:59:23 -0400
Received: by mail-ot1-f43.google.com with SMTP id l7-20020a0568302b0700b0051c0181deebso16139566otv.12
        for <devicetree@vger.kernel.org>; Tue, 24 Aug 2021 09:58:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=gLpwSrgDVrehm6j3+KekuLUcZGEgcjkIq/MzS6C4s2Q=;
        b=ufRpjwebLN8W8VBUeZrRRxDLsM33+sQTOrelvCFZoDeBVr6CU5s4wEWHOBSE0ai6FV
         LMlLS+tNIAqeDtp/Hrx3BCGSvzjGH3GsW6WAvc0aPiRBckHLGyiIozOVIzLOfKIp83DQ
         kJFflosUFCgo/DnPPZXL/BqdyrLqF7qBR+KBRWVWcLJcWHdFSZUKiEnxNrIuP0S76Aqc
         pAPaHTNJIUvACeiPxJktP1EWVnyz9XCqq86ugnFr889wgXKFxwdn+E/DGHf6n0BXamp3
         qF1OssHucx+FQ+0ioCRMhjUDwPYr+ldGcTnHKaYp1iK67l7CIcHq8GFFY0keV//6iIiY
         Fg+A==
X-Gm-Message-State: AOAM5316r5aBUbdLw6rxG2SDPE2IkJ9aYR0n6+BiOV1TLWG05P+KdOJT
        QNhokd7s9nURSB9IjBNKVQ==
X-Google-Smtp-Source: ABdhPJxznu0po8jvGOG/R35j+O3vsQwjCgnWz2hyBX4naV/clJHvdyP+gZ5KOtm8KTStXZyLTR4ZRg==
X-Received: by 2002:aca:aa88:: with SMTP id t130mr3493936oie.3.1629824318887;
        Tue, 24 Aug 2021 09:58:38 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id v5sm4172939oos.17.2021.08.24.09.58.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Aug 2021 09:58:38 -0700 (PDT)
Received: (nullmailer pid 625890 invoked by uid 1000);
        Tue, 24 Aug 2021 16:58:37 -0000
Date:   Tue, 24 Aug 2021 11:58:37 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sugar Zhang <sugar.zhang@rock-chips.com>
Cc:     broonie@kernel.org, heiko@sntech.de,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org
Subject: Re: [PATCH v1 6/7] ASoC: dt-bindings: rockchip: pdm: Document
 property 'rockchip,path-map'
Message-ID: <YSUlPU+yxepPrcvL@robh.at.kernel.org>
References: <1629791446-13528-1-git-send-email-sugar.zhang@rock-chips.com>
 <1629791656-13698-1-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1629791656-13698-1-git-send-email-sugar.zhang@rock-chips.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 24, 2021 at 03:54:15PM +0800, Sugar Zhang wrote:
> This is an optional property to describe data path mapping.
> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> ---
> 
>  Documentation/devicetree/bindings/sound/rockchip,pdm.txt | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/rockchip,pdm.txt b/Documentation/devicetree/bindings/sound/rockchip,pdm.txt
> index 54d94438..b2d7e47 100644
> --- a/Documentation/devicetree/bindings/sound/rockchip,pdm.txt
> +++ b/Documentation/devicetree/bindings/sound/rockchip,pdm.txt
> @@ -24,6 +24,22 @@ Required properties:
>  	     pinctrl-names. See ../pinctrl/pinctrl-bindings.txt
>  	     for details of the property values.
>  
> +Optional properties:
> +- rockchip,path-map: This is a variable length array, that shows the mapping

The schema says this is a fixed length array.

> +  of SDIx to PATHx. By default, they are one-to-one mapping as follows:
> +
> +   path0 <-- sdi0
> +   path1 <-- sdi1
> +   path2 <-- sdi2
> +   path3 <-- sdi3
> +
> +  e.g. "rockchip,path-map = <3 2 1 0>" means the mapping as follows:
> +
> +   path0 <-- sdi3
> +   path1 <-- sdi2
> +   path2 <-- sdi1
> +   path3 <-- sdi0
> +
>  Example for rk3328 PDM controller:
>  
>  pdm: pdm@ff040000 {
> -- 
> 2.7.4
> 
> 
> 
> 
