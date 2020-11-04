Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CF9EE2A6CB9
	for <lists+devicetree@lfdr.de>; Wed,  4 Nov 2020 19:33:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727923AbgKDSdt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Nov 2020 13:33:49 -0500
Received: from mail-oi1-f193.google.com ([209.85.167.193]:33050 "EHLO
        mail-oi1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726225AbgKDSdt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Nov 2020 13:33:49 -0500
Received: by mail-oi1-f193.google.com with SMTP id s21so23227675oij.0
        for <devicetree@vger.kernel.org>; Wed, 04 Nov 2020 10:33:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=5B8qrVPM5BWPGWKAKqWXi/BbhRSACICMp91l8/+DStc=;
        b=d/RYQXHROVndgbqNJtb2cln0h+kS1f87p0DEcnUK9BfBzhSIfXgiqMhUWlXJoy3X2R
         1whjkKocuz9p40yszWmcqf3eCIZO5h9/gROtSw7+lZ3v02C85rfJ2Z8G7HdAbaEMNLiJ
         3GE8rR7sws02FEb5aZgCjEhtgjPxDFg+POxxwwVpiPZ/3Z3z6QZ0YHTELVqhHlzpg7Hs
         KdjBI+FgsR8AN8fNL+catOq6iQ3GmKN4UXyHBqm8JJ7oKqxG3j26RZU4MgGJe8nRRffz
         HzibzJvS+Krw2fYLxvep1XNnBE/cRsvllQm2Aclmf3bxXQJwwMjmT1CjE5R9ISNe0pgS
         YiVw==
X-Gm-Message-State: AOAM5331HZUV0VKYg9YZNxn9CBnpWnwSMvQB6JP6cQbTEfrms97qyVKO
        L/0ZzqDHCCp+4sYFCOFUgA==
X-Google-Smtp-Source: ABdhPJwxDIzi261bUymLavG5I63jG80tnCA1Ywh1cibbotgdK7Gt+qG0C0w+PT7DdFE/kr4NwVbz1Q==
X-Received: by 2002:aca:75c4:: with SMTP id q187mr3178584oic.132.1604514828061;
        Wed, 04 Nov 2020 10:33:48 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id h6sm628296oia.51.2020.11.04.10.33.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Nov 2020 10:33:47 -0800 (PST)
Received: (nullmailer pid 3916880 invoked by uid 1000);
        Wed, 04 Nov 2020 18:33:46 -0000
Date:   Wed, 4 Nov 2020 12:33:46 -0600
From:   Rob Herring <robh@kernel.org>
To:     Nicolas Pitre <nico@fluxnic.net>
Cc:     linux-i3c@lists.infradead.org, Sakari Ailus <sakari.ailus@iki.fi>,
        devicetree@vger.kernel.org,
        Laura Nixon <laura.nixon@team.mipi.org>,
        Matthew Schnoor <matthew.schnoor@intel.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Robert Gough <robert.gough@intel.com>,
        Boris Brezillon <boris.brezillon@collabora.com>,
        Rob Herring <robh+dt@kernel.org>,
        Nicolas Pitre <npitre@baylibre.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: i3c: MIPI I3C Host Controller
 Interface
Message-ID: <20201104183346.GC3913864@bogus>
References: <20201102222220.1785859-1-nico@fluxnic.net>
 <20201102222220.1785859-2-nico@fluxnic.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201102222220.1785859-2-nico@fluxnic.net>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 02 Nov 2020 17:22:19 -0500, Nicolas Pitre wrote:
> From: Nicolas Pitre <npitre@baylibre.com>
> 
> The MIPI I3C HCI (Host Controller Interface) specification defines
> a common software driver interface to support compliant MIPI I3C
> host controller hardware implementations from multiple vendors.
> 
> All that is needed is an I/O area and an interrupt signal;. The hardware
> is self-advertising wrt its implementor and implemented capabilities so
> there is currently no details that the driver can't figure out on its own.
> 
> Signed-off-by: Nicolas Pitre <npitre@baylibre.com>
> ---
>  .../devicetree/bindings/i3c/mipi-i3c-hci.yaml | 45 +++++++++++++++++++
>  1 file changed, 45 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml
> 


My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml: 'additionalProperties' is a required property
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml: ignoring, error in schema: 
warning: no schema found in file: ./Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml


See https://patchwork.ozlabs.org/patch/1392544

The base for the patch is generally the last rc1. Any dependencies
should be noted.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

