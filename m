Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BA591134E4A
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2020 22:01:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726913AbgAHVBa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jan 2020 16:01:30 -0500
Received: from mail-oi1-f194.google.com ([209.85.167.194]:35291 "EHLO
        mail-oi1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726721AbgAHVBa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jan 2020 16:01:30 -0500
Received: by mail-oi1-f194.google.com with SMTP id k4so3984431oik.2
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2020 13:01:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=cfgEMc+35hwGrpRDO6jOoEHppPRh3rhAd34tDj1m5RU=;
        b=KJro8L5uNeeC4I4dS1QMEyb1HrOhhR9gOcoU8yBc7DPbVFGZ3e9Ixj7JxU909WohwT
         BJ9akfZd/cLwiK25TuWdKT9vfY+00khZYqXUIYO814abDLZXuHaPtA6XNqbLX8mu3Xr9
         GLfbMIPvVslVW4EB9hfhyqObW9mZnxtqgFKRrp6PXfVcm1D3LLPxLjgWcZG3hLBik+V2
         Uh6IMTv+h8SuvRBABrRFVAD51E/i2pt0rv+Jb4qvUdeesG/lJMW+nHNn+7AYKSMlhSc6
         0VNQJfxH9Q1L+b9EhKwsMx1UrjyHRV+2290H2nQ0zIScvqSBLTbCkyyzNwA+5LAt09+F
         8T3A==
X-Gm-Message-State: APjAAAWwmcsP/vlwH7F/9MzoZwQwSx7jUDRnXT/ZtziM5jQwdRZ6Pl4q
        x/Dj6sk2gq5rgdLILEnBJXMKYro=
X-Google-Smtp-Source: APXvYqzd6kj5rQXTs5MJeWDzV21gxb7bFm+ZbM0ZDEeAtDJRYSPbs9MNkiBBeQWP/duJl+tqN7sd3w==
X-Received: by 2002:aca:d6c4:: with SMTP id n187mr457627oig.29.1578517289547;
        Wed, 08 Jan 2020 13:01:29 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id t9sm1491286otm.76.2020.01.08.13.01.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2020 13:01:28 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 220333
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Wed, 08 Jan 2020 15:01:27 -0600
Date:   Wed, 8 Jan 2020 15:01:27 -0600
From:   Rob Herring <robh@kernel.org>
To:     Harigovindan P <harigovi@codeaurora.org>
Cc:     dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        robdclark@gmail.com, seanpaul@chromium.org, sean@poorly.run
Subject: Re: [PATCH v2 1/2] dt-bindings: display: add sc7180 panel variant
Message-ID: <20200108210127.GA17138@bogus>
References: <1578396597-18324-1-git-send-email-harigovi@codeaurora.org>
 <1578396597-18324-2-git-send-email-harigovi@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1578396597-18324-2-git-send-email-harigovi@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 07, 2020 at 04:59:56PM +0530, Harigovindan P wrote:
> Add a compatible string to support sc7180 panel version.
> 
> Changes in v1:
> 	-Added a compatible string to support sc7180 panel version.
> Changes in v2:
> 	-Removed unwanted properties from description.
> 	-Creating source files without execute permissions(Rob Herring).
> 
> Signed-off-by: Harigovindan P <harigovi@codeaurora.org>
> ---
>  .../bindings/display/visionox,rm69299.txt          | 48 ++++++++++++++++++++++
>  1 file changed, 48 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/visionox,rm69299.txt

As I send in v1, please make this a DT schema. See 
Documentation/devicetree/writing-schema.rst.

Rob
