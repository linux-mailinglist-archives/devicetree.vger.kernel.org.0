Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 409F633337C
	for <lists+devicetree@lfdr.de>; Wed, 10 Mar 2021 04:03:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231976AbhCJDCy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Mar 2021 22:02:54 -0500
Received: from mail-io1-f50.google.com ([209.85.166.50]:40452 "EHLO
        mail-io1-f50.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232226AbhCJDCw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Mar 2021 22:02:52 -0500
Received: by mail-io1-f50.google.com with SMTP id i8so16327385iog.7
        for <devicetree@vger.kernel.org>; Tue, 09 Mar 2021 19:02:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=ci0qzWx10GArjExH6R6ZRHBQs2Jzt4Kukiql5/h/dDk=;
        b=VgAZQiZrX00ryNFGid8hwbjH2H47GshRQGxLdU0n4yKy5MqJFWEHR0Jm3dMor7vrQd
         HhGThovnsKVQgxMBEwmBVpmbSCjHySJOvmOwAq7+2HynVUikvkiirFNpWhfDfs3ExumA
         oBcs7wLxuOuuD4ZHO9n/l06lHZkpi/WSJaFQoXgNeZLujpTJLHNFnE3Xh86EdkqxCid9
         FrGJU9z+1TtQgvEvV9cfep7mjEESBbcO1gyinnsR6QR8WTw0vl0Vxpke4Gwfk/Ng0uw8
         0+j5a18ZK8+Sa17CzJ4chBduR4Id0eTDwibpNbEGzJabhzXMXb2bSHNnfZkbhxBOqQbQ
         vAsw==
X-Gm-Message-State: AOAM532gEk94aYusgZSjWlZWB5ZrJyNeOYT9lBFVNQIIGSY5crilEVyj
        3z2/8S6eKq+xLzXdB/95yw==
X-Google-Smtp-Source: ABdhPJy7GbysAVAO+Ulh+TRPnis7CzyVhv2yARJY2Cl3olgFFPtvYxBB+20gaAeNQVPAg1X/cbpiuA==
X-Received: by 2002:a6b:d318:: with SMTP id s24mr1010733iob.89.1615345365192;
        Tue, 09 Mar 2021 19:02:45 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
        by smtp.gmail.com with ESMTPSA id r9sm8522843ill.72.2021.03.09.19.02.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Mar 2021 19:02:44 -0800 (PST)
Received: (nullmailer pid 1667874 invoked by uid 1000);
        Wed, 10 Mar 2021 03:02:42 -0000
Date:   Tue, 9 Mar 2021 20:02:42 -0700
From:   Rob Herring <robh@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH V2 1/2] dt-bindings: arm: bcm: document TP-Link Archer
 C2300 binding
Message-ID: <20210310030242.GA1667816@robh.at.kernel.org>
References: <20210305125907.21943-1-zajec5@gmail.com>
 <20210308131850.22576-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210308131850.22576-1-zajec5@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 08 Mar 2021 14:18:49 +0100, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> One more BCM4906 based device.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>  Documentation/devicetree/bindings/arm/bcm/brcm,bcm4908.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
