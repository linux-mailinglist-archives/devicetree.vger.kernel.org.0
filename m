Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C97F4250AD1
	for <lists+devicetree@lfdr.de>; Mon, 24 Aug 2020 23:25:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726519AbgHXVZa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Aug 2020 17:25:30 -0400
Received: from mail-io1-f68.google.com ([209.85.166.68]:41510 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726504AbgHXVZ2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Aug 2020 17:25:28 -0400
Received: by mail-io1-f68.google.com with SMTP id m23so9691380iol.8
        for <devicetree@vger.kernel.org>; Mon, 24 Aug 2020 14:25:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=1HgbZvwCcTPte4MLN7jZHwt9e5VMB3T1bOve0lsNkKQ=;
        b=EX/RQmBz/H0S/VbdeijqgkTPDucRaXBg52V3z4LAZ5xoWm6bUlZGGfDqsmUsXXQj2y
         484Ia0Ouiu7mxp3UoskP+xw8ciVHmT4AvJMUghKh1uYZfzIDEx+l+jo8sNDuSedcPbBj
         Te6VTD5R/NKBoevWaB/mBRXbQab1Xh3cMZWbAmv8JeNOzIO6gAdq7AodilBUsVyNmQIE
         tQsYDuLfWxjF4WWe0QHUaDcyvkJnGyHN3s05L/U+lQrWnIUaYZ9phwJYMlLMa23AiSUE
         q55A2MW0Im+HWbx5nOR0fJ3XILmoWv+xsVgKX4P96WFHAW8cIj/R18m/EKdhXrpp+Mgx
         npWA==
X-Gm-Message-State: AOAM531WhW+iXZ1rNdCg5z6aQBrUj5Tk/TMqk/3g8WlI+0IJ3l8EC6NF
        VkvNc4zoDfBQgfHGm3Twfg==
X-Google-Smtp-Source: ABdhPJwkdIQelX35ZSKuR3Y27BjtEkcSj/GTXkGBdsApCddQUD5N66dTMUGus4UBzLo6rdBO2ZgpBg==
X-Received: by 2002:a05:6638:1206:: with SMTP id n6mr7144434jas.124.1598304327300;
        Mon, 24 Aug 2020 14:25:27 -0700 (PDT)
Received: from xps15 ([64.188.179.249])
        by smtp.gmail.com with ESMTPSA id w7sm7859087ilo.17.2020.08.24.14.25.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2020 14:25:26 -0700 (PDT)
Received: (nullmailer pid 3327853 invoked by uid 1000);
        Mon, 24 Aug 2020 21:25:24 -0000
Date:   Mon, 24 Aug 2020 15:25:24 -0600
From:   Rob Herring <robh@kernel.org>
To:     David Bauer <mail@david-bauer.net>
Cc:     t.schramm@manjaro.org, jbx6244@gmail.com,
        kever.yang@rock-chips.com, m.reichl@fivetechno.de,
        jagan@amarulasolutions.com, heiko@sntech.de, robin.murphy@arm.com,
        pgwipeout@gmail.com, andy.yan@rock-chips.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R2S
Message-ID: <20200824212524.GA3327690@bogus>
References: <20200820214409.34957-1-mail@david-bauer.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200820214409.34957-1-mail@david-bauer.net>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 20 Aug 2020 23:44:08 +0200, David Bauer wrote:
> Add devicetree binding documentation for the FriendlyARM NanoPi R2S.
> 
> Signed-off-by: David Bauer <mail@david-bauer.net>
> ---
> Changes in v2:
>   - Change model name to FriendlyElec
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
