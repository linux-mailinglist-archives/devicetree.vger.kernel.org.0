Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D44140EEBE
	for <lists+devicetree@lfdr.de>; Fri, 17 Sep 2021 03:31:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242262AbhIQBcy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Sep 2021 21:32:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232222AbhIQBcx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Sep 2021 21:32:53 -0400
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19EA6C061574
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 18:31:32 -0700 (PDT)
Received: by mail-oi1-x22f.google.com with SMTP id r26so11757471oij.2
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 18:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=f57u0A/QcXB9Uc7ywKqPgF1+a3SXXQ/NQC+jmV4WsJI=;
        b=UszOX13r//yuKwayXPHevyhJm1/hLmvOOlm99g/9vqe6EU0P7RwfzzZjeXwfg2E7cM
         aEfy2fMwutqjNxv8ZwPhKvafBceGe9ve8lKqS5Ak75rdUYALNmcGICwM6gYLeC5hUi0x
         mTwrrpIU49RA+D2nWnKJ8QDpKxK9uUaijmjX0Po1LE1HwIqaH/UJ4NCaWVCUA6BzKuLV
         2hvoSLGkKICFQ8y/uZUWPms1X+Rc+Nk4KT8cvVplPjyB49rPEcoqd+U8QQ5v+V2tyChx
         k02lHdDAoYjmhrSQ5PXYZoywNJYYmY2sXNAcoyH/m8nkXL9/uBTPHoqKk5R5g/vg9Tr4
         N/Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=f57u0A/QcXB9Uc7ywKqPgF1+a3SXXQ/NQC+jmV4WsJI=;
        b=FMvY+Dxgsb+K2DRpGTZ56A8Tlmqa8W0BOpBBQzu9xSdTKVh3+pH8/efnh0gjeg+5sf
         GWNjckqhlokt2bPaUiki/246aG0uJ2GvMviRZKi5D9faCc9nGJPzwZxKTBHDR92Qkh8Z
         1ZtGv9Rifrj/+VD8aZikDDcYulWcPr4ZmMANj3p2xOahuPVQvW7cjFmIhmjvqnI7t6Yu
         fb4Z/S+LcRe5IlzzvOc0ozQjt23RMTXct8nJEVIyADwPtKPW8l5UoH/sa6jfOHwFoB41
         2HRP4T/osJ/6Q+9zf9G8Z/zr5V8w39EVzPsB6Y4sbspR7//H5R6rpKJ/Ig5e4YpwAE57
         cZ1w==
X-Gm-Message-State: AOAM530/3lt7ZGTu5eXOOivPrkTPbNgc2iarilxgNcQEL4QeewHAYnUo
        +YYaRWqI0led/ity9YdwAus=
X-Google-Smtp-Source: ABdhPJzPE8xeK6Qls1N3K85Pd7QO4u+kZK6xIKc89ErochxrBtGoWHHXThQ+A/nsdOSkD3GemQvcAg==
X-Received: by 2002:a54:4589:: with SMTP id z9mr11266921oib.22.1631842291380;
        Thu, 16 Sep 2021 18:31:31 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id w9sm1103518oti.35.2021.09.16.18.31.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Sep 2021 18:31:30 -0700 (PDT)
Date:   Thu, 16 Sep 2021 20:31:28 -0500
From:   Chris Morgan <macroalpha82@gmail.com>
To:     Rob Herring <robh@kernel.org>
Cc:     lee.jones@linaro.org, Chris Morgan <macromorgan@hotmail.com>,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        zyw@rock-chips.com, zhangqing@rock-chips.com, heiko@sntech.de,
        robh+dt@kernel.org
Subject: Re: [PATCH v2] dt-bindings: mfd: rk808: Convert bindings to yaml
Message-ID: <20210917013128.GA19894@wintermute.localdomain>
References: <20210916201947.18237-1-macroalpha82@gmail.com>
 <1631839746.891478.1484029.nullmailer@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1631839746.891478.1484029.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 16, 2021 at 07:49:06PM -0500, Rob Herring wrote:
> On Thu, 16 Sep 2021 15:19:47 -0500, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Convert the rk808 bindings into yaml format. Please note that currently
> > there are a few errors that appear when performing a make dtbs_check.
> > However, after looking at the errors it appears in most cases it occurs
> > on device trees which are not following the current rk808.txt document
> > today. For example for the rk808 there are multiple errors regarding
> > vcc13-supply, vcc14-supply, and vddio-supply; however these supplies
> > are not listed in the current driver or cared for in any way.
> > 
> > For the moment the rk817 is the only MFD that will support a battery.
> > I believe the rk818 also supports a batter but I do not have one to
> > test or write the code for. When it is supported we can split off
> > the battery to its own document. Note that the battery is being added
> > in a separate commit series.
> > 
> > Changes from V1:
> > 
> >  - Removed generic descriptions.
> >  - Added maxItems to clock-output-names. Max items is 2 per the driver.
> >  - Added unevaluatedProperties as false to regulators.
> >  - Correct i2c node.
> >  - Added note about the battery.
> > 
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > ---
> >  .../devicetree/bindings/mfd/rk808.txt         | 465 ------------------
> >  .../bindings/mfd/rockchip,rk805.yaml          |  84 ++++
> >  .../bindings/mfd/rockchip,rk808.yaml          | 253 ++++++++++
> >  .../bindings/mfd/rockchip,rk809.yaml          |  98 ++++
> >  .../bindings/mfd/rockchip,rk817.yaml          | 362 ++++++++++++++
> >  .../bindings/mfd/rockchip,rk818.yaml          | 106 ++++
> >  6 files changed, 903 insertions(+), 465 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/mfd/rk808.txt
> >  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
> >  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
> >  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> >  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
> >  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
> > 
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mfd/rockchip,rk808.example.dt.yaml: pmic@1b: 'vddio-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
> 
> doc reference errors (make refcheckdocs):
> Documentation/devicetree/bindings/pinctrl/pinctrl-rk805.txt: Documentation/devicetree/bindings/mfd/rk808.txt
> 
> See https://patchwork.ozlabs.org/patch/1529027
> 
> This check can fail if there are any dependencies. The base for a patch
> series is generally the most recent rc1.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit.

What would be the best way to handle this? I can confirm that there
is no vddio cared for in the driver, however the datasheet appears
to show that one exists (vddio appears to be the supply for the
BUCK1 and BUCK2 DVS voltage). Should I update the yaml to reflect what
already exists today in the various device trees, should I only allow
what the driver cares for today, or should I "meet halfway" and allow
that which the datasheet permits (such as this) even if it's not
implemented in the driver? Note that there will also be some other
errors that are expected, because the existing device trees didn't
always follow the previous rk808.txt file (there is at least one board
with the wrong clock-cells value).

Thank you.

> 
