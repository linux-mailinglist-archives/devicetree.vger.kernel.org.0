Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3CE532D5271
	for <lists+devicetree@lfdr.de>; Thu, 10 Dec 2020 05:05:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729968AbgLJECu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Dec 2020 23:02:50 -0500
Received: from mail-ot1-f68.google.com ([209.85.210.68]:38509 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732123AbgLJECl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Dec 2020 23:02:41 -0500
Received: by mail-ot1-f68.google.com with SMTP id b62so3672969otc.5
        for <devicetree@vger.kernel.org>; Wed, 09 Dec 2020 20:02:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=SlcOpkXMDeFbboPIvb/AKoaQHHR830XWTzTs1s0NzAo=;
        b=GGWR0PknQlVfDsM/sRI1q//d57RZDPyOGbDd6/I+ucVV5oqRMuXESn9bdp5NsW0LmI
         KrC+GwH/ItYhZ6Vjg90AAlCPtaRAWsa8l1+LtyGuoM4CePhR1Pq9NDWaezhhb5jZYXnq
         V4xPsF1iz90fkSn/yuB9dpcO5wZ1eXxSoa+Xf9hQz3IwH7isR/DYwM+mz7YCZIE7RLp5
         8AjdiK7EMbR5J60Czb2WonWWBQBV20xwxzSbjHeYRblgtBt85d0cf9zpKRXXREOEWo4S
         lfyoEAEc/88Nt/23l1UctBuzw3HAAE2YT8k+5gWghzFt3B91u+qG5Ys0unOizzFgNLlu
         k8Pw==
X-Gm-Message-State: AOAM530l76iRBZhGTgM07NNmvDPSeh/x5gJqIjgrkaNpUw7pZfl89L8Q
        yCvLHlX7qnZqRbE/mxX3dA==
X-Google-Smtp-Source: ABdhPJyy2vJRdws7L1aL79IYMdAIOTLqO/o3+Gp1COBLITTAKmJoR/oNWF4n/u4KlYxD/li97E8zfA==
X-Received: by 2002:a05:6830:1e16:: with SMTP id s22mr4402042otr.110.1607572920493;
        Wed, 09 Dec 2020 20:02:00 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id e1sm763445oib.11.2020.12.09.20.01.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Dec 2020 20:01:59 -0800 (PST)
Received: (nullmailer pid 1641804 invoked by uid 1000);
        Thu, 10 Dec 2020 04:01:58 -0000
Date:   Wed, 9 Dec 2020 22:01:58 -0600
From:   Rob Herring <robh@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     devicetree@vger.kernel.org,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Rob Herring <robh+dt@kernel.org>,
        bcm-kernel-feedback-list@broadcom.com,
        Florian Fainelli <f.fainelli@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: bcm: document Netgear R8000P
 binding
Message-ID: <20201210040158.GA1641755@robh.at.kernel.org>
References: <20201208070304.12536-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201208070304.12536-1-zajec5@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 08 Dec 2020 08:03:03 +0100, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> It's a BCM4906 based device.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>  Documentation/devicetree/bindings/arm/bcm/brcm,bcm4908.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
