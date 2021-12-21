Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7DD8B47C7CF
	for <lists+devicetree@lfdr.de>; Tue, 21 Dec 2021 20:53:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241923AbhLUTxv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Dec 2021 14:53:51 -0500
Received: from mail-qt1-f173.google.com ([209.85.160.173]:34753 "EHLO
        mail-qt1-f173.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229779AbhLUTxu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Dec 2021 14:53:50 -0500
Received: by mail-qt1-f173.google.com with SMTP id o17so13963570qtk.1
        for <devicetree@vger.kernel.org>; Tue, 21 Dec 2021 11:53:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=B4WeFb0PgWYKYh4FxwnDfgfmfgbWmUsAOMhpXy4gxGg=;
        b=3bce7S5u39/noWW4mKnh+ehckX3KeWUDO2xQcRkI0C2Uq06mM8KIOqpopauC7ORP2+
         4Qa9omOkg0JmMFPHbi//X6+hyy6GRjjynVtam4yYWIfyCY6EVSfiL9z+AN/Epp9FNdyl
         zLyeLcuJ4vniynEiUxLYzqfIdaxufEUA8hxp9ZmuVnPsgppg+Inqj4n5WWA+z1Gh/9Nq
         0fDPzD1X0IWAMeRmTvlnOZKp4+6s5oz3Yc1SgjOktiXkZHAs/hBEEti2Yw4zRdYGYHas
         fdBa/EClfgnfSNis0rjJYbC3gqQO4PJzfL21lhr3f+8GE45rTo6ZI/3SdfoRYJUVjC4E
         DEnA==
X-Gm-Message-State: AOAM533YjKtGUy25gFriUHz99CZsCaKB4Lw9bZiUDrQiYzknyb81Pizl
        kZFIe/QWj1yPoermWCwYw5rrOSF/xXxw
X-Google-Smtp-Source: ABdhPJwg4UIggNska2qBpIa9WUt3iOO9YZcgQV0uXMPIqFaXDxc3lxh0YXrpwXBGc9NjsiN/B08aiA==
X-Received: by 2002:ac8:5e0f:: with SMTP id h15mr3717181qtx.123.1640116430015;
        Tue, 21 Dec 2021 11:53:50 -0800 (PST)
Received: from robh.at.kernel.org ([24.55.105.145])
        by smtp.gmail.com with ESMTPSA id az16sm15774812qkb.124.2021.12.21.11.53.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Dec 2021 11:53:49 -0800 (PST)
Received: (nullmailer pid 1642877 invoked by uid 1000);
        Tue, 21 Dec 2021 19:53:47 -0000
Date:   Tue, 21 Dec 2021 15:53:47 -0400
From:   Rob Herring <robh@kernel.org>
To:     Alexander Stein <alexander.stein@mailbox.org>
Cc:     devicetree@vger.kernel.org, Mark Brown <broonie@kernel.org>,
        alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jerome Brunet <jbrunet@baylibre.com>
Subject: Re: [PATCH v2 3/3] ASoC: meson: g12a: add missing sound-name-prefix
 property
Message-ID: <YcIwy0B7Xm3MDF1s@robh.at.kernel.org>
References: <20211218143423.18768-1-alexander.stein@mailbox.org>
 <20211218143423.18768-3-alexander.stein@mailbox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211218143423.18768-3-alexander.stein@mailbox.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 18 Dec 2021 15:34:23 +0100, Alexander Stein wrote:
> This is used in meson-sm1 and meson-g12 .dtsi. Add the property to
> the binding.
> This fixes the dtschema warning:
> audio-controller@740: 'sound-name-prefix' does not match any of the
> regexes: 'pinctrl-[0-9]+'
> 
> Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
> ---
> All users have set this to "TOACODEC", but I am not sure if this value is
> mandatory, so I opted to not set a pattern for this property.
> 
> Changes in v2:
> * Fix 'pass' -> 'true'
> 
> .../devicetree/bindings/sound/amlogic,g12a-toacodec.yaml     | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
