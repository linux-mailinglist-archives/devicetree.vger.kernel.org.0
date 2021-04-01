Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E29C351B7C
	for <lists+devicetree@lfdr.de>; Thu,  1 Apr 2021 20:11:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237744AbhDASIq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Apr 2021 14:08:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237436AbhDASDn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Apr 2021 14:03:43 -0400
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8430C02FEB7
        for <devicetree@vger.kernel.org>; Thu,  1 Apr 2021 09:29:42 -0700 (PDT)
Received: by mail-oi1-x22b.google.com with SMTP id d12so2312824oiw.12
        for <devicetree@vger.kernel.org>; Thu, 01 Apr 2021 09:29:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=knmO/xsZykb41plAgwrvQz8grpkqAEgxxYJ/73CKCWE=;
        b=qFcuaYLtSQfV0S1Ms7jwM0R5Q4acQBwmI/qJHwcsq/QxuqgA2XGsMGlGYfpyhJGOwo
         Nxc3qRKZF5D+yKNGwWjA1aILzmRgFtanxIfmnHCViYGZziXEQ7v08YKM94R8TxDl/dGl
         IUMM9EA15hSlfpAFeDX/8vDwuH80mbGFb7OQgbc9aGnLoq6Osz6Fh1p+MDpQdpb4VLhY
         JEUPsEaekDbiWdQCa9mVuCU1Yjk/HOvDRQ2cQrRyjh+HxqjpnXdhLeQhj4nI6hnjduIL
         eycHiClPZH3UT1Wae95W+39J6IRDB8ROBsqZroi7Q3xeUSPuV4d+wnNKgPV14G9FBKbj
         IQzQ==
X-Gm-Message-State: AOAM533ZXGw3rj3JL3vYNm8wrRcUPFGIsUjt31FUWRL3isRUUdWfg/AA
        uL1etmMwkId0qwlsVhSB7Q==
X-Google-Smtp-Source: ABdhPJzqYQv3VxOLR8ru+2W4ZEnfo876uyIkUmhSIiJEZIUULJgdpbHc5mo0gk1gZGkfZb5gQAhsvg==
X-Received: by 2002:aca:6204:: with SMTP id w4mr6803018oib.86.1617294581995;
        Thu, 01 Apr 2021 09:29:41 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id p3sm1113076oif.53.2021.04.01.09.29.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 09:29:41 -0700 (PDT)
Received: (nullmailer pid 559094 invoked by uid 1000);
        Thu, 01 Apr 2021 16:29:40 -0000
Date:   Thu, 1 Apr 2021 11:29:40 -0500
From:   Rob Herring <robh@kernel.org>
To:     Daniel Mack <daniel@zonque.org>
Cc:     airlied@linux.ie, dri-devel@lists.freedesktop.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org, daniel@ffwll.ch
Subject: Re: [PATCH v8 1/2] dt-bindings: display: add bindings for newhaven,
 1.8-128160EF
Message-ID: <20210401162940.GA559064@robh.at.kernel.org>
References: <20210331092114.3185882-1-daniel@zonque.org>
 <20210331092114.3185882-2-daniel@zonque.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210331092114.3185882-2-daniel@zonque.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 31 Mar 2021 11:21:13 +0200, Daniel Mack wrote:
> This adds documentation for a new ILI9163 based, SPI connected display.
> 
> Signed-off-by: Daniel Mack <daniel@zonque.org>
> ---
>  .../display/panel/ilitek,ili9163.yaml         | 69 +++++++++++++++++++
>  1 file changed, 69 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,ili9163.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
