Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C1A63C8410
	for <lists+devicetree@lfdr.de>; Wed, 14 Jul 2021 13:47:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239209AbhGNLu0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jul 2021 07:50:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239092AbhGNLuZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jul 2021 07:50:25 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57D58C061760
        for <devicetree@vger.kernel.org>; Wed, 14 Jul 2021 04:47:33 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id b8-20020a17090a4888b02901725eedd346so1527183pjh.4
        for <devicetree@vger.kernel.org>; Wed, 14 Jul 2021 04:47:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=AWzrFNFkT+Jamk2vOJebJRjj+lhvrDaX1ZCtmWZwrIA=;
        b=X7uR0Z3zV9hfm3BA8zwECAl//G657PGD1gnL8rPuIsM42FYTAwME1NODyix5cG4VgB
         sI8Z7kjjhDJIIAMxIofQjb1njlzeVfSPMLbabp+3fn1XvRJoeEWITwRgvaoZ+Ighe8Ir
         TQpQHFSyTPnmKQiYThIFji82uFf4MRdpVZBaw9METNQyy3yO3KidaS3nva9Tpz5pWPiV
         JsBszjdrQbTz6MtwYNSTLnau6xtiCD5RtA2vQ/IAg8AVHiExAJrF69A1L43GhzYzsmvg
         Fa1P++y5TnVnlcUf1tHgwoRLLTrAjyZewnld475F1r1c4BrZC2SPN5z13F5egHFL4YkT
         2smA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=AWzrFNFkT+Jamk2vOJebJRjj+lhvrDaX1ZCtmWZwrIA=;
        b=WyH1JmCsGRu9Bpl48BNhW/yDK8DOpSbcMok635I9RZS6E8RwwyluaLUtS2lWogE5Mr
         K/Az2Tw3Ylqlf/Eu/NV4K789isk5zFIWaN70Z5jkudayN42aWdUsVe7LHWe2jlOuhLJ2
         OFPvI1zRc8uIABDgGTJb00zfcr1grx/e2fa8ZtNdVb3KmEK/GWNceA59C8iVxkEHdnrd
         tb7Zyu2CJZVykkKBt3IiJg2etCyKgFuc4tNzgwp7x9FE5WIpYRft7RefnK/VB9xOmvtD
         JygJeWpWD9ycsoZX3YhMo9ADg4H7KmmVdgIZrXaaBWms+7t1XPQO3JqdvLkiHkn/GUd5
         eq0g==
X-Gm-Message-State: AOAM53174n13GW/WbM9V90r5ehW0/h25IKZfkyL6RpkVdlDU/OTEznNS
        2lAqj1ERa8zO0ZqjZ9b2GFH56Q==
X-Google-Smtp-Source: ABdhPJz5FYs2tovK4DAn/cTZHLsQcY0wvLC4E8JLwQCgCkGhGPzAiDP4x0QLvtER94NFu4r667+JXA==
X-Received: by 2002:a17:902:8d92:b029:113:91e7:89d6 with SMTP id v18-20020a1709028d92b029011391e789d6mr7416405plo.85.1626263252796;
        Wed, 14 Jul 2021 04:47:32 -0700 (PDT)
Received: from dragon (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id c11sm2726980pfp.0.2021.07.14.04.47.30
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 14 Jul 2021 04:47:32 -0700 (PDT)
Date:   Wed, 14 Jul 2021 19:47:26 +0800
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Sebastian Reichel <sre@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Vinod Koul <vkoul@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: power: reset: Convert qcom,pon to DT
 schema
Message-ID: <20210714114725.GE11342@dragon>
References: <20210705025032.12804-1-shawn.guo@linaro.org>
 <20210705025032.12804-2-shawn.guo@linaro.org>
 <20210712154521.GA1987910@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210712154521.GA1987910@robh.at.kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 12, 2021 at 09:45:21AM -0600, Rob Herring wrote:
> On Mon, Jul 05, 2021 at 10:50:30AM +0800, Shawn Guo wrote:
> > It converts qcom,pon DT bindings from legacy bare text to YAML format.
> > 
> > Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
> > ---
> >  .../bindings/power/reset/qcom,pon.txt         | 49 -------------------
> >  .../bindings/power/reset/qcom,pon.yaml        | 49 +++++++++++++++++++
> >  2 files changed, 49 insertions(+), 49 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/power/reset/qcom,pon.txt
> >  create mode 100644 Documentation/devicetree/bindings/power/reset/qcom,pon.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/power/reset/qcom,pon.txt b/Documentation/devicetree/bindings/power/reset/qcom,pon.txt
> > deleted file mode 100644
> > index 0c0dc3a1e693..000000000000
> > --- a/Documentation/devicetree/bindings/power/reset/qcom,pon.txt
> > +++ /dev/null
> > @@ -1,49 +0,0 @@
> > -Qualcomm PON Device
> > -
> > -The Power On device for Qualcomm PM8xxx is MFD supporting pwrkey
> > -and resin along with the Android reboot-mode.
> > -
> > -This DT node has pwrkey and resin as sub nodes.
> > -
> > -Required Properties:
> > --compatible: Must be one of:
> > -	"qcom,pm8916-pon"
> > -	"qcom,pms405-pon"
> > -	"qcom,pm8998-pon"
> > -
> > --reg: Specifies the physical address of the pon register
> > -
> > -Optional subnode:
> > --pwrkey: Specifies the subnode pwrkey and should follow the
> > - qcom,pm8941-pwrkey.txt description.
> > --resin: Specifies the subnode resin and should follow the
> > - qcom,pm8xxx-pwrkey.txt description.
> > -
> > -The rest of the properties should follow the generic reboot-mode description
> > -found in reboot-mode.txt
> > -
> > -Example:
> > -
> > -	pon@800 {
> > -		compatible = "qcom,pm8916-pon";
> > -
> > -		reg = <0x800>;
> > -		mode-bootloader = <0x2>;
> > -		mode-recovery = <0x1>;
> > -
> > -		pwrkey {
> > -			compatible = "qcom,pm8941-pwrkey";
> > -			interrupts = <0x0 0x8 0 IRQ_TYPE_EDGE_BOTH>;
> > -			debounce = <15625>;
> > -			bias-pull-up;
> > -			linux,code = <KEY_POWER>;
> > -		};
> > -
> > -		resin {
> > -			compatible = "qcom,pm8941-resin";
> > -			interrupts = <0x0 0x8 1 IRQ_TYPE_EDGE_BOTH>;
> > -			debounce = <15625>;
> > -			bias-pull-up;
> > -			linux,code = <KEY_VOLUMEDOWN>;
> > -		};
> > -	};
> > diff --git a/Documentation/devicetree/bindings/power/reset/qcom,pon.yaml b/Documentation/devicetree/bindings/power/reset/qcom,pon.yaml
> > new file mode 100644
> > index 000000000000..7764c804af1d
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/power/reset/qcom,pon.yaml
> > @@ -0,0 +1,49 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/power/reset/qcom,pon.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Qualcomm PON Device
> > +
> > +maintainers:
> > +  - Vinod Koul <vkoul@kernel.org>
> > +
> > +description: |
> > +  The Power On device for Qualcomm PM8xxx is MFD supporting pwrkey
> > +  and resin along with the Android reboot-mode.
> 
> allOf:
>   - $ref: /schemas/power/reset/reboot-mode.yaml#
> 
> And then...
> 
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - qcom,pm8916-pon
> > +      - qcom,pms405-pon
> > +      - qcom,pm8998-pon
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +patternProperties:
> > +  "^mode-.+":
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description: Vendor-specific mode value written to the mode register
> 
> Drop this.

Drop the description line only or the whole "^mode-.+" block?  I got the
following from dt_binding_check if dropping the whole block.

 pon@800: 'compatible', 'reg' do not match any of the regexes: '^mode-.*$', 'pinctrl-[0-9]+'

> 
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +
> > +additionalProperties: false
> 
> unevaluatedProperties: false

Replace additionalProperties with unevaluatedProperties, right?

Shawn
