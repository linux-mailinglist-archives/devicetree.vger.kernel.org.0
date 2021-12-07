Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 95FD046C4B0
	for <lists+devicetree@lfdr.de>; Tue,  7 Dec 2021 21:32:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231894AbhLGUg1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 15:36:27 -0500
Received: from mail-ot1-f51.google.com ([209.85.210.51]:45845 "EHLO
        mail-ot1-f51.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231393AbhLGUg0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Dec 2021 15:36:26 -0500
Received: by mail-ot1-f51.google.com with SMTP id a23-20020a9d4717000000b0056c15d6d0caso380507otf.12
        for <devicetree@vger.kernel.org>; Tue, 07 Dec 2021 12:32:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=314Swo2giBxC8EAz4uaaC4iyUFE8uIac74Qo/PcmRic=;
        b=3T6f/hf6Doe1ysrEXGlPh3Ey3hC0fD+j3PMYqf0iPGO38vveNaOZz37hlDraAF5Led
         wSnSK7kRLLxjuKObHTRS5wlbmM8l3g0SXYexccVFs2SQG8UsuEsawV8BmeRoZL2njcAb
         ESudrDM4be45Xp0QSdI+Lb5lcKz0SU0aN0lNa1a4kQHwhFSuBxUiU9RtBEV6yVkroClR
         hB/eQ36oIYycuPQkMx0rMncqMttn6u1YvD90E8dkjkaa6fj80+R6AULbYpIB3QG6ciOB
         d+/BMYmTZua87aXea2n8zcyVXaXdZJna/NZf5Mnqm6EMirJTly2FFRDpWcql831n91cS
         6icg==
X-Gm-Message-State: AOAM532g+BdwA5O5TgVKvpWvNUB8UulEQ9EdS10h6bTVmQcM9MJUmj3d
        nMeRlzBlHHxtjTrPe/xV/g==
X-Google-Smtp-Source: ABdhPJwmwqyWszM7wAkHKCXFeC9992SwWhCxDr+taxAFXXrkLvZu46vQNX5neqr6hql5wgb3jZ/RxQ==
X-Received: by 2002:a05:6830:2aa7:: with SMTP id s39mr37943969otu.151.1638909174916;
        Tue, 07 Dec 2021 12:32:54 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id o6sm141750oou.41.2021.12.07.12.32.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Dec 2021 12:32:53 -0800 (PST)
Received: (nullmailer pid 781221 invoked by uid 1000);
        Tue, 07 Dec 2021 20:32:52 -0000
Date:   Tue, 7 Dec 2021 14:32:52 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 1/3] dt-bindings: Add Team Source Display Technology
 vendor prefix
Message-ID: <Ya/E9B3HNR9UI+nX@robh.at.kernel.org>
References: <20211127031909.283383-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211127031909.283383-1-marex@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 27 Nov 2021 04:19:07 +0100, Marek Vasut wrote:
> Add vendor prefix for Team Source Display Technology Co., Ltd.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org
> ---
> NOTE: All the documentation abbreviates the company name as TSD,
>       but that vendor prefix is already taken.
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
