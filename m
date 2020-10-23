Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C864E297551
	for <lists+devicetree@lfdr.de>; Fri, 23 Oct 2020 18:53:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S461671AbgJWQwa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Oct 2020 12:52:30 -0400
Received: from mail-oi1-f194.google.com ([209.85.167.194]:40512 "EHLO
        mail-oi1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S461636AbgJWQwa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Oct 2020 12:52:30 -0400
Received: by mail-oi1-f194.google.com with SMTP id m128so2538584oig.7
        for <devicetree@vger.kernel.org>; Fri, 23 Oct 2020 09:52:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=ajmwUCKNJJMiamcPEJuj5RXS9FPhhjQ7/fWweoM6wYs=;
        b=aQFIoRg1Wvbp1ysqHmzAsTyPAPUpozHwMVkmqDeSd8/AUpPzadj+papeyKXE7olK9R
         2WCT46cki9MI0Sx4IYd1fhmYavx7NbdGxuOtrUPf/oI8zSzSJeY/o5a0qhQQZXaF3CJf
         CycNuT87zB++0UVS2i10fTSv4gnsCYDlVRXRsfYsWpDfxndhIUMXs4GFuNTzIlysrm14
         GIBBoG/QsmkpdI6pHmfh3rOR8zoldZCq4mKjPCnWkW9Nz7c3zz75Reamx8ZZxiU7NCs8
         Q63MqaggXwWRcq0SmVUc/czV8cKiUeByZya0Jfy4bFzvER8pyfLY0h1kxKfRW+qNqCfj
         sMUw==
X-Gm-Message-State: AOAM53364jwbzFVmD6PmoRxLimCVZ7nG1AjpseCO18MFZxx8x+W25kOl
        ObE3AmZ9FhmafarV+ophIw==
X-Google-Smtp-Source: ABdhPJzaEM5hr/uGomb+3/eFuQEIYlSfPFftZJnP3nb/A9Ndds8QU/f44B6MHfMeqGeVNqM+n5Y7Gg==
X-Received: by 2002:a05:6808:1c4:: with SMTP id x4mr2481941oic.91.1603471949051;
        Fri, 23 Oct 2020 09:52:29 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id m10sm494916oon.27.2020.10.23.09.52.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 09:52:28 -0700 (PDT)
Received: (nullmailer pid 2855729 invoked by uid 1000);
        Fri, 23 Oct 2020 16:52:27 -0000
Date:   Fri, 23 Oct 2020 11:52:27 -0500
From:   Rob Herring <robh@kernel.org>
To:     Ricardo =?iso-8859-1?Q?Ca=F1uelo?= <ricardo.canuelo@collabora.com>
Cc:     bleung@chromium.org, devicetree@vger.kernel.org,
        groeck@chromium.org, sjg@chromium.org, dmitry.torokhov@gmail.com,
        cychiang@chromium.org, enric.balletbo@collabora.com,
        tzungbi@google.com, dianders@chromium.org, kernel@collabora.com
Subject: Re: [PATCH v3 1/3] dt-bindings: i2c: convert i2c-cros-ec-tunnel to
 json-schema
Message-ID: <20201023165227.GA2853339@bogus>
References: <20201021114308.25485-1-ricardo.canuelo@collabora.com>
 <20201021114308.25485-2-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201021114308.25485-2-ricardo.canuelo@collabora.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 21 Oct 2020 13:43:06 +0200, Ricardo Cañuelo wrote:
> Convert the google,cros-ec-i2c-tunnel binding to YAML and add it as a
> property of google,cros-ec.yaml.
> 
> Signed-off-by: Ricardo Cañuelo <ricardo.canuelo@collabora.com>
> Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> ---
>  .../i2c/google,cros-ec-i2c-tunnel.yaml        | 63 +++++++++++++++++++
>  .../bindings/i2c/i2c-cros-ec-tunnel.txt       | 39 ------------
>  .../bindings/mfd/google,cros-ec.yaml          |  5 ++
>  3 files changed, 68 insertions(+), 39 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/i2c/google,cros-ec-i2c-tunnel.yaml
>  delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-cros-ec-tunnel.txt
> 

Applied, thanks!
