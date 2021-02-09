Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 62E533157DC
	for <lists+devicetree@lfdr.de>; Tue,  9 Feb 2021 21:44:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233761AbhBIUlp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Feb 2021 15:41:45 -0500
Received: from mail-ot1-f42.google.com ([209.85.210.42]:34822 "EHLO
        mail-ot1-f42.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233701AbhBIUhD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Feb 2021 15:37:03 -0500
Received: by mail-ot1-f42.google.com with SMTP id k10so16380694otl.2
        for <devicetree@vger.kernel.org>; Tue, 09 Feb 2021 12:36:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=LIgzsr2Qli/S9QkbglvtZGEX6pYu5VmKf6DxSm22SAg=;
        b=aNFRKe0ncUkrzhCKh+a+qTu00ml22a+6BwiL26K3m63IwuX8GSNJsiBqVJhbVCr9AC
         5xSSFs+ggULYRjcgqsV5tPt34WcL+5G8C7CftE9lO5vBcABO7lf4bAggkpMFPwDkt9y8
         vFHR8f9jWOFqXhvurfltXxua86pqka32D/R7fdbcfAQ/uqnKiXpUsNXTvpP3HP2qcBBj
         loYnDw8tzWo7bUZ26UQN/ZJAK+EDC+JRDk8snhT0BlFbD92xkl4EFQAg6AC9C6QmRttb
         fa8rPSKLJUvNwfCoZqsDB61xS1c1s87mgWvlQziYjaxyoB7UImaFEqNSwwouKtvrD+OJ
         LKcw==
X-Gm-Message-State: AOAM532SjRRsN/k8CeCJmJDBiooxcGWGkHzE73ftw1uZJlf7JIqBrAdh
        6B0zFN69JUiyJeyQ8E1ltA==
X-Google-Smtp-Source: ABdhPJxMOMcPuoEWBVYoR0AMeOOcRe94R1/BeO+3YMZYe1mviRFUfFiEYJvhqsYzd2MObhwj9iQgHA==
X-Received: by 2002:a9d:684f:: with SMTP id c15mr651253oto.40.1612902982606;
        Tue, 09 Feb 2021 12:36:22 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id o3sm979oou.47.2021.02.09.12.36.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Feb 2021 12:36:19 -0800 (PST)
Received: (nullmailer pid 128691 invoked by uid 1000);
        Tue, 09 Feb 2021 20:36:18 -0000
Date:   Tue, 9 Feb 2021 14:36:18 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH 2/3] dt-bindings: Add DT bindings for Displaytech
 DT050TFT-PTS
Message-ID: <20210209203618.GA128652@robh.at.kernel.org>
References: <20210130181114.161515-1-marex@denx.de>
 <20210130181114.161515-2-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210130181114.161515-2-marex@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 30 Jan 2021 19:11:13 +0100, Marek Vasut wrote:
> Add DT bindings for Displaytech DT050TFT-PTS 5.0" (800x480)
> color TFT LCD panel, connected over DPI.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> To: dri-devel@lists.freedesktop.org
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: devicetree@vger.kernel.org
> ---
>  .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
