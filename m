Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0088B2D436C
	for <lists+devicetree@lfdr.de>; Wed,  9 Dec 2020 14:40:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732525AbgLINi0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Dec 2020 08:38:26 -0500
Received: from mail-ot1-f65.google.com ([209.85.210.65]:33632 "EHLO
        mail-ot1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728490AbgLINiX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Dec 2020 08:38:23 -0500
Received: by mail-ot1-f65.google.com with SMTP id b18so1352887ots.0
        for <devicetree@vger.kernel.org>; Wed, 09 Dec 2020 05:38:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=bbIGGWD5EmepK1sb03wsv6bLHMc6bWP/D7tOFbnW7rQ=;
        b=e0ohge9V8f+l0OVMufU35PeQvuELGVKJGmXw+h4egu563EBx+ivdM2tX9l5iPlwcop
         4p4TiO3U0kJOgJrCtvWbmQPZKFIXS/OG7BOGJsSvLtKzgG50Zrgr4A63VFuhILDA2QXp
         +JBDubHWgPpVRw6B4hm0aSL5pHjeZiUERnEvn/hGbkQgBuIjN9xh1NIiUNbt4pvnALl1
         y5j7S2WYwyE29gZ2LPS6js1WqVeb88uCiSUPuTTzFXF851bg84657YqiAr8jloKMTU1a
         +vz65Q7dPv+IMa4XrHlp/rphaQ+143fHMwHJpMr0byqGKo/uTcF/wSiuA74osEFfReSc
         ki1Q==
X-Gm-Message-State: AOAM530SHgARcRhP0hlQHIgPzLqYKHZKsFF7vOHfoA2kuDwK7DU5DtCL
        6ZWt7PeWlfM9HA70T8Wn8w==
X-Google-Smtp-Source: ABdhPJz3rqUGHoAzJAHwlUQKCn/IbN7Ciwfj/Uk/GB5qO7AbrzGFVYyhLH53x3i0FKei6m0mS+cFZQ==
X-Received: by 2002:a9d:3e85:: with SMTP id b5mr1710024otc.354.1607521062924;
        Wed, 09 Dec 2020 05:37:42 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id z12sm410632oti.45.2020.12.09.05.37.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Dec 2020 05:37:41 -0800 (PST)
Received: (nullmailer pid 329250 invoked by uid 1000);
        Wed, 09 Dec 2020 13:37:40 -0000
Date:   Wed, 9 Dec 2020 07:37:40 -0600
From:   Rob Herring <robh@kernel.org>
To:     Joakim Zhang <qiangqing.zhang@nxp.com>
Cc:     frank.li@nxp.com, linux-imx@nxp.com, will@kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        john.garry@huawei.com
Subject: Re: [PATCH V2 1/2] bindings: perf: imx-ddr: add compatible string
Message-ID: <20201209133740.GA329199@robh.at.kernel.org>
References: <20201130114202.26057-1-qiangqing.zhang@nxp.com>
 <20201130114202.26057-2-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201130114202.26057-2-qiangqing.zhang@nxp.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 30 Nov 2020 19:42:01 +0800, Joakim Zhang wrote:
> Add extra compabile string to support driver.
> 
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
> ---
>  Documentation/devicetree/bindings/perf/fsl-imx-ddr.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
