Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB4AC376B8D
	for <lists+devicetree@lfdr.de>; Fri,  7 May 2021 23:17:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229542AbhEGVSD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 May 2021 17:18:03 -0400
Received: from mail-ot1-f46.google.com ([209.85.210.46]:42620 "EHLO
        mail-ot1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229524AbhEGVSC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 May 2021 17:18:02 -0400
Received: by mail-ot1-f46.google.com with SMTP id g15-20020a9d128f0000b02902a7d7a7bb6eso9075501otg.9
        for <devicetree@vger.kernel.org>; Fri, 07 May 2021 14:17:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=o2wAdh/yfwrDOJ+uh/SIWWS7GKEi+U+Ks6zzB1DcWjc=;
        b=Zxp+lISem2fYegoNdO0InleFrhL7JAQSDxW0yz4CLsNB5RNJ9AyJu1GihbCuGNtDpA
         r4MN3pEGtKRpPlFHgGA5y8FgkbbCaJVbHBijBBYR+8w5eHzqwy5OQXpCkoVOtt0w9Fdx
         P16Hgk9sjjzKMwozZaHBZMrD1fyVimOmcAy0qLRtHfCTHW+zP7v9JGr9kkXaejyTGUww
         S1ZwMWg1M5rfSRCJo72pmNF0cugNpiKEPyqxOXWDuLtuW1A460oo3LdR59atmpFF7/yU
         +IfTVA6U96ldvQ0Vv+oknOMLV0uxK4Dx+dq75tFUVAtYd7CkkJ1H+MuDZvtMOUMG4pPT
         ZArw==
X-Gm-Message-State: AOAM530QS4TyhrtDCJOKg8Exf/Y4Tc7jcr6c+0TlFNEXwCCx/j2b8Swq
        IZrcxamLYL80fBuxk7+5enAqcgrT9w==
X-Google-Smtp-Source: ABdhPJwzEATdhPR+vD7sjpKJoXXORNslSDBZ6/Si2SZhvodV63TuOuNce1xUeC0XmmmGIHyC/mGs9Q==
X-Received: by 2002:a05:6830:1042:: with SMTP id b2mr1488498otp.120.1620422222303;
        Fri, 07 May 2021 14:17:02 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id w3sm1408353otg.78.2021.05.07.14.17.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 May 2021 14:17:00 -0700 (PDT)
Received: (nullmailer pid 2901821 invoked by uid 1000);
        Fri, 07 May 2021 21:16:59 -0000
Date:   Fri, 7 May 2021 16:16:59 -0500
From:   Rob Herring <robh@kernel.org>
To:     Ezequiel Garcia <ezequiel@collabora.com>
Cc:     linux-rockchip@lists.infradead.org, kernel@collabora.com,
        Heiko Stuebner <heiko@sntech.de>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        devicetree@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 3/3] dt-bindings: timer: convert rockchip,rk-timer.txt
 to YAML
Message-ID: <20210507211659.GA2901791@robh.at.kernel.org>
References: <20210506111136.3941-1-ezequiel@collabora.com>
 <20210506111136.3941-4-ezequiel@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210506111136.3941-4-ezequiel@collabora.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 06 May 2021 08:11:36 -0300, Ezequiel Garcia wrote:
> Convert Rockchip Timer dt-bindings to YAML.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  .../bindings/timer/rockchip,rk-timer.txt      | 27 --------
>  .../bindings/timer/rockchip,rk-timer.yaml     | 64 +++++++++++++++++++
>  2 files changed, 64 insertions(+), 27 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
>  create mode 100644 Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
