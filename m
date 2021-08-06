Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 41E213E30B4
	for <lists+devicetree@lfdr.de>; Fri,  6 Aug 2021 23:12:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231612AbhHFVMf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Aug 2021 17:12:35 -0400
Received: from mail-io1-f42.google.com ([209.85.166.42]:37734 "EHLO
        mail-io1-f42.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231431AbhHFVMf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Aug 2021 17:12:35 -0400
Received: by mail-io1-f42.google.com with SMTP id l20so11854976iom.4
        for <devicetree@vger.kernel.org>; Fri, 06 Aug 2021 14:12:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=6hS8ykCw7g7b36b13On/+bS3wA6rogjOjcEt652UJLU=;
        b=BhrlRUb8v0rHuKKeJnplwzACh9RNaOSWJclvP6cSdBFoX8DBvPvGj7CaX+oCEDIqLL
         ByNgBk0zpNIrykEBteRifcCQKQfLN48R5sNs+oOnapZ1LUifl0kKo4zBCKGi4UHst6qv
         cwmxEo5A71Rh8ZMnpuScuu/qUdWBudbnV+/MOwV6Ru4ed8cWir2EHB3kQa07fTpHA+ZS
         c2SD4Wwq3Go/63WcZI0Pj72nDYbp5h6jcZugPcRi6+JKLGhcnbxcA6g6aspRBrlvJ4/I
         dUFHZe9YMirRzbFVSzq7bK3TwFr2kFDV/Pb7OSk8KmWyXkKH/x+jIo2BfNExbICOse6o
         onaA==
X-Gm-Message-State: AOAM530KRbLJ58pvXwTBQfkmLU76PnwKpXtQ48A/qv6Hh6GZzgw/xNUh
        nOERvdm1/WyT3r5zUoHfLQ==
X-Google-Smtp-Source: ABdhPJwHq7VSa7ihg5l7BuNBvgdu1IygviscRzVXzncG/gFMi2ugiudAjwhJ63egrjS9jCG56BOPlQ==
X-Received: by 2002:a05:6602:713:: with SMTP id f19mr121581iox.140.1628284338901;
        Fri, 06 Aug 2021 14:12:18 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id u9sm3001752ilv.75.2021.08.06.14.12.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Aug 2021 14:12:18 -0700 (PDT)
Received: (nullmailer pid 1807140 invoked by uid 1000);
        Fri, 06 Aug 2021 21:12:16 -0000
Date:   Fri, 6 Aug 2021 15:12:16 -0600
From:   Rob Herring <robh@kernel.org>
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Scott Branden <sbranden@broadcom.com>,
        linux-rpi-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        Ray Jui <rjui@broadcom.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Maxime Ripard <maxime@cerno.tech>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 6/9] dt-bindings: arm: bcm2835: Add Raspberry Pi Compute
 Module 4
Message-ID: <YQ2lsAbidGvP3Lub@robh.at.kernel.org>
References: <1627820932-7247-1-git-send-email-stefan.wahren@i2se.com>
 <1627820932-7247-7-git-send-email-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1627820932-7247-7-git-send-email-stefan.wahren@i2se.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 01 Aug 2021 14:28:49 +0200, Stefan Wahren wrote:
> Add the Raspberry Pi Compute Module 4 to DT schema.
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---
>  Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
