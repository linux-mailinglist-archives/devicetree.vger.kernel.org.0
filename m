Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30CE6413B7A
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 22:36:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232287AbhIUUhe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 16:37:34 -0400
Received: from mail-ot1-f48.google.com ([209.85.210.48]:40629 "EHLO
        mail-ot1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234947AbhIUUhe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Sep 2021 16:37:34 -0400
Received: by mail-ot1-f48.google.com with SMTP id l16-20020a9d6a90000000b0053b71f7dc83so248175otq.7
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 13:36:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ByrtFbrPl2Y6J8eEGz4qbI0N8sjhczFqDh16yLb9Hyo=;
        b=d1Hk5NY/d7JQdwKxL0Hvf1JlLSOYLeJjycIw4C+kOT6uIIrxc30fHpMhbjZ6M7DVQS
         eWKzABv8kXQSLYt3/tfIWmViJOO98vBP1TWZdeJM8CkkQuRPoF0cnW3CticiD0dKcATS
         AM1cYrJ6ofg9Fsj7/LY5XGNLKLFGzffmP2NSfhZwzJYHdQ4o1RSuobd27mnLJN1b0MZ1
         WynyBil/gm+joxJffFt4fUzttw0BD5y5BJ8cN0UIMIul0P8wiwAaXR4rTICus9QRhyDm
         CGFsUbiY2XYAocO5aETms3HQ1BEv+maKM85UAKn3d7rHAQ9poXL/Z4bmileojEHSYfTd
         xqlA==
X-Gm-Message-State: AOAM530yLSwFFdi8gsSvutDflbs1ftYrN671bWJFMKWK5kYrOuPED3eM
        xVh6+lhcOCjaHi4FcXXLdg==
X-Google-Smtp-Source: ABdhPJxMcYaFH3l2V7hfw489I3sPUtyFBhheIhRj4pqe9XcIkyppSNTSacBFOxzHIHo9zUYHEaLACA==
X-Received: by 2002:a9d:411:: with SMTP id 17mr10110662otc.239.1632256564469;
        Tue, 21 Sep 2021 13:36:04 -0700 (PDT)
Received: from robh.at.kernel.org (rrcs-192-154-179-36.sw.biz.rr.com. [192.154.179.36])
        by smtp.gmail.com with ESMTPSA id v24sm10362ote.66.2021.09.21.13.36.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Sep 2021 13:36:03 -0700 (PDT)
Received: (nullmailer pid 3284895 invoked by uid 1000);
        Tue, 21 Sep 2021 20:36:01 -0000
Date:   Tue, 21 Sep 2021 15:36:01 -0500
From:   Rob Herring <robh@kernel.org>
To:     Daniel Palmer <daniel@0x0f.com>
Cc:     maz@kernel.org, linux-arm-kernel@lists.infradead.org,
        tglx@linutronix.de, romain.perier@gmail.com, robh+dt@kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: interrupt-controller: Add SigmaStar
 SSD20xD gpi
Message-ID: <YUpCMXjUh4JllX/Z@robh.at.kernel.org>
References: <20210914100415.1549208-1-daniel@0x0f.com>
 <20210914100415.1549208-2-daniel@0x0f.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210914100415.1549208-2-daniel@0x0f.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 14 Sep 2021 19:04:13 +0900, Daniel Palmer wrote:
> Add a binding description for the SigmaStar GPIO interrupt
> controller, gpi, found on the SSD201 and SSD202D.
> 
> Signed-off-by: Daniel Palmer <daniel@0x0f.com>
> ---
>  .../sstar,ssd20xd-gpi.yaml                    | 53 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  2 files changed, 54 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/sstar,ssd20xd-gpi.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
