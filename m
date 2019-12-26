Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 88DCE12AF85
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2019 00:07:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726839AbfLZXHS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Dec 2019 18:07:18 -0500
Received: from mail-io1-f67.google.com ([209.85.166.67]:46060 "EHLO
        mail-io1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726277AbfLZXHR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Dec 2019 18:07:17 -0500
Received: by mail-io1-f67.google.com with SMTP id i11so24353946ioi.12
        for <devicetree@vger.kernel.org>; Thu, 26 Dec 2019 15:07:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=09rS8PXmYb66+opfDF/HoSqGuS628myutYINcOsY6E8=;
        b=Ny0rUTxr7Rtx+nyW3kiMcuEhD8yN0higzyDLW84h1sg5auRZ9qgSEmcV6hr0R+DU37
         Bp1CPV+qd2y9TTljiXPz742Cj2+Yipz7st6fZiNniOnBRPf44bltdYYlGho7Ppya5Obp
         jxXKy6BKslVQCgGmOHxzDym5YlCs/GR1MkRny9tw5xWd66p1blJDzPANhiAKuLgos4fo
         ryCa3dQ2kPw4sEnfqyxnzKFY4RvvTtNWdZjCAO59e8jLCJ1MCh7uTQJrJd8F4qddC60N
         A+RRuLFowt1mRpva67KA7gF9HAGZ+rHmf3APIUXNCIa3E2xEsbWsvSiW9VeGCQRFhUqK
         PskA==
X-Gm-Message-State: APjAAAVvZf3lOWWlxzqrhdzmrpUcc92udjG3R+TBawv87fy2SHHFTY0M
        l54FVNoxgfzPIRbkPe/w2KXYYSk=
X-Google-Smtp-Source: APXvYqwHfi3Nghh7YpAEVyuVEpVyxC0UkgOcBo+I62eRYV/HTallfoRYP8e+mEoxXn9WqJsXghWSTg==
X-Received: by 2002:a02:3312:: with SMTP id c18mr38051839jae.24.1577401637165;
        Thu, 26 Dec 2019 15:07:17 -0800 (PST)
Received: from localhost ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id f125sm2969342ilh.88.2019.12.26.15.07.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Dec 2019 15:07:16 -0800 (PST)
Date:   Thu, 26 Dec 2019 16:07:15 -0700
From:   Rob Herring <robh@kernel.org>
To:     Jyri Sarha <jsarha@ti.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        tomi.valkeinen@ti.com, laurent.pinchart@ideasonboard.com,
        peter.ujfalusi@ti.com, bparrot@ti.com, praneeth@ti.com,
        yamonkar@cadence.com, sjakhade@cadence.com, sam@ravnborg.org,
        robh+dt@kernel.org, maxime@cerno.tech
Subject: Re: [PATCH v5 2/5] dt-bindings: display: ti,am65x-dss: Add dt-schema
 yaml binding
Message-ID: <20191226230715.GA4882@bogus>
References: <cover.1576857145.git.jsarha@ti.com>
 <1007a467492c2a588d4348106313a9f4853f3f20.1576857145.git.jsarha@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1007a467492c2a588d4348106313a9f4853f3f20.1576857145.git.jsarha@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 20 Dec 2019 17:55:10 +0200, Jyri Sarha wrote:
> Add dt-schema yaml bindig for AM65x DSS, AM65x version TI Keystone
> Display SubSystem.
> 
> Version history:
> 
> v2: no change
> 
> v3: - Add ports node
>     - use allOf in ti,am65x-oldi-io-ctrl to add both $ref and maxItems
>     - Add includes to dts example
>     - reindent dts example
> 
> v4: - Add descriptions to reg and clocks properties
>     - Remove minItems when its value is the same as maxItems value
> 
> v5: - itemize reg and clocks properties' descriptions
> 
> Signed-off-by: Jyri Sarha <jsarha@ti.com>
> ---
>  .../bindings/display/ti/ti,am65x-dss.yaml     | 152 ++++++++++++++++++
>  1 file changed, 152 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
