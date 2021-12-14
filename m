Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B215474CBA
	for <lists+devicetree@lfdr.de>; Tue, 14 Dec 2021 21:41:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234688AbhLNUlO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Dec 2021 15:41:14 -0500
Received: from mail-oo1-f49.google.com ([209.85.161.49]:43833 "EHLO
        mail-oo1-f49.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230358AbhLNUlO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Dec 2021 15:41:14 -0500
Received: by mail-oo1-f49.google.com with SMTP id w5-20020a4a2745000000b002c2649b8d5fso5245340oow.10
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 12:41:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=SXVVYVyXk3jQO/Z4zUyE4AbN0Wt7xmI613y4WmWTvv8=;
        b=RMJiCd5p43VgWoRCPRIG6eukhf8wxzlEdV8Ox5o6mEfKee51lkffz0RcSj/eh/2Cq/
         0ad7CaAZYtk8HORrBDTYYBYtvIFGfeETRf11llic2eHXpqibsQ7x6Zz+oBU6ai+QxdPN
         EBCTURtMdQqopqt091RfSRCsGKIOiJnqEtXnhBZrO5cX4ezdlcrBHspESU8A17JFQLoG
         m3w87jklVM8ipZvoThVQ2cavwQpeU4e5c2ZI76Vho50TE+YDIlmxdvLAaCOptkl9nm0v
         cd6UXXZJIHbJr4sslf/+/r1K/V2MvtIYm+GJ8YP/dvuuyOLEAJIAaJu1c8gfFGQz0xCZ
         +yeg==
X-Gm-Message-State: AOAM5323UvClb4Yme47uxwoCtEu0r4AI8yLwzkRRrpvLoWKQSV+Kz97P
        J7be1tW4lOUjbU0JNO5Cn3LV7ofMxg==
X-Google-Smtp-Source: ABdhPJzb+l9ufBYftWddcmRqXG0Rc70ptXTscOiNg4+d52emF6xt0n1yBSLP2lNNRMy58AagKGQkIg==
X-Received: by 2002:a4a:430b:: with SMTP id k11mr795017ooj.69.1639514473603;
        Tue, 14 Dec 2021 12:41:13 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id p6sm196984oof.0.2021.12.14.12.41.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Dec 2021 12:41:12 -0800 (PST)
Received: (nullmailer pid 3916246 invoked by uid 1000);
        Tue, 14 Dec 2021 20:41:11 -0000
Date:   Tue, 14 Dec 2021 14:41:11 -0600
From:   Rob Herring <robh@kernel.org>
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org, suzuki.poulose@arm.com,
        will@kernel.org, robh+dt@kernel.org, devicetree@vger.kernel.org,
        catalin.marinas@arm.com, thierry.reding@gmail.com,
        mark.rutland@arm.com
Subject: Re: [PATCH v2 5/5] dt-bindings: perf: Add compatible for Arm DSU-110
Message-ID: <YbkBZ7p2AnQo4BUc@robh.at.kernel.org>
References: <cover.1639490264.git.robin.murphy@arm.com>
 <51a8060493e1220886dcd468fad9a2b603607297.1639490264.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <51a8060493e1220886dcd468fad9a2b603607297.1639490264.git.robin.murphy@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 14 Dec 2021 14:16:17 +0000, Robin Murphy wrote:
> DSU-110 is the newest and shiniest for Armv9. Its programmer's model is
> largely identical to the previous generation of DSUs, so we can treat it
> as compatible, but it does have a a handful of extra IMP-DEF PMU events
> to call its own. Thanks to the new notion of core complexes, the maximum
> number of supported CPUs goes up as well.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
> 
> v2: Also make it complete and valid
> 
>  Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 

Applied, thanks!
