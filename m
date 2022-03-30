Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6B6B4EBDFE
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 11:47:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244543AbiC3JsS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 05:48:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245087AbiC3Jrz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 05:47:55 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F5D5266B49
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 02:46:10 -0700 (PDT)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nZUtt-000338-PU; Wed, 30 Mar 2022 11:46:01 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nZUto-0001va-Qn; Wed, 30 Mar 2022 11:45:56 +0200
Date:   Wed, 30 Mar 2022 11:45:56 +0200
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
Message-ID: <20220330094556.GZ12181@pengutronix.de>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220330072822.GX12181@pengutronix.de>
 <0D8F5951-5375-46B5-BFF0-7ED410371EB7@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0D8F5951-5375-46B5-BFF0-7ED410371EB7@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:09:08 up 109 days, 17:54, 73 users,  load average: 0.16, 0.15,
 0.14
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

On Wed, Mar 30, 2022 at 10:41:56AM +0200, piotro.oniszczuk@google.com wrote:
> 
> 
> > Wiadomość napisana przez Sascha Hauer <s.hauer@pengutronix.de> w dniu 30.03.2022, o godz. 09:28:
> > 
> >> 
> >> You can easily reproduce with modetest utility:
> >> 
> >> modetest -P 43@67:1920x1080@NV12
> > 
> > This only sets the overlay, but how did you get something on the screen
> > initially?

Let me rephrase this: The above sets a plane, but it doesn't set a mode
on the crtc. When my system boots up then the output of modetest looks
like this:

Encoders:
id      crtc    type    possible crtcs  possible clones
68      0       TMDS    0x00000001      0x00000001
Connectors:
id      encoder status          name            size (mm)       modes  encoders
69      0       connected       HDMI-A-1        530x300         9      68
CRTCs:
id      fb      pos     size
67      0       (0,0)   (0x0)
  #0  nan 0 0 0 0 0 0 0 0 0 flags: ; type: 

No mode is set on the CRTC and the encoder/connector/crtc are not bound
to each other, consequently the screen is in standby. "modetest -P
43@67:1920x1080@NV12" doesn't change this, still no mode set. Hence my
question: How did you set a mode initially?

> > 
> 
> I'm not sure that above command only sets plane.
> On other SoCs i’m testing it gives expected results: diagonal colored stripes.
> There is single exception: rk356x with vop2 - where screen is green unless i „fix/enable” by playing with plane #69   
> 
> > I did with "modetest -s 69@67:1920x1080 -d" and with this it works as
> > expected, I can't reproduce any green screen issue here.
> 
> I see you are using plane #69.
> Why not #43?

I used "modetest -s 69@67:1920x1080 -d" to set a mode. The '69' is the
connector id, not a plane.

> Is plane #43 working ok for you?

Yes.

> 
> I’m using plane #43 because: application (player) - at start -  queries all planes and selects first plane offering format being within offered formats by provider (video decoder; NV12 from rk356x hantro video decoder).
> 
> pls look on app log regarding planes discovery and election: https://pastebin.com/edAhbcvU
> 
> Now - looking what VOP2 reports: https://pastebin.com/8ujkaV9n
> is see first plane accepting NV12 is #43 - so my app is electing this plane to use for displaying video.
> 
> This strategy works well for all 13 platforms i’m supporting (only 13 i have in my testbed).
> 
> If this approach is - by Yours VOP2 patches goal - is not supported - then OK.
> I understand this :-)
> 
> But - if You want to support DRM features in the same way like other SOC are doing (and working well with KODI/MythTV/mpv/etc) - then i think:
> 
> 1\ DRM plane #43 not supports NV12 - but code wrongly reports NV12 format is supported, or
> 2\ DRM plane #43 is supported - but code has bug resulting with green screen.

plane #43 should support NV12 and it seems to work fine here.

I believe you that there's a problem, but I can't reproduce it here and
I might need further assistence to reproduce it.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
