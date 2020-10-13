Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D1E828CF2B
	for <lists+devicetree@lfdr.de>; Tue, 13 Oct 2020 15:32:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728192AbgJMNcC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Oct 2020 09:32:02 -0400
Received: from mail-oi1-f193.google.com ([209.85.167.193]:37878 "EHLO
        mail-oi1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727448AbgJMNcB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Oct 2020 09:32:01 -0400
Received: by mail-oi1-f193.google.com with SMTP id t77so22494054oie.4
        for <devicetree@vger.kernel.org>; Tue, 13 Oct 2020 06:32:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=w614Exa4KFPP8sY2lc9TLUYPLZXkuHzChw8nycQZFjk=;
        b=ByDp03cW1F+4g6r+Cqqq/IEhxBk32azhE7w+kENVLCVTHrCmi8Op39QZTPWBzDdbvB
         qKujlPQQWJmjnigrARMCHVruESUMBIDwvM+OyZlutQW17cpu7uNTaSwLhv5pf1JmkUgO
         c7y89Qw7B+Qc3OYq0yurcADcNUvLlfWPqku/pS07NGl+YGRHaKUggHLixZqDt5SqMq2l
         paA+GzOIc2Q9+oNzbjabiLiQMpsIHIWkH7oBAF+VPTJl6Y03+dOH4n7E6opmc44QrDxZ
         eZDa1Wxgv/bPhWOQbsWwdT+Ru79+v1R2TlWlnzEtipbXZnTAGH/C7R03DIUdZIN7jj6r
         5txA==
X-Gm-Message-State: AOAM530ZvulhpX4xsdWeq53WCFZkpAESRiOJQDcLBkMBntrJJFwoD9vL
        3/JP36nrMscjvzaiKn1xOA==
X-Google-Smtp-Source: ABdhPJwFDBRpMY/lCX59RMTB7XbxWVSQb6x7vB811yB74hSBjtBp7V7qnaTVX1YO9RJwsexzbhd//A==
X-Received: by 2002:aca:d845:: with SMTP id p66mr12980291oig.47.1602595920982;
        Tue, 13 Oct 2020 06:32:00 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id p11sm10234926otp.8.2020.10.13.06.32.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2020 06:32:00 -0700 (PDT)
Received: (nullmailer pid 3382501 invoked by uid 1000);
        Tue, 13 Oct 2020 13:31:59 -0000
Date:   Tue, 13 Oct 2020 08:31:59 -0500
From:   Rob Herring <robh@kernel.org>
To:     Ioana Ciornei <ioana.ciornei@nxp.com>
Cc:     leoyang.li@nxp.com, devicetree@vger.kernel.org,
        shawnguo@kernel.org, robh+dt@kernel.org
Subject: Re: [PATCH v3 02/11] dt-bindings: net: add the 10gbase-r connection
 type
Message-ID: <20201013133159.GA3382471@bogus>
References: <20201007203936.23953-1-ioana.ciornei@nxp.com>
 <20201007203936.23953-3-ioana.ciornei@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201007203936.23953-3-ioana.ciornei@nxp.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 07 Oct 2020 23:39:27 +0300, Ioana Ciornei wrote:
> Add 10gbase-r to the list of accepted PHY connection types between an
> Ethernet device and a physical PHY. This is available as a valid
> connection type since commit c114574ebfdf ("net: phy: add
> PHY_INTERFACE_MODE_10GBASER")
> 
> Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
> ---
> Changes in v3:
>  -  new patch
> 
>  Documentation/devicetree/bindings/net/ethernet-controller.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
