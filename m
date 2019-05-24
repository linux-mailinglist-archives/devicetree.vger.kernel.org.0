Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D0D762A01F
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2019 22:51:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390330AbfEXUvF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 May 2019 16:51:05 -0400
Received: from mail-oi1-f196.google.com ([209.85.167.196]:34617 "EHLO
        mail-oi1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389242AbfEXUvF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 May 2019 16:51:05 -0400
Received: by mail-oi1-f196.google.com with SMTP id u64so8017151oib.1
        for <devicetree@vger.kernel.org>; Fri, 24 May 2019 13:51:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=IM/e3CIS2c/pCW8LfGEiq6w5NBm7XFI9jjoW47+MAP4=;
        b=SKkr7TFwFzNmm5gUKPRzEt4qfQm1haotDPF1eTFL1V8L1PT9LA4bGynFaL60xRHC2S
         YHEIBTuKg/Mz/ZAfvZjLzvUJ7R9NH2TWnD3MkpBk3a7yzfYCa/quLGaCW6E1Sx5fmF/O
         prGyeRjR0PX/kW0bZniv+LWdy0XWkT1c5XVldhFUTz0SgW9ZgRGdG6eJb6LuPxSj8v5p
         09x4eJC+hvRDC587jdHpbLZpjwKp4MLi2EhFv3CS8szU6Dcq1NVuuqAY7Hv+P4JFi9jr
         yGzz+UxTM6XcVWXi/oqjS4VGTmE56wUVmvRCzaSitey8HWjMX11buiaPAt9zdqtmN2yK
         XoSw==
X-Gm-Message-State: APjAAAX/VqvJ+cQfgu38KiO1q1KTNhD+vcCXW4vmQ//44R0bvY3sXoPu
        j43LN+tAoZj2fXKJqY5FgIwmXxg=
X-Google-Smtp-Source: APXvYqzSqexF64IX26q22Sz6vapvHF0ik+0U/5/qXJBZmqMCPEElSTku6wYVnywIPxJyd7rF6meLPw==
X-Received: by 2002:aca:5e43:: with SMTP id s64mr7722635oib.152.1558731064877;
        Fri, 24 May 2019 13:51:04 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id t15sm1345022oie.14.2019.05.24.13.51.04
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 24 May 2019 13:51:04 -0700 (PDT)
Date:   Fri, 24 May 2019 15:51:03 -0500
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org,
        Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH] dt-bindings: Add vendor prefix for Espressif
Message-ID: <20190524205103.GA12583@bogus>
References: <20190523081415.29870-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190523081415.29870-1-maxime.ripard@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 23 May 2019 10:14:15 +0200, Maxime Ripard wrote:
> Add Espressif Systems DT vendor prefix. That prefix has been used for quite
> some time for WiFi chips, but has never been documented.
> 
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks.

Rob
