Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4E85C402EC3
	for <lists+devicetree@lfdr.de>; Tue,  7 Sep 2021 21:09:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240738AbhIGTKj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Sep 2021 15:10:39 -0400
Received: from mail-ot1-f50.google.com ([209.85.210.50]:46694 "EHLO
        mail-ot1-f50.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230203AbhIGTKj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Sep 2021 15:10:39 -0400
Received: by mail-ot1-f50.google.com with SMTP id v33-20020a0568300921b0290517cd06302dso333194ott.13
        for <devicetree@vger.kernel.org>; Tue, 07 Sep 2021 12:09:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=trlRlO2PDP2SXXVc3f4jwcB7bpX21ie4vEdTS6KQyak=;
        b=fybrq9y/ZRvOSfWUauUOcMDdDyryLOoHcjKZ3Ni+U4XDnPNZcMxvT188xSbxmmD5pK
         bhR1tIeF3bULf10nkZ/YLWZgWUfwL0sTo9vUMDashjcUo3Cf6m8ohL64fFSYbbUY81Am
         0HnjtkhtvZ1Rd9KcQAXyieoEj7yTsP5GkR+Pt2ZI770dazuBs+YdaUYFZMgd+0B20317
         sOe/YbByY8Ip2qXvSwjcvGqJdP3haGJAp5YSrDFeJzVwabrhS3ERZo7CwjIWTtXb2rw+
         lasLFhGuspQse/FrsT88B0+1uUEi6ph+XA//s+shI8xbxSUqgXmPrtpVEZRMfd+f5BuO
         yRiQ==
X-Gm-Message-State: AOAM533ZY6J8TX1raZvkpzjiWeBygHr3fyRwDpSssqSIOL0VNWfZR7cD
        sFcLUDI5ZWZ8J/WZjy7pjzS1V3f5Uw==
X-Google-Smtp-Source: ABdhPJx6U+yrfocikFT5c8wHUzft41MQTC/Td44IrKTXzxQHSNf0l07ifnEMNCTdSmSGJFV53c2eBg==
X-Received: by 2002:a9d:17c5:: with SMTP id j63mr16755881otj.208.1631041772179;
        Tue, 07 Sep 2021 12:09:32 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id j10sm2287024oiw.32.2021.09.07.12.09.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Sep 2021 12:09:31 -0700 (PDT)
Received: (nullmailer pid 174912 invoked by uid 1000);
        Tue, 07 Sep 2021 19:09:30 -0000
Date:   Tue, 7 Sep 2021 14:09:30 -0500
From:   Rob Herring <robh@kernel.org>
To:     Joel Stanley <joel@jms.id.au>
Cc:     openipmi-developer@lists.sourceforge.net,
        Rob Herring <robh+dt@kernel.org>,
        Andrew Jeffery <andrew@aj.id.au>,
        linux-arm-kernel@lists.infradead.org,
        Corey Minyard <minyard@acm.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] ipmi: bt: Add ast2600 compatible string
Message-ID: <YTe46lyQDfV6OzOc@robh.at.kernel.org>
References: <20210903015314.177987-1-joel@jms.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210903015314.177987-1-joel@jms.id.au>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 03 Sep 2021 11:23:14 +0930, Joel Stanley wrote:
> The AST2600 has the same register set as the previous generation SoCs.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---
>  .../devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.txt          | 1 +
>  drivers/char/ipmi/bt-bmc.c                                       | 1 +
>  2 files changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
