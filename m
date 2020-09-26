Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C6243279981
	for <lists+devicetree@lfdr.de>; Sat, 26 Sep 2020 15:04:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729849AbgIZNDi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Sep 2020 09:03:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729713AbgIZNDc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Sep 2020 09:03:32 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79B47C0613CE
        for <devicetree@vger.kernel.org>; Sat, 26 Sep 2020 06:03:31 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id a9so2117858wmm.2
        for <devicetree@vger.kernel.org>; Sat, 26 Sep 2020 06:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=6UBlp4CWE/HNUMg46vGuXH/W4+PrU2QCjrc8dmoCqx0=;
        b=PNuFpmwNBdW/TGJSBIP0GAADCkUiJiN3BePu59PEzCMlCXYVv+OLoczXNNVfGW7GAf
         ZsIIVdoOhY0IsSg1qTLlM46HvznPpDEZgXCebWEEK1ft9+j5c+8EjUwlhkLqmSDP7mpx
         4n3h5/vGkVdPc1nUSmhrDus0L0N0Yz96r3vpw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=6UBlp4CWE/HNUMg46vGuXH/W4+PrU2QCjrc8dmoCqx0=;
        b=Ug3v0cu1RbJjGeDB8UzmwExs0q3c/WFgUW8cPZiETsYxTshJBumOAybiKKsYTjbFqF
         kaw7axjzg1Y2+1wJsJychOeMyUPg2mqhO+1KWBpxt/olTX115jDFdNbzEH/t6zj8NmT6
         MMhdfgwJKz91M4gnGYxsSN8ygSpxFZ1SFxJdNVM3noWkkdJOrKRE+rXJHA/FCgAzcaLm
         MJf1HWl1LUctvqybb0dKmYC8Gh1lNbOz+7i6IB4pD5mluyfg61TSTGexnG1JUBF7ARY1
         TpTVKVSjvSiJf7mCcw0aGjkr7HLixXr0Ve/LwxwsW+yO+K7EYBMhSnf/kEefnRKpJh7H
         GFog==
X-Gm-Message-State: AOAM532yylNIPrUrXqx1Vnqn5BlYzhCOTiQ5c5jtaovh3Fe7NSOrO+jx
        /PyrJUDvL5VTxYr6aIHwUazExw==
X-Google-Smtp-Source: ABdhPJynIuaCTOn8KUC4rrc+W/+aEYuVm8XN6ViT/zFkUVty6k8hF7b/mtHx243jPWCjHGHQoYci3Q==
X-Received: by 2002:a1c:9c8c:: with SMTP id f134mr2541646wme.27.1601125410239;
        Sat, 26 Sep 2020 06:03:30 -0700 (PDT)
Received: from chromium.org (216.131.76.34.bc.googleusercontent.com. [34.76.131.216])
        by smtp.gmail.com with ESMTPSA id e18sm6533467wrx.50.2020.09.26.06.03.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Sep 2020 06:03:29 -0700 (PDT)
Date:   Sat, 26 Sep 2020 13:03:27 +0000
From:   Tomasz Figa <tfiga@chromium.org>
To:     Helen Koike <helen.koike@collabora.com>
Cc:     devicetree@vger.kernel.org, linux-media@vger.kernel.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        devel@driverdev.osuosl.org, robh+dt@kernel.org, heiko@sntech.de,
        hverkuil-cisco@xs4all.nl, kernel@collabora.com,
        dafna.hirschfeld@collabora.com, ezequiel@collabora.com,
        mark.rutland@arm.com, karthik.poduval@gmail.com, jbx6244@gmail.com,
        eddie.cai.linux@gmail.com, zhengsq@rock-chips.com,
        robin.murphy@arm.com
Subject: Re: [PATCH v5 0/9] move Rockchip ISP bindings out of staging / add
 ISP DT nodes for RK3399
Message-ID: <20200926130327.GD3781977@chromium.org>
References: <20200722155533.252844-1-helen.koike@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200722155533.252844-1-helen.koike@collabora.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Helen,

On Wed, Jul 22, 2020 at 12:55:24PM -0300, Helen Koike wrote:
> Move the bindings out of drivers/staging and place them in
> Documentation/devicetree/bindings instead.
> 
> Also, add DT nodes for RK3399 and verify with make ARCH=arm64 dtbs_check
> and make ARCH=arm64 dt_binding_check.
> 
> Tested by verifying images streamed from Scarlet Chromebook
> 
> Changes in v5:
> - Drop unit addresses in dt-bindings example for simplification and fix
> errors as suggested by Rob Herring in previous version
> - Fix typos
> - Re-write clock organization with if/then schema
>

Besides one comment to patch 8/9,

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz
