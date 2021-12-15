Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E91DF475D5A
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 17:27:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244617AbhLOQ1P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 11:27:15 -0500
Received: from mail-ot1-f53.google.com ([209.85.210.53]:45981 "EHLO
        mail-ot1-f53.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235247AbhLOQ1P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 11:27:15 -0500
Received: by mail-ot1-f53.google.com with SMTP id a23-20020a9d4717000000b0056c15d6d0caso25520235otf.12
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 08:27:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=mRjfzGCFsyEy9liNkofQ4/Kvoz3LJlq+jyN1RL2p0+w=;
        b=OAYUTbjhde/KgV3GG66Mf6lrYDWGplhDKbgpSWfe6DkyRrocvUq6wOpiuzfE3X6qRr
         lBmVkyTyFon3cLlNpZnahuG/Se/Dvm/ZPp7b8tSDCuDaivxsmfmCRmNAA4vBg+RQ7Apz
         3dcgZAIXHXnjGUPvNRdLCBIyNnSOlZE8tbiuhC9vZvZDSgji8tNslip6eGlv16hVtj5v
         W4ZTCo03rKGq+NWyMIbep26rd15Vpp1IopTZj3i0FG4VEXHt9/0bFXN1/Z4P2S5725Pc
         5wQYL2f66HmH6lLhq3Vu3pPGaKkDljHVj1SiFJdqUljYRt9Um+tqHDzi6o4vwaAR6+1x
         Ppag==
X-Gm-Message-State: AOAM531xX946kaSq5MDtLDr9WxASotb8/QqdjpvfBVk2Dxhd6cxVjTKO
        ObFAbjNLar2wAD86JR3E9A==
X-Google-Smtp-Source: ABdhPJz7cwNq1L5+PZs4RmdzDlYifLHy9xBrYU9l4KrMX1zbl4Y1pZvmi0gCVQcogvUT6QO5WJ9pwg==
X-Received: by 2002:a9d:4e89:: with SMTP id v9mr9559811otk.352.1639585634572;
        Wed, 15 Dec 2021 08:27:14 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id v20sm515081otj.27.2021.12.15.08.27.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Dec 2021 08:27:13 -0800 (PST)
Received: (nullmailer pid 1427316 invoked by uid 1000);
        Wed, 15 Dec 2021 16:27:12 -0000
Date:   Wed, 15 Dec 2021 10:27:12 -0600
From:   Rob Herring <robh@kernel.org>
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Peter Geis <pgwipeout@gmail.com>, kernel@pengutronix.de,
        linux-arm-kernel@lists.infradead.org,
        Sandy Huang <hjc@rock-chips.com>,
        dri-devel@lists.freedesktop.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Andy Yan <andy.yan@rock-chips.com>,
        Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 06/18] dt-bindings: display: rockchip: dw-hdmi: Make
 unwedge pinctrl optional
Message-ID: <YboXYKbjRmbUO1Wt@robh.at.kernel.org>
References: <20211208151230.3695378-1-s.hauer@pengutronix.de>
 <20211208151230.3695378-7-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211208151230.3695378-7-s.hauer@pengutronix.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 08 Dec 2021 16:12:18 +0100, Sascha Hauer wrote:
> None of the upstream device tree files has a "unwedge" pinctrl
> specified. Make it optional.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml   | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
