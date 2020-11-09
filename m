Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 221C32AC803
	for <lists+devicetree@lfdr.de>; Mon,  9 Nov 2020 23:06:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729493AbgKIWGf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Nov 2020 17:06:35 -0500
Received: from mail-oi1-f194.google.com ([209.85.167.194]:43056 "EHLO
        mail-oi1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725946AbgKIWGf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Nov 2020 17:06:35 -0500
Received: by mail-oi1-f194.google.com with SMTP id t143so11930547oif.10
        for <devicetree@vger.kernel.org>; Mon, 09 Nov 2020 14:06:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=i9CYxp8f4C7Qq6SYSSR28yA93AEFy8eV1cl3dQuGN50=;
        b=DI5Jie5ajGMlcIV+8pIc+4Od2L3HgYb4He4yGxbjt19cD3OlbkIt00WdQFwl1KDfnA
         zfTp6MbhA7CL0qUAQn64u4qshZ8mOlhzmM+oS7LhfzqBwOE8zkHDh6uGDeOnF3OmN8Ew
         /JgK56jvtH1Mc2X/X+Hf7mScSPanc45oComZ7u9aUwdBerX+im/iC7VNxCyd+JvpJ+Wb
         2bCxjlFkNolnZoUk5JRxojcpFcfdkfTP5yLyMPL4TUHZ2z3TQ0eTnX8ibI62IEEm6TA6
         hy9P+QSb3lh6CfxXN+9tSKEyzc2sZEYtKUKV4TrSCwtgi+CX2cPbXFr5lmq6+O9cIvnH
         ENXw==
X-Gm-Message-State: AOAM531/CxcixNsQXTr5u+S6GXpyRAncuJxULG5PtX1kBtViaeYGCIKp
        0sFpbW7XenXXYm3+fraOrw==
X-Google-Smtp-Source: ABdhPJy6fVd4OPqnB05e+bCpk3vzkFsqfjKFcpqCyFJxeB1uElfiomiLZwazSekOLaedpBGO1dF2xQ==
X-Received: by 2002:aca:a988:: with SMTP id s130mr896967oie.172.1604959594575;
        Mon, 09 Nov 2020 14:06:34 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id v18sm2642870oie.57.2020.11.09.14.06.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2020 14:06:34 -0800 (PST)
Received: (nullmailer pid 1839717 invoked by uid 1000);
        Mon, 09 Nov 2020 22:06:32 -0000
Date:   Mon, 9 Nov 2020 16:06:32 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Alexandre Torgue <alexandre.torgue@st.com>,
        Patrick Delaunay <patrick.delaunay@st.com>,
        Patrice Chotard <patrice.chotard@st.com>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        linux-stm32@st-md-mailman.stormreply.com,
        devicetree@vger.kernel.org,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>
Subject: Re: [PATCH] dt-bindings: arm: stm32: Add compatible strings for DH
 SoMs and boards
Message-ID: <20201109220632.GA1839673@bogus>
References: <20201108221438.310406-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201108221438.310406-1-marex@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 08 Nov 2020 23:14:38 +0100, Marek Vasut wrote:
> Document devicetree compatible strings of the DH SoMs and boards.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Patrice Chotard <patrice.chotard@st.com>
> Cc: Patrick Delaunay <patrick.delaunay@st.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> To: linux-arm-kernel@lists.infradead.org
> ---
>  .../devicetree/bindings/arm/stm32/stm32.yaml      | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
