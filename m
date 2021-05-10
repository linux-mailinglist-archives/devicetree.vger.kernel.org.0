Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F60C379356
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 18:04:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230218AbhEJQF5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 12:05:57 -0400
Received: from mail-oi1-f175.google.com ([209.85.167.175]:45053 "EHLO
        mail-oi1-f175.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230444AbhEJQF4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 12:05:56 -0400
Received: by mail-oi1-f175.google.com with SMTP id d21so16205170oic.11
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 09:04:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=wDSm7VyqmsI79Q0gi5BkwuYNgM/0JMFGpozF/3qYLUE=;
        b=n1PVeB2suAiImoDGO0pM9PxwlvCP+jPFkh1nvml/i7pA1Plw9Cr75TSv01KBvsDKDA
         xaZSFnZ1i5+xxU06oIVwuJXg9vP1YR15Mwig4VvwB20YsTC8UBjhhNFW5YbEGi/eoZ2g
         SAYyxA/XsLHg7+6+EBIw8e4TgpZ5bCyYip3SM+atXgHt1IeZCnbc5horYpcvr+MmuDtM
         r5qI5slPe48EcoRJV9Ww/+q7DdU8le+OA4SeDRxS4LcZL+jxxAHhtSvNTBqx7zD7ZGc/
         v24xDX0Et9WnfL+QeN3gB91yySmjQbFvD90AEdBRCRBc/6HC+xgo/RIPGKRGQgoyCdZx
         9thw==
X-Gm-Message-State: AOAM530nQYh4U2Dh7NXU4I0eAAv8wWsQW/UAc7S8oI2Ld5BZPlVDf4jg
        mkz5rKSeHhUbVK0eSxXAGQ==
X-Google-Smtp-Source: ABdhPJwBKAzUpNegj8MLIsyqAT/pzgKte3Px3HdMbcpoI5LSDUH6Iw1idisz8W5Bw/g+BO1HxD62Kg==
X-Received: by 2002:aca:c109:: with SMTP id r9mr25809493oif.83.1620662690388;
        Mon, 10 May 2021 09:04:50 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id y6sm3307363otk.42.2021.05.10.09.04.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 09:04:48 -0700 (PDT)
Received: (nullmailer pid 206653 invoked by uid 1000);
        Mon, 10 May 2021 16:04:47 -0000
Date:   Mon, 10 May 2021 11:04:47 -0500
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <dev@lynxeye.de>
Cc:     "Lukas F . Hartmann" <lukas@mntre.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Subject: Re: [PATCH 2/3] dt-bindings: vendor-prefixes: add mntre
Message-ID: <20210510160447.GA206605@robh.at.kernel.org>
References: <20210508121650.105864-1-dev@lynxeye.de>
 <20210508121650.105864-2-dev@lynxeye.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210508121650.105864-2-dev@lynxeye.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 08 May 2021 14:16:49 +0200, Lucas Stach wrote:
> MNT Research GmbH develops open source hardware, software
> and textiles in Berlin, Germany.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
