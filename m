Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5490B2862F8
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 18:01:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728939AbgJGQBa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Oct 2020 12:01:30 -0400
Received: from mail-oi1-f196.google.com ([209.85.167.196]:38069 "EHLO
        mail-oi1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728289AbgJGQBa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Oct 2020 12:01:30 -0400
Received: by mail-oi1-f196.google.com with SMTP id 26so2975171ois.5
        for <devicetree@vger.kernel.org>; Wed, 07 Oct 2020 09:01:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Axwk9GoxRz4cVaj0ajd90BMmeePspqdRR76uedy1D64=;
        b=NMIsCRu9N8zhp2eztjVhtRjueuSaMef5SAowBRC5eQrAEbzHKeeIwOZMZII+e1RKwp
         76chdfjPo2SnoC9NCTGPIkS7BOOJTL1T4YVXL8AjsKQCL0eRvlg2IquH8eKrRE0fK1Ft
         UYz3PWYcMu7DXL1OO6WB/XKw+cZUyAbg+zKiUJOyWrAffeglFbLsnYBbb9z+0FThjRiA
         KCQ1q2Ly9Tp/sR4qzvYsCaIgIgDxSjvLPWHyrckbnCVgucYEQTZAbCV/vFa5ownUKVor
         +COV4myalMttFXqfbJcJm0AYMRJGePZiXDUvMmzAflMAkR2wMimQXrwPHbw9ZdLowgbc
         bLqw==
X-Gm-Message-State: AOAM532ZMd15vj16/2VlJ1QC1K0SYIe5FiZnn5MdneZqY9YbIFHgYCc7
        fJpSESCuXNqp91loVzcdyA==
X-Google-Smtp-Source: ABdhPJzIaAxOFImu6KIcREPogpBm7IpydCMinXp9HgSwRPyqWBrai4uXEJMCCsYNy9azaDeTVrarVg==
X-Received: by 2002:aca:35c6:: with SMTP id c189mr2183759oia.171.1602086490266;
        Wed, 07 Oct 2020 09:01:30 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id t5sm1809907otl.22.2020.10.07.09.01.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Oct 2020 09:01:29 -0700 (PDT)
Received: (nullmailer pid 299118 invoked by uid 1000);
        Wed, 07 Oct 2020 16:01:28 -0000
Date:   Wed, 7 Oct 2020 11:01:28 -0500
From:   Rob Herring <robh@kernel.org>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Rob Herring <robh+dt@kernel.org>, dri-devel@lists.freedesktop.org,
        Marek Vasut <marex@denx.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 2/7] dt-bindings: display: mxsfb: Add and fix
 compatible strings
Message-ID: <20201007160128.GA299084@bogus>
References: <20201007012438.27970-1-laurent.pinchart@ideasonboard.com>
 <20201007012438.27970-3-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201007012438.27970-3-laurent.pinchart@ideasonboard.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 07 Oct 2020 04:24:33 +0300, Laurent Pinchart wrote:
> Additional compatible strings have been added in DT source for the
> i.MX6SL, i.MX6SLL, i.MX6UL and i.MX7D without updating the bindings.
> Most of the upstream DT sources use the fsl,imx28-lcdif compatible
> string, which mostly predates the realization that the LCDIF in the
> i.MX6 and newer SoCs have extra features compared to the i.MX28.
> 
> Update the bindings to add the missing compatible strings, with the
> correct fallback values. This fails to validate some of the upstream DT
> sources. Instead of adding the incorrect compatible fallback to the
> binding, the sources should be updated separately.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
> ---
> Changes since v1:
> 
> - Fix indentation under enum
> ---
>  .../devicetree/bindings/display/fsl,lcdif.yaml | 18 +++++++++++++-----
>  1 file changed, 13 insertions(+), 5 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
