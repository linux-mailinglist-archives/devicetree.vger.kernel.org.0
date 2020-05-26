Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 15EE11CF699
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2020 16:13:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730254AbgELONB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 May 2020 10:13:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729921AbgELONA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 May 2020 10:13:00 -0400
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com [IPv6:2607:f8b0:4864:20::1042])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CD5EC061A0E
        for <devicetree@vger.kernel.org>; Tue, 12 May 2020 07:13:00 -0700 (PDT)
Received: by mail-pj1-x1042.google.com with SMTP id mq3so9586480pjb.1
        for <devicetree@vger.kernel.org>; Tue, 12 May 2020 07:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Ci7zKqD3gUAa4Ry13dacSM6dlpd7qZR1mlqQSLUNRDM=;
        b=O/qLDBHjTmJNZ4W1E9Qf7I7qcg6eamfI+POItL7/mej0hX6DhjCfNdMtun9tUeSSL5
         3uEIkG+olE6RavA7Nz6gumINI0osXMpGfmZrF7Gi3IpxFqn7Fw4dAjRCi9HFxVoMkh0s
         WW74dtEp/Xndy66Sv0QFQVHgnWj8v9lY6LMdjDuz3qftrnH2zIE5CPU270kQ2uTCRX+E
         TJHyVDv+EQNnGK9lX1K0yW+sxwyYPbL1DvuYShy+ufo09thN1vq59owk018ZJp0wC/5T
         gX5sU79An1C83AYAqkLxM8me/QqZMV9bcCKGoV6CF38FfIl/iXAXND6KrmrxHiFjV2YQ
         A14A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Ci7zKqD3gUAa4Ry13dacSM6dlpd7qZR1mlqQSLUNRDM=;
        b=qruGtUgn/romYbwhj3vs3fEJn3l2wn3aNWnafcgBBKvulnJnLqzAPLUssOOQ44UcSx
         W+69Mi88LwMdtNjL1WGDgJXwWWqtXZQipwzygC+0Xq+UaUCTTRtvl6mcSmiLD/0Yk2p0
         uiQ3jyyPq2b1ZYgweqB7Vzd7+FVW2eQml5MzTFuBrEU+cmgEF91zqi1usbO7++dY8nZz
         pKHZHU3sfNdZW2SDctsBmusqZ7BZz9YKmx/UJV/Vopx4d7ryHbS2kgburnn5unyfr6pI
         BX3NJVedSgy0hCao66g1Z+0GfdMOif8UMo3ZSBmo6grz5Cf6aKsMm1GAhS29C5KvA+L+
         iwDw==
X-Gm-Message-State: AGi0PuZSzo3bmdncmyi6QkOWoJ7BOWxs1BBvH3utQoDvoF9GWquKaW5R
        g66AT9o9z16T6tVOvvQZjFCzl1Ifsw==
X-Google-Smtp-Source: APiQypJezn/TnyFOdcX7SBPrI3c2aWKI1uXvAlkdhblYFd0FY2muiujKh7MlqChB350C0ASDPTLqiA==
X-Received: by 2002:a17:90b:34c:: with SMTP id fh12mr26385247pjb.134.1589292779836;
        Tue, 12 May 2020 07:12:59 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6007:2f23:5151:5dd:ea86:4678])
        by smtp.gmail.com with ESMTPSA id 141sm12422236pfz.171.2020.05.12.07.12.46
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 12 May 2020 07:12:59 -0700 (PDT)
Date:   Tue, 12 May 2020 19:42:35 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     matthias.bgg@gmail.com, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        adamboardman@gmail.com
Subject: Re: [PATCH 0/4] Add I2C controller support for MT6797 SoC
Message-ID: <20200512141235.GG5526@Mani-XPS-13-9360>
References: <20200222162444.11590-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200222162444.11590-1-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Matthias,

On Sat, Feb 22, 2020 at 09:54:40PM +0530, Manivannan Sadhasivam wrote:
> Hello,
> 
> This patchset adds I2C controller support for Mediatek MT6797 SoC. There
> are a total of 8 I2C controllers in this SoC (2 being shared) and they are
> same as the controllers present in MT6577 SoC. Hence, the driver support is
> added with DT fallback method.
> 
> As per the datasheet, there are controllers with _imm prefix like i2c2_imm
> and i2c3_imm. These appears to be in different memory regions but sharing
> the same pins with i2c2 and i2c3 respectively. Since there is no clear
> evidence of what they really are, I've adapted the numbering/naming scheme
> from the downstream code by Mediatek.
> 
> This patchset has been tested on 96Boards X20 development board.
> 

Looks like this series has slipped through the cracks...

Thanks,
Mani

> Thanks,
> Mani
> 
> Manivannan Sadhasivam (4):
>   dt-bindings: i2c: Document I2C controller binding for MT6797 SoC
>   arm64: dts: mediatek: Add I2C support for MT6797 SoC
>   arm64: dts: mediatek: Enable I2C support for 96Boards X20 Development
>     board
>   arm64: dts: mediatek: Switch to SPDX license identifier for MT6797 SoC
> 
>  .../devicetree/bindings/i2c/i2c-mt65xx.txt    |   1 +
>  .../boot/dts/mediatek/mt6797-x20-dev.dts      |  49 ++++
>  arch/arm64/boot/dts/mediatek/mt6797.dtsi      | 229 +++++++++++++++++-
>  3 files changed, 271 insertions(+), 8 deletions(-)
> 
> -- 
> 2.17.1
> 
