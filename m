Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1BA7B62EA98
	for <lists+devicetree@lfdr.de>; Fri, 18 Nov 2022 01:54:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240750AbiKRAyZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Nov 2022 19:54:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240703AbiKRAyY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Nov 2022 19:54:24 -0500
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19ED07EBE9
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 16:54:23 -0800 (PST)
Received: by mail-pf1-x429.google.com with SMTP id y203so3424219pfb.4
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 16:54:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eRHZ8HxlKkpc/rQw9TF/Vjc6A04s7AH3fGHGNV8IcdM=;
        b=EMdaRR5ywe+TV/FYyD9a2i+UB/WspihcuIixd5Dr21nxmE+kcbN8TtOmL46bnAWEJZ
         kOMiPHdykN4qZbMIGafcSieL2JCDwRT1Gn5eDVMjpDrz6ejrGhrSbXWcjDVzKmH4t0kI
         elpclmBAb7rzG6BXcOB8kac8xK+aTsSO/BR5vCsDUvAsEuE/cvxFv1w+4ff1loBLW96l
         0yyqyGGuegV0UUvNRmtSwuv2elmshJ+Uldj5RrMlnESTdSN+SpgwZSPmNoQlgf2HfRo7
         1pcksb6gWej+VA9v9FvtxqoTUtsJVb/9HwmI9H6HwxDLzZlotYwNIr+cOvTN/Ul7FA4r
         e5cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eRHZ8HxlKkpc/rQw9TF/Vjc6A04s7AH3fGHGNV8IcdM=;
        b=4PX2Y2cAjpCFzzLcUJOkVgjFODZlyA4m6qTWe/mEs5iqWg15n7h6FqSTWQuE0XYBJz
         mPtHqL57JO2/mMC/Ain5PsOUBy+FQxN0RiWz4o2YsSpXQUDvg+53t6XYUStU+2sTNKVu
         BQ928TR4CuEy0spcnELPj1RyLshSpKLCscCv84BEdUsQFyC2rGFnX98/GNAsZeoEv8Yx
         +q+DpunNUDm1Tg8Jmbmen5uUouoFz7/aEB7t83Gp8MWxGyiLiPsF3yQYIkHYtFLMEUhy
         e/YBiBQRwJpl27Vyn8RvDmlj9iS9dzPPheVAMhbsVksk04VIVCRXz9Qz/N5kju7DhAXe
         76vA==
X-Gm-Message-State: ANoB5pkjRrhugrI3wDz2BJC39+jGgodTIk+cOOAtXYT+Sfp5NO5Zkqy2
        T3BQUYgJlbEMqMfwWoR0jPcFjvjYniTNn72pfb1LrA==
X-Google-Smtp-Source: AA0mqf577aAwYGvH4qpaYZECY2LNNaZytgtXT9uUrDcNBCNowZCpDJhrRK4S5gagrFXZqiA33J0kBMych14iLw5Etbc=
X-Received: by 2002:a05:6a00:4009:b0:563:2ada:30a3 with SMTP id
 by9-20020a056a00400900b005632ada30a3mr5481609pfb.27.1668732862572; Thu, 17
 Nov 2022 16:54:22 -0800 (PST)
MIME-Version: 1.0
References: <20221118001548.635752-1-tharvey@gateworks.com> <Y3bRX1N0Rp7EDJkS@lunn.ch>
In-Reply-To: <Y3bRX1N0Rp7EDJkS@lunn.ch>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Thu, 17 Nov 2022 16:54:11 -0800
Message-ID: <CAJ+vNU3P-t3Q1XZrNG=czvFBU7UsCOA_Ap47k9Ein_3VQy_tGw@mail.gmail.com>
Subject: Re: [PATCH 0/3] add dt configuration for dp83867 led modes
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, netdev@vger.kernel.org,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Russell King <linux@armlinux.org.uk>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 17, 2022 at 4:27 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Thu, Nov 17, 2022 at 04:15:45PM -0800, Tim Harvey wrote:
> > This series adds a dt-prop ti,led-modes to configure dp83867 PHY led
> > modes, adds the code to implement it, and updates some board dt files
> > to use the new property.
>
> Sorry, but NACK.
>
> We need PHY leds to be controlled via /sys/class/leds. Everybody keeps
> trying to add there own way to configure these things, rather than
> have just one uniform way which all PHYs share.
>
>      Andrew

Andrew,

I completely agree with you but I haven't seen how that can be done
yet. What support exists for a PHY driver to expose their LED
configuration to be used that way? Can you point me to an example?

Best Regards,

Tim
