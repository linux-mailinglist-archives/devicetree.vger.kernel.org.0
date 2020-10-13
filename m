Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 526C228D168
	for <lists+devicetree@lfdr.de>; Tue, 13 Oct 2020 17:42:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728840AbgJMPmi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Oct 2020 11:42:38 -0400
Received: from mail-oi1-f195.google.com ([209.85.167.195]:41303 "EHLO
        mail-oi1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727830AbgJMPmi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Oct 2020 11:42:38 -0400
Received: by mail-oi1-f195.google.com with SMTP id q136so21750657oic.8
        for <devicetree@vger.kernel.org>; Tue, 13 Oct 2020 08:42:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=7HBDGBEJfyjtmUpYlLyhbIBIpuYqlwSspPw7rMsxz2U=;
        b=Z9wBR/o7rvurWD34fSWtd3ye4m0/qZHcsccXbycDMROnA/PQ90Jmbohn+bABpd+CRL
         ZXooqDf86J8IxNN7H082X1eRDPzpybeulB5CO8VAnHY5VDDieI63kcCwIOa0DHoREIQI
         LkNmFQyHWWbzkOCsleIgAThNTeoXUAtkxpwCM9+P6SEE2hmqWZgUmigwPjlrKP3Lu9M9
         tGKScSrEp2UASZQF/We4Wr9+ThMfCfYCRnHVEzBFREdeIraE0BHdGjcTfMkYHZLjKlMN
         +LAPXnh/AjjFX0fPFXCFVdE0eLT2UZm+mZ6sHNiTP7EHI5frDs7nmvh8Igk5Bzl2yUJ7
         fcqA==
X-Gm-Message-State: AOAM533wTfy3vym8GNRuzvN5ktOzIUJr1WjQsE8Qagfig/KfDRu5Glz1
        ekSjL0t4MGiyUpRHcVvVraPiFfY8ZjQJ
X-Google-Smtp-Source: ABdhPJzNo1mwBWQ0pardH8uKZ+d/cwmUY5rjx3lm4PdGa4S0bZqBqsudnhysYq5uJGcdyzX0fegL0g==
X-Received: by 2002:aca:40f:: with SMTP id 15mr222689oie.44.1602603757535;
        Tue, 13 Oct 2020 08:42:37 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id y13sm25534ote.45.2020.10.13.08.42.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2020 08:42:36 -0700 (PDT)
Received: (nullmailer pid 3571584 invoked by uid 1000);
        Tue, 13 Oct 2020 15:42:36 -0000
Date:   Tue, 13 Oct 2020 10:42:36 -0500
From:   Rob Herring <robh@kernel.org>
To:     "Chrisanthus, Anitha" <anitha.chrisanthus@intel.com>
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "Vetter, Daniel" <daniel.vetter@intel.com>,
        "Dea, Edmund J" <edmund.j.dea@intel.com>,
        "sam@ravnborg.org" <sam@ravnborg.org>
Subject: Re: [PATCH v9 1/5] dt-bindings: display: Add support for Intel
 KeemBay Display
Message-ID: <20201013154236.GA3562909@bogus>
References: <1602205443-9036-1-git-send-email-anitha.chrisanthus@intel.com>
 <1602205443-9036-2-git-send-email-anitha.chrisanthus@intel.com>
 <dc12f5ea-60bc-8a09-9b93-a4472183adc4@baylibre.com>
 <BY5PR11MB41827BBE3556CD7972E6C4328C040@BY5PR11MB4182.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <BY5PR11MB41827BBE3556CD7972E6C4328C040@BY5PR11MB4182.namprd11.prod.outlook.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Oct 13, 2020 at 12:24:38AM +0000, Chrisanthus, Anitha wrote:
> Hi Neil,
> 
>  Thanks for your review, please see my reply inline.
> 
> > -----Original Message-----
> > From: Neil Armstrong <narmstrong@baylibre.com>
> > Sent: Friday, October 9, 2020 2:10 AM
> > To: Chrisanthus, Anitha <anitha.chrisanthus@intel.com>; dri-
> > devel@lists.freedesktop.org; devicetree@vger.kernel.org; Vetter, Daniel
> > <daniel.vetter@intel.com>
> > Cc: Dea, Edmund J <edmund.j.dea@intel.com>; sam@ravnborg.org
> > Subject: Re: [PATCH v9 1/5] dt-bindings: display: Add support for Intel
> > KeemBay Display
> > 
> > Hi,
> > 
> > On 09/10/2020 03:03, Anitha Chrisanthus wrote:
> > > This patch adds bindings for Intel KeemBay Display
> > >
> > > v2: review changes from Rob Herring
> > >
> > > Signed-off-by: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
> > > ---
> > >  .../bindings/display/intel,keembay-display.yaml    | 99
> > ++++++++++++++++++++++
> > >  1 file changed, 99 insertions(+)
> > >  create mode 100644
> > Documentation/devicetree/bindings/display/intel,keembay-display.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/display/intel,keembay-
> > display.yaml b/Documentation/devicetree/bindings/display/intel,keembay-
> > display.yaml
> > > new file mode 100644
> > > index 0000000..a38493d
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/display/intel,keembay-
> > display.yaml
> > > @@ -0,0 +1,99 @@
> > > +# SPDX-License-Identifier: GPL-2.0-only
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/display/intel,keembay-
> > display.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Devicetree bindings for Intel Keem Bay display controller
> > > +
> > > +maintainers:
> > > +  - Anitha Chrisanthus <anitha.chrisanthus@intel.com>
> > > +  - Edmond J Dea <edmund.j.dea@intel.com>
> > > +
> > > +properties:
> > > +  compatible:
> > > +    const: intel,kmb_display
> > > +
> > > +  reg:
> > > +    items:
> > > +      - description: Lcd registers range
> > > +      - description: Mipi registers range
> > 
> > Looking at the registers, the MIPI transceiver seems to be a separate IP,
> > same for D-PHY which should have a proper PHY driver instead of beeing
> > handled
> > here.
> > 
> The LCD, MIPI DSI, DPHY and MSSCAM as a group, are considered the 
> display subsystem for Keem Bay. As such, there are several 
> interdependencies that make splitting them up next to impossible and 

Please detail what those inter-dependencies are. It's doubtful that you 
have anything we have not had to deal with in other SoCs.

> currently we do not have the resources available for that effort.

That is certainly not justification for accepting this.

Rob
