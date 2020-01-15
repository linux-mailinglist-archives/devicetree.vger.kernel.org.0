Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 69FD213C78A
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2020 16:25:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729047AbgAOPZ1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jan 2020 10:25:27 -0500
Received: from mail-ot1-f67.google.com ([209.85.210.67]:41653 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729045AbgAOPZ0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jan 2020 10:25:26 -0500
Received: by mail-ot1-f67.google.com with SMTP id r27so16394008otc.8
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2020 07:25:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=WFi9eiSujdmRgUALnYgUAdNpHS3NpE41hamHBXYiuxI=;
        b=BulrbnQOS5dpQF7gdvcqKuLdNrAr9Pez6St5PyoTtjDOLPi5FVPX68XpoActYvhioX
         M7NxsEmzGeuNGp+nPvsoe4NvKUTrLtKubikC7lGU1bcVNfPnNhfLOHCid57zbsIgnbkE
         XQwLY5iLdjIih1dn1OnN/VYP2ham5WBJjKr9RjM3vIU5v2lG85VGr/8w8hdwMTgg5LRU
         jgy9Amc2eONT3/K4XRryzNIGjlQ6Y8U0zDn652r8aaOLKmHQpML4g8GHaeLgTNJ4eurv
         nI14X9d/DhNyikACvS20eiQ7ILrp/LMXYl/Xgso45+oZPbU5ZwABT7n1b+gdFS+e9sVB
         Rflg==
X-Gm-Message-State: APjAAAXqF9NxR//mj3kRZHy38Jy0gLgqKtVa/TrqpeJXvKTrl42wTd3W
        +noRWrKWbxai0uPOr86GuEEXLdM=
X-Google-Smtp-Source: APXvYqwfbIFtvdbdPj9Bhc8r1vzLZcnjEMuBa0t1SzbmYY3DYu4gWhkOoHKF6CgrldZs40xMAMCX3A==
X-Received: by 2002:a9d:4c94:: with SMTP id m20mr3190369otf.341.1579101924560;
        Wed, 15 Jan 2020 07:25:24 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id f1sm6646698otq.4.2020.01.15.07.25.23
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2020 07:25:23 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 22040c
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Wed, 15 Jan 2020 09:25:22 -0600
Date:   Wed, 15 Jan 2020 09:25:22 -0600
From:   Rob Herring <robh@kernel.org>
To:     Icenowy Zheng <icenowy@aosc.io>
Cc:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Bastien Nocera <hadess@hadess.net>,
        Jagan Teki <jagan@amarulasolutions.com>,
        linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: input: touchscreen: add compatible
 string for Goodix GT917S
Message-ID: <20200115152522.GA15943@bogus>
References: <20200110162608.1066397-1-icenowy@aosc.io>
 <20200110162608.1066397-2-icenowy@aosc.io>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200110162608.1066397-2-icenowy@aosc.io>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jan 11, 2020 at 12:26:06AM +0800, Icenowy Zheng wrote:
> Goodix GT917S is a new touchscreen chip from Goodix.
> 
> Add its compatible string to the device tree binding.
> 
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> ---
>  Documentation/devicetree/bindings/input/touchscreen/goodix.txt | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/input/touchscreen/goodix.txt b/Documentation/devicetree/bindings/input/touchscreen/goodix.txt
> index fc03ea4cf5ab..c5447b136eb3 100644
> --- a/Documentation/devicetree/bindings/input/touchscreen/goodix.txt
> +++ b/Documentation/devicetree/bindings/input/touchscreen/goodix.txt
> @@ -8,6 +8,7 @@ Required properties:
>  				 or "goodix,gt911"
>  				 or "goodix,gt9110"
>  				 or "goodix,gt912"
> +				 or "goodix,gt917s"

This binding is getting converted to schema, so you'll probably need to 
respin. In any case,

Acked-by: Rob Herring <robh@kernel.org>

>  				 or "goodix,gt927"
>  				 or "goodix,gt9271"
>  				 or "goodix,gt928"
> -- 
> 2.23.0
> 
