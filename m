Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE0833FD97D
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 14:25:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243990AbhIAMZ7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 08:25:59 -0400
Received: from mail-oi1-f182.google.com ([209.85.167.182]:42607 "EHLO
        mail-oi1-f182.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243972AbhIAMZ7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 08:25:59 -0400
Received: by mail-oi1-f182.google.com with SMTP id bi4so3454585oib.9
        for <devicetree@vger.kernel.org>; Wed, 01 Sep 2021 05:25:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=OGno47MbHUIv9+PhbtrT66UdJTYUHB0R8oj64LoIDJw=;
        b=s8v8KW0i8eaMzz6MqtnuCRPzHwwfM08BOITS7K+6WR8Hy4QdN1fwHYTmKRdRQLqAbO
         s94q2SjH29c8fzwZBP/Xd3os1HsSVaJyUVs8VW/fS+Ihuwnz1NZlVHKQlTpOrfaYCCjz
         E1jMlopM2MjwbIf/hxiGeh8apThtwVXCQCp7Dkw1HCdQJsvYg/fw+HN0DRJL8NHdnSWs
         245fS2i+Nf/Ro5TDJQelRdyOuuUKPCCNFhlY4iubMO+HiVxWJK0EkM+FbCP1ZhQhc5ti
         i6BP3zH8Ph9ngzOurd2Fvny4yTRcdHgZ7S8scYNd85D3HYNiR8mr6pq2uMcVU4n3Yoph
         QZew==
X-Gm-Message-State: AOAM532b/S+daXSONAb9Fn3HsS8t4hckex+Fr8UhCaOXjDaOfJg1jNWb
        M4T1VYD8w3Dh/5ktu8tqZQ==
X-Google-Smtp-Source: ABdhPJzZQe8HXodDYefhYmHlXG1vGCmYhYO7vuQaDcvmPY6zALuTsohNF0ssWXcNhBgqmJhLviI2Iw==
X-Received: by 2002:aca:3c09:: with SMTP id j9mr7056083oia.115.1630499101947;
        Wed, 01 Sep 2021 05:25:01 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id x1sm4387341otu.8.2021.09.01.05.25.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Sep 2021 05:25:01 -0700 (PDT)
Received: (nullmailer pid 1939094 invoked by uid 1000);
        Wed, 01 Sep 2021 12:25:00 -0000
Date:   Wed, 1 Sep 2021 07:25:00 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sugar Zhang <sugar.zhang@rock-chips.com>
Cc:     broonie@kernel.org, linux-rockchip@lists.infradead.org,
        devicetree@vger.kernel.org, heiko@sntech.de,
        alsa-devel@alsa-project.org
Subject: Re: [PATCH v3 2/7] ASoC: dt-bindings: rockchip: Add binding for
 rv1126 pdm
Message-ID: <YS9xHAGwymzn57tl@robh.at.kernel.org>
References: <1630468039-7186-1-git-send-email-sugar.zhang@rock-chips.com>
 <1630468083-7248-2-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1630468083-7248-2-git-send-email-sugar.zhang@rock-chips.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 01 Sep 2021 11:47:58 +0800, Sugar Zhang wrote:
> This patch documents for rv1126 pdm.
> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> ---
> 
> Changes in v3: None
> Changes in v2: None
> 
>  Documentation/devicetree/bindings/sound/rockchip,pdm.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
