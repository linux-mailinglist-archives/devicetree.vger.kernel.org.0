Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 08F124362F6
	for <lists+devicetree@lfdr.de>; Thu, 21 Oct 2021 15:30:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230349AbhJUNc3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Oct 2021 09:32:29 -0400
Received: from mail-ot1-f48.google.com ([209.85.210.48]:44954 "EHLO
        mail-ot1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230436AbhJUNc1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Oct 2021 09:32:27 -0400
Received: by mail-ot1-f48.google.com with SMTP id d21-20020a9d4f15000000b0054e677e0ac5so373686otl.11
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 06:30:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=0zF0CVmeaIG2Lt62vaRjUU2fLmKXJyBGdl9zYadt9rk=;
        b=rFQcq/+Y1aFRyZ7MC74NFMZFmQb+qJKgLN/UkoCftXiMG7UWdKyR7Fmb+nLLR+Xj/f
         onvCINYtGunBRBi60/RUGj8amwCny7TV4pJSI+rsJWFNgrBv2oXCiVLf3udF3unLZPyi
         0EcIax92WQGUHlt13j9ftGhdUqu2KyKeGT0opH0ebTwGHgcq+VuyMadtXbHEwv3RjMPd
         ktzAC4ZIrXFr5vwZiOPF29mQOcnBSRkDGcEme1XtNa1pFdvuSkre3gfdtaldM2TUKkim
         6K9fXcN2uE0cQurKovM41Jq1JypIaLJNE3OP3LLhI8AYz49pVVKHmg9zX3OOKWOUG05i
         aEXQ==
X-Gm-Message-State: AOAM533N34/5Fxo3ujouSb+m/dUgIDAGQcLiz5rb32EivAT3or6o00CL
        kC0lXXJ5st5/6W9Qdbxfww==
X-Google-Smtp-Source: ABdhPJzRAjLuHwIJ9mvQFOPzhmIpXAT6cNcKlAhYHOhqHGtrndKW6FroqvYm4rd8UFGr80VHBXiICA==
X-Received: by 2002:a9d:764c:: with SMTP id o12mr4966078otl.129.1634823011712;
        Thu, 21 Oct 2021 06:30:11 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id t8sm1070167otc.74.2021.10.21.06.30.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Oct 2021 06:30:10 -0700 (PDT)
Received: (nullmailer pid 353184 invoked by uid 1000);
        Thu, 21 Oct 2021 13:30:05 -0000
From:   Rob Herring <robh@kernel.org>
To:     Markus Schneider-Pargmann <msp@baylibre.com>
Cc:     devicetree@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        linux-mediatek@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
        dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org
In-Reply-To: <20211021092707.3562523-2-msp@baylibre.com>
References: <20211021092707.3562523-1-msp@baylibre.com> <20211021092707.3562523-2-msp@baylibre.com>
Subject: Re: [PATCH v5 1/7] dt-bindings: mediatek,dpi: Add DP_INTF compatible
Date:   Thu, 21 Oct 2021 08:30:05 -0500
Message-Id: <1634823005.130125.353182.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 21 Oct 2021 11:27:01 +0200, Markus Schneider-Pargmann wrote:
> DP_INTF is similar to DPI but does not have the exact same feature set
> or register layouts.
> 
> DP_INTF is the sink of the display pipeline that is connected to the
> DisplayPort controller and encoder unit. It takes the same clocks as
> DPI.
> 
> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> ---
> 
> Notes:
>     Changes v4 -> v5:
>     - Newly created patch after realizing that the specific clocks for dpintf were
>       the same as engine and pixel clocks.
> 
>  .../bindings/display/mediatek/mediatek,dpi.yaml       | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/1544237


dpi@14014000: Additional properties are not allowed ('ports' was unexpected)
	arch/arm/boot/dts/mt7623n-bananapi-bpi-r2.dt.yaml
	arch/arm/boot/dts/mt7623n-rfb-emmc.dt.yaml

dpi@14014000: compatible: Additional items are not allowed ('mediatek,mt2701-dpi' was unexpected)
	arch/arm/boot/dts/mt7623n-bananapi-bpi-r2.dt.yaml
	arch/arm/boot/dts/mt7623n-rfb-emmc.dt.yaml

dpi@14014000: compatible: ['mediatek,mt7623-dpi', 'mediatek,mt2701-dpi'] is too long
	arch/arm/boot/dts/mt7623n-bananapi-bpi-r2.dt.yaml
	arch/arm/boot/dts/mt7623n-rfb-emmc.dt.yaml

dpi@14014000: 'port' is a required property
	arch/arm/boot/dts/mt7623n-bananapi-bpi-r2.dt.yaml
	arch/arm/boot/dts/mt7623n-rfb-emmc.dt.yaml

dpi@1401d000: Additional properties are not allowed ('power-domains' was unexpected)
	arch/arm64/boot/dts/mediatek/mt8173-elm.dt.yaml
	arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dt.yaml
	arch/arm64/boot/dts/mediatek/mt8173-elm-hana-rev7.dt.yaml
	arch/arm64/boot/dts/mediatek/mt8173-evb.dt.yaml

