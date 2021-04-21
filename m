Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 15931366AD6
	for <lists+devicetree@lfdr.de>; Wed, 21 Apr 2021 14:31:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239789AbhDUMbk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Apr 2021 08:31:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239745AbhDUMbj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Apr 2021 08:31:39 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AC5BC06138A
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 05:31:05 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id x20so36306285lfu.6
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 05:31:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=i3Tcr4PCdw/0rP4VM3hbtBcRyZ8BylNBEH0Nga70ISs=;
        b=Db/mbQL5GHMY/2Na7XjhO6X9FlrNHhP+vcVTz46eckXqmV+FVXqyNYehAYH8l+ZC6z
         X26g2+ksd3DOLWloPJG95Eea7Nw/czs2jDOttl/5habmzQmx4l64CVmJTjCpBnCkfFf/
         S7PUP1KDUpDBUIrxJiM3IvSiSFe4npbAcrVqFoOJ9JiShDtGAKJiNLUs185zj7RB0xvw
         ulTPwGxThY2rWRIRsC0Klnh5jGTlkmLt0AuroFwkdWjJxjT9gHP4iGp71nAbT8vFLYim
         Yks6Oy07rFkMbHcuXye4gBtJmFZHTQuyAMyT4JoQpFbz3b9r8E/okHNZ+UaAWV2VIdxK
         ilXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=i3Tcr4PCdw/0rP4VM3hbtBcRyZ8BylNBEH0Nga70ISs=;
        b=NONwmiWCExooFvCUZ00JEdLaxVPjIeI3j3CIiJ2rw3B+f228nQ9UAGoWV75hWvQilg
         bu25eCDFlSy+4vY9FndaEVQrbRSJjq9o/AgWpxwEsgyo8ThSQOUFeecTXNvQYc+rdzcp
         p1WqkUiGHEDGbIPaFTQLuMMqunMJusFncdaO8JED54miGWtizqCa61cLV4MZ68n+ihBj
         pMht4xQwNmOgxGhPcwgXgKB5ixlMsDPd35nlXgm4GR2I2P6d4avnI3fHn3Am/t7zdygk
         Le2+nn3h0pCv/4Hvn7LQmRD053iliYYEGtxUr65lFvL8pi40YIaqQygDmrBXLToVHV89
         FyMg==
X-Gm-Message-State: AOAM532Vz07IPdZfJKg3LSOFvuH2lNjJT0HpD2Cy2oJJOpZtINq3zGSh
        +GHjPmEtc8sdgrWTPmkanIlFDA==
X-Google-Smtp-Source: ABdhPJw9RickldUu1hZROkFGOjkKFxNfUwCza5ewJ1NUNjTvkQ74YHXRa09ayNox8Um13FCug/guHg==
X-Received: by 2002:ac2:4d10:: with SMTP id r16mr18764470lfi.643.1619008264092;
        Wed, 21 Apr 2021 05:31:04 -0700 (PDT)
Received: from localhost (h-209-203.A463.priv.bahnhof.se. [155.4.209.203])
        by smtp.gmail.com with ESMTPSA id c23sm197431ljr.73.2021.04.21.05.31.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Apr 2021 05:31:03 -0700 (PDT)
Date:   Wed, 21 Apr 2021 14:31:02 +0200
From:   Niklas =?iso-8859-1?Q?S=F6derlund?= 
        <niklas.soderlund+renesas@ragnatech.se>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-media@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH] media: dt-bindings: media: renesas,csi2: Node port@0 is
 not mandatory
Message-ID: <YIAbBoqEAZONAYii@oden.dyn.berto.se>
References: <20210413155346.2471776-1-niklas.soderlund+renesas@ragnatech.se>
 <YHiPWPTjWeEQ522E@pendragon.ideasonboard.com>
 <YHlFWvVBps2vYnPM@oden.dyn.berto.se>
 <YH/zyzfgpmXvkDpB@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YH/zyzfgpmXvkDpB@pendragon.ideasonboard.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Laurent and Geert,

On 2021-04-21 12:43:39 +0300, Laurent Pinchart wrote:
> Hi Niklas,
> 
> On Fri, Apr 16, 2021 at 10:05:46AM +0200, Niklas Söderlund wrote:
> > On 2021-04-15 22:09:12 +0300, Laurent Pinchart wrote:
> > > On Tue, Apr 13, 2021 at 05:53:46PM +0200, Niklas Söderlund wrote:
> > > > When converting the binding to use the video-interfaces schemas the node
> > > > port@0 was incorrectly made a mandatory property.
> > > > 
> > > > The port@0 node describes which CSI-2 transmitter the R-Car CSI-2
> > > > receiver is connected too. Not all boards connects all CSI-2 receivers
> > > > to an CSI-2 transmitter.
> > > 
> > > Ports are properties of the device, they should always be there,
> > > regardless of connections. It's the endpoints that describe connections.
> > 
> > I understand what you are saying and if that is the way things are done 
> > I'm fine with it. As this was brought to light by a recent change in the 
> > bindings I wish to understand if this was always the case the bindings 
> > have been wrong all along or not.
> > 
> > I only ask as because if we keep the port@0 mandatory there will be 
> > board files that needs to add empty port@0 nodes as we know they are not 
> > used. And as the media bindings are already quiet large for some Renesas 
> > boards I want to understand this before spewing out a lot of patches 
> > adding empty nodes ;-)
> 
> In my opinion port@0 should be in the SoC .dtsi, not in the board .dts.
> Individual boards can then add endpoints when the CSI-2 receiver is
> connected. Would that make sense for you ?

I think this is a case of pragmatism vs being technically correct, and 
of course 'technically correct' being the best kind of correct ;-)

Any of the two options works for me as long as we fix the DT validation 
errors that currently exists. Laurent seems to prefers keeping the 
port@0 mandatory and adding empty port@0 nodes to dtsi files.

@Geert: Does this work for you?

> 
> > > > Fixes: 066a94e28a23e04c ("media: dt-bindings: media: Use graph and video-interfaces schemas")
> > > > Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
> > > > ---
> > > >  Documentation/devicetree/bindings/media/renesas,csi2.yaml | 1 -
> > > >  1 file changed, 1 deletion(-)
> > > > 
> > > > diff --git a/Documentation/devicetree/bindings/media/renesas,csi2.yaml b/Documentation/devicetree/bindings/media/renesas,csi2.yaml
> > > > index 20396f1be9993461..395484807dd5ed47 100644
> > > > --- a/Documentation/devicetree/bindings/media/renesas,csi2.yaml
> > > > +++ b/Documentation/devicetree/bindings/media/renesas,csi2.yaml
> > > > @@ -78,7 +78,6 @@ properties:
> > > >            modules connected the CSI-2 receiver.
> > > >  
> > > >      required:
> > > > -      - port@0
> > > >        - port@1
> > > >  
> > > >  required:
> 
> -- 
> Regards,
> 
> Laurent Pinchart

-- 
Regards,
Niklas Söderlund
