Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 202D34EBE96
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 12:20:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245309AbiC3KWi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 06:22:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232733AbiC3KWi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 06:22:38 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 767F11D97C2
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 03:20:53 -0700 (PDT)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nZVRY-0007qA-T7; Wed, 30 Mar 2022 12:20:48 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nZVRW-0004Wn-5Y; Wed, 30 Mar 2022 12:20:46 +0200
Date:   Wed, 30 Mar 2022 12:20:46 +0200
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     "piotro.oniszczuk@google.com" <piotr.oniszczuk@gmail.com>
Cc:     dri-devel@lists.freedesktop.org,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
Message-ID: <20220330102046.GA12181@pengutronix.de>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220330072822.GX12181@pengutronix.de>
 <0D8F5951-5375-46B5-BFF0-7ED410371EB7@gmail.com>
 <20220330094556.GZ12181@pengutronix.de>
 <D3DA14F9-C9C6-4927-B015-5B7D25689DAA@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <D3DA14F9-C9C6-4927-B015-5B7D25689DAA@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:17:21 up 109 days, 19:02, 75 users,  load average: 0.10, 0.15,
 0.19
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 30, 2022 at 12:01:05PM +0200, piotro.oniszczuk@google.com wrote:
> 
> 
> > Wiadomość napisana przez Sascha Hauer <s.hauer@pengutronix.de> w dniu 30.03.2022, o godz. 11:45:
> > 
> > On Wed, Mar 30, 2022 at 10:41:56AM +0200, piotro.oniszczuk@google.com wrote:
> > 
> > Let me rephrase this: The above sets a plane, but it doesn't set a mode
> > on the crtc. When my system boots up then the output of modetest looks
> > like this:
> > 
> > Encoders:
> > id      crtc    type    possible crtcs  possible clones
> > 68      0       TMDS    0x00000001      0x00000001
> > Connectors:
> > id      encoder status          name            size (mm)       modes  encoders
> > 69      0       connected       HDMI-A-1        530x300         9      68
> > CRTCs:
> > id      fb      pos     size
> > 67      0       (0,0)   (0x0)
> >  #0  nan 0 0 0 0 0 0 0 0 0 flags: ; type: 
> > 
> > No mode is set on the CRTC and the encoder/connector/crtc are not bound
> > to each other, consequently the screen is in standby. "modetest -P
> > 43@67:1920x1080@NV12" doesn't change this, still no mode set. Hence my
> > question: How did you set a mode initially?
> 
> Ah ok. I see your point.
> mode is set by app (player). 
> 
> Sequence was like this:
> -boot board
> -start app
> -on UI select playback
> -playback has green screen
> -exit app
> -run modetest -P 43@67:1920x1080@NV12 (the same green screen like in playback)
> -run modetest -P 49@67:1920x1080@NV12 (works ok)
> -run modetest -P 43@67:1920x1080@NV12 (now works ok)
> 
> > 
> >>> 
> >> 
> >> I'm not sure that above command only sets plane.
> >> On other SoCs i’m testing it gives expected results: diagonal colored stripes.
> >> There is single exception: rk356x with vop2 - where screen is green unless i „fix/enable” by playing with plane #69   
> >> 
> >>> I did with "modetest -s 69@67:1920x1080 -d" and with this it works as
> >>> expected, I can't reproduce any green screen issue here.
> >> 
> >> I see you are using plane #69.
> >> Why not #43?
> > 
> > I used "modetest -s 69@67:1920x1080 -d" to set a mode. The '69' is the
> > connector id, not a plane.
> 
> ack.
> typo from my side.
> 
> it was
> modetest -P 49@67:1920x1080@NV12
> 
> 
> > 
> >> Is plane #43 working ok for you?
> > 
> > Yes.
> 
> So it looks your testing method of #43 is not meaningful for verifying issue we are discussing here.
> 
> In my case:
> 12 SOC (except rk356x VOP2) gives me:
> -boot board
> -start app
> -on UI select playback
> -playback is ok
> -exit app
> -run modetest -P XX@YY:1920x1080@NV12 (diagonal stripes)
> 
> (XX/YY are plane/connector elected by app: plane@conector with format matching provider format) 
> 
> rk356x with vop2 v9:
> -boot board
> -start app
> -on UI select playback
> -playback has green screen
> -exit app
> -run modetest -P 43@67:1920x1080@NV12 (the same green screen like in playback)
> -run modetest -P 49@67:1920x1080@NV12 (works ok)
> -run modetest -P 43@67:1920x1080@NV12 (now works ok)

Does it change anything if you do a "modetest -s 69@67:1920x1080" before
starting the app? Or if you run "modetest -P 43@67:1920x1080@NV12"
before starting the app? Or other combinations thereof?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
