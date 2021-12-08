Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BBFF546DACA
	for <lists+devicetree@lfdr.de>; Wed,  8 Dec 2021 19:12:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238679AbhLHSPp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Dec 2021 13:15:45 -0500
Received: from mail-oo1-f53.google.com ([209.85.161.53]:37550 "EHLO
        mail-oo1-f53.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238688AbhLHSPo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Dec 2021 13:15:44 -0500
Received: by mail-oo1-f53.google.com with SMTP id v19-20020a4a2453000000b002bb88bfb594so1073669oov.4
        for <devicetree@vger.kernel.org>; Wed, 08 Dec 2021 10:12:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=PqrZZ+LwYCrpXiOkQuqQEuxJYudXdVxdEQopt6IdPhY=;
        b=wHvPJFVoTUUnVGYfMKBoSSZmEkP1xFExFOGtUgEsC5wPrcc4NaI+MH/9Xu9xoHPEXF
         MKlhAwwMBh+mv9Qrn4BpE4cQdP8PiOY0cy3QEz/Vs2JlB2iezMYuE3aYRo1fxNFN46B7
         Ejlg+ZE40kBGshiMKL0H0ByVlf5wmAev+HJHBfOKpOYoV9xDPbFU+TlaMiXK+U+CbI5b
         ChcUbrghlonZsDLcJUqDzkf7Ni6e6Mu652BaOJlsBE2ngNc3iYhJYT1s4xHbD6tHEb1Y
         tqKT/J8+UXdRBXXFgzu5TE9XtsO3pr1cEF6PfeUG+Nbxt2PO6SiVjoaLp4+dsbVaNPdR
         9mSw==
X-Gm-Message-State: AOAM5339hMHXBCEZjHqf6Xswsh75mtb/F/Gz9UdqkipVdS0SLppyVOk5
        vvzuzYkOhkNb6BXVMW1Vzg==
X-Google-Smtp-Source: ABdhPJxfjeysV3PZkphabJ38eT84Z9CLHcJpxWYPoCD0bSLE3WJX6MnapyN37e3HQ3hZdlNWJcRuBw==
X-Received: by 2002:a05:6870:578d:b0:af:77e:3632 with SMTP id 586e51a60fabf-af077e6150mr178948fac.95.1638987131581;
        Wed, 08 Dec 2021 10:12:11 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id bi20sm904024oib.29.2021.12.08.10.12.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Dec 2021 10:12:11 -0800 (PST)
Received: (nullmailer pid 80362 invoked by uid 1000);
        Wed, 08 Dec 2021 18:12:10 -0000
Date:   Wed, 8 Dec 2021 12:12:10 -0600
From:   Rob Herring <robh@kernel.org>
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     will@kernel.org, linux-arm-kernel@lists.infradead.org,
        suzuki.poulose@arm.com, devicetree@vger.kernel.org,
        thierry.reding@gmail.com, mark.rutland@arm.com,
        catalin.marinas@arm.com, robh+dt@kernel.org
Subject: Re: [PATCH 1/5] dt-bindings: arm: Catch up with Cortex/Neoverse CPUs
 again
Message-ID: <YbD1evvbwd5AHwmk@robh.at.kernel.org>
References: <cover.1638900542.git.robin.murphy@arm.com>
 <a36014d06d308c73d3fa1ed55e8967fb8adadf0d.1638900542.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a36014d06d308c73d3fa1ed55e8967fb8adadf0d.1638900542.git.robin.murphy@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 07 Dec 2021 18:20:39 +0000, Robin Murphy wrote:
> Add bindings for the 2020 and 2021 cohorts of Cortex-A and Neoverse
> CPUs, now featuring their Cortex-X cousins as well.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  Documentation/devicetree/bindings/arm/cpus.yaml | 6 ++++++
>  Documentation/devicetree/bindings/arm/pmu.yaml  | 6 ++++++
>  2 files changed, 12 insertions(+)
> 

Applied, thanks!
