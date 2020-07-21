Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7518122842D
	for <lists+devicetree@lfdr.de>; Tue, 21 Jul 2020 17:49:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728127AbgGUPtk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jul 2020 11:49:40 -0400
Received: from mail-il1-f196.google.com ([209.85.166.196]:38190 "EHLO
        mail-il1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726029AbgGUPtj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Jul 2020 11:49:39 -0400
Received: by mail-il1-f196.google.com with SMTP id s21so16790030ilk.5
        for <devicetree@vger.kernel.org>; Tue, 21 Jul 2020 08:49:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=+sP6HwhbLL5xK82h9NSKGWG46/No53OboFNx8AQgHWU=;
        b=mcWvKtf55KsKtsY3qmJRCHGv6YEWJECc3pUhOO+rVjGmbcbvRCPxih466m2Q9n1WKg
         Fix1gkzQbSEVCRWo4ExbDu+WUzCTZoyz9P4hsJle6P7NWWgg9zGsJCGPivYIzUp+bEOG
         0EpXclzwpqSoaFJpcmkVbew5IjB3AhivE1pcXiRCuwkWqBW5wqyH8VsTg0bNIoiHm6uo
         gaGeycZSzDtqwOjOCgQtzERtPsN1EL5PRrijyHexYuUzUCNHYO602tbQgInL7JM5jNEU
         Pw+KhHLq62wIoqpTPtI22efn8v4yQ0tjqFRX6r88RybOI4V1gHLSE97tfpHsoJKs891D
         vfCw==
X-Gm-Message-State: AOAM5310o+XHnoKEpqm0+H8oTIJv/n0cXUEtlwPEJsxOrA9FBD2kG07U
        CNavgvhVx1bvIaDqvZYMdQ==
X-Google-Smtp-Source: ABdhPJxvuVyvCuddEdxjXYe/UGD0/HMWu8AR0d0K/vanOzgbSRQIffuxB3GLMbNke5jTSSOwlxwdKQ==
X-Received: by 2002:a92:ca8d:: with SMTP id t13mr27503926ilo.274.1595346578628;
        Tue, 21 Jul 2020 08:49:38 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
        by smtp.gmail.com with ESMTPSA id c9sm10444955ilm.57.2020.07.21.08.49.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2020 08:49:37 -0700 (PDT)
Received: (nullmailer pid 357804 invoked by uid 1000);
        Tue, 21 Jul 2020 15:49:34 -0000
Date:   Tue, 21 Jul 2020 09:49:34 -0600
From:   Rob Herring <robh@kernel.org>
To:     Lokesh Vutla <lokeshvutla@ti.com>
Cc:     Tero Kristo <t-kristo@ti.com>, Marc Zyngier <maz@kernel.org>,
        Sekhar Nori <nsekhar@ti.com>,
        Peter Ujfalusi <peter.ujfalusi@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Nishanth Menon <nm@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 5/9] dt-bindings: irqchip: Convert ti, sci-intr
 bindings to yaml
Message-ID: <20200721154934.GA356627@bogus>
References: <20200721061007.28324-1-lokeshvutla@ti.com>
 <20200721061007.28324-6-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200721061007.28324-6-lokeshvutla@ti.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 21 Jul 2020 11:40:03 +0530, Lokesh Vutla wrote:
> In order to automate the verification of DT nodes convert
> ti,sci-intr.txt ti,sci-intr.yaml.
> 
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> ---
>  .../interrupt-controller/ti,sci-intr.txt      |  83 -------------
>  .../interrupt-controller/ti,sci-intr.yaml     | 113 ++++++++++++++++++
>  MAINTAINERS                                   |   2 +-
>  3 files changed, 114 insertions(+), 84 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.yaml
> 


My bot found errors running 'make dt_binding_check' on your patch:

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.example.dt.yaml: interrupt-controller0: $nodename:0: 'interrupt-controller0' does not match '^interrupt-controller(@[0-9a-f,]+)*$'


See https://patchwork.ozlabs.org/patch/1332809

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

