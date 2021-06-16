Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 22A9D3AA284
	for <lists+devicetree@lfdr.de>; Wed, 16 Jun 2021 19:35:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229741AbhFPRhz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Jun 2021 13:37:55 -0400
Received: from mail-il1-f175.google.com ([209.85.166.175]:36390 "EHLO
        mail-il1-f175.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230459AbhFPRhy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Jun 2021 13:37:54 -0400
Received: by mail-il1-f175.google.com with SMTP id i13so3051047ilk.3
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 10:35:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=tzBc8LeRAMQfLDfnuo+NaXzDfbYUDg2C8MYpA5zcNRM=;
        b=lPFXLBScrwWcZKy7C3t5UdEbVvCYGqakDlD7+kCUIHxRc4G9sJlz1os76PLrzNKM2i
         v68lMNTrqS3XRN3IN6ZKU9PhkOn5ivqz+/8itA35SHVcMjQSPiGRRjPpKDdbmjD6kotZ
         WyqWYLg5mKWRhUa8dqijkUjVolcpIMkNqQkYCIAHL7oXIvZDosJQq+TaRiSOl/aMx1Dr
         mFbtojjknJl5lX6gMzH7bfxFJou+Z25n+aa4tp0420rTCnfvrqmmNNLOXO3SUbFG9x5z
         9ll5slYM7RR/si/X1t3RD66Nt1rx+AlIJhljY9eauhZovaxNQZHFD8PJ7eEe22ct7IG7
         eb9w==
X-Gm-Message-State: AOAM5334imZ1HcLDHe4FkI+2YF4CjXcVIgfbo9dH38Hxc1dvnrfxJ8XQ
        42OVIibsy5YFg3IpfeiMmw==
X-Google-Smtp-Source: ABdhPJwIY3TnLVwsQPB3MVM3BkQPQmWjSwxuHWB1pJIqw9T/lqIpvmwNR9ByEYwCxHIdLQNo3qYsiQ==
X-Received: by 2002:a92:d4c6:: with SMTP id o6mr540041ilm.196.1623864947840;
        Wed, 16 Jun 2021 10:35:47 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id r10sm1432900ilq.46.2021.06.16.10.35.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jun 2021 10:35:46 -0700 (PDT)
Received: (nullmailer pid 3588400 invoked by uid 1000);
        Wed, 16 Jun 2021 17:35:44 -0000
Date:   Wed, 16 Jun 2021 11:35:44 -0600
From:   Rob Herring <robh@kernel.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Suman Anna <s-anna@ti.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: interrupt-controller: Fix compatible used
 in ti,pruss-intc
Message-ID: <20210616173544.GA3588336@robh.at.kernel.org>
References: <20210607184257.2010276-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210607184257.2010276-1-sudeep.holla@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 07 Jun 2021 19:42:57 +0100, Sudeep Holla wrote:
> As per soc/ti/ti,pruss.yaml schema, only ti,am4376-pruss0 and
> ti,am4376-pruss1 are valid compatibles. Replace ti,am4376-pruss with
> ti,am4376-pruss1 based on example in soc/ti/ti,pruss.yaml
> 
> This fixes the below warning with 'make DT_CHECKER_FLAGS=-m dt_binding_check':
> 
>     interrupt-controller/ti,pruss-intc.example.dt.yaml:0:0: /example-1/pruss@0:
>     failed to match any schema with compatible: ['ti,am4376-pruss']
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Suman Anna <s-anna@ti.com>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  .../devicetree/bindings/interrupt-controller/ti,pruss-intc.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks!
