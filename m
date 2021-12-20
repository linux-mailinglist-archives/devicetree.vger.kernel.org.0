Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2A08147AB42
	for <lists+devicetree@lfdr.de>; Mon, 20 Dec 2021 15:27:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233613AbhLTO1u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Dec 2021 09:27:50 -0500
Received: from mail-oi1-f170.google.com ([209.85.167.170]:38750 "EHLO
        mail-oi1-f170.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230477AbhLTO1t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Dec 2021 09:27:49 -0500
Received: by mail-oi1-f170.google.com with SMTP id r26so16031524oiw.5
        for <devicetree@vger.kernel.org>; Mon, 20 Dec 2021 06:27:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=0HF1/eEs4uNXgGgZaGJCwogk1k1+OMvFCdkf2UqV7d0=;
        b=7p0/gNxj+4jR/j7RLn9iwIAjg/FX2Tm2BZJ7uFD8IInudAzX3sOwxJotiQ5/rWgpbC
         +S5Om7/DKkjXhGQYv10U5an4q6yvkl6C6d2Jz+4yxDNXc/Ov+o5ZNZplu/wI8hLpvA7I
         RV2X5Kbc9x7Y5NrPE30/DhJjZd+fnOPdrdQFVPQ0CnViYspl+wA8bWWQIRkMTBXGBh/k
         MVA+DQ2Khp5r3bvFr0hpuTAfin+UHEiJHY21+lDsVtwKXHz8bwSMVKZeGgvFtW72/Gfw
         LhHPGAW+BEQUtFBKC/8ebzEHm4UglEinL2VJJEP6EEfcvvmOmYq1UnauUcBOxTLkRO/a
         r8AQ==
X-Gm-Message-State: AOAM531nKvhV78Wey0TmZJFDAk1I32VM51mx5bW134epY/UXH0etkyc2
        BbabEsmwrrSX+DL60iYLwQ==
X-Google-Smtp-Source: ABdhPJwPZtPxdqBpHNVXFuZ1adLYUpT5JTnct7AZ2huqm1Mfpvpf7plLuN0/gFVgnqB2QKMqArVi4Q==
X-Received: by 2002:a54:4019:: with SMTP id x25mr18152692oie.116.1640010469050;
        Mon, 20 Dec 2021 06:27:49 -0800 (PST)
Received: from robh.at.kernel.org ([12.252.7.226])
        by smtp.gmail.com with ESMTPSA id z12sm3072301oor.45.2021.12.20.06.27.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Dec 2021 06:27:48 -0800 (PST)
Received: (nullmailer pid 3388822 invoked by uid 1000);
        Mon, 20 Dec 2021 14:27:43 -0000
From:   Rob Herring <robh@kernel.org>
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        dri-devel@lists.freedesktop.org,
        Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org,
        =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        kernel@pengutronix.de
In-Reply-To: <20211220110630.3521121-12-s.hauer@pengutronix.de>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de> <20211220110630.3521121-12-s.hauer@pengutronix.de>
Subject: Re: [PATCH 11/22] dt-bindings: display: rockchip: Add binding for VOP2
Date:   Mon, 20 Dec 2021 08:27:43 -0600
Message-Id: <1640010463.860879.3388821.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 20 Dec 2021 12:06:19 +0100, Sascha Hauer wrote:
> The VOP2 is found on newer Rockchip SoCs like the rk3568 or the rk3566.
> The binding differs slightly from the existing VOP binding, so add a new
> binding file for it.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../display/rockchip/rockchip-vop2.yaml       | 146 ++++++++++++++++++
>  1 file changed, 146 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.example.dt.yaml: vop@fe040000: ports: Unevaluated properties are not allowed ('port@0', 'port@1', 'port@2' were unexpected)
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1570971

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

