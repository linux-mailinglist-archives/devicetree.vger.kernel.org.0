Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4067F40188E
	for <lists+devicetree@lfdr.de>; Mon,  6 Sep 2021 11:03:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240243AbhIFJDf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Sep 2021 05:03:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236233AbhIFJDe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Sep 2021 05:03:34 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04B31C061575
        for <devicetree@vger.kernel.org>; Mon,  6 Sep 2021 02:02:30 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id n39so2317798wms.1
        for <devicetree@vger.kernel.org>; Mon, 06 Sep 2021 02:02:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=KyhxG0YvRHQ4AVkcqHPgCmX5z0vgZBX3z8J3Dk6wERo=;
        b=On0w7j+YMXDPTCcp0L++dIcmM+DDFA78YVQOn15ue9K/mXKh1aDBK+aQ5oAY2E2k2s
         aoHvs3vWVUEdnuLb40gtL1l1Mv5RZG/FstLC42hLnmYcsXqfi4Vlo6FRd+kKnYjgog8/
         LZbOTaXBbzNF8Z4akvkBc1VRqGtneANaXo8W5lm/al56u1voQn8GBSFJVVC+tvF705ZB
         g+OzkNkxDK0EtMJQLin6th2NIxKP8DClQ45NzVVzy3I2EB+R/8lEJ8oZAbdjJhC0CAz3
         7a7PkSVO4GJmJfh71sDoYdE+zjMKTv3HYAUKsc5QhzUV2PD7XwVvFoKG9N8Yjs2yn0Mv
         Yq/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=KyhxG0YvRHQ4AVkcqHPgCmX5z0vgZBX3z8J3Dk6wERo=;
        b=JGJ7TNklNcI7YPjG71eFlkqLeEMNOmUtmJwdnchkgdGGxU4x8+OpOnz8Q/iWBF8lXV
         UST3ttgp4XPCME0SBiubbako8lAFG2sS9S278e3wsmfPNCOVxhZymdKzWLv7sLRhMhlR
         ACqr/FSY+GoE7T4fdPbayjSNgB88N7uS4z6uTzRVvoIE9SA6YnX9TcdoaiVorNEy+szu
         eCD9+aFAqFb13LN6XF8QCIT/a7bEc/HA2rkCpYws+qsH5jARKoOt/4kVE1/BLOfo5Xrj
         iKncCRGQ6MXa+C10yPaZ/ZED91WiShAFblUlKKaeKBghaAZh/HstBCJIeYULRDqyRcOx
         oitw==
X-Gm-Message-State: AOAM530+kp6kQsgB6u8Zku9OUvTqDa1acGNoOWGyKhmL7mNAjgMO7C88
        oNGL9dFFO6DQpFkNE2xdSQY2ig==
X-Google-Smtp-Source: ABdhPJwfweXeWj75Zd9acMvzkPWgxXHSXQWa6WpSn4335xCK+fDLhnvh2GURyrcEFxS6d9MFQ1SMEA==
X-Received: by 2002:a05:600c:acd:: with SMTP id c13mr10046106wmr.28.1630918948645;
        Mon, 06 Sep 2021 02:02:28 -0700 (PDT)
Received: from google.com ([31.124.24.187])
        by smtp.gmail.com with ESMTPSA id t11sm7710052wmi.23.2021.09.06.02.02.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Sep 2021 02:02:28 -0700 (PDT)
Date:   Mon, 6 Sep 2021 10:02:26 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        Frank Rowand <frowand.list@gmail.com>,
        Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        linux-sunxi@googlegroups.com, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 29/52] dt-bindings: mfd: Convert X-Powers AXP binding
 to a schema
Message-ID: <YTXZIn7d5yrRcO0o@google.com>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-30-maxime@cerno.tech>
 <YTJ7Nf9s1fr3kJny@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YTJ7Nf9s1fr3kJny@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 03 Sep 2021, Rob Herring wrote:

> On Wed, 01 Sep 2021 11:18:29 +0200, Maxime Ripard wrote:
> > The X-Powers AXP PMICs are supported by Linux thanks to its device tree
> > binding.
> > 
> > Now that we have the DT validation in place, let's convert the device
> > tree bindings for that driver over to a YAML schema.
> > 
> > Cc: Chen-Yu Tsai <wens@csie.org>
> > Cc: Lee Jones <lee.jones@linaro.org>
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > 
> > ---
> > 
> > Changes from v1:
> >   - Add GPIO example
> >   - Remove the limitation on regulator-ramp-delay
> > ---
> >  .../i2c/allwinner,sun6i-a31-p2wi.yaml         |   2 +-
> >  .../devicetree/bindings/mfd/axp20x.txt        | 273 ------------
> >  .../bindings/mfd/x-powers,axp152.yaml         | 400 ++++++++++++++++++
> >  3 files changed, 401 insertions(+), 274 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/mfd/axp20x.txt
> >  create mode 100644 Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
> > 
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> 
> Note that the gpio child schema needs to be applied with this one.

Not sure I'm in possession of that.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
