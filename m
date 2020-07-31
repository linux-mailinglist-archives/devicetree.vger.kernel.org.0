Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 92F61234C92
	for <lists+devicetree@lfdr.de>; Fri, 31 Jul 2020 23:00:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727121AbgGaVAb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Jul 2020 17:00:31 -0400
Received: from mail-io1-f65.google.com ([209.85.166.65]:36901 "EHLO
        mail-io1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727053AbgGaVAa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Jul 2020 17:00:30 -0400
Received: by mail-io1-f65.google.com with SMTP id w12so19369165iom.4
        for <devicetree@vger.kernel.org>; Fri, 31 Jul 2020 14:00:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=G/qPFCNTtC0Fn1aTXHhMBYegI0BFB367gas2aSnVM6g=;
        b=faAzI0Z0zLpoNeooEMfBLOzGmMV/ZX7ODx8iHKHVKeuM74+Zj5d3lyeEjW8oegyF6j
         C2AYRJ4n3MxGm0GYTYQRmkFA9pRGEt7QpKGk0JtP7FxzJnE8UfFKlaZTE0U9JK8tQ9Rf
         YqQW+jHt6ezutLx3BxvkGYyLLt5g6GDX3NfPaukRlI3XfysbazB+GQS20aoxex6TLkgx
         x1U165ZzzMXIqCmcuQ18Syp0bb09Rm0gJTUbPw6PjsLJ05Pa1mhYcY46p6IuVQYi73Gg
         ke8b1GSlePrk726lxHJ997sVYWh9skq7a7FcqZ3SfaWZF34XI/GHoofTjFQ+x2AAfgj3
         XB/Q==
X-Gm-Message-State: AOAM530zG22wF66OxVvSpMtsx9ZhswGQImRLnwJ9sW0dEw6Uuaup8NeE
        NIbaRoMBcjvzLFQiCp4Q4A==
X-Google-Smtp-Source: ABdhPJwjXacPKQgTimCk3J6CewNjXLuAl9FbHxlWgRvcsm4YF8TjEq4+C0vdEpsUg5uVivja6o13qg==
X-Received: by 2002:a6b:ce01:: with SMTP id p1mr5339385iob.19.1596229230099;
        Fri, 31 Jul 2020 14:00:30 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
        by smtp.gmail.com with ESMTPSA id m77sm5602508ilb.7.2020.07.31.14.00.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 14:00:29 -0700 (PDT)
Received: (nullmailer pid 778007 invoked by uid 1000);
        Fri, 31 Jul 2020 21:00:27 -0000
Date:   Fri, 31 Jul 2020 15:00:27 -0600
From:   Rob Herring <robh@kernel.org>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     kernel@pengutronix.de, festevam@gmail.com, s.hauer@pengutronix.de,
        linux-imx@nxp.com, shawnguo@kernel.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: arm: fsl: Add imx8mm ddr4 evk board
Message-ID: <20200731210027.GA777851@bogus>
References: <1595918641-2325-1-git-send-email-ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1595918641-2325-1-git-send-email-ping.bai@nxp.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 28 Jul 2020 14:43:59 +0800, Jacky Bai wrote:
> Add entry for i.MX8MM DDR4 EVK board and update
> the comments for imx8mm-evk as it is populated
> with LPDDR4.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
