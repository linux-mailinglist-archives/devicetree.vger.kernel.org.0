Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EE243147FB
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2019 12:00:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726411AbfEFJ77 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 May 2019 05:59:59 -0400
Received: from mail-pg1-f195.google.com ([209.85.215.195]:37054 "EHLO
        mail-pg1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726016AbfEFJ77 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 May 2019 05:59:59 -0400
Received: by mail-pg1-f195.google.com with SMTP id e6so6216612pgc.4
        for <devicetree@vger.kernel.org>; Mon, 06 May 2019 02:59:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=eMBEkWY+yoHOv35+4+osAhTZrDmIt7AwEsIPJqdF/3o=;
        b=JWm3C8gHUmsaKnWdHgIGhPMh/OdZYaZQZwQeJOd6DQUH8Gbjik2AaWwJWpbsZ2eTPw
         XQshzRWWqcz5SFWEFbJaozTWLHBtF7VQYwkSL0l+6EG5Lk90/zvLj/WyTC45NDe21H6c
         8JNF2pmDC5CLdVhl+wjvk8oRWyVwSZ2xt31md96O9o6569tOiNNvI5v0w0RQS59ENndp
         9K5/4HnuUqIx14sw3XKE7k6JMpo7lk6i6L0l3j7+vIJzJlzzKQEvPEZYJPMmIGxPlrmq
         HCOdCrd8KniiDBVkCjk7A1gRn7FNDvhO0c7X6Yq5gUOuEYxIq/YrZuZS3ynwenNhvcp8
         v+mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=eMBEkWY+yoHOv35+4+osAhTZrDmIt7AwEsIPJqdF/3o=;
        b=iHJirXpsI+WKejCgi1nekAqQkjaeHhZcaJ2VP+DZQLLe3BCkvB61YvuMRaoWXplnB4
         urBsRrHyTWMe9XomLEwhcOJ5uuv7nTuepY9njWC7SKjm+1ds5lRWIiuH9Q95+umPhLJi
         M5vgFlWLHu9/0S0mXH8QQKx0EW3q+7/tcBfUTj9X9Ti4zxEQbvTObd31CeEVgM1EC/4U
         Lks5g19oIMwHV+baZrMCR4FYvrFuJskiBo/VL2YESHDAMkiNDcqCIiD+PlOSMcFoNsTk
         8TF4qI1YcY+Mj1BJ3vLa/F1nSCUN3uLSZYxsTYa1mAp4KErRmy1YP3sE6sirtEe2O/dA
         PGPQ==
X-Gm-Message-State: APjAAAX2/F73h3oSX7iUs0DIXxQcEDF6dUT9FnhatZlTGwmbyS/Pnkyq
        P0ZY5DDsI474mzTanyTl79qk
X-Google-Smtp-Source: APXvYqzICVCOo980QxHqvj2nEfRkxI54XQPzFRDJGVrhybfA1++ueDo5q6nHCcSILwUj169XUgJEfw==
X-Received: by 2002:a62:3501:: with SMTP id c1mr32740299pfa.184.1557136798385;
        Mon, 06 May 2019 02:59:58 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:611b:55a4:e119:3b84:2d86:5b07])
        by smtp.gmail.com with ESMTPSA id u123sm934037pfu.67.2019.05.06.02.59.53
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 06 May 2019 02:59:57 -0700 (PDT)
Date:   Mon, 6 May 2019 15:29:51 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Alexandre Torgue <alexandre.torgue@st.com>
Cc:     mcoquelin.stm32@gmail.com, robh+dt@kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, loic.pallardy@st.com
Subject: Re: [PATCH 2/3] ARM: dts: stm32mp157: Add missing pinctrl definitions
Message-ID: <20190506095951.GA23734@Mani-XPS-13-9360>
References: <20190503053123.6828-1-manivannan.sadhasivam@linaro.org>
 <20190503053123.6828-3-manivannan.sadhasivam@linaro.org>
 <369b2593-71b6-0b00-b72c-041967ffba73@st.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <369b2593-71b6-0b00-b72c-041967ffba73@st.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Alex,

On Fri, May 03, 2019 at 09:13:27AM +0200, Alexandre Torgue wrote:
> Hi Mani
> 
> On 5/3/19 7:31 AM, Manivannan Sadhasivam wrote:
> > Add missing pinctrl definitions for STM32MP157 MPU.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >   arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 62 +++++++++++++++++++++++
> >   1 file changed, 62 insertions(+)
> > 
> > diff --git a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
> > index 85c417d9983b..0b5bcf6a7c97 100644
> > --- a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
> > +++ b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
> > @@ -241,6 +241,23 @@
> >   				};
> >   			};
> > +			i2c1_pins_b: i2c1-2 {
> > +				pins {
> > +					pinmux = <STM32_PINMUX('F', 14, AF5)>, /* I2C1_SCL */
> > +						 <STM32_PINMUX('F', 15, AF5)>; /* I2C1_SDA */
> > +					bias-disable;
> > +					drive-open-drain;
> > +					slew-rate = <0>;
> > +				};
> > +			};
> > +
> > +			i2c1_pins_sleep_b: i2c1-3 {
> > +				pins {
> > +					pinmux = <STM32_PINMUX('F', 14, ANALOG)>, /* I2C1_SCL */
> > +						 <STM32_PINMUX('F', 15, ANALOG)>; /* I2C1_SDA */
> > +				};
> > +			};
> > +
> >   			i2c2_pins_a: i2c2-0 {
> >   				pins {
> >   					pinmux = <STM32_PINMUX('H', 4, AF4)>, /* I2C2_SCL */
> > @@ -258,6 +275,23 @@
> >   				};
> >   			};
> > +			i2c2_pins_b: i2c2-2 {
> > +				pins {
> > +					pinmux = <STM32_PINMUX('Z', 0, AF3)>, /* I2C2_SCL */
> > +						 <STM32_PINMUX('H', 5, AF4)>; /* I2C2_SDA */
> 
> You can't do that. <STM32_PINMUX('Z', 0, AF3)> has to be declared in
> pincontroller-z. So in your case, you have to define 2 groups for i2C2 for
> your default state (the same for the sleep state).
> 

Ah, yes I failed to note pincontroller z. Will fix it in next revision!

Thanks,
Mani

> regards
> Alex
> 
> 
> 
> 
> > +					bias-disable;
> > +					drive-open-drain;
> > +					slew-rate = <0>;
> > +				};
> > +			};
> > +
> > +			i2c2_pins_sleep_b: i2c2-3 {
> > +				pins {
> > +					pinmux = <STM32_PINMUX('Z', 0, ANALOG)>, /* I2C2_SCL */
> > +						 <STM32_PINMUX('H', 5, ANALOG)>; /* I2C2_SDA */
> > +				};
> > +			};
> > +
> >   			i2c5_pins_a: i2c5-0 {
> >   				pins {
> >   					pinmux = <STM32_PINMUX('A', 11, AF4)>, /* I2C5_SCL */
> > @@ -599,6 +633,34 @@
> >   					bias-disable;
> >   				};
> >   			};
> > +
> > +			uart4_pins_b: uart4-1 {
> > +				pins1 {
> > +					pinmux = <STM32_PINMUX('D', 1, AF8)>; /* UART4_TX */
> > +					bias-disable;
> > +					drive-push-pull;
> > +					slew-rate = <0>;
> > +				};
> > +				pins2 {
> > +					pinmux = <STM32_PINMUX('B', 2, AF8)>; /* UART4_RX */
> > +					bias-disable;
> > +				};
> > +			};
> > +
> > +			uart7_pins_a: uart7-0 {
> > +				pins1 {
> > +					pinmux = <STM32_PINMUX('E', 8, AF7)>; /* UART4_TX */
> > +					bias-disable;
> > +					drive-push-pull;
> > +					slew-rate = <0>;
> > +				};
> > +				pins2 {
> > +					pinmux = <STM32_PINMUX('E', 7, AF7)>, /* UART4_RX */
> > +						 <STM32_PINMUX('E', 10, AF7)>, /* UART4_CTS */
> > +						 <STM32_PINMUX('E', 9, AF7)>; /* UART4_RTS */
> > +					bias-disable;
> > +				};
> > +			};
> >   		};
> >   		pinctrl_z: pin-controller-z@54004000 {
> > 
