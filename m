Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E641832F79A
	for <lists+devicetree@lfdr.de>; Sat,  6 Mar 2021 02:56:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229875AbhCFB4R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Mar 2021 20:56:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229854AbhCFB4F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Mar 2021 20:56:05 -0500
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6011FC061760
        for <devicetree@vger.kernel.org>; Fri,  5 Mar 2021 17:56:05 -0800 (PST)
Received: by mail-ot1-x32d.google.com with SMTP id h22so3681114otr.6
        for <devicetree@vger.kernel.org>; Fri, 05 Mar 2021 17:56:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=4fV0PfjELKX3BuG1lRr+kpoaeQfrKEHm5Kgo0m/40n4=;
        b=UErgTtaaWYZ2GOrngKYFkB7k9VmfsvtyoOkv7ciGS6DwUPOPneqJO6/dlljuefAAB1
         K8KLXvxFa0UTJ5Un+rHwM8w+NvjJnTfzNSR1EZYLdrxCU+9DVD7oKh97C4n/9oPQ8VJJ
         IADZ4GmWFBjqhXcTYj+eYhGGmW2chUwKGUx72tilW8k9H6T5hnh4uuMTQSXqmcnpu6Jo
         rairAHnzlsU+jHHcdUA3R/WyJieailYTIBfd7lx87Hz3GWUpqJKFCBXugPZbYSnQxy5s
         lgp00putgV3WUzSQ9NyHT2D6tG5bY0JtnncT5P5Uu4JFSYwsBQTGh83ncgJUmq76Gj3L
         roNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=4fV0PfjELKX3BuG1lRr+kpoaeQfrKEHm5Kgo0m/40n4=;
        b=X+/nc9HL7NfH34YsrjvATHk5z+WVeHXp8v18tKxPhfX8vws9hRj4kEooLIyh8wY+ok
         INTp6ISTCk0Td9NyEwYFqzQGtutOkcNeBoDwGnrp99iPUiEW3xDbeI1lKiku4WyD8XIw
         aLH23KxSEmbJTNxz0FyfsaYswOClTQ3Sk26Ske1Fp6OtpZDRu/1BNtep19IjxrCqm5oE
         1KnFY7Lm99kUFRpYYFMLDE/hOkqS2FmOZ+yfk3pSZ0G1Fk7rbrJfgnFpUizgBx/AWRw+
         2RbdnxNYhCWZ4FVcaKZZXRktF9VrMj9cIDB5IFLoQ1t1w+W8kBQNyqpqbMzwiwNAbNna
         DnVg==
X-Gm-Message-State: AOAM530caDh5AH6PSRaxxFW1M0kpz/UuRPUIZ4Y3knvN48DH0DMpLLXg
        L/fDrgOovArFtZtlGhZsl8+8Vw==
X-Google-Smtp-Source: ABdhPJxUJyNV3DrPzqAVe/FpfSJ71CnlU/5Vy9VFAhyZxLGB1mSKaQn03oL0bq0LMyehX6CQ6ed6Kg==
X-Received: by 2002:a9d:7d0f:: with SMTP id v15mr10751447otn.128.1614995764652;
        Fri, 05 Mar 2021 17:56:04 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id n6sm906904oop.48.2021.03.05.17.56.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 17:56:04 -0800 (PST)
Date:   Fri, 5 Mar 2021 19:56:02 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Shawn Guo <shawn.guo@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Evan Green <evgreen@chromium.org>
Subject: Re: [PATCH 1/4] arm64: dts: qcom: sdm845: fix number of pins in
 'gpio-ranges'
Message-ID: <YELhMmDndOTSSJJO@builder.lan>
References: <20210303033106.549-1-shawn.guo@linaro.org>
 <20210303033106.549-2-shawn.guo@linaro.org>
 <YEKl7GbxBhui4eoT@builder.lan>
 <20210306012829.GL17424@dragon>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210306012829.GL17424@dragon>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri 05 Mar 19:28 CST 2021, Shawn Guo wrote:

> On Fri, Mar 05, 2021 at 03:43:08PM -0600, Bjorn Andersson wrote:
> > On Tue 02 Mar 21:31 CST 2021, Shawn Guo wrote:
> > 
> > > The last cell of 'gpio-ranges' should be number of GPIO pins, and in
> > > case of qcom platform it should match msm_pinctrl_soc_data.ngpio rather
> > > than msm_pinctrl_soc_data.ngpio - 1.
> > > 
> > 
> > This is a historical artifact, SDM845 has 150 GPIO pins. In addition to
> > this there's an output-only pin for UFS, which I exposed as an GPIO as
> > well - but it's only supposed to be used as a reset-gpio for the UFS
> > device.
> > 
> > Perhaps that still mandates that gpio-ranges should cover it?
> 
> I think the number in DT gpio-ranges should match msm_pinctrl_soc_data.ngpio.
> Otherwise, kernel will be confused and be running into the issue like
> below in some case.
> 
> > 
> > > This fixes the problem that when the last GPIO pin in the range is
> > > configured with the following call sequence, it always fails with
> > > -EPROBE_DEFER.
> > > 
> > >     pinctrl_gpio_set_config()
> > >         pinctrl_get_device_gpio_range()
> > >             pinctrl_match_gpio_range()
> > 
> > When do we hit this sequence? I didn't think operations on the UFS
> > GP(I)O would ever take this code path?
> 
> It will, if we have UFS driver booting from ACPI and requesting reset
> GPIO.

But does the UFS driver somehow request GPIO 190 on SC8180x?

I made up the idea that this is a GPIO, there really only is 190 (0-189)
GPIOs on thie SoC.

Downstream they use a pinconf node with "output-high"/"output-low" to
toggle the reset pin and I don't find any references in the Flex 5G
DSDT.

> And we are hit this sequence with my patch that adds .set_config
> for gpio_chip [1].
> 

What's calling pinctrl_gpio_set_config() in this case?

Regards,
Bjorn

> Shawn
> 
> [1] https://lore.kernel.org/linux-gpio/YEDVMpHyCGbZOrmF@smile.fi.intel.com/
