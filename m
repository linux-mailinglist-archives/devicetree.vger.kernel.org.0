Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 82C93178BD
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2019 13:48:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727747AbfEHLs1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 May 2019 07:48:27 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:37615 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727624AbfEHLs1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 May 2019 07:48:27 -0400
Received: by mail-wr1-f65.google.com with SMTP id a12so16694309wrn.4
        for <devicetree@vger.kernel.org>; Wed, 08 May 2019 04:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=D4Jo/XXXOC25kVFpYwybJdxL1MfdXCcgejboptGVtec=;
        b=keOshBDoBv1ga5JLsBEUcLmNcujufn/CqoX0gVvR+CT5/TflWfm4FTfw+hKVwHQxnB
         FJPFwVgdANIoLoWAFjWx7MBzTykx/kqvHL9hDccWUafAPiFCIYNoGG/N2NZXh5rst7Ge
         aUunvK0asgzzZUb80Ke/vQrkFSYZu7mPcN7Y42r10j71qdvbLCKbQp0EAggtSwcuP4qO
         3OH8oFfPNA0J9MEKwzQykvbUs43wpnkTVMg/nxjD7HSWZHduooFJ0LL40btDPgf7Enki
         GM2rNXNmgD/wFit3ujmUrbntm9wrJaTCUw5fKcDd+T81DqtesT303ge2Y8O9dQC6wNJa
         1ALA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=D4Jo/XXXOC25kVFpYwybJdxL1MfdXCcgejboptGVtec=;
        b=VJLV0Ni0OPkfCUwvW9ij3mz6x5qF9DRsf3koYbXluocJ3v2q/G/7Cjfv23CpCZlPRN
         9FXS5ZdnMJDCKosdfd7P86wqF0jfAuWaP9IffZa0m1Xe0VYMJYlQQmASsu7uCPrmZrY+
         swy2FQyJTQ1GTLgF8MxLIyYZsD40PrATkl5szO97WW4uwsFOjkWCQEd4MFnqkwJjEw/o
         ViF+wqlthHYPCZvUQzZRh97vhMXmV1kjNVZ1MtjBL9LEOqc0Oz5Npe6mreo+Lg9XIScL
         j3EmfpFIG+B3wb1VSHsMKcTReojuhGXy7BjN9/0LrN9i/YO9JywaUde6JPjrJ+RDdffE
         Zy5g==
X-Gm-Message-State: APjAAAWrapV+OwIR72gOKdTuJ41guZXPk2zUnShcgHlfxO9554AAbbUT
        LUa8Slj/RGoY51/PVWDgiiytXg==
X-Google-Smtp-Source: APXvYqxQAfWGC5LW1oPICeT2TShfePBZh77cJn/03Sn/YejS8bHJX6kLK73yWaNFGUQdRMk7amwhAA==
X-Received: by 2002:adf:e288:: with SMTP id v8mr25780499wri.7.1557316106230;
        Wed, 08 May 2019 04:48:26 -0700 (PDT)
Received: from dell ([2.27.167.43])
        by smtp.gmail.com with ESMTPSA id j3sm17999261wrg.72.2019.05.08.04.48.25
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 08 May 2019 04:48:25 -0700 (PDT)
Date:   Wed, 8 May 2019 12:48:23 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Dmitry Osipenko <digetx@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Laxman Dewangan <ldewangan@nvidia.com>,
        Mallikarjun Kasoju <mkasoju@nvidia.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 5/6] mfd: max77620: Provide system power-off
 functionality
Message-ID: <20190508114823.GL31645@dell>
References: <20190505154325.30026-1-digetx@gmail.com>
 <20190505154325.30026-6-digetx@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190505154325.30026-6-digetx@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 05 May 2019, Dmitry Osipenko wrote:

> Provide system power-off functionality that allows to turn off machine
> gracefully.
> 
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  drivers/mfd/max77620.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)

For my own reference:
  Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
