Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A437C3FD985
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 14:26:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244025AbhIAM1R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 08:27:17 -0400
Received: from mail-ot1-f54.google.com ([209.85.210.54]:45880 "EHLO
        mail-ot1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244026AbhIAM1R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 08:27:17 -0400
Received: by mail-ot1-f54.google.com with SMTP id l7-20020a0568302b0700b0051c0181deebso3157796otv.12
        for <devicetree@vger.kernel.org>; Wed, 01 Sep 2021 05:26:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=L89W6KN905uzz2b8RDSBDwMiSN6z+FJPmQF6g2PVDTA=;
        b=k3bolgfU+6s+IQfBQCjmlJAWp/AY/JaZfbv4gq9HuY0qY2NuO0z1Ybplr+/9XHe68K
         n26ylJBG10N3TqTpR5btjhIg65lTeiJaMbgdO8tcLJk9H118Wm7b0vCCnmJxsTGbdb2t
         CQR4goY069UAdKbs+yt2Jz8qxbrN9hrdtd7b/Y75Lq1ygdZ9KlfVa4EM098vM+AgvbRA
         031TH7DsdqbHx6iEUraz+VVVcUTLoPVO82EheN6dWfac8OOW8VRIJIXDKJJCgbygK+02
         bvOfnkawttYVDVIHvYWRo15JMe9r0HxOJ44YL/Zcgggy9YHjCL8wGhV+wyU/uEVYA6Aq
         ZJ9Q==
X-Gm-Message-State: AOAM5332PKAXRIG/Sfm/yP+xQ0rcze7yICoJnBv4RR0N2FbtsYrXOL5c
        pWraKv/iXG8WtChWLnnyvQ==
X-Google-Smtp-Source: ABdhPJx0CXfS8DC+222kUyjWme9cZzPaq6kS6t7YMfxn9z0mNz0nwgmlnC/Q96XBYqx3b7I5mb8U9w==
X-Received: by 2002:a9d:6c08:: with SMTP id f8mr27993005otq.368.1630499180322;
        Wed, 01 Sep 2021 05:26:20 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id l21sm3684049oop.22.2021.09.01.05.26.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Sep 2021 05:26:19 -0700 (PDT)
Received: (nullmailer pid 1941367 invoked by uid 1000);
        Wed, 01 Sep 2021 12:26:19 -0000
Date:   Wed, 1 Sep 2021 07:26:19 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sugar Zhang <sugar.zhang@rock-chips.com>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org, heiko@sntech.de, broonie@kernel.org
Subject: Re: [PATCH v3 7/7] ASoC: dt-bindings: rockchip: Convert pdm bindings
 to yaml
Message-ID: <YS9xawhnJ/4xR2vg@robh.at.kernel.org>
References: <1630468039-7186-1-git-send-email-sugar.zhang@rock-chips.com>
 <1630468118-7321-2-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1630468118-7321-2-git-send-email-sugar.zhang@rock-chips.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 01 Sep 2021 11:48:38 +0800, Sugar Zhang wrote:
> This patch converts pdm bindings to yaml.
> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> ---
> 
> Changes in v3:
> - Fix property 'path-map' suggested by Rob Herring.
> 
> Changes in v2:
> - Fix yamllint errors.
> 
>  .../devicetree/bindings/sound/rockchip,pdm.txt     |  64 -----------
>  .../devicetree/bindings/sound/rockchip,pdm.yaml    | 120 +++++++++++++++++++++
>  2 files changed, 120 insertions(+), 64 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/rockchip,pdm.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/rockchip,pdm.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
