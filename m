Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 07F4E357208
	for <lists+devicetree@lfdr.de>; Wed,  7 Apr 2021 18:19:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239015AbhDGQSw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Apr 2021 12:18:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235674AbhDGQSv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Apr 2021 12:18:51 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6921C06175F
        for <devicetree@vger.kernel.org>; Wed,  7 Apr 2021 09:18:38 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id t24so5999440pjw.4
        for <devicetree@vger.kernel.org>; Wed, 07 Apr 2021 09:18:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=1LcGMBgZH+8RdDIvf6DPACgtlrb3AgGczSw0YtcJ21g=;
        b=mvte4mGAyCL+6ff4Iot6AWiyVgPAJ9kDwqtuAStOV7ejnrU77CQnbR0eBHTkFt28Cr
         L+PLJcgz7S5/m/O6U2rvCnvJ+tCTeqii5mG3pBv5eeUdjN0i4cOFcTGlcyKx5el+JeO+
         tt5PaMGKpGYe0Vm5qaGNd8/MiR4kR2AJ114w1/crqAvDip/b2U7OhxEWxnqNV8SoonZe
         DHch0MgxHp/c11LYKAy+wera5iTLYAdU1SFdAG+t/epyqiHG7+izI+wZKK0hJqE6fpwW
         hxQw7HmWika5xu0El1NjyJQg1oia0RX5ayuLDGteTZx+hgVCMHba9UG8t7WH3h+oHL7b
         sU/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=1LcGMBgZH+8RdDIvf6DPACgtlrb3AgGczSw0YtcJ21g=;
        b=KgzMdjgGHa8UpeQTDcl9+EVySAmvO3FLYR3uPR/+mq5I4NIgq6pY1gRDMwfSeSnYIp
         u3Gm3ILoEWvwcUv7MzoqD4hHrh3e+IeEDE1aP7V/oNAuBftY2qRQTg10yGtvRleejDvD
         SBW9nH0evXw5NLqAhV8vvROFrdIT3/o/xVil0zYMoz/Z1TVULAqTGAoHeoQT7LIrEn2N
         KkZ1QeMPTlPOWB6aw/rYZ4bm3ARKcZoEhO1cCLn5jqRc1++NzV45N8qBwWNzswiWaRoU
         d5PQVgu8EoejebK9oZIJ/77Mdj0PCb0DHWZC2OesMAa+qAKl1LRKyKbFc3+vX2ClWj6l
         Us3A==
X-Gm-Message-State: AOAM532O1q/qOqkv/kz/y6nS++3sF1dtV2VDA/klU7XkGZofFO7HDM2e
        5tIHUhRs61z9QEzd1sqtgN1e7Q==
X-Google-Smtp-Source: ABdhPJxks2eNl4omFJDVf4WuMF5fHnJUH9+73bwYL6UxY4qore1JMTAo5acovBACmIIERmlUU3Ah9g==
X-Received: by 2002:a17:90b:2250:: with SMTP id hk16mr4006499pjb.110.1617812318464;
        Wed, 07 Apr 2021 09:18:38 -0700 (PDT)
Received: from xps15 (S0106889e681aac74.cg.shawcable.net. [68.147.0.187])
        by smtp.gmail.com with ESMTPSA id x7sm22693363pff.12.2021.04.07.09.18.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Apr 2021 09:18:37 -0700 (PDT)
Date:   Wed, 7 Apr 2021 10:18:36 -0600
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
To:     peng.fan@oss.nxp.com
Cc:     ohad@wizery.com, bjorn.andersson@linaro.org,
        o.rempel@pengutronix.de, robh+dt@kernel.org,
        devicetree@vger.kernel.org, shawnguo@kernel.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-remoteproc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V2 0/8] remoteproc: imx_rproc: support i.MX7ULP/8MN/8MP
Message-ID: <20210407161836.GB418374@xps15>
References: <1617095574-6764-1-git-send-email-peng.fan@oss.nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1617095574-6764-1-git-send-email-peng.fan@oss.nxp.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 30, 2021 at 05:12:46PM +0800, peng.fan@oss.nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> V2:
>  Patch 1/8, use fsl as vendor, typo fix
>  Because patchset [1] has v2 version, patch 5,6,7,8 are adapted that change.
> 
> This patchset is to support i.MX7ULP/8MN/8MP, also includes a patch to parse
> imx,auto-boot
> This patchset depends on [1]
> 
> [1] https://patchwork.kernel.org/project/linux-remoteproc/cover/1617082235-15923-1-git-send-email-peng.fan@oss.nxp.com/
> 
> Peng Fan (8):
>   dt-bindings: remoteproc: imx_rproc: add fsl,auto-boot property
>   dt-bindings: remoteproc: imx_rproc: add i.MX7ULP support
>   dt-bindings: remoteproc: imx_rproc: support i.MX8MN/P
>   remoteproc: imx_rproc: make clk optional
>   remoteproc: imx_rproc: parse fsl,auto-boot
>   remoteproc: imx_rproc: initial support for mutilple start/stop method
>   remoteproc: imx_rproc: support i.MX7ULP
>   remoteproc: imx_rproc: support i.MX8MN/P
>

There are glaring checkpatch warning on this set - the "DT compatible string"
ones are fine but the others are not negotiable.  As such I am dropping this set
entirely.
 
>  .../bindings/remoteproc/fsl,imx-rproc.yaml    |  11 +-
>  drivers/remoteproc/imx_rproc.c                | 170 +++++++++++++++---
>  2 files changed, 159 insertions(+), 22 deletions(-)
> 
> -- 
> 2.30.0
> 
