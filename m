Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4E9B1C3637
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2019 15:48:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388439AbfJANqw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Oct 2019 09:46:52 -0400
Received: from mail-oi1-f196.google.com ([209.85.167.196]:36717 "EHLO
        mail-oi1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726152AbfJANqw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Oct 2019 09:46:52 -0400
Received: by mail-oi1-f196.google.com with SMTP id k20so14461641oih.3
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2019 06:46:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rM9CoJF9b5xP6Lw/RZ4XVfAgAaexqa9BDS8t6YL3L08=;
        b=ZLAjlSUPoeak6RHU41AVeQs4u96JmjknASaq4Nqpo/ReP7yCX3myyoAdaPpEWFwHwQ
         3wxJQv/wKwofpmCF7tSteoYaLeEqIpIwAHTfNNxq5gPU2DbV+wr4lmOEqhYHidr8aNu0
         w7YD/AH4031VPzq6SHwTF8EsR215Hn0EE1/nH6Zgua8U03Fpfq7HRANG1XNggGbtMZ+M
         hpdxKg0raq/u5RbaO4/fDJ+oehpHpVAEUDdIziu3UvtGOlejM+QYgPC1wjqB5gvbAkL8
         huXgdg8xdP/55dyN3Q4buJEooVBRJdpadKdST+gSykUg1Pucea337MrrA0p2cpRfpUT4
         xgMQ==
X-Gm-Message-State: APjAAAWZSqBICCAHnwh7GL4DsJg2cMeN8nfgSx3ei68wJnmoQIn0me5k
        8VdtyCM+7HqR2/zaHvyxzBqypBHfKg==
X-Google-Smtp-Source: APXvYqwq5Bm1wdyLEVxUHZ7M6qpGJMgY2kkQew71shfhTe1OFaFYo0bDqnGEJXDqEvQm6oYovanXlg==
X-Received: by 2002:aca:e085:: with SMTP id x127mr3858766oig.32.1569937611286;
        Tue, 01 Oct 2019 06:46:51 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id v6sm5291661oie.4.2019.10.01.06.46.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2019 06:46:50 -0700 (PDT)
Date:   Tue, 1 Oct 2019 08:46:49 -0500
From:   Rob Herring <robh@kernel.org>
To:     Stefan Wahren <wahrenst@gmx.net>
Cc:     Mark Rutland <mark.rutland@arm.com>, Eric Anholt <eric@anholt.net>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        bcm-kernel-feedback-list@broadcom.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH V3 5/8] dt-bindings: arm: bcm2835: Add Raspberry Pi 4 to
 DT schema
Message-ID: <20191001134649.GA27323@bogus>
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
 <1569672435-19823-6-git-send-email-wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1569672435-19823-6-git-send-email-wahrenst@gmx.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 28 Sep 2019 14:07:11 +0200, Stefan Wahren wrote:
> Add new Raspberry Pi 4 to DT schema.
>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> Acked-by: Eric Anholt <eric@anholt.net>
> ---
>  Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
>

Reviewed-by: Rob Herring <robh@kernel.org>
