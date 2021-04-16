Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CD1F3361B18
	for <lists+devicetree@lfdr.de>; Fri, 16 Apr 2021 10:06:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239357AbhDPIGO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Apr 2021 04:06:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239326AbhDPIGO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Apr 2021 04:06:14 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEB6FC061756
        for <devicetree@vger.kernel.org>; Fri, 16 Apr 2021 01:05:49 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id f41so20040920lfv.8
        for <devicetree@vger.kernel.org>; Fri, 16 Apr 2021 01:05:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=T/GkAnca9gBf511+UOP69s2zUlqQA3ka9GPh9sfgQbc=;
        b=Td0hNryxzo4/5Jjil+l1dVCEn0uaPVRuHVqlNzciYKmWWT1rNLYq4ak104sOE9WRc4
         mhFCBnLttOOlqSSKdogpXcJfMpSaKvGWT9/z7+kWpJT+UAmf39LVqETI9YUwbX5fEgEn
         UKJTLpFk2OyiRyFTStGN/nJVp1jY+6W3uLyUqGK2vI5lqvk7IUqlnLEKP8780ju3Kh9Z
         NnrrY9aEWc94jGkrN3ULAk+DeOvYINJJk3poGhVJGuBrtRGkL4/bzksUNZbnraXdu/+x
         2ALROintHs/GC9/dvlH0TyiBWiKhM9QqRrHxNFBRRX+6O1PgYiknhYaykgfvWtM4MTaJ
         Fy0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=T/GkAnca9gBf511+UOP69s2zUlqQA3ka9GPh9sfgQbc=;
        b=BvYX+b1B3MQqpF0I40OR73IigBn+bdpMYqn586schcD3I41FZX3j5bnyheTzZVentJ
         k/z+pocb827g5wFfQApn0aKZC0e6BB3VoWbzksEb7KT+Rl4v0E2bZc9+u3uLnugNR+Le
         acgOSMvtTJ0K01BtcIAo0CGv5bkjRHJkrs51Y2vs3LcFPfdDvlTAdTUJCuaWkpS5tPoM
         Cp8+bfd4Y/HORQkseaJZ0g0WLCqvG86li39bVHCqXWjcpjQboIu5/SuGR6A+mvGT3SQT
         ftvFulcZ5vNXjXsoVjnQlrwZi33eOYKGaiCM0Wi3YGqajOExR1KLzYz7oFOjIqyTNeeX
         IMCw==
X-Gm-Message-State: AOAM533NkBX2sLpSWmc8eEjjVUcMtKSIXzDjXgIevIq8j5IY3gbWdL93
        /fG/kAQ3j1NZBE9ZP2d8i9jacw==
X-Google-Smtp-Source: ABdhPJxo5PcSFtDcjWkfeg3gfNEGkt4GXmGFhUuXDxFdZR1rssvChhMsKWdPLsfmhE+8PdTKTsgxgg==
X-Received: by 2002:a19:f807:: with SMTP id a7mr2092989lff.437.1618560348314;
        Fri, 16 Apr 2021 01:05:48 -0700 (PDT)
Received: from localhost (h-209-203.A463.priv.bahnhof.se. [155.4.209.203])
        by smtp.gmail.com with ESMTPSA id z22sm929311lfu.112.2021.04.16.01.05.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 01:05:47 -0700 (PDT)
Date:   Fri, 16 Apr 2021 10:05:46 +0200
From:   Niklas =?iso-8859-1?Q?S=F6derlund?= 
        <niklas.soderlund+renesas@ragnatech.se>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-media@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH] media: dt-bindings: media: renesas,csi2: Node port@0 is
 not mandatory
Message-ID: <YHlFWvVBps2vYnPM@oden.dyn.berto.se>
References: <20210413155346.2471776-1-niklas.soderlund+renesas@ragnatech.se>
 <YHiPWPTjWeEQ522E@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YHiPWPTjWeEQ522E@pendragon.ideasonboard.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Laurent,

Thanks for your comments.

On 2021-04-15 22:09:12 +0300, Laurent Pinchart wrote:
> Hi Niklas,
> 
> Thank you for the patch.
> 
> On Tue, Apr 13, 2021 at 05:53:46PM +0200, Niklas Söderlund wrote:
> > When converting the binding to use the video-interfaces schemas the node
> > port@0 was incorrectly made a mandatory property.
> > 
> > The port@0 node describes which CSI-2 transmitter the R-Car CSI-2
> > receiver is connected too. Not all boards connects all CSI-2 receivers
> > to an CSI-2 transmitter.
> 
> Ports are properties of the device, they should always be there,
> regardless of connections. It's the endpoints that describe connections.

I understand what you are saying and if that is the way things are done 
I'm fine with it. As this was brought to light by a recent change in the 
bindings I wish to understand if this was always the case the bindings 
have been wrong all along or not.

I only ask as because if we keep the port@0 mandatory there will be 
board files that needs to add empty port@0 nodes as we know they are not 
used. And as the media bindings are already quiet large for some Renesas 
boards I want to understand this before spewing out a lot of patches 
adding empty nodes ;-)

> 
> > Fixes: 066a94e28a23e04c ("media: dt-bindings: media: Use graph and video-interfaces schemas")
> > Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
> > ---
> >  Documentation/devicetree/bindings/media/renesas,csi2.yaml | 1 -
> >  1 file changed, 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/media/renesas,csi2.yaml b/Documentation/devicetree/bindings/media/renesas,csi2.yaml
> > index 20396f1be9993461..395484807dd5ed47 100644
> > --- a/Documentation/devicetree/bindings/media/renesas,csi2.yaml
> > +++ b/Documentation/devicetree/bindings/media/renesas,csi2.yaml
> > @@ -78,7 +78,6 @@ properties:
> >            modules connected the CSI-2 receiver.
> >  
> >      required:
> > -      - port@0
> >        - port@1
> >  
> >  required:
> 
> -- 
> Regards,
> 
> Laurent Pinchart

-- 
Regards,
Niklas Söderlund
