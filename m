Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 774CE39C372
	for <lists+devicetree@lfdr.de>; Sat,  5 Jun 2021 00:25:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230041AbhFDW1i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 18:27:38 -0400
Received: from mail-ot1-f54.google.com ([209.85.210.54]:45891 "EHLO
        mail-ot1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229746AbhFDW1h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Jun 2021 18:27:37 -0400
Received: by mail-ot1-f54.google.com with SMTP id t10-20020a05683022eab0290304ed8bc759so10523770otc.12
        for <devicetree@vger.kernel.org>; Fri, 04 Jun 2021 15:25:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=CNCmonV9rCNOjeR4oupoHfX758ilNF/6uvBFBEfQs3I=;
        b=a3CIY5OOiflUbhp9CESo/QR7ouiE8MmXHFAt/cCNlzZvoWPui+QTyhPchfoHt6wsy9
         Eah5g87goV+mxHZO4BVK1i7zWk08UDQxIN3Gn6C2TeE2lapH/elThMG8zIL2z9m0qVbe
         Pb5hgR7t3IJ4Y5Vz4SZA/bzRIg98lbCGwfGDllBmL0Ft0vPB4Z5L5jkWwJSSNa0ncc5a
         3sYlwCgD+qxBWydX++9l5PDgshm98fGftHHoVmlzZHIjzPH5/cfG+8PQ/ECv4L1Zwt7N
         UGqPUHTdugMwhv268dRHk9B7o1Z2UlQGCRCouuKpxi7HVqGKark3hC7wKYFXLJMFVQIy
         sNJA==
X-Gm-Message-State: AOAM5321e9LA9/aye6CxyVPWghZBUg2dnh/GBCU/MBn+N+lhb/8z9WOY
        XIJR7f5JYSP1LporjL4kHA==
X-Google-Smtp-Source: ABdhPJyEdY+bIjr8Kq0k9H/aMXjMaELYp7zHyHE91jqfrL9gv3kKolxabE1oLefOqDUBG3Bwg2bdSg==
X-Received: by 2002:a9d:6ace:: with SMTP id m14mr5362727otq.207.1622845534280;
        Fri, 04 Jun 2021 15:25:34 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id w69sm746828oia.22.2021.06.04.15.25.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jun 2021 15:25:33 -0700 (PDT)
Received: (nullmailer pid 4043624 invoked by uid 1000);
        Fri, 04 Jun 2021 22:25:32 -0000
Date:   Fri, 4 Jun 2021 17:25:32 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Cristian Marussi <cristian.marussi@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH v3 5/6] dt-bindings: mailbox : arm,mhu: Use examples with
 matching schema
Message-ID: <20210604222532.GA4043536@robh.at.kernel.org>
References: <20210604205710.1944363-1-sudeep.holla@arm.com>
 <20210604205710.1944363-6-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210604205710.1944363-6-sudeep.holla@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 04 Jun 2021 21:57:09 +0100, Sudeep Holla wrote:
> Currently the example provided in arm,mhu schema complains as below:
> 
>     Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml :0:0:
>     /example-0/soc/scb@2e000000: failed to match any schema with compatible:
>     ['fujitsu,mb86s70-scb-1.0']
> 
> Fix the same using examples based on Juno platform. The old SCPI firmware
> used MHU with standard 32-bit data transfer protocol while the new SCMI
> firmware uses MHU and expects to be used in doorbell mode. Update example
> with SCPI and SCMI firmware nodes to demonstrate both 32-bit data transfer
> and doorbell mode of MHU operations
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Viresh Kumar <viresh.kumar@linaro.org>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  .../devicetree/bindings/mailbox/arm,mhu.yaml  | 48 +++++++++++++++----
>  1 file changed, 38 insertions(+), 10 deletions(-)
> 

Applied, thanks!
