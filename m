Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6D47D4C01DC
	for <lists+devicetree@lfdr.de>; Tue, 22 Feb 2022 20:14:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235002AbiBVTPG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Feb 2022 14:15:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230249AbiBVTPG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Feb 2022 14:15:06 -0500
Received: from mail-oo1-xc2c.google.com (mail-oo1-xc2c.google.com [IPv6:2607:f8b0:4864:20::c2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 813501598F5
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 11:14:39 -0800 (PST)
Received: by mail-oo1-xc2c.google.com with SMTP id s203-20020a4a3bd4000000b003191c2dcbe8so19001427oos.9
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 11:14:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=+uICciuaj7jdFCwues4OKN2T3O3A4k1mD1Fk4dP/Kh0=;
        b=UehtrZGjdpmOsyLQueoAeY7by4QrBSoByAQe2tPBmT4Pv4dqT1F2pmG6c+7KC74+i4
         Pvgk2RF4/tvICKJ0MSqfZEArHKjGgEdxYv5olA8KQRdWQ2GycteVo9SwLEE0agc869Zl
         RoNhbbOpjthqQZ3RnhLSfUd1Vl02aOdv3ks8okqze17/e4mc75S+1EcXBF/7ZA5Evt2B
         KmikRbX4vT1xu6fvuP4KSuXpMBJWMc8O765QEdCPvznI50o+3MpawmcsySpgf0TwVC0F
         Utva92qS43knnqf/n+HNFDzyfTF3gFUrfdnknccVLJetV50vPm7Rp6OobQMCHCm9rT22
         K/Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=+uICciuaj7jdFCwues4OKN2T3O3A4k1mD1Fk4dP/Kh0=;
        b=w0q6hKd10H6XEk3bvW/Jz9FAV5fe94r32m77rsOyUZOqz+N+ZRw16E86jsjUXC3W6i
         MvntUu2n2LWKmC89HRiuC/acHQ9aJrjA1nFgMRMwFkVCRisY9rE1aiIt4E9SC9qXoob8
         QpurYxnrTnRtNjzjC1LEAvwo5L3yxT7Rf6pQ0dpRLRY+UQTHYpPitBrFLqeZXMRn5neK
         lw/8KQNSE/7Jk6cWLrKzdW+k9eeutxC82s8q0/XH/PrfCN9oYR43skUTRssHzEyz7jGA
         L1JM5WsBeB14mGFhYTxDneMi09hfYjXaVZmsdK5qOr1q/ECp1aPgJl+QzvGc2za/h/iy
         Athg==
X-Gm-Message-State: AOAM531uh+WoQcJxhYB+lcPTt2vLb9e2AhxwlaHekiTHrADO+BQME5X7
        2H1/huBFce4CXj8HQRD2/XhSHfen5KM=
X-Google-Smtp-Source: ABdhPJz9sc3sYp8PEoEW+pqVUVc5880oolD2dYtkhg0DhxSoRSpwI22BbPR+X9GiXgYBSDjB8l4YPQ==
X-Received: by 2002:a05:6870:1054:b0:d6:a9d7:1b69 with SMTP id 20-20020a056870105400b000d6a9d71b69mr412848oaj.273.1645557278828;
        Tue, 22 Feb 2022 11:14:38 -0800 (PST)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id z4sm7336864otu.24.2022.02.22.11.14.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Feb 2022 11:14:38 -0800 (PST)
Date:   Tue, 22 Feb 2022 13:14:37 -0600
From:   Chris Morgan <macroalpha82@gmail.com>
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        jon.lin@rock-chips.com, linux-rockchip@lists.infradead.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Correct clock-output-names for
 rk817
Message-ID: <20220222191437.GA7995@wintermute.localdomain>
References: <20220216165837.4721-1-macroalpha82@gmail.com>
 <44462609.a43xROnmBz@diego>
 <4b88f0f1-7422-7beb-2f7a-563f1f4b3360@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4b88f0f1-7422-7beb-2f7a-563f1f4b3360@arm.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 16, 2022 at 09:34:52PM +0000, Robin Murphy wrote:
> On 2022-02-16 20:42, Heiko Stübner wrote:
> > Hi,
> > 
> > Am Mittwoch, 16. Februar 2022, 17:58:37 CET schrieb Chris Morgan:
> > > From: Chris Morgan <macromorgan@hotmail.com>
> > > 
> > > According to the datasheet for the rk817 there is only a single output
> > > clock for the PMIC. I don't believe this is causing any harm though
> > > and testing this change doesn't appear to have any noticeable effects.
> > 
> > hmm, looking at the go2's schematics, I'd disagree:
> > 
> > - yes, the rk817 has only one clock output
> > - but no, it is used for the clkout_32k signal, which gets piped back into
> >    the SoC. As that clock dynamically appears at some unspecified point
> >    when the rk817 probes, the clock controller expects it to be named
> >    xin32k to bind into its clock-tree.
> > 
> > The driver (drivers/clk/clk-rk808.c) really puts that rk817-clk32k at
> > position 2 but I'm not sure if that simply papers over some implementation
> 
> Indeed it appears to be a hangover from RK808 where CLK32KOUT1 is always-on
> and CLK32KOUT2 is the switchable one. It's even more obvious on RK805 which
> still shares the original control register layout.
> 
> Robin.

Okay, so I'm thinking for now we cancel this patch, note in the yaml updates
patch series that this issue is present, update the driver, and then notify
the board dts maintainers to switch over and test. Does that sound good?

Thank you.

> 
> > 
> > 
> > Heiko
> > 
> > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > > ---
> > >   arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts | 2 +-
> > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
> > > index ea0695b51ecd..5b23e607876e 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
> > > @@ -296,7 +296,7 @@ rk817: pmic@20 {
> > >   		reg = <0x20>;
> > >   		interrupt-parent = <&gpio0>;
> > >   		interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
> > > -		clock-output-names = "rk808-clkout1", "xin32k";
> > > +		clock-output-names = "rk808-clkout1";
> > >   		clock-names = "mclk";
> > >   		clocks = <&cru SCLK_I2S1_OUT>;
> > >   		pinctrl-names = "default";
> > > 
> > 
> > 
> > 
> > 
> > 
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip
