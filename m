Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ADEE13C64D0
	for <lists+devicetree@lfdr.de>; Mon, 12 Jul 2021 22:14:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234060AbhGLURU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jul 2021 16:17:20 -0400
Received: from mail-io1-f46.google.com ([209.85.166.46]:36671 "EHLO
        mail-io1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233478AbhGLURT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jul 2021 16:17:19 -0400
Received: by mail-io1-f46.google.com with SMTP id u7so24223889ion.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jul 2021 13:14:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ujFMA+hMrUmT7cVUeg1tfuvODZSAIYxTqES6NtonES4=;
        b=fJc58sKS6KsITfe2i56SFS8f0YkEXgxw+LkrI23KFWHrzZCxNTnQCh7SKV6CN5MgJ3
         0s5mQ858nkdVcCIhIVXih3sozi2tOIdSLFD8GmYmpF81MUCS2+Io1r5OSnnZ2oyLinQ7
         lEBU42DyHYBur8+3uOOF95Kw4p94iJrmyZzGWdHJaJLx8iZTZkFi/jPcIUD0Uu3ImS5D
         Et8S9wMA3tjKHntii17t6hwnSrRwJrN7kEuzYU5DPAVFscq3vugHdgBCTVa7H08gULmL
         06/3uMI0qUZIhJM5oSGwkMMVtLr6x7Tnkl8hwlKbR4RwupktaEj2QLEzF7FLxWzncq8O
         BkOA==
X-Gm-Message-State: AOAM530FjJuCw24vQNKB+9A31BOKK+fsC0nd00lEcwbYkDg8vNVFVect
        bKQ/Q1BN7vkiL0KKQXT9UA==
X-Google-Smtp-Source: ABdhPJzOLn4APGVG1nKmc2qZ2z5S2MfzNNZt/cT3GpZl4Pv4O9svr42eRc1ndov0GLJQAPDrJRbBfw==
X-Received: by 2002:a6b:fe09:: with SMTP id x9mr533070ioh.20.1626120869835;
        Mon, 12 Jul 2021 13:14:29 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id h13sm3137813ila.44.2021.07.12.13.14.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jul 2021 13:14:28 -0700 (PDT)
Received: (nullmailer pid 2412840 invoked by uid 1000);
        Mon, 12 Jul 2021 20:14:27 -0000
Date:   Mon, 12 Jul 2021 14:14:27 -0600
From:   Rob Herring <robh@kernel.org>
To:     "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc:     Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Olof Johansson <olof@lixom.net>, soc@kernel.org,
        Li Yang <leoyang.li@nxp.com>,
        NXP Linux Team <linux-imx@nxp.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: add SolidSense boards
Message-ID: <20210712201427.GA2412806@robh.at.kernel.org>
References: <E1ludJe-0001rQ-8c@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1ludJe-0001rQ-8c@rmk-PC.armlinux.org.uk>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 19 Jun 2021 16:55:26 +0100, Russell King (Oracle) wrote:
> Add SolidRun SolidSense boards.
> 
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
