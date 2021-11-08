Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 756A6449B36
	for <lists+devicetree@lfdr.de>; Mon,  8 Nov 2021 18:57:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233035AbhKHSAj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Nov 2021 13:00:39 -0500
Received: from mail-ot1-f51.google.com ([209.85.210.51]:44870 "EHLO
        mail-ot1-f51.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233440AbhKHSAj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Nov 2021 13:00:39 -0500
Received: by mail-ot1-f51.google.com with SMTP id g25-20020a9d5f99000000b0055af3d227e8so22405124oti.11
        for <devicetree@vger.kernel.org>; Mon, 08 Nov 2021 09:57:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=74CgHbOiGXHAT1WXmdFnyE9m5aEGpCGlaYLSb0TtBns=;
        b=oRplae3dkZng5mMRWQcXJ+hL601oUFfgthxlLzg6m1YqZcmTp/5cCQqhcNRzynh7ae
         vxpV0bQw+SsYf0JbD2MWjO3DJAO6p/Ecsr6gEyghn2bR8H+UA4+0qjOx1hnSJjoWwoY9
         BO7VMWQMrvg2rZOvXjl1Wc5cI2Q6/Xoio6JLOaPzp7E/JZ5rA4Ecd/ucKl3i7zGscj2w
         lBT1+rs9mxiBvU6Mjj2N+qe8omXwt/Qorey11CBuS34ibmAAe/309+QhoSXbFM6il5p1
         OkQsJXEk/1gajGlU7yFcExcMhLYzUIsCHneAmkya3YQXqHWt7oGWYepIAa8gQ9osmHD+
         m9+A==
X-Gm-Message-State: AOAM53179dTm74yaiS9c6C9++EkRM6BD79v4QSRa4SeHstn90FW0I440
        fVAk248SZjduyaIBEwq0pw==
X-Google-Smtp-Source: ABdhPJx2BSXHkehCfN5UWjokDE+FxEtiZ4XxBCnvwZymax/0XqhN29CygPLgUr7LYWGmajNVyndgLA==
X-Received: by 2002:a05:6830:91a:: with SMTP id v26mr632166ott.313.1636394274107;
        Mon, 08 Nov 2021 09:57:54 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id t11sm4118092oov.23.2021.11.08.09.57.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Nov 2021 09:57:53 -0800 (PST)
Received: (nullmailer pid 3904278 invoked by uid 1000);
        Mon, 08 Nov 2021 17:57:52 -0000
Date:   Mon, 8 Nov 2021 11:57:52 -0600
From:   Rob Herring <robh@kernel.org>
To:     Rahul T R <r-ravikumar@ti.com>
Cc:     vigneshr@ti.com, andrey.gusakov@cogentembedded.com,
        dri-devel@lists.freedesktop.org, airlied@linux.ie, nm@ti.com,
        robh+dt@kernel.org, devicetree@vger.kernel.org, daniel@ffwll.ch
Subject: Re: [PATCH] dt-bindings: display: bridge: Convert
 toshiba,tc358767.txt to yaml
Message-ID: <YYllIOoUd+oSoO73@robh.at.kernel.org>
References: <20211028093656.25493-1-r-ravikumar@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211028093656.25493-1-r-ravikumar@ti.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 28 Oct 2021 15:06:56 +0530, Rahul T R wrote:
> Convert toshiba,tc358767.txt binding to yaml format
> 
> Signed-off-by: Rahul T R <r-ravikumar@ti.com>
> ---
>  .../display/bridge/toshiba,tc358767.txt       |  54 ------
>  .../display/bridge/toshiba,tc358767.yaml      | 158 ++++++++++++++++++
>  2 files changed, 158 insertions(+), 54 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.txt
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
> 

Applied, thanks!
