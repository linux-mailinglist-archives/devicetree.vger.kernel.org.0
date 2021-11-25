Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 15A8745D485
	for <lists+devicetree@lfdr.de>; Thu, 25 Nov 2021 07:06:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244755AbhKYGJO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Nov 2021 01:09:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346246AbhKYGHO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Nov 2021 01:07:14 -0500
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD403C06175E
        for <devicetree@vger.kernel.org>; Wed, 24 Nov 2021 22:04:03 -0800 (PST)
Received: by mail-pf1-x42d.google.com with SMTP id n85so4873639pfd.10
        for <devicetree@vger.kernel.org>; Wed, 24 Nov 2021 22:04:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=H4HGalLWPoVzFfPEimJE+jSmxShewGOJaaasN5eIRFY=;
        b=Yzolavh8EgkLLQNjLrl92FoQDZ1jXBMTGsHtIbaDhmR5Ma95uIWI7NMCc4mUHZhVYq
         6tVImTXu4OqG1Sl9c8zUbm15NBTorwhGsT5Be3sQ45sXhlbqP88TeEFaTNdSyqqh9LvX
         UO6o51fG77tfwqMQ3qLCAvefkJP4crErJn4znvUYoPOxJ/VviydR2/QL4ClGJQyWrObh
         gXBnSuOqom9ByInHTijSXG6M2nbuqvc47jpocSSGd/lQfqsggs+dYxMw6EooylMBQxIv
         1V+0B6al0w/KVhfgH7XicUSn00JebhOe4tX5Izt0DWkN9I8VpPp1SQ2knsfa8UgrD8R/
         oh6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=H4HGalLWPoVzFfPEimJE+jSmxShewGOJaaasN5eIRFY=;
        b=s3IkeeqtCpt10u3TB2uyJxz7R0YQb9xRoohIRCQTPp21p/uj2J3HvhYpfZW2w3sodc
         VVmXR3K7WhvcTcO44K0jbh07FcBZZsCtmgAnnWDm1uAamOFYiu6HT0zsihAd4R1s8mEy
         NbSk3AVh9drIkGiFBEuiI5LpdukxCNb3cTiQwF9Wh7+9j6u3tnZI1YcKgQs2baQNGzxI
         +xPwfjMaWYq5Zpd7MA2s4gA2UKRki1QGNnhgeM8UlVflAmJ7r6P9PZGE4YoXQ7TGLXF8
         lEhwNjjZtKDSDCAST1zy2pVYKcQXXM6VGC1X5Qexapcn0dyrLozbkkZ3iHcLQKtC7VpA
         DCCg==
X-Gm-Message-State: AOAM531x/1ZaLkzbbpPy758Zko+XWzg7g4IEhqIttEinZI9mU7yk7k1c
        2zZHd4JqVa0yWtYxbN4Q9Ru5rjqGucvz+Q==
X-Google-Smtp-Source: ABdhPJxX+JigNlEsGnLVlcVZ4PEeRBHwNV2cngtjzEmmJD5jrW7yOVvbTC/efI18E8K7OL72LYonaQ==
X-Received: by 2002:a05:6a00:244d:b0:44d:c279:5155 with SMTP id d13-20020a056a00244d00b0044dc2795155mr11835871pfj.0.1637820243399;
        Wed, 24 Nov 2021 22:04:03 -0800 (PST)
Received: from dragon (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id pj12sm6973544pjb.51.2021.11.24.22.04.01
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 24 Nov 2021 22:04:03 -0800 (PST)
Date:   Thu, 25 Nov 2021 14:03:57 +0800
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Marc Zyngier <maz@kernel.org>, Thomas Gleixner <tglx@linutronix.de>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] Add Qualcomm MPM irqchip driver support
Message-ID: <20211125060356.GA10105@dragon>
References: <20211122075207.20114-1-shawn.guo@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211122075207.20114-1-shawn.guo@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 22, 2021 at 03:52:05PM +0800, Shawn Guo wrote:
> It adds DT binding and driver support for Qualcomm MPM (MSM Power Manager)
> interrupt controller.
> 
> Shawn Guo (2):
>   dt-bindings: interrupt-controller: Add Qualcomm MPM support
>   irqchip: Add Qualcomm MPM controller driver

Please disregard this version.  I would like to update the driver for
better alignment with qcom-pdc, so that DT can be wired up in the same
way as PDC.  Sorry for the noise!

Shawn
