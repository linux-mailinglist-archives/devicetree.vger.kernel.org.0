Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 190735B01DA
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 12:24:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229733AbiIGKY3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Sep 2022 06:24:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230267AbiIGKY1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Sep 2022 06:24:27 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 012DA2CE33
        for <devicetree@vger.kernel.org>; Wed,  7 Sep 2022 03:24:12 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id c11so15402196wrp.11
        for <devicetree@vger.kernel.org>; Wed, 07 Sep 2022 03:24:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=575NCnDR/GCZhpJ8OLTbi042Ihqd+YLtNj2ep7o4Wlg=;
        b=rj6SRcO+MdYPbbt/EPW/8I/5FfakObLlzHE3OMK/jGisvRZBpw5PsfNm7OCuKovgWx
         CcxJ+RIYwkWdCpoWSVxNkbU/oeTSu/YBLdGm1Xeq53VfhH4Dm4Zm4O1tqSWVQrnN9jfi
         5Id9avwP46+I0GUGqchI86xiAlNk5ej76hvgRSUcHBMJ3YHNDUOKdOzyuMeGiLBXjnwV
         kzDZCiKrKt7i0uS55S0PPMAo+62Sblv3ciTpHfkn5nld6AU7g2/LbGe7Kv1Nn5Me75qD
         UJptCc1hLSAjGvAmqw79Z/y9m+cuLCYfcz14sv12njvde+pIeMOla7EZQjj64GGnaDIG
         LF6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=575NCnDR/GCZhpJ8OLTbi042Ihqd+YLtNj2ep7o4Wlg=;
        b=1UEbNecVJ5OVFwMoZ6UaxHcIcDav29Y39LTV3XJzBWI27qiATd+OtHcbiNmKV0LHnk
         AgnDrEEt0La7pjptAc004yEgce3koq2iaOp2zhObFq/pLn5eUy2sfaQBC4VAG7F4u+B9
         koPF25HJpqHVaUiE/Wzzm8bvh2yajOdFkI+2HTIo9vZnpTJsBMMx3aQXb22GULiela8a
         MvMpG6fNbXYY5QDOTcb6jExCFiGXsKT1V0A6hhMNMU8WqhVEIkqtpgSi4Nvu4H8RUmyo
         NK5oX29mbasuUDHr0EQb80QumFsVbtWPjS8sbNBwDJNhnGU3o8Bvm8hge5Rg/QTDXLLE
         Jxsw==
X-Gm-Message-State: ACgBeo1sCV9TuE9jIo1dTv9sMetrDqWzc907cdtZbAv+1ARiSSQaLM09
        29Bu1LFOtGXNaND/hjj6fS1yrA==
X-Google-Smtp-Source: AA6agR5BXbeFsBXF20/pKR26E+Wo5ZEbshpDAA0rPd8cQFySfXAT+VkaX7SMHBE03fQ2d1z4qNjWEw==
X-Received: by 2002:a05:6000:15c5:b0:220:727a:24bf with SMTP id y5-20020a05600015c500b00220727a24bfmr1721977wry.621.1662546251223;
        Wed, 07 Sep 2022 03:24:11 -0700 (PDT)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id b14-20020a056000054e00b002252ec781f7sm16466855wrf.8.2022.09.07.03.24.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 03:24:10 -0700 (PDT)
Date:   Wed, 7 Sep 2022 13:24:09 +0300
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Jun Li <jun.li@nxp.com>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        Marco Felsch <m.felsch@pengutronix.de>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        "marex@denx.de" <marex@denx.de>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Peng Fan <peng.fan@nxp.com>,
        "Markus.Niebel@ew.tq-group.com" <Markus.Niebel@ew.tq-group.com>,
        "laurent.pinchart@ideasonboard.com" 
        <laurent.pinchart@ideasonboard.com>,
        "paul.elder@ideasonboard.com" <paul.elder@ideasonboard.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "aford173@gmail.com" <aford173@gmail.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Subject: Re: [PATCH] arm64: dts: imx8mp: correct usb clocks
Message-ID: <YxhxSdDGXfO//bgc@linaro.org>
References: <1661328612-3932-1-git-send-email-jun.li@nxp.com>
 <20220824091044.msaa4lymgyrmektl@pengutronix.de>
 <PA4PR04MB964059A132A12DE73801C86189739@PA4PR04MB9640.eurprd04.prod.outlook.com>
 <PA4PR04MB9640A5B008D6D97C5F5AB7F2897E9@PA4PR04MB9640.eurprd04.prod.outlook.com>
 <20220906094343.GO1728671@dragon>
 <PA4PR04MB9640FA621C9E03C167EFA607897E9@PA4PR04MB9640.eurprd04.prod.outlook.com>
 <20220906101837.GP1728671@dragon>
 <PA4PR04MB96403BEE445FC4A569FDF33C897E9@PA4PR04MB9640.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PA4PR04MB96403BEE445FC4A569FDF33C897E9@PA4PR04MB9640.eurprd04.prod.outlook.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22-09-06 11:30:14, Jun Li wrote:
> +Abel
> 
> > -----Original Message-----
> > From: Shawn Guo <shawnguo@kernel.org>
> > Sent: Tuesday, September 6, 2022 6:19 PM
> > To: Jun Li <jun.li@nxp.com>
> > Cc: Marco Felsch <m.felsch@pengutronix.de>; robh+dt@kernel.org;
> > krzysztof.kozlowski+dt@linaro.org; s.hauer@pengutronix.de;
> > kernel@pengutronix.de; festevam@gmail.com; marex@denx.de;
> > devicetree@vger.kernel.org; Peng Fan <peng.fan@nxp.com>;
> > Markus.Niebel@ew.tq-group.com; laurent.pinchart@ideasonboard.com;
> > paul.elder@ideasonboard.com; dl-linux-imx <linux-imx@nxp.com>;
> > aford173@gmail.com; linux-arm-kernel@lists.infradead.org;
> > l.stach@pengutronix.de
> > Subject: Re: [PATCH] arm64: dts: imx8mp: correct usb clocks
> > 
> > On Tue, Sep 06, 2022 at 09:49:28AM +0000, Jun Li wrote:
> > > Hi Shawn,
> > >
> > > > > > > Hi Li,
> > > > > > >
> > > > > > > On 22-08-24, Li Jun wrote:
> > > > > > > > After commit cf7f3f4fa9e5 ("clk: imx8mp: fix usb_root_clk
> > > > > > > > parent"), usb_root_clk is no longer for suspend clock so
> > > > > > > > update dts accordingly to use right bus clock and suspend clock.
> > > > > > >
> > > > > > > Please don't send two seperate patchsets for this topic, since
> > > > > > > they can be applied delayed. So your v2 should contain the
> > > > > > > patches from [1]
> > > > > > as well.
> > > > > >
> > > > > > Understood, I will put all in one patch set in v2.
> > > > >
> > > > > Since the clock part patches[1] already were accepted, I think
> > > > > this corresponding dts fix patch should be okay as it is.
> > > >
> > > > Should I apply the DTS patch for v6.0-rc or v6.1?  My understanding
> > > > is that it needs to appear in the same release as clock patch[1], right?
> > >
> > > Yes, it needs to appear in the same release as clock patch[1].
> > 
> > So could you find out which release the clock patch is targeting?
> 
> Seems the clock patches[1] are only at Abel's tree. 

Right, but your patch didn't have any Fixes tag.

So I think I need drop your patch from my tree for now and you need
to resend a new version with Fixes tag, which probably will be going
through Stephen's tree.

> 
> Actually this dts patch and clk patches[1] should apply for the
> releases with below patch:
> 
> commit cf7f3f4fa9e57b8e9f594823e77e6cbb0ce2b254
> Author: Peng Fan <peng.fan@nxp.com>
> Date:   Sat May 7 20:54:30 2022 +0800
> 
>     clk: imx8mp: fix usb_root_clk parent
>     
>     According to reference mannual CCGR77(usb) sources from hsio_axi, fix
>     it.
>     
>     Fixes: 9c140d9926761 ("clk: imx: Add support for i.MX8MP clock driver")
>     Signed-off-by: Peng Fan <peng.fan@nxp.com>
>     Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
>     Link: https://lore.kernel.org/r/20220507125430.793287-1-peng.fan@oss.nxp.com
>     Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
>  
> So it should target v5.19, v6.0rc and v6.1
> 
> Do I need resend the patch with stable tag applied? like
> Cc: stable@vger.kernel.org # v5.19+

And yes, cc stable too.

> 
> [1] https://lore.kernel.org/linux-arm-kernel/1661328262-3867-2-git-send-email-jun.li@nxp.com/
> 
> Thanks
> Li Jun
> 
> > 
> > Shawn
