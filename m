Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA847318D6D
	for <lists+devicetree@lfdr.de>; Thu, 11 Feb 2021 15:33:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231300AbhBKObo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Feb 2021 09:31:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231998AbhBKO3l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Feb 2021 09:29:41 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5DE5C061574
        for <devicetree@vger.kernel.org>; Thu, 11 Feb 2021 06:28:34 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id v5so8283706lft.13
        for <devicetree@vger.kernel.org>; Thu, 11 Feb 2021 06:28:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=re+rp6RpQ0LhBzIcAkVeyUogmblZJZ7YKV/Hi3PFqbo=;
        b=k/fqi8w9RAquM7fjc7pu9EJWOm1pfJh2+z8UEV/Xq9jlT3HbzHzaSXik1IRFneKoUL
         20nWYpNCZ4CxFkX2jfVeQijJm+hN8Oc5RgLWWg1jL+8jdNygrfH3c5BKn71Rk5bsaN5b
         kho+KZKGu7AngaUedFZpzLr4l1wc0qLgXtkHeZCgsKTJtQ7Siz7kVsvxjJW/WdAs+//v
         Q99pf4ZnSh2lgMw3nWato9td6DHJbcuqgfxqxgeZL3fEfv6CxUayNOd64W+bITucwMn0
         2DxfI7BCsdruCW4KOnECJUdell+NqP0vlvxu3g/KuZy1V75KXznwkTSIWdGv287qyPWZ
         Qvzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=re+rp6RpQ0LhBzIcAkVeyUogmblZJZ7YKV/Hi3PFqbo=;
        b=jxcJDRUzug2ryxqa6xUE+wy67ByPpDo0VnadM4zQRmrmfutGcAceOjPJrDjj7i9qMq
         nCvJUXsHSdBj/rwgZKFJkyEfeDZAnHwo4Qs1WfLj0t6zrq87OUlP0PbXMV8lYM8yV0FW
         qwMS7geyvvxUzqnKKn4L351q7j1wnnWmgeBvVnkPE/R2yKI7awTznKs/tvgrHQJ5GhaC
         G4dAhF0eNt1Xmlgco9ntgO+WpqRuRARQ+tZFsvJzq3TRlSvOZ9EmyC0GEsddGjS0vcP0
         z+l2ZyewfQKNTKBDPTviSF33EiM25gL/oGoDE2Ohmuc+4nehuGJd/6rodBKgXSe5Zcpb
         VH/w==
X-Gm-Message-State: AOAM533Be0lAYQxjUp+5OdyIxJU/Oa96jjz86EvFDzGRRBs0hErhuflv
        0EtPYICFBnxPkkrTay9xosO1/Q==
X-Google-Smtp-Source: ABdhPJwWL2kNH6KKEsOe1mpEXyV1U5DIH9c72NbdNoA9n1pnKzMrilz4tkz5WKXhSluFRJt1p6OLIA==
X-Received: by 2002:ac2:410e:: with SMTP id b14mr4542165lfi.186.1613053713312;
        Thu, 11 Feb 2021 06:28:33 -0800 (PST)
Received: from localhost (h-209-203.A463.priv.bahnhof.se. [155.4.209.203])
        by smtp.gmail.com with ESMTPSA id p24sm659720lfc.12.2021.02.11.06.28.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Feb 2021 06:28:31 -0800 (PST)
Date:   Thu, 11 Feb 2021 15:28:30 +0100
From:   Niklas =?iso-8859-1?Q?S=F6derlund?= 
        <niklas.soderlund+renesas@ragnatech.se>
To:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] dt-bindings: timer: renesas,cmt: Document R8A77961
Message-ID: <YCU/DnjYlLxR/jGy@oden.dyn.berto.se>
References: <20201209195701.805254-1-niklas.soderlund+renesas@ragnatech.se>
 <YCUGtbGl2ld0Tc5/@oden.dyn.berto.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YCUGtbGl2ld0Tc5/@oden.dyn.berto.se>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Again,

Sorry for the spam.

I noticed Rob replied to a similar patch and asked me to resend it with 
tags to Daniel for him to collect. Will do the same for this patch.

On 2021-02-11 11:28:07 +0100, Niklas Söderlund wrote:
> Hello,
> 
> I'm unsure if I should ping Daniel or Rob about picking up this patch as 
> you both have picked patches for this in the past. Sorry for pinging 
> both of you.
> 
> On 2020-12-09 20:57:01 +0100, Niklas Söderlund wrote:
> > Add missing bindings for M3-W+.
> > 
> > Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
> > ---
> >  Documentation/devicetree/bindings/timer/renesas,cmt.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/timer/renesas,cmt.yaml b/Documentation/devicetree/bindings/timer/renesas,cmt.yaml
> > index 428db3a21bb9c384..d16b5a243ed48eef 100644
> > --- a/Documentation/devicetree/bindings/timer/renesas,cmt.yaml
> > +++ b/Documentation/devicetree/bindings/timer/renesas,cmt.yaml
> > @@ -74,6 +74,7 @@ properties:
> >                - renesas,r8a774e1-cmt0     # 32-bit CMT0 on RZ/G2H
> >                - renesas,r8a7795-cmt0      # 32-bit CMT0 on R-Car H3
> >                - renesas,r8a7796-cmt0      # 32-bit CMT0 on R-Car M3-W
> > +              - renesas,r8a77961-cmt0     # 32-bit CMT0 on R-Car M3-W+
> >                - renesas,r8a77965-cmt0     # 32-bit CMT0 on R-Car M3-N
> >                - renesas,r8a77970-cmt0     # 32-bit CMT0 on R-Car V3M
> >                - renesas,r8a77980-cmt0     # 32-bit CMT0 on R-Car V3H
> > @@ -89,6 +90,7 @@ properties:
> >                - renesas,r8a774e1-cmt1     # 48-bit CMT on RZ/G2H
> >                - renesas,r8a7795-cmt1      # 48-bit CMT on R-Car H3
> >                - renesas,r8a7796-cmt1      # 48-bit CMT on R-Car M3-W
> > +              - renesas,r8a77961-cmt1     # 48-bit CMT on R-Car M3-W+
> >                - renesas,r8a77965-cmt1     # 48-bit CMT on R-Car M3-N
> >                - renesas,r8a77970-cmt1     # 48-bit CMT on R-Car V3M
> >                - renesas,r8a77980-cmt1     # 48-bit CMT on R-Car V3H
> > -- 
> > 2.29.2
> > 
> 
> -- 
> Regards,
> Niklas Söderlund

-- 
Regards,
Niklas Söderlund
