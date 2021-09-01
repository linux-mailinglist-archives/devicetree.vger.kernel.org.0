Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 38EF63FD982
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 14:25:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231826AbhIAM0f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 08:26:35 -0400
Received: from mail-ot1-f53.google.com ([209.85.210.53]:40944 "EHLO
        mail-ot1-f53.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231234AbhIAM0e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 08:26:34 -0400
Received: by mail-ot1-f53.google.com with SMTP id 107-20020a9d0bf4000000b0051b8be1192fso3187779oth.7
        for <devicetree@vger.kernel.org>; Wed, 01 Sep 2021 05:25:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=moGKLgAMctDhdayXDYXUaaxJMf7F5RhBbpAYaCRzoR8=;
        b=Di8sc4WO1udD0WuFuzipl95Z69QrddbvB2vkFgEQi1gpd/GHFjXY7yxHSZZ+7PwtvE
         kRXfz++bzzjJ+3qKMbBw5T+ESeQIdqxa2y9wYiMdUDdchEN4xtj05MuZar3ISiLn8wYL
         bNzD0uer2Om3NK46DaMJgrG6J/AI1DwRJ8f1RQ9rP3yxWjd7a1Lzt5Cw33kQiyAniYi7
         hWjBhm8ltz13yzPNweS09Cr5P/li5elzAyikePrd7OVeb8ol89aCpGmNZ52XtsIRBwLc
         SnPplq0mBLX8YxbUvD40EYS/4VwltzEH8JzeE75KkMn/z07xnDkZhR98G704cjU3Ppmw
         ryyQ==
X-Gm-Message-State: AOAM532iTZJviMUCqpKaGcSwl1nsmd5Vc3JqS0XnXBwEcryzSyFZpDxX
        uZbhc4bpepC7W6/g9uh4IA==
X-Google-Smtp-Source: ABdhPJz08+fp6tHNieUoTd7qpfXjVJpOPeRep66NHmc3MP3mFNRssU+kE4r9x0uR6tD6ISUGcRzdmg==
X-Received: by 2002:a9d:7111:: with SMTP id n17mr23458475otj.279.1630499137969;
        Wed, 01 Sep 2021 05:25:37 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id m16sm4240656oop.3.2021.09.01.05.25.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Sep 2021 05:25:37 -0700 (PDT)
Received: (nullmailer pid 1940206 invoked by uid 1000);
        Wed, 01 Sep 2021 12:25:36 -0000
Date:   Wed, 1 Sep 2021 07:25:36 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sugar Zhang <sugar.zhang@rock-chips.com>
Cc:     heiko@sntech.de, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        broonie@kernel.org
Subject: Re: [PATCH v3 6/7] ASoC: dt-bindings: rockchip: pdm: Document
 property 'rockchip,path-map'
Message-ID: <YS9xQPfUCzOOpkjY@robh.at.kernel.org>
References: <1630468039-7186-1-git-send-email-sugar.zhang@rock-chips.com>
 <1630468118-7321-1-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1630468118-7321-1-git-send-email-sugar.zhang@rock-chips.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 01 Sep 2021 11:48:37 +0800, Sugar Zhang wrote:
> This is an optional property to describe data path mapping.
> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> ---
> 
> Changes in v3: None
> Changes in v2: None
> 
>  Documentation/devicetree/bindings/sound/rockchip,pdm.txt | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
