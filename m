Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8131E2D1026
	for <lists+devicetree@lfdr.de>; Mon,  7 Dec 2020 13:12:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726923AbgLGMMG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Dec 2020 07:12:06 -0500
Received: from mail-wr1-f66.google.com ([209.85.221.66]:35772 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727020AbgLGMMG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Dec 2020 07:12:06 -0500
Received: by mail-wr1-f66.google.com with SMTP id r3so12533975wrt.2
        for <devicetree@vger.kernel.org>; Mon, 07 Dec 2020 04:11:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=/0Afdb3e2bu0UdCs+c1R+7yIGXgG4YHmy46klrSfstA=;
        b=Go9p5cl4nFEax9Pf+UtPBxKNRN83Pw2AEAD8FuHD+2EYWAFRdjKiMet75p9FaNtI+Q
         ANKwnMdMN8oPtE4jk2yc8JVw20kmHYh9HDy+BvH6hLbOUllSZHc0Blfy76gH+GhdWEAp
         HE9+k1I8kpCeoCri0oYiKXS+eIC8ZTr2QBV/6tAeH/xBM3Se0eX5IQCikHepmc34HGFm
         GA7xKu9/sBB6tYS7q4TGy863kdqGiptCmwJ+8gp5G4o5B/IqmgpUtcdY6wWfxwF7xgXp
         E/VWEocc0ZphIiYl2YZ+wH+Pp9XB9H7INVJtJgz5EPanscpgkXGSres5r3YM3Mh6UYLU
         Xxlw==
X-Gm-Message-State: AOAM532z2LDHb6gPbUPMWT83iH6gjXLjZNFvz43egIraFyOc2ysONlnP
        p7Nrdr4esrl77MD3cAPsuaA=
X-Google-Smtp-Source: ABdhPJxZwPWS9OyfP8e8x1Tv1qzMrbs/QAB8O+MkJmi1j4MPxhd2YQTHesDTKZG1xmKoqiJH5RX4jg==
X-Received: by 2002:a5d:4b09:: with SMTP id v9mr19696856wrq.394.1607343084180;
        Mon, 07 Dec 2020 04:11:24 -0800 (PST)
Received: from kozik-lap (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.googlemail.com with ESMTPSA id x66sm14251067wmg.26.2020.12.07.04.11.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Dec 2020 04:11:23 -0800 (PST)
Date:   Mon, 7 Dec 2020 13:11:22 +0100
From:   Krzysztof Kozlowski <krzk@kernel.org>
To:     Teresa Remmet <t.remmet@phytec.de>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 2/4] arm64: defconfig: Enable PCA9532 support
Message-ID: <20201207121122.GD27266@kozik-lap>
References: <1607113982-109524-1-git-send-email-t.remmet@phytec.de>
 <1607113982-109524-3-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1607113982-109524-3-git-send-email-t.remmet@phytec.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 04, 2020 at 09:33:00PM +0100, Teresa Remmet wrote:
> Enable i2c led expander PCA9532 module support populated on
> phyBOARD-Pollux-i.MX8M Plus.
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof
