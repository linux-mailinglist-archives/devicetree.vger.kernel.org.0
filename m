Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3BF06484891
	for <lists+devicetree@lfdr.de>; Tue,  4 Jan 2022 20:30:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229732AbiADTaw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jan 2022 14:30:52 -0500
Received: from mail-oo1-f52.google.com ([209.85.161.52]:42608 "EHLO
        mail-oo1-f52.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229508AbiADTav (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jan 2022 14:30:51 -0500
Received: by mail-oo1-f52.google.com with SMTP id y13-20020a4a624d000000b002daae38b0b5so11815428oog.9
        for <devicetree@vger.kernel.org>; Tue, 04 Jan 2022 11:30:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=x6oTUGdVMYVlx3kPQnsirJ5Muw7/LAKbeRVwxFrXPhU=;
        b=FcmlBUmyY+9TOdFlWv/ukha+OcBVaIjbvGSpORA7OedaUtgsQagaAJXhrQPtDvd9sQ
         joyMCsu30Pp2AYke1WfUCQQiNhfMdVIp+kDmyKCmMrHSLe553kGoAHYIESj1SpkNICY9
         8tc/1Fq2MhN6bzD27Q5kVx3PCGOgJ7cMOs36rv1xpWlU9fJcrdQZhtJefZeMwet9QwI6
         KP402W8TkBiomSghBIfK01n7y56ZupDzAs0lD9rwCjn3EWZZJwXtixZ3/yN1lSbFSmO4
         FTLG8KxzlrX9uLthcu+Ww7fY2k/UD2DyWs9GdEVHR+MruauYsxGu/5zP23reuuiE70z0
         cQ7g==
X-Gm-Message-State: AOAM530HugPKbExLKnfZ+1xX/hhFLcIJxBa4mINS5VJLTKC5Y2786IID
        D173anLxLvxI/NkFYj9hHL5y2bk57A==
X-Google-Smtp-Source: ABdhPJy/F9td3Y40SsPIPS/CN2xe8T9tWHG4c9TN4+qb1gyaJoMCQxrDqFPgBBE7Cqc+rYXClm06Yg==
X-Received: by 2002:a4a:acca:: with SMTP id c10mr32313145oon.1.1641324651351;
        Tue, 04 Jan 2022 11:30:51 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id q14sm7859548ood.28.2022.01.04.11.30.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jan 2022 11:30:50 -0800 (PST)
Received: (nullmailer pid 1268827 invoked by uid 1000);
        Tue, 04 Jan 2022 19:30:50 -0000
Date:   Tue, 4 Jan 2022 13:30:50 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: display: simple: Add Multi-Inno Technology
 MI0700S4T-6 panel
Message-ID: <YdSgau/AnEpaHebI@robh.at.kernel.org>
References: <20211222133200.6586-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211222133200.6586-1-marex@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 22 Dec 2021 14:32:00 +0100, Marek Vasut wrote:
> Add Multi-Inno Technology MI0700S4T-6 7" 800x480 DPI panel
> compatible string.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org
> ---
>  .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
