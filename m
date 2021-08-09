Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD98C3E4474
	for <lists+devicetree@lfdr.de>; Mon,  9 Aug 2021 13:15:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234948AbhHILPV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Aug 2021 07:15:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234947AbhHILPV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Aug 2021 07:15:21 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5C12C061796
        for <devicetree@vger.kernel.org>; Mon,  9 Aug 2021 04:15:00 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id x17so10303834wmc.5
        for <devicetree@vger.kernel.org>; Mon, 09 Aug 2021 04:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=23XgZexrUsddqZ/0QoEhj1StKJdILOeiFyE+gUWeoVs=;
        b=j53sNv6iuvmM5Crij2Oa2oSOLKhEpFibtO5Ocuc6bVkhPA0LOk94IidSd+hmmMcgQl
         gCvvk6g40W7Sj2r81ULlP1t/vw1NHKk8xY7MK9sGukiZjr7XpmMi8jdl0akEm3YAZFGs
         VO9hzxQN8u0tr+4UdZcJ5VBWBWwxoILqcVplmsxubOxrBg6IJkadzrQna68AihX1sz0o
         7tNGxffIDKXB1zz5f5u1V71zQiketP3lq1RYHTN8LInFLAQb1OmGfguCmCgqbcB+caj9
         mHagQPB3ENmL0gIMbcFq/phQfPFNjV+JQZ+2IByx+cA20FZrVqhBQ8r0YqOThV59y5XD
         PAwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=23XgZexrUsddqZ/0QoEhj1StKJdILOeiFyE+gUWeoVs=;
        b=n/tLsFsd6gNAIHstM6lC5lNQONaJfz+SqNlF8Y/afoUmtw05Olk+0+loDdticMu1NM
         U4wrBSEKbcBwQx1ysoDgLH0cATnw7UBHXh4yYB9EzkNLkirD1q+AqxvVDu95LlWdS4Ey
         WkeMw/ys4ocHmPdLwebJUKXjoyfDMl3bgccB5+O5wetERrizfQN95Irs1O9G80Xy8g9r
         FH7/B14MDt+gR9ZhqerpExM56uzwF4XiZtylk04ahlApbn8TPS5x0OKxBVkrRoVlLWT6
         XKBeNDz5xnNupvYY9XcEd4S6CY5H2ODdNREWzpsBMflmaalN+83gWZa2lBcgAdm/pyh3
         7/+A==
X-Gm-Message-State: AOAM530vorhRVnGqJp9mCvDqY1q6ZwbyHVSLrHYui53jTdIdFLxoFLlg
        l1lfW6liLzZ4agn//0lRQW5jnA==
X-Google-Smtp-Source: ABdhPJxBIr0k/lTEQBF0PP9gNaayRi9tPFsFuKqTZ0K6LHv2bq0mixcJszW2ShaL8I1rjllJd5QfNA==
X-Received: by 2002:a7b:c083:: with SMTP id r3mr16699033wmh.65.1628507699554;
        Mon, 09 Aug 2021 04:14:59 -0700 (PDT)
Received: from google.com ([95.146.142.85])
        by smtp.gmail.com with ESMTPSA id y192sm18749761wmy.1.2021.08.09.04.14.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Aug 2021 04:14:59 -0700 (PDT)
Date:   Mon, 9 Aug 2021 12:14:57 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Mark Brown <broonie@kernel.org>
Cc:     Alistair Francis <alistair@alistair23.me>, robh+dt@kernel.org,
        lgirdwood@gmail.com, linux-imx@nxp.com, kernel@pengutronix.de,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        alistair23@gmail.com
Subject: Re: [PATCH v9 03/12] mfd: simple-mfd-i2c: Save the register client
 data
Message-ID: <YREOMY4Q5xY8Qn9N@google.com>
References: <20210806091058.141-1-alistair@alistair23.me>
 <20210806091058.141-4-alistair@alistair23.me>
 <YQ0fPEeZGYe7f1cC@google.com>
 <20210806114541.GY26252@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210806114541.GY26252@sirena.org.uk>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 06 Aug 2021, Mark Brown wrote:

> On Fri, Aug 06, 2021 at 12:38:36PM +0100, Lee Jones wrote:
> > On Fri, 06 Aug 2021, Alistair Francis wrote:
> 
> > > +	i2c_set_clientdata(i2c, regmap);
> > > +
> 
> > No need to store this here.
> 
> > Just do this in the child device:
> 
> >      dev_get_regmap(pdev->dev.parent, NULL);
> 
> Note that dev_get_regmap() is relatively expensive compared to a simple
> driver data reference since it needs to go search for the device to find
> the regmap, it's not the end of the world especially in the context of
> doing I2C I/O but storing it isn't a terrible idea.

It would be nice if someone could do some metrics on this.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
