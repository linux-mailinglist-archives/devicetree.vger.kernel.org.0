Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B3A85C9209
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2019 21:15:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729315AbfJBTNl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Oct 2019 15:13:41 -0400
Received: from mail-qk1-f193.google.com ([209.85.222.193]:38290 "EHLO
        mail-qk1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729083AbfJBTNk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Oct 2019 15:13:40 -0400
Received: by mail-qk1-f193.google.com with SMTP id u186so16193604qkc.5
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2019 12:13:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=zXlCsAUOsDyNIWrjtU/Zki9okWGpRYpMx72Pnc48JJ4=;
        b=oTwNs0U5a1QjWYTJxq3lAK/pYr/UB3970HddPmEA+fYKDHej3VCqlr3rRHWZ5E6BkX
         CSKtyVhzltCR1UivbfDkq7vwEkcopr/up8ZpRV7IAKx64fapzy2TJNZyCgfx1EBUCIn1
         zWC04mDsW5rhkjOv+YEiChMimaX9kJP5yovZKahu18ICuNJKbEoMluG2/n+3oAxOSrQd
         2NPmRZY+JWBhzZPxOsXOWclj0JnDXmfkbSy15HJSYj4q8nFWNLF4ifM0MWyFP0e9vVoj
         eqHcuxR9p0JHxtXtmw7b9BUC5A0vfGz3khTHR5hcPs+l2B1FP8CYRuJYCBG4ile3wu5W
         ZE8A==
X-Gm-Message-State: APjAAAUJgahZYkEcv6TldBMu5+dlRsAVu/g5UYkm9Y6j7oYHJq/Mq5UB
        BTOaBikyyUeXD0U0g+/iag==
X-Google-Smtp-Source: APXvYqwqbOShUcU+MHp+0URZAfxrrboK1cwXpX/ryVMsbblodjgfb6nO+ZSLilopv+e8k0L6NH4MXw==
X-Received: by 2002:ae9:f408:: with SMTP id y8mr362782qkl.183.1570043619960;
        Wed, 02 Oct 2019 12:13:39 -0700 (PDT)
Received: from localhost ([132.205.229.212])
        by smtp.gmail.com with ESMTPSA id l15sm66120qkj.16.2019.10.02.12.13.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Oct 2019 12:13:39 -0700 (PDT)
Date:   Wed, 2 Oct 2019 14:13:38 -0500
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <mripard@kernel.org>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>, daniel.baluta@nxp.com,
        devicetree@vger.kernel.org, Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH] dt-bindings: dsp: Fix fsl,dsp example
Message-ID: <20191002191338.GA16572@bogus>
References: <20191002144204.114346-1-mripard@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191002144204.114346-1-mripard@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed,  2 Oct 2019 16:42:04 +0200, Maxime Ripard wrote:
> The fsl,dsp binding requires a memory-region, yet its example doesn't have
> one which results in a warning. Let's add a memory-region phandle to the
> example.
> 
> Fixes: 7db2f2dfc701 ("dt-bindings: dsp: fsl: Add DSP core binding support")
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  Documentation/devicetree/bindings/dsp/fsl,dsp.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks.

Rob
