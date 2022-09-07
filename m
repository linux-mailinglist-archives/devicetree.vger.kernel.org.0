Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C6EE5B01F5
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 12:33:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229716AbiIGKdA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Sep 2022 06:33:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229636AbiIGKc7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Sep 2022 06:32:59 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBDF58307E
        for <devicetree@vger.kernel.org>; Wed,  7 Sep 2022 03:32:58 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id bj14so6397999wrb.12
        for <devicetree@vger.kernel.org>; Wed, 07 Sep 2022 03:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=2ruloj/z3HDay2BKVOinqhlNi8ynnawFv8TyAHfi4aE=;
        b=dZyKHcWPXPMjfQQVb82YQg0g8szO5nzUeoT7amZCpaUh53dl4c7uRXuhm0Rq1iMrjB
         IuTII7EPndQipA8fXtUisPXVsvaKqv/GmO2BV+nppTZW7ShvKyY9YS0i7ozhF1DYZcSk
         FwNnL2X42/NvVkiIZj/dREcbb4WBZ6C4kY30TFCsnVeBnDRPUCBk3IIduMdbnrhuxbje
         sQBFkmtnhB+ZjRhmS8iUZxmRa3aRo3NdJ34J3AlJEt2o4QDtqOBMQ7qR6Ae/sbltCYF4
         3FM50+A0mSmA9rRU8gGKYRh+rZPTvLz4fCyBcNwisI083CdHHtEDYS9MzFuv/2NCX/mF
         OIEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=2ruloj/z3HDay2BKVOinqhlNi8ynnawFv8TyAHfi4aE=;
        b=csO597265t4rHrrp6jdwzh/z6MidOjnSvbq/x4HHFBZCpss/yy5AiJ50wWzSWgc+Mu
         2F8nb4K38m0mHp2EJNTAg8QCGW7Uy1ACBc3YXYd7oFnCdTQuM1lVdVuCbI3mkiAbLdtz
         FgifQY1j99VXqtyqhILkSij46Gkxkqj4uCSsxkRuymaEormt6q008ep2N9fxt1upnetH
         d6AnSoIzD2TFfUj1O4pJ4q9ZzRLw+KMWKuuzGM4XwMY8tMyi0BafWFdKaX1bPpGfgXn4
         JSJdlq9aFzki98rlw8WURC+YoH/BjQkc+oybF76Spws7Fj9NXt+teSBkU5yQcRgBgXs+
         sjLg==
X-Gm-Message-State: ACgBeo2f/kpRkcSsKjzJaggtWFJOrDxpbQnsRZ2oMAIqjFWW71RuLL+e
        H3beRF630ZTEM2v7IIZ/0uMIQg==
X-Google-Smtp-Source: AA6agR76EAW1iCZg1Y5GR+57LAFTMm7SP2jL98SG0N0sPj/FczolhY5MHi5c9sJ4SR8elSFOgFivuQ==
X-Received: by 2002:a5d:58eb:0:b0:228:62cb:a615 with SMTP id f11-20020a5d58eb000000b0022862cba615mr1721578wrd.71.1662546777302;
        Wed, 07 Sep 2022 03:32:57 -0700 (PDT)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id m9-20020a05600c4f4900b003a84375d0d1sm27308382wmq.44.2022.09.07.03.32.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 03:32:56 -0700 (PDT)
Date:   Wed, 7 Sep 2022 13:32:55 +0300
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Li Jun <jun.li@nxp.com>
Cc:     abelvesa@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: clocks: imx8mp: Add ID for usb suspend
 clock
Message-ID: <YxhzV5pG6/ZMHZR7@linaro.org>
References: <1661328262-3867-1-git-send-email-jun.li@nxp.com>
 <YxJJ0IQ1Gu1lp02p@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YxJJ0IQ1Gu1lp02p@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22-09-02 21:22:08, Abel Vesa wrote:
> On 22-08-24 16:04:21, Li Jun wrote:
> > usb suspend clock has a gate shared with usb_root_clk.
> > 
> > Signed-off-by: Li Jun <jun.li@nxp.com>
> 
> Applied both, thanks!

As discussed in the thread [1], I dropped this patch from my tree for
now. You need to send a new version wil Fixes tag.

[1] https://lore.kernel.org/all/YxhxSdDGXfO%2F%2Fbgc@linaro.org/
> 
> > 
> > diff --git a/include/dt-bindings/clock/imx8mp-clock.h b/include/dt-bindings/clock/imx8mp-clock.h
> > index 9d5cc2ddde89..1417b7b1b7df 100644
> > --- a/include/dt-bindings/clock/imx8mp-clock.h
> > +++ b/include/dt-bindings/clock/imx8mp-clock.h
> > @@ -324,8 +324,9 @@
> >  #define IMX8MP_CLK_CLKOUT2_SEL			317
> >  #define IMX8MP_CLK_CLKOUT2_DIV			318
> >  #define IMX8MP_CLK_CLKOUT2			319
> > +#define IMX8MP_CLK_USB_SUSP			320
> >  
> > -#define IMX8MP_CLK_END				320
> > +#define IMX8MP_CLK_END				321
> >  
> >  #define IMX8MP_CLK_AUDIOMIX_SAI1_IPG		0
> >  #define IMX8MP_CLK_AUDIOMIX_SAI1_MCLK1		1
> > -- 
> > 2.34.1
> > 
