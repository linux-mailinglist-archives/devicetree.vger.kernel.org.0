Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D8AAD212AB
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2019 05:54:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727273AbfEQDyt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 23:54:49 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:37780 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726151AbfEQDyt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 May 2019 23:54:49 -0400
Received: by mail-pg1-f196.google.com with SMTP id n27so9760pgm.4
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 20:54:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=aSWv/3E5xONuctyVCVpI+09Uko/UnXB8canipxV/tCA=;
        b=SNRqwJ7EZ+/CWo5k9NfHmkbROXRuPjzLmaJu4Rvhsi2l9ucWEJJyifU4TP5Ztq5eFf
         6yKDtee7U8Gt3U1ALOf2SaDQI2wHmrlXYvApMqK8XlX7Dap63oqg3JaVwGKD3YMSmDq6
         +0WcehHzxLN5r0deh1CF8RwD0p1D+2oHPRmQM0CJRfogIubkEe5u+1cLLMtL6erU83Oy
         ZBbLTl6s8SiHgA09T5XdzCdIm2uarVZjmqXuWvZZqFHp5VHApjuV5t8QPaKMJPgfz83E
         GHMtBBOyWce4MkW8aJ2mY29Kmb6Lm7Cs46J206H6T+oVs14QAKRL43wtfkxVlMoqS/n4
         L+CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=aSWv/3E5xONuctyVCVpI+09Uko/UnXB8canipxV/tCA=;
        b=Toud8XBogAVBzEHyqBpieZC9DG2u3gfyRI/q4BIOK63gU+L5ZIaPm/qwDhy1FF+3le
         oCacNmrXWwzhBlgNY0vvlUIDgIxIYT59BRcptOPLNz2O2inirRHpAp0O07uPvN7oADc8
         lY7VkzzutyhSYoE+QPiRVjNhDwlNNyI1jp1FoY6WjJoGs8YxKRWmqX9wWLJHa5RyiNe9
         XDFmUVG4fR/T7+lSUY6RNYi90qFQ7gwFILqJ/MGFuj+1eNWqUGGBgvVjU5zYzgVDxPy7
         0xG9XB2qFrBcG5GJkIJLfNR5iOrpODd6TJUbXsZ4x6trbX+X9GDu9DvF5IQy2ahmko9i
         R6Ug==
X-Gm-Message-State: APjAAAVJaIJyFIiuZZe34wnCVCZFcv8624EgUjhJhy6RUPDsn48dfTBg
        lyvAdqU6dvlljr+dRPKYv4we
X-Google-Smtp-Source: APXvYqzoHXX1P5yhzflXLHPYow3wkn9VYYg/Butit6e08vzoVnsngfCu3i4rgBTsIxwoAWOQnOO4yg==
X-Received: by 2002:a62:5f42:: with SMTP id t63mr15660001pfb.83.1558065288251;
        Thu, 16 May 2019 20:54:48 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6390:5018:b478:7b0e:49e:16a3])
        by smtp.gmail.com with ESMTPSA id s12sm12152355pfd.152.2019.05.16.20.54.42
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 16 May 2019 20:54:47 -0700 (PDT)
Date:   Fri, 17 May 2019 09:24:40 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, loic.pallardy@st.com
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: stm32: Document Avenger96
 devicetree binding
Message-ID: <20190517035440.GA12863@Mani-XPS-13-9360>
References: <20190506100534.24145-1-manivannan.sadhasivam@linaro.org>
 <20190506100534.24145-2-manivannan.sadhasivam@linaro.org>
 <20190513180246.GA8487@bogus>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190513180246.GA8487@bogus>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Mon, May 13, 2019 at 01:02:46PM -0500, Rob Herring wrote:
> On Mon, May 06, 2019 at 03:35:32PM +0530, Manivannan Sadhasivam wrote:
> > Document devicetree binding for Avenger96 board.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/arm/stm32/stm32.txt | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.txt b/Documentation/devicetree/bindings/arm/stm32/stm32.txt
> > index 6808ed9ddfd5..eba363a4b514 100644
> > --- a/Documentation/devicetree/bindings/arm/stm32/stm32.txt
> > +++ b/Documentation/devicetree/bindings/arm/stm32/stm32.txt
> > @@ -8,3 +8,9 @@ using one of the following compatible strings:
> >    st,stm32f746
> >    st,stm32h743
> >    st,stm32mp157
> > +
> > +Boards:
> > +
> > +Root node property compatible must contain one of below depending on board:
> > +
> > + - Avenger96: "arrow,stm32mp157a-avenger96"
> 
> With which SoC compatible?
> 

I referred some other platform bindings (non YAML) and they don't
mention the SoC compatible with boards. Shall I just put it like below?

Avenger96: "arrow,stm32mp157a-avenger96", "st,stm32mp157"

Thanks,
Mani

Thanks,
Mani

> > -- 
> > 2.17.1
> > 
