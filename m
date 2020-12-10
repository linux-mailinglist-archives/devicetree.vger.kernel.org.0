Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6DA4A2D6271
	for <lists+devicetree@lfdr.de>; Thu, 10 Dec 2020 17:50:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391083AbgLJOh1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Dec 2020 09:37:27 -0500
Received: from mail-wm1-f66.google.com ([209.85.128.66]:36481 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391078AbgLJOhV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Dec 2020 09:37:21 -0500
Received: by mail-wm1-f66.google.com with SMTP id y23so5564925wmi.1
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 06:37:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=BbKxhSPWpvRU4kjHx4fv+2Bq6TUyiE8kSFJYl9laL/A=;
        b=EN73Gz4Bp/XBJWkt7z0YAb/mG6HjwmCSjqXj1sLfTG5y3Kpf+/iid9jr8q7rXYr1VC
         p9LlncmyAtu90ZJjuqpPzpUDV23Kmt31hbk04Lom5ovwInk9AwCOA0EBCVoKFjWqQr7k
         24Og5e1RdZ28XFlBVgZc/4d+1AZvkhhPNbOoKX0Xgo8t7GZjghTVRAPCt1j2roLB6AdJ
         5I9BQXyTv2a3LRZhcsypdi9qfsFYWFGRM+mvvIAJSyFeIDI78nZ7oDr8bDiIVVLy6c7r
         /udjVg/nHWnYEtaQxSLpeVUJAkXaYXCuqqVsRmh18CCf8xVGYEaR4vXDfqNZ/3bAJDD1
         LAoA==
X-Gm-Message-State: AOAM533O+hhXcIdIFBhWvk19DdrvhX6CXI1gMhWMRGZUBzirZDg4ELiU
        q9Tp2bQt4jNKEleXoOL9ACk=
X-Google-Smtp-Source: ABdhPJyTdTx1oTKESZIO3+v1IjrliTudXIjWNayacbx0oCO9MALjefORSq4YwAwLuaczXxuTLxPIgw==
X-Received: by 2002:a05:600c:cc:: with SMTP id u12mr8763449wmm.42.1607610999527;
        Thu, 10 Dec 2020 06:36:39 -0800 (PST)
Received: from kozik-lap (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.googlemail.com with ESMTPSA id b14sm9811962wrx.77.2020.12.10.06.36.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 06:36:38 -0800 (PST)
Date:   Thu, 10 Dec 2020 15:36:37 +0100
From:   Krzysztof Kozlowski <krzk@kernel.org>
To:     Teresa Remmet <t.remmet@phytec.de>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v2 3/4] bindings: arm: fsl: Add PHYTEC i.MX8MP devicetree
 bindings
Message-ID: <20201210143637.GB46268@kozik-lap>
References: <1607445491-208271-1-git-send-email-t.remmet@phytec.de>
 <1607445491-208271-4-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1607445491-208271-4-git-send-email-t.remmet@phytec.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 08, 2020 at 05:38:10PM +0100, Teresa Remmet wrote:
> Add devicetree bindings for i.MX8MP based phyCORE-i.MX8MP
> and phyBOARD-Pollux RDK.
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof
