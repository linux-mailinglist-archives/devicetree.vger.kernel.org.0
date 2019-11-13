Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2CBDDFB158
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2019 14:32:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727129AbfKMNcp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Nov 2019 08:32:45 -0500
Received: from mail-oi1-f195.google.com ([209.85.167.195]:43320 "EHLO
        mail-oi1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726978AbfKMNcp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Nov 2019 08:32:45 -0500
Received: by mail-oi1-f195.google.com with SMTP id l20so1738135oie.10
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2019 05:32:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Lk9+rv9bDktt6DRVGNpmAxhVtKeiCwxhTxFd00GMb+I=;
        b=bh60MAJvtIeyRri1x1HTd7msd0f5D14RBgFwIrdHWDv7epKSP6LQ+4zn0ltO76w5Nu
         tHEeLMnOrCHODLBCSU+Xnw5Kw1Ur54X8EJwGqQbMDySee8MYtRGeNu401NXrdmy1SptZ
         6HrnGQYaqUS+P5K0/2QMt+PTzEFPcKY+B2plSfoKUzUsiCUz+jku/dJVQHIL2IEDbn5y
         PUMY1XUPcw262GFL//pTsMo7m6ze4OC5ew0CGSUEdNTV1q+ZGNF318d6ugdQBlXcZzI8
         LpDu54/JvRKw9tuC0vaV1epD3e9fWXhYNIoavXMvUNSOxcis5T4GMQrzOvgWF0yi3b1D
         wDCg==
X-Gm-Message-State: APjAAAXujCR5HODabby0qQv9RjlWz1d9qQbaDfLoZqkVPvT3ZDl8Jz7L
        KaysSgPsO9PUab5gD/XUmA==
X-Google-Smtp-Source: APXvYqw2tbri9rKe6Dp1oo4+9uSk8fTtqbgkpkX6wRDrn3Q5ueaThTAGbFwKL6XvmVRkF0hYe+g8Dg==
X-Received: by 2002:aca:1b06:: with SMTP id b6mr3189030oib.25.1573651962718;
        Wed, 13 Nov 2019 05:32:42 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id i195sm660281oib.55.2019.11.13.05.32.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2019 05:32:41 -0800 (PST)
Date:   Wed, 13 Nov 2019 07:32:35 -0600
From:   Rob Herring <robh@kernel.org>
To:     Christoph Fritz <chf.fritz@googlemail.com>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Support Opensource <support.opensource@diasemi.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 3/4] dt-bindings: regulator: describe da906x buck
 regulator modes
Message-ID: <20191113133235.GA1952@bogus>
References: <1573121050-4728-1-git-send-email-chf.fritz@googlemail.com>
 <1573121050-4728-4-git-send-email-chf.fritz@googlemail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1573121050-4728-4-git-send-email-chf.fritz@googlemail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu,  7 Nov 2019 11:04:09 +0100, Christoph Fritz wrote:
> This patch adds DT description of da906x buck regulator modes.
> 
> Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
> ---
>  Documentation/devicetree/bindings/mfd/da9062.txt | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
