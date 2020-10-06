Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 60CA0285426
	for <lists+devicetree@lfdr.de>; Tue,  6 Oct 2020 23:52:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726777AbgJFVwn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Oct 2020 17:52:43 -0400
Received: from mail-oi1-f195.google.com ([209.85.167.195]:42061 "EHLO
        mail-oi1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726759AbgJFVwn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Oct 2020 17:52:43 -0400
Received: by mail-oi1-f195.google.com with SMTP id 16so202237oix.9
        for <devicetree@vger.kernel.org>; Tue, 06 Oct 2020 14:52:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=CcowxvKV3WPMTnQe2ODLkjn+TeOaM7f9s2ye2HeLgEs=;
        b=ZUOxUV2mqMi/BZ2s6DYuj7nY4np2uE7qiX88KFdpMBc5bct/hCrIH2nw2qO04XaoKa
         tG6vzIRc9vOlhAmIH4NjpZH7x/ZtcnwKFkcSoSSt52QZcEQxKti4PBROo1jMgH+3fcGe
         VKdUTSAkgO3r232cHMmLw8kqHia7FqX99ltESEz7+l9JTUPl92eg2QlIg+9nc1x/dXlU
         q9jGuf+ZmIwvKRs9cGF9TKCKocpzv1qj+Z7V5pOoXUoWOx5B10Mk4wemMdcEqcRDa8bG
         CR5JMuzhleY5KwrIKivf/FxMT8G6JVo1+sIhZ4RlG3ujOZEM/UJi9twwYumpcaxi64M3
         GoJg==
X-Gm-Message-State: AOAM532zIieuAq+lkC5oGTK4hecMu6KP0/rwh4J4xow3q44VLyNQOKBl
        8rEiyY6hxmU6E5jIaWTMYQ==
X-Google-Smtp-Source: ABdhPJwUYZPWu4CvjIXHGqFaPHnbZqi7GzNoq59DJGGDL5CgdF+QZtiSAGWIgck1biOWKEdih7g3Ig==
X-Received: by 2002:aca:654b:: with SMTP id j11mr201016oiw.77.1602021161406;
        Tue, 06 Oct 2020 14:52:41 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id 68sm27509otu.33.2020.10.06.14.52.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2020 14:52:40 -0700 (PDT)
Received: (nullmailer pid 2914439 invoked by uid 1000);
        Tue, 06 Oct 2020 21:52:39 -0000
Date:   Tue, 6 Oct 2020 16:52:39 -0500
From:   Rob Herring <robh@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     Primoz Fiser <primoz.fiser@norik.com>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        Timur Tabi <timur@kernel.org>,
        Nicolin Chen <nicoleotsuka@gmail.com>,
        Xiubo Li <Xiubo.Lee@gmail.com>,
        Shengjiu Wang <shengjiu.wang@gmail.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH 2/2] ASoC: dt-bindings: fsl: add ac97 fixed mode support
Message-ID: <20201006215239.GA2912752@bogus>
References: <20201005111644.3131604-1-primoz.fiser@norik.com>
 <20201005111644.3131604-2-primoz.fiser@norik.com>
 <CAOMZO5CQkh06TfKj3qR9P+0ZQOQo07NAg8v9j==KMrLCWBn0mg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOMZO5CQkh06TfKj3qR9P+0ZQOQo07NAg8v9j==KMrLCWBn0mg@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 05, 2020 at 08:35:58AM -0300, Fabio Estevam wrote:
> On Mon, Oct 5, 2020 at 8:16 AM Primoz Fiser <primoz.fiser@norik.com> wrote:
> >
> > Add devicetree bindings documentation for operating SSI in AC'97
> > variable/fixed mode of operation.
> >
> > Signed-off-by: Primoz Fiser <primoz.fiser@norik.com>
> > ---
> >  Documentation/devicetree/bindings/sound/fsl,ssi.txt | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/sound/fsl,ssi.txt b/Documentation/devicetree/bindings/sound/fsl,ssi.txt
> > index 7e15a85cecd2..abc5abe11fb9 100644
> > --- a/Documentation/devicetree/bindings/sound/fsl,ssi.txt
> > +++ b/Documentation/devicetree/bindings/sound/fsl,ssi.txt
> > @@ -43,6 +43,11 @@ Optional properties:
> >  - fsl,mode:         The operating mode for the AC97 interface only.
> >                      "ac97-slave" - AC97 mode, SSI is clock slave
> >                      "ac97-master" - AC97 mode, SSI is clock master
> > +- fsl,ac97-mode:    SSI AC97 mode of operation.
> > +                    "variable" - AC97 Variable Mode, SLOTREQ bits determine
> > +                    next receive/transmit frame
> > +                    "fixed" - AC97 Fixed Mode, SSI transmits in accordance with
> > +                    AC97 Frame Rate Divider bits
> 
> It would be good to mention what is the default mode when such
> property is absent.

Then perhaps it could be boolean?

Rob
