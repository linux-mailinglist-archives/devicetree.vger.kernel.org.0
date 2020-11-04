Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC14A2A6CBC
	for <lists+devicetree@lfdr.de>; Wed,  4 Nov 2020 19:35:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732396AbgKDSfC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Nov 2020 13:35:02 -0500
Received: from mail-oi1-f196.google.com ([209.85.167.196]:33245 "EHLO
        mail-oi1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726225AbgKDSfC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Nov 2020 13:35:02 -0500
Received: by mail-oi1-f196.google.com with SMTP id s21so23231805oij.0
        for <devicetree@vger.kernel.org>; Wed, 04 Nov 2020 10:35:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=+Pu+qC55UB5YlipKgMufeJmLLgPD0BKUpqLwOtd0Zyg=;
        b=EoIx8rGB07oElmtO6UKskmytD/K8L87ICckrSKjcoOpCRgqYMQgkoWkYE74pPLEk9H
         GB0Uxw/jenW1uB9NVbcxMr6XK46Nm377Mmi2nWxqBa04H8N3TKA/853Gz52gHWc0OaNC
         UbBqj2wtYsQic9nu0fkCN2kfXxzPQcftj0yw5FDnuDExZHjl7BfiUxNwlGoPHW4xwKtC
         dE6XEPmfkSMauAjLsH0+bqgD0uqRas8jo/hM0ciRFRnxmX44HLiEjE24G/GhS7JMLAo2
         h2TBTjDr+EnDK/DnEROskjoOiONI2TQAzM/h+SXfyx09wxwl9DPDn1m5YrCNrPXYk4tv
         EALw==
X-Gm-Message-State: AOAM532Hi1SPZpW0fj61h03TtukfdUO66GVTGOFtNszFqSncmD6wrLGf
        ZP4eaQZ7k3DNRu26anPK8Q==
X-Google-Smtp-Source: ABdhPJy33XR8jM2PpPlqT8iGDxV/vuCiTtd1LjvEqTOvE1BD4X7txBXlvRJjIj317Uo7shb8QwIuBw==
X-Received: by 2002:aca:f188:: with SMTP id p130mr3162756oih.106.1604514901257;
        Wed, 04 Nov 2020 10:35:01 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id t29sm678444otd.51.2020.11.04.10.35.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Nov 2020 10:35:00 -0800 (PST)
Received: (nullmailer pid 3918481 invoked by uid 1000);
        Wed, 04 Nov 2020 18:34:59 -0000
Date:   Wed, 4 Nov 2020 12:34:59 -0600
From:   Rob Herring <robh@kernel.org>
To:     Nicolas Pitre <nico@fluxnic.net>
Cc:     Boris Brezillon <boris.brezillon@collabora.com>,
        linux-i3c@lists.infradead.org, devicetree@vger.kernel.org,
        Nicolas Pitre <npitre@baylibre.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Sakari Ailus <sakari.ailus@iki.fi>,
        Laura Nixon <laura.nixon@team.mipi.org>,
        Robert Gough <robert.gough@intel.com>,
        Matthew Schnoor <matthew.schnoor@intel.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: i3c: MIPI I3C Host Controller
 Interface
Message-ID: <20201104183459.GA3917393@bogus>
References: <20201102222220.1785859-1-nico@fluxnic.net>
 <20201102222220.1785859-2-nico@fluxnic.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201102222220.1785859-2-nico@fluxnic.net>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 02, 2020 at 05:22:19PM -0500, Nicolas Pitre wrote:
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

With additionalProperties added,

Reviewed-by: Rob Herring <robh@kernel.org>
