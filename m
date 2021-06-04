Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 185F739C380
	for <lists+devicetree@lfdr.de>; Sat,  5 Jun 2021 00:26:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231553AbhFDW2X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 18:28:23 -0400
Received: from mail-oi1-f179.google.com ([209.85.167.179]:34569 "EHLO
        mail-oi1-f179.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229774AbhFDW2V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Jun 2021 18:28:21 -0400
Received: by mail-oi1-f179.google.com with SMTP id u11so11264081oiv.1
        for <devicetree@vger.kernel.org>; Fri, 04 Jun 2021 15:26:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=KXLfAmoBz5+FHV4LEDxoZpuDg11ApJW2QF+55Fq34vc=;
        b=JyyFf0ihCPQP62QrngZ4ZpO0Y7UEDcE792BSMLi5GuejSlEw2+aYaywX85YhFOebG8
         s3br37rlv5+NG6NLry8tF+ZRb+qSImN+78ENs3Hqfr6e+51G+epETxHhxT8h0R0Nlizv
         o8KYk6leCmEKvu5NjU6b2DSmOvLGzoLre2xKmvDpx3WJHizYYR6uZKEWM/7gKm1n4Chx
         ZtDDKcWFuyNsFepdJ/JAf10V9bakAOzEQVY0A/rNsODc24BK0jNkvr6AYdSKlc9FLC8i
         4to578m5lJ7VnPt6qfUqXC9Ff/gGddefM+Y7XNnGRz4D9GtzJqo7sB3HHV1I6ezYX9qZ
         ML4Q==
X-Gm-Message-State: AOAM5303MGQVX+2w9tbl9eUZBQ6/nj+VooKFjMv1xmbedOW344lxQhtI
        WJPUizUsSgQnWI4oQ0FilvC4lxX/ow==
X-Google-Smtp-Source: ABdhPJxetSqon4x7djeqh3CB2Jdv8PNiAOp9h2XNYNXzX0ROr9w5xCgq6Yqt9iwMRcX99FzSxIigag==
X-Received: by 2002:a05:6808:20a1:: with SMTP id s33mr10919311oiw.139.1622845581524;
        Fri, 04 Jun 2021 15:26:21 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id x9sm702244ooo.27.2021.06.04.15.26.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jun 2021 15:26:20 -0700 (PDT)
Received: (nullmailer pid 4045008 invoked by uid 1000);
        Fri, 04 Jun 2021 22:26:20 -0000
Date:   Fri, 4 Jun 2021 17:26:20 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        Cristian Marussi <cristian.marussi@arm.com>,
        devicetree@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v3 6/6] dt-bindings: mailbox : arm,mhuv2: Use example
 with matching schema
Message-ID: <20210604222620.GA4044952@robh.at.kernel.org>
References: <20210604205710.1944363-1-sudeep.holla@arm.com>
 <20210604205710.1944363-7-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210604205710.1944363-7-sudeep.holla@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 04 Jun 2021 21:57:10 +0100, Sudeep Holla wrote:
> Currently the example provided in arm,mhuv2 schema complains as below:
> 
>     Documentation/devicetree/bindings/mailbox/arm,mhuv2.example.dt.yaml :0:0:
>     /example-0/soc/scb@2e000000: failed to match any schema with compatible:
>     ['fujitsu,mb86s70-scb-1.0']
> 
> Fix it by using an example with a matching schema that makes use of 4
> mailboxes that is well suited to demonstrate Rx and Tx channels with both
> doorbell and data transfer protocols.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Viresh Kumar <viresh.kumar@linaro.org>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  .../bindings/mailbox/arm,mhuv2.yaml           | 25 +++++++++----------
>  1 file changed, 12 insertions(+), 13 deletions(-)
> 

Applied, thanks!
