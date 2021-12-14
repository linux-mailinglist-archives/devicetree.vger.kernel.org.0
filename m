Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 49394474CB8
	for <lists+devicetree@lfdr.de>; Tue, 14 Dec 2021 21:38:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237670AbhLNUic (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Dec 2021 15:38:32 -0500
Received: from mail-ot1-f44.google.com ([209.85.210.44]:35823 "EHLO
        mail-ot1-f44.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234688AbhLNUia (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Dec 2021 15:38:30 -0500
Received: by mail-ot1-f44.google.com with SMTP id x43-20020a056830246b00b00570d09d34ebso22306769otr.2
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 12:38:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=S07ThIKoLSFI0u/6l08VipqPMb5RNSf6TYdFxYRw3Us=;
        b=Pa0wSSTXQKwinuZLABSlDsyAAZ9wxa/G/mKz9cg/bUCHPXWcb2FRls+CEiIxomzoYH
         5pB+MRLrCb0Eo9zacfmpkLGEQZyJg2z2AXzbGfnJpkLhiDAnwHkZop+oRF+BuS20gLTk
         yCDsetZQhfpBgE17MfpHmzqazR0AQ/idWoL7z/y4EvEaRWoUtYt6rbkjRTecVDi6y452
         HaZUW36b7mGwwFkKrbv/CfP7vIEU592JE/Nu1YJUWEpZbxF6Vn/Q5nIdyKo8QCgrGPq8
         MrW9uDBlkI4EDIFHtW8DpRh7reRS3h+rDI9Kh6/JJ5Xdvix/Qu+Mh/TjLYLp23ZwWuGe
         LT3Q==
X-Gm-Message-State: AOAM531szF/UOjHHYU4HIIlCqskV7klA++YN6KfcKw0qbiRSXnZp6ifE
        D4FerR6v6yp7wgpnugP2tQ==
X-Google-Smtp-Source: ABdhPJyaKo8O1qi48zXwBI9OEsCR4SBmPa9BQAk3gOanfzaMaf+gpFXkcte2n2OBJr+2jpYHwRrxhg==
X-Received: by 2002:a05:6830:3110:: with SMTP id b16mr6232662ots.212.1639514310211;
        Tue, 14 Dec 2021 12:38:30 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id z12sm180909oor.45.2021.12.14.12.38.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Dec 2021 12:38:29 -0800 (PST)
Received: (nullmailer pid 3912095 invoked by uid 1000);
        Tue, 14 Dec 2021 20:38:28 -0000
Date:   Tue, 14 Dec 2021 14:38:28 -0600
From:   Rob Herring <robh@kernel.org>
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     catalin.marinas@arm.com, thierry.reding@gmail.com,
        mark.rutland@arm.com, will@kernel.org, devicetree@vger.kernel.org,
        suzuki.poulose@arm.com, robh+dt@kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 4/5] dt-bindings: perf: Convert Arm DSU to schema
Message-ID: <YbkAxIRdFoqSAglz@robh.at.kernel.org>
References: <cover.1639490264.git.robin.murphy@arm.com>
 <9fde2e11b0d11285c26d0e9d261034a1628c7901.1639490264.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9fde2e11b0d11285c26d0e9d261034a1628c7901.1639490264.git.robin.murphy@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 14 Dec 2021 14:16:16 +0000, Robin Murphy wrote:
> Convert the DSU binding to schema, as one does.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
> 
> v2: Actually finish converting the thing to valid schema...
> 
>  .../devicetree/bindings/arm/arm-dsu-pmu.txt   | 27 ------------
>  .../devicetree/bindings/perf/arm,dsu-pmu.yaml | 41 +++++++++++++++++++
>  2 files changed, 41 insertions(+), 27 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/arm-dsu-pmu.txt
>  create mode 100644 Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml
> 

Applied, thanks!
