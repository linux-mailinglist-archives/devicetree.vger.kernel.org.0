Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 48BC21FB1D6
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2020 15:18:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728557AbgFPNSP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Jun 2020 09:18:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728553AbgFPNSP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Jun 2020 09:18:15 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F153CC06174E
        for <devicetree@vger.kernel.org>; Tue, 16 Jun 2020 06:18:14 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id r7so20767155wro.1
        for <devicetree@vger.kernel.org>; Tue, 16 Jun 2020 06:18:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=Ze0kyZ29y+iARyCZx88V33Mi0dNrmrq4icVH7Auu/rY=;
        b=VTqbi7AgunRcG+Rhou6MsFpBPw37VdaO1Z5DHr86KTYHz/+QoM+/Z4dtJg4mE1WP8x
         oxVDKAwoZE8hafGZnNu/7K6lOsnqBcddM++8NGwSboB6CbNMJQSplGWwXnE+a0Z9hOVX
         ZZRqyh5R2a8cCTouoCGXGYy26/UpuFEYpYGpPMYmLFEntOu814hWWVlpxhGC5QhOo/8q
         afdxO0Jd1AfdDqMxYQM5qiby4xeKVEjxze7THZg1YjN5SZ5Ea1KaRo2rZ8dq3ze9NJHL
         pVG3JVU0oQ5h4WRvJ/RpAiprCC4SybB3tmWIMWjeukItMxYrcI6aNCe+Cu6BzXzzjfeW
         oFYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=Ze0kyZ29y+iARyCZx88V33Mi0dNrmrq4icVH7Auu/rY=;
        b=V/XqNTnNjwpqY+Fbv7yp36i1aTBE7DoNCL5vesWupJpL/y4QKyWLoRwwxmu87nz6Zy
         mnd2Bk0A+lwCODL4EAzJhDSguFiyv7BfOtmA85vfzkvYEs/nsoHlRqhvSQM0NbRGqfhY
         Tvs1QsABRuS4dEC3oBGwPuf/wY+x+2Kqd9qHglqqhBAl1x3vBfBET2sX75mpFLacx1es
         RnlxCqP8WQ9ZjXQYW/92MN5eU9Tj6D+6hMlLWuhcY7PZdBpJ9DmqqaliDVLXcH71u1hP
         1/8ho10Y3PINH7nxJC3SNkJCjfToP+jpK2nxSrFREeEXo9FeNuolt7P56xsoQCI2CV68
         Sb3g==
X-Gm-Message-State: AOAM532b+Iezotg5bN1QFA5iVJOKvzZ4f+Ci2CwD8QItEPNpHVBBZQCh
        2cjZ6u2xmJ6hmXvTMV2aiTWYyw==
X-Google-Smtp-Source: ABdhPJxqpKqsKZ/O9m5u2HJ1sllXpsbw+K74UxHuOlR2UOWeLkd2rY5NgIlELrm7Vqn3XEPpgKRt5w==
X-Received: by 2002:adf:f0d2:: with SMTP id x18mr3022162wro.250.1592313493614;
        Tue, 16 Jun 2020 06:18:13 -0700 (PDT)
Received: from dell ([109.180.115.156])
        by smtp.gmail.com with ESMTPSA id l1sm32956809wrb.31.2020.06.16.06.18.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2020 06:18:13 -0700 (PDT)
Date:   Tue, 16 Jun 2020 14:18:11 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Wen Su <Wen.Su@mediatek.com>
Cc:     Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-mediatek@lists.infradead.org" 
        <linux-mediatek@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        wsd_upstream <wsd_upstream@mediatek.com>
Subject: Re: [RESEND v2 2/4] mfd: Add for PMIC MT6359 registers definition
Message-ID: <20200616131811.GR2608702@dell>
References: <1582252746-8149-1-git-send-email-Wen.Su@mediatek.com>
 <1582252746-8149-3-git-send-email-Wen.Su@mediatek.com>
 <1592301485.30613.7.camel@mtkswgap22>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1592301485.30613.7.camel@mtkswgap22>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 16 Jun 2020, Wen Su wrote:

> Dear Reviewers, 
> 
> I am sorry to bother you. How should I proceed for this patch set ?
> Since the regulator driver were applied and dropped because of the MFD
> header file dependency on this patch.
> 
> Will this mfd registers definition patch and regulator driver patch be
> applied ? Please advice.

Once you have all of your Acks, it should be applied as a set.

Best thing you can do is submit a [RESEND].

> On Fri, 2020-02-21 at 10:39 +0800, Wen Su wrote:
> > From: "Wen Su" <wen.su@mediatek.com>
> > 
> > This adds MediaTek PMIC MT6359 registers definition for the
> > following sub modules:
> > 
> > - Regulator
> > - RTC
> > - Interrupt
> > 
> > Signed-off-by: Wen Su <wen.su@mediatek.com>
> > Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>
> > ---
> >  include/linux/mfd/mt6359/registers.h | 531 +++++++++++++++++++++++++++++++++++
> >  1 file changed, 531 insertions(+)
> >  create mode 100644 include/linux/mfd/mt6359/registers.h

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
