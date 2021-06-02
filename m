Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB608398EE0
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 17:41:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230257AbhFBPnj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Jun 2021 11:43:39 -0400
Received: from mail-ot1-f48.google.com ([209.85.210.48]:37683 "EHLO
        mail-ot1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230440AbhFBPnh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Jun 2021 11:43:37 -0400
Received: by mail-ot1-f48.google.com with SMTP id v19-20020a0568301413b0290304f00e3d88so2810257otp.4
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 08:41:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=MU9n4bn+Dii/Uhi+DctpySEhL/bEMkSeOhH+2G9KFnw=;
        b=lwZHSOJeZkDRnUG5Wpq9wZZ15FNUPephFxLl52WNMXYaLERamqDGR+Tk3RPZBwJrDn
         KaWEZ5Vv8O8NVL/Wkce+C/v2nMWacMVfzTM+WOJ86vNjc864f/QIci0j+6QYA4z1xrsg
         vHyZmi5S75OyJwViyUA+jiFHCqSwHF6y3TouS1VDJAwxk1mfb/lCTPCJDLEbD++4n7Kw
         IWExa+eJM/vDy9/MxdAHmGne218CC/86vNTDBYzJxyjGUMFrzkxphKi/omSO1JFsuvxi
         ID8nkHR8RdSD6OhSDUVzGhEu0O6oOUEN2JBc2rU/hwi/5f6OYyccqg8nkNNizsHUSNtj
         /uDA==
X-Gm-Message-State: AOAM532heRp9lUoOPrgn3REIUDKk11jRtB9c2gT472AFsYIYzkL81Qbh
        3qk7mDBmy9PKCEPlT89nEXMu/ZkEPw==
X-Google-Smtp-Source: ABdhPJwRDkSfQm+01TdCNQoM4wbHcjnpZRk3VbcHA4+zBvzDZbSyfmziDR4n7NgLtvWvHdaFD77nvg==
X-Received: by 2002:a9d:73d8:: with SMTP id m24mr26208867otk.269.1622648514569;
        Wed, 02 Jun 2021 08:41:54 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id l141sm47178oib.44.2021.06.02.08.41.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jun 2021 08:41:53 -0700 (PDT)
Received: (nullmailer pid 3424169 invoked by uid 1000);
        Wed, 02 Jun 2021 15:41:52 -0000
Date:   Wed, 2 Jun 2021 10:41:52 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Cristian Marussi <cristian.marussi@arm.com>,
        devicetree@vger.kernel.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 2/8] dt-bindings: firmware: arm,scmi: Move
 arm,scmi-shmem to json schema
Message-ID: <20210602154152.GA3424113@robh.at.kernel.org>
References: <20210601224904.917990-1-sudeep.holla@arm.com>
 <20210601224904.917990-3-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210601224904.917990-3-sudeep.holla@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 01 Jun 2021 23:48:58 +0100, Sudeep Holla wrote:
> Move the SRAM and shared memory binding for SCMI into the existing
> Generic on-chip SRAM. We just need to update the compatible list and
> there-by remove the whole old text format binding for the same.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Cristian Marussi <cristian.marussi@arm.com>
> Cc: Florian Fainelli <f.fainelli@gmail.com>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  .../devicetree/bindings/arm/arm,scmi.txt          | 15 ---------------
>  Documentation/devicetree/bindings/sram/sram.yaml  |  1 +
>  2 files changed, 1 insertion(+), 15 deletions(-)
> 

Applied, thanks!
