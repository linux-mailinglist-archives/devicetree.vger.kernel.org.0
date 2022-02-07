Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4D9A4AB803
	for <lists+devicetree@lfdr.de>; Mon,  7 Feb 2022 11:01:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350029AbiBGJvG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Feb 2022 04:51:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351875AbiBGJgc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Feb 2022 04:36:32 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A679C043185
        for <devicetree@vger.kernel.org>; Mon,  7 Feb 2022 01:36:31 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id h6so4862675wrb.9
        for <devicetree@vger.kernel.org>; Mon, 07 Feb 2022 01:36:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=qrvBS/TzjL+d5+7WnH62vtdXI5w+DWvXkC7GzKhpJJk=;
        b=tc5s7ekSpBAR+xbhyLx3fnhzUwxa8WfVcQK1lWdQybmI2OXSMntUTM0FS54/pS0l1k
         fjthaUllv6xcgQlo07cKhtBRZeSp3Wtw+XeY1dAzNxDDW69BIHgh9qXLHSTe2StCLnvI
         ZbbNeHBKk9uPK3v95zObnCm3VeOnwVXPh0DlPsOqKvRr7xFZWGGjWcyWKMYqXUJH4QAp
         JIg/XLlwZJ3WxSLrQeeO4EwEecIKmGugBjK/BuSD73aUeQfkM/ee4Knoes+yf0raBbSF
         Cw5VYI9VBzNONL+qlx47DwfeYhbjBfd/OeKtuLtH1k55dtnerjpBkNaKWODtJopzmn3R
         6EYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=qrvBS/TzjL+d5+7WnH62vtdXI5w+DWvXkC7GzKhpJJk=;
        b=ID4x5JxB0vxld8od8JLjVKvNPAd28qJ8UaUl1cxjxIosQ1M46kjiEEzUAmCCo+qbZG
         /uAxyja+ZokAsuS8CQlBthXfsoCwGF97vlbO1X0bCbqMAGD1w5ShYEMBj064NRDpx7d1
         5+hfxIhVvJtuT5H2EVJimzSyJSj1w2utETAmm8Zy5H0S3UQIKrkFKlRMu8srlpA/4fbR
         RzvLdD4lK1q80Z/rdpyqxfea4QAaS2sJckjuFLzxuh6V/uPc3kDY/ZHQCTKvbHc5gdlw
         lwJkSUZiUcfcNImBqU1h3oSALvzcQgZDWBdRAoxojYp11kN5eS4wWYVj807LIaNVfpk2
         bh5Q==
X-Gm-Message-State: AOAM531ShMpZfiEoEBjeQvz5ze8C+mhIkhfXazAXhXrURE7RPbSepBGM
        G/KqH2UuqzmyrZXMYzYrQ+AdZw==
X-Google-Smtp-Source: ABdhPJw++V5on4HlT6+jIXzacZJXDK3OK3YGQ425d24Wltt5gE0fwoH6RTaQC/qkOuDwmb7mArXSlA==
X-Received: by 2002:adf:ea82:: with SMTP id s2mr9251824wrm.44.1644226589677;
        Mon, 07 Feb 2022 01:36:29 -0800 (PST)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id i19sm20468171wmq.45.2022.02.07.01.36.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Feb 2022 01:36:29 -0800 (PST)
Date:   Mon, 7 Feb 2022 09:36:27 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        Pavel Machek <pavel@ucw.cz>,
        Javier Martinez Canillas <javier@dowhile0.org>,
        Liam Girdwood <lgirdwood@gmail.com>
Subject: Re: [PATCH v2 0/3] regulator/mfd: dt-bindings: maxim,max77802:
 convert to dtschema
Message-ID: <YgDoG8Xlhq5L3Bii@google.com>
References: <20220111175430.224421-1-krzysztof.kozlowski@canonical.com>
 <f0a9e656-cf18-f212-b701-a1c9d10c4a59@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f0a9e656-cf18-f212-b701-a1c9d10c4a59@canonical.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 06 Feb 2022, Krzysztof Kozlowski wrote:

> On 11/01/2022 18:54, Krzysztof Kozlowski wrote:
> > Hi,
> > 
> > Changes since v1
> > ================
> > 1. MFD: Use absolute path to schemas.
> > 2. Regulator: skip properties.
> > 
> > Dependencies
> > ============
> > 1. DTS patch: nothing depends on it, sending here so Rob's automatic
> >    checker won't complain about DTS.
> >    I will take it via Samsung SoC tree.
> > 
> > 2. Final MFD patch depends on regulator, so the two last patches could
> >    go via Rob's, Mark's or Lee's trees.
> > 
> 
> Dear Lee,
> 
> This patchset was reviewed and there are no outstanding issues. Could
> you pick up entire set via MFD tree?

Nothing from LED or Regulator?

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
