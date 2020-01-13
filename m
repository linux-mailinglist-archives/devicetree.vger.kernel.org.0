Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 70679139D16
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2020 00:04:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729110AbgAMXEr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jan 2020 18:04:47 -0500
Received: from mail-ot1-f68.google.com ([209.85.210.68]:34790 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728829AbgAMXEr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jan 2020 18:04:47 -0500
Received: by mail-ot1-f68.google.com with SMTP id a15so10706579otf.1
        for <devicetree@vger.kernel.org>; Mon, 13 Jan 2020 15:04:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=j72A3ysn20dtwXavsRrsZ0TJajmTyr3n32DpYKMjbOU=;
        b=q9EybEnKz35KDD3WlCXprP/QbQwW5StgT4bEDPBRd6efm5KDnIIBksCK9bKWdwFNdm
         /InmQ7HjwDwid0H1SVYrJomy+qx6UB+fD7xnqqtDRDS/bSyDcgMPXrlrnTaDDy1bbrSn
         7/sxK/ZExn0OOzj9z5mo01t+5gEhx9RFfMeACzki74ozQwFmnN4PJsl2chnBWJVdkuD8
         vnh3q63ouqz5DviEpPIlEfv9kv9cpJpylYxUHGNgxEqCtfQmtObcD2rbC1F4FjcK4ym/
         Sz0ITI7N1isT+oNRT3EOmmX3stDs3mOvDUvPRGvnFEuEIPuUejKB9iwQs9xAi+CV7eHG
         xGDw==
X-Gm-Message-State: APjAAAXe5vq3N5so0jjx+cbfoxRXQLcs9SRXD1KlqcJ9qsyP06EQp4DV
        rV86H+IcD/HQUmPplWZGkIpQOZk=
X-Google-Smtp-Source: APXvYqyccB0gwQLeqdolBMk+U48u4Moz6S0kzbjMj8AZ3JzR8Aln3jSsmbWg35lHSh3Y3hXpt2ZnHw==
X-Received: by 2002:a05:6830:1257:: with SMTP id s23mr14835109otp.241.1578956686245;
        Mon, 13 Jan 2020 15:04:46 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id q13sm4667830otc.5.2020.01.13.15.04.44
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2020 15:04:45 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 220b00
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Mon, 13 Jan 2020 17:04:44 -0600
Date:   Mon, 13 Jan 2020 17:04:44 -0600
From:   Rob Herring <robh@kernel.org>
To:     Andrey Konovalov <andrey.konovalov@linaro.org>
Cc:     mchehab@kernel.org, robh+dt@kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        peter.griffin@linaro.org, dave.stevenson@raspberrypi.com,
        ezequiel@collabora.com, sakari.ailus@linux.intel.com,
        Andrey Konovalov <andrey.konovalov@linaro.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: media: i2c: Add IMX219 CMOS sensor
 binding
Message-ID: <20200113230444.GA3528@bogus>
References: <20200110200915.22575-1-andrey.konovalov@linaro.org>
 <20200110200915.22575-2-andrey.konovalov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200110200915.22575-2-andrey.konovalov@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 10 Jan 2020 23:09:14 +0300, Andrey Konovalov wrote:
> Add YAML device tree binding for IMX219 CMOS image sensor, and
> the relevant MAINTAINERS entries.
> 
> Signed-off-by: Andrey Konovalov <andrey.konovalov@linaro.org>
> ---
>  .../devicetree/bindings/media/i2c/imx219.yaml | 104 ++++++++++++++++++
>  MAINTAINERS                                   |   8 ++
>  2 files changed, 112 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/imx219.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
