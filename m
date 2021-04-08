Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 544F6358E4D
	for <lists+devicetree@lfdr.de>; Thu,  8 Apr 2021 22:24:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232156AbhDHUYe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Apr 2021 16:24:34 -0400
Received: from mail-ot1-f43.google.com ([209.85.210.43]:37501 "EHLO
        mail-ot1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231852AbhDHUYd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Apr 2021 16:24:33 -0400
Received: by mail-ot1-f43.google.com with SMTP id t23-20020a0568301e37b02901b65ab30024so3591992otr.4
        for <devicetree@vger.kernel.org>; Thu, 08 Apr 2021 13:24:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=M3YCDdiRra6VogGwA1vnhtREzQ+WDuc4H3xMdhTez+I=;
        b=ES03wZeWqUEICSWb031l3z9ytCNZfjOG/YWS4PWajuth1M9P+jXN80DyL671L0hYzC
         3nvg1x4wnwFVp90A4lyYNHIoaHjQgA04+K+ShLSsF6OP8vx7plDcyZteZc3GVuz+j8++
         AisyhFgvsH+jhdVWxdZYHl0TUivuwQ85ZTiCHpwFVxOz1L1QTuni7MM6U/wbu/E+yDkZ
         R9YDNoFY3pus6tBghUY07fLKo++7hC3ROs7hHaZXRvHMCBgOWShN3g+HzSIkppF2qrf4
         Q/oUOJ8p005UpIxNJ51XW2HhOp9oPiBNIMhJtv6P8c+lAVcVNjm5YuUpxKnjx6vPZlhW
         B8pQ==
X-Gm-Message-State: AOAM533O1G19GUCsY1kAOoip38ULspashsp1z+VFjtQkf1K86ZKK8RuU
        wQ0utRKmrjFENSI6uKTOHQ==
X-Google-Smtp-Source: ABdhPJyj/1Kl/phQw5WRAIHujWspkCMZzRj5GHMkFqQn8S2h6Zjz41EgwK7JyjKL4+nlYjHLVRVBbg==
X-Received: by 2002:a05:6830:1290:: with SMTP id z16mr9634528otp.122.1617913461847;
        Thu, 08 Apr 2021 13:24:21 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id g13sm105200otq.3.2021.04.08.13.24.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 13:24:20 -0700 (PDT)
Received: (nullmailer pid 1901276 invoked by uid 1000);
        Thu, 08 Apr 2021 20:24:20 -0000
Date:   Thu, 8 Apr 2021 15:24:20 -0500
From:   Rob Herring <robh@kernel.org>
To:     Giulio Benetti <giulio.benetti@benettiengineering.com>
Cc:     Rob Herring <robh+dt@kernel.org>, David Airlie <airlied@linux.ie>,
        devicetree@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v3 2/9] dt-bindings: display/panel: add Jenson JT60245-01
Message-ID: <20210408202420.GA1901222@robh.at.kernel.org>
References: <20210305234427.572114-1-giulio.benetti@benettiengineering.com>
 <20210401231720.2470869-1-giulio.benetti@benettiengineering.com>
 <20210401231720.2470869-3-giulio.benetti@benettiengineering.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210401231720.2470869-3-giulio.benetti@benettiengineering.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 02 Apr 2021 01:17:13 +0200, Giulio Benetti wrote:
> Add DT binding for "jenson,jt60245-01".
> 
> Signed-off-by: Giulio Benetti <giulio.benetti@benettiengineering.com>
> ---
>  .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
