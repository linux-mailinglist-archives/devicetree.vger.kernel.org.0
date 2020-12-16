Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F090F2DC84C
	for <lists+devicetree@lfdr.de>; Wed, 16 Dec 2020 22:26:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726508AbgLPVZz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Dec 2020 16:25:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726146AbgLPVZy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Dec 2020 16:25:54 -0500
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58491C0617A6
        for <devicetree@vger.kernel.org>; Wed, 16 Dec 2020 13:25:14 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id j22so16880062eja.13
        for <devicetree@vger.kernel.org>; Wed, 16 Dec 2020 13:25:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mLZUPFNVejUDncxL37g9/80Ub18hTej69i+NxrvdRJo=;
        b=FROre0tTMQ65q5nDTdsf5UbuyyDWpxCG0fCrpDXijqatbl19sQ/DvhIrjs8+JcScs9
         3Z2AUeaiTvrLJjEI/DcJjnN2MkN98/NlvZmrI0EzzkEIc/gsdky6Xo8WZj92xTbAkeqd
         ZwDTPRdpo3WMF9e2vYvaF5WtvkTvPjnrZhCnGLw2uDa72nCqXqTFsZUC+p9tnQHMHx08
         tyVAtLqAwXgsvAnArj0I0NCLc45k2xV1MFdP+OFZwo2NvOEQX+T319XVAHbz5x40WMT/
         O1v6tL2y6wXFM89+ygYBEnX02kL6sU5z7Bh6MSaKP5I+Mkf//mG/4YnzrAAz5akb7aSn
         qsUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mLZUPFNVejUDncxL37g9/80Ub18hTej69i+NxrvdRJo=;
        b=hSqTdZfQfdFFWq+Cyu7Gh4q0hIWU8x+W81+JtMltA7oQEHel9dULzhCvCMlcOShfND
         deh1G1Tq76iP6UspLDaUXj3h2gJB0edYVWSOwiwdJaymbeTrDl99HZHbfkDoK6DVppZv
         heVHsMItOALckA5o1PMInD3pFcPf/1WWoXY5TMCU+3g2IlVL4GP/hXF0QPIwbHKFV95r
         b+JtmpkYTXWAuSFublMHW6kz2db/eFtkgg+s9FWF9txWjC6QE/aYQDE/6OJEIHJqzAxL
         WGLGofRVqdte2Qs9we/cLHHsYIyVpQA0WhlflCIm/rS/G4ezZhKlHdSUqEI+wLfK9qRc
         c4AA==
X-Gm-Message-State: AOAM531s0GAS6jMK6lnoyew8oIAi0t5k8u5DPmLhijG8idnTh8bc8rRr
        2UXV1VdNr75RS1s6Y4YSi5PNlI6WdneRg8U4t9yMmfaISonMMMrU
X-Google-Smtp-Source: ABdhPJyk56EM+g8LdbDSfKARO+dRF+2bRuKyyQbOtiYAuivb/5CnLeVcXwHqUBbvxo7fKN5qg9Bu2joVPt3tcXUxMnc=
X-Received: by 2002:a17:906:391b:: with SMTP id f27mr31611869eje.195.1608153912972;
 Wed, 16 Dec 2020 13:25:12 -0800 (PST)
MIME-Version: 1.0
References: <20201003224555.163780-1-marex@denx.de> <CAHCN7xKyRcZQcZunw6nLpWKWNXWJs4V_fPoQbijVrv6LbuFdYQ@mail.gmail.com>
 <bb982b4f-3510-6663-0e4c-66a7c34b8d62@denx.de> <CAHCN7xJFsi-zfzHOYJ56s5cx-owRL5EPrXCqzBgfrhrveAfo2A@mail.gmail.com>
 <CAHCN7xKDP02QTNrxg84OvVF=Orcnh_gWj551ZV4bJphysfgu5w@mail.gmail.com>
 <bfc7b2e9-506b-1161-95ca-6aaf73f38a2a@denx.de> <aa5e86be-07a8-878c-54ff-2c2c7cdd9ef7@kontron.de>
 <CAHCN7x+oz9hoNfNYytGD++EbtAkceer7q359qoOP=pwUvaD9mQ@mail.gmail.com> <2b81d5d3-f80d-674e-7507-6fc3e7553161@kontron.de>
In-Reply-To: <2b81d5d3-f80d-674e-7507-6fc3e7553161@kontron.de>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Wed, 16 Dec 2020 13:24:59 -0800
Message-ID: <CAJ+vNU0jtNY_tJxHWoxF8GCO-+qdmDi+io60bSuxwyrEga9ekQ@mail.gmail.com>
Subject: Re: [PATCH 1/5] Documentation: bindings: clk: Add bindings for
 i.MX8MM BLK_CTL
To:     Frieder Schrempf <frieder.schrempf@kontron.de>
Cc:     Adam Ford <aford173@gmail.com>, Marek Vasut <marex@denx.de>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        devicetree <devicetree@vger.kernel.org>,
        Abel Vesa <abel.vesa@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
        =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        arm-soc <linux-arm-kernel@lists.infradead.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        Michael Tretter <m.tretter@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

 'On Thu, Dec 10, 2020 at 7:15 AM Frieder Schrempf
<frieder.schrempf@kontron.de> wrote:
>
> Hi,
>
> On 30.11.20 16:43, Adam Ford wrote:
> > On Mon, Nov 30, 2020 at 5:47 AM Frieder Schrempf
> > <frieder.schrempf@kontron.de> wrote:
> >>
> >> Hi,
> >>
> >> On 07.10.20 22:50, Marek Vasut wrote:
> >>> On 10/7/20 10:17 PM, Adam Ford wrote:
> >>>> On Wed, Oct 7, 2020 at 3:08 PM Adam Ford <aford173@gmail.com> wrote:
> >>>>>
> >>>>> On Wed, Oct 7, 2020 at 3:03 PM Marek Vasut <marex@denx.de> wrote:
> >>>>>>
> >>>>>> On 10/7/20 9:52 PM, Adam Ford wrote:
> >>>>>>> On Sun, Oct 4, 2020 at 12:53 AM Marek Vasut <marex@denx.de> wrote:
> >>>>>>>>
> >>>>>>>> Add the i.MX8MM BLK_CTL compatible string to the list.
> >>>>>> [...]
> >>>>>>>> ---
> >>>>>>>>    Documentation/devicetree/bindings/clock/fsl,imx-blk-ctl.yaml | 1 +
> >>>>>>>>    1 file changed, 1 insertion(+)
> >>>>>>>>
> >>>>>>>
> >>>>>>> Is there a DTSI change part of this patch?  I was going to try to test
> >>>>>>> it, but  I am not seeing a change to the imx8mm.dtsi, and I am not
> >>>>>>> sure where to put the node.
> >>>>>>
> >>>>>> There are in fact quite a few other pieces you need to have in place,
> >>>>>> this patchset in itself is not particularly useful, it is just infra for
> >>>>>> the LCDIF and MIPI DSIM block control. You might want to wait until they
> >>>>>> all land in next and test that result.
> >>>>>
> >>>>> I have several patches in place, the GPCv2, this block driver,
> >>>>> enabling GPU DT node, I'm also working on the DSIM patch you posted.
> >>>>> I was hoping to test them all together and reply to the various
> >>>>> threads with tested-by.  I also want to get my device tree stuff ready
> >>>>> on the beacon boards so when everything lands, I can post DTS updates
> >>>>> to enable the LCDIF, DSI, and the HDMI bridge.
> >>>>>
> >>>>> If you have a repo somewhere that has all these combined, I can just
> >>>>> work on the final layer to enable the device tree plumbing on my
> >>>>> board.  I just need the imx8mm.dtsi changes for this, DSIM, and the
> >>>>> LCDIF so I can finish the task.
> >>>>
> >>>> On that note, I also have a i.MX8M Nano board which is similar to my
> >>>> 8MM.  If I understood the 8MM clock block driver better, I hope to
> >>>> adapt your changes for the Nano too.  Once the GPCv2 driver is
> >>>> accepted, I was also going to look at updating it to support the Nano
> >>>> as well which also has the same DSIM and LCDIF as the 8MM as well and
> >>>> a better GPU than the Mini but lacking the VPU.
> >>>
> >>> I don't have a branch, but I sent you the collected patches off-list.
> >>>
> >>
> >> I would also be interested in the patch collection for BLK_CTL, DSIM,
> >> etc. Marek, would you mind sending me those, too?
> >>
> >> Adam, did you already set up a branch and do some tests with the full stack?
> >
> > Frieder,
> >
> > I have been monitoring some of the activity on the BLK_CTL.  It seems
> > like there is some disagreement on how to connect the power domain
> > controller with the BLK_CTL.  Someone reported that it causes a hang
> > on the 8MP, so until that gets resolved, I doubt we'll be able to use
> > the display system.  Some of the DSIM changes happening are being
> > pushed back for further changes, so it seems like having the full
> > integration might be a while.
>
> I have pulled all the latest patches, including Marek's off-list patches
> together in one branch based on v5.10-rc7 [1] if anyone is interested.
>
> I added some fixes on top, that I needed to get my display behind
> another Toshiba DSI-DPI bridge working. Those are probably not
> upstreamable at all and need further investigation.
>
> I'm hoping to reply to the individual threads for more feedback. I see
> that there are some blocking issues, but we hopefully get them resolved
> somehow.
>
> Thanks
> Frieder
>
> [1] https://github.com/fschrempf/linux/commits/v5.10-mx8mm-graphics
>

Frieder,

Thanks for sharing your repo as it's getting hard to track these
patchsets (gpc/blk-ctl/power-domain/exynos/dsim). I'm also working on
display support for IMX8MM and in my case I'm trying to connect to a
RaspberryPi 7in display which I see Marek has been doing some work on
to split out drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c to
separate bridge, regulator/backlight, and simple-panel driver.

Marek,

Thanks for your recent work on splitting out the rpi display driver so
that it can be bound via device-tree. I have found that I need to move
the tc358762_init to enable vs pre-enable when using it with the
in-progress samsung-dsim driver else the driver fails writes due to
not being enabled yet:
diff --git a/drivers/gpu/drm/bridge/tc358762.c
b/drivers/gpu/drm/bridge/tc358762.c
index 1bfdfc6..0d88e61 100644
--- a/drivers/gpu/drm/bridge/tc358762.c
+++ b/drivers/gpu/drm/bridge/tc358762.c
@@ -153,11 +153,17 @@ static void tc358762_pre_enable(struct drm_bridge *bridge)
        if (ret < 0)
                dev_err(ctx->dev, "error enabling regulators (%d)\n", ret);

+       ctx->pre_enabled = true;
+}
+
+static void tc358762_enable(struct drm_bridge *bridge)
+{
+       struct tc358762 *ctx = bridge_to_tc358762(bridge);
+       int ret;
+
        ret = tc358762_init(ctx);
        if (ret < 0)
                dev_err(ctx->dev, "error initializing bridge (%d)\n", ret);
-
-       ctx->pre_enabled = true;
 }

 static int tc358762_attach(struct drm_bridge *bridge,
@@ -172,6 +178,7 @@ static int tc358762_attach(struct drm_bridge *bridge,
 static const struct drm_bridge_funcs tc358762_bridge_funcs = {
        .post_disable = tc358762_post_disable,
        .pre_enable = tc358762_pre_enable,
+       .enable = tc358762_enable,
        .attach = tc358762_attach,
 };

Frieder, I did find that your "drm/exynos: Fix PLL PMS offset for P
value bitfield" patch breaks the samsung_dsim_host_transfer for me
with the tc358762 bridge in the rpi panel. If I have that patch I get
a timeout on the transfer with some added debugging:
[    4.386387] tc358762_write 0x0210=0x00000003 0
[    4.387031] samsung_dsim_host_transfer ret: 0
[    4.387038] tc358762_write 0x0164=0x00000005 0
[    4.387375] samsung_dsim_host_transfer ret: 0
[    4.387379] tc358762_write 0x0168=0x00000005 0
[    4.387409] samsung_dsim_host_transfer ret: 0
[    4.387413] tc358762_write 0x0144=0x00000000 0
[    4.387741] samsung_dsim_host_transfer ret: 0
[    4.387745] tc358762_write 0x0148=0x00000000 0
[    4.387773] samsung_dsim_host_transfer ret: 0
[    4.387777] tc358762_write 0x0114=0x00000003 0
[    4.387804] samsung_dsim_host_transfer ret: 0
[    4.387808] tc358762_write 0x0450=0x00000000 0
[    4.387834] samsung_dsim_host_transfer ret: 0
[    4.387838] tc358762_write 0x0420=0x00100150 0
[    4.388168] samsung_dsim_host_transfer ret: 0
[    4.388172] tc358762_write 0x0464=0x0000040f 0
[    4.388200] samsung_dsim_host_transfer ret: 0
[    4.493346] tc358762_write 0x0104=0x00000001 0
[    5.509341] imx-dsim-dsi 32e10000.mipi_dsi: xfer timed out: 29 06
00 00 04 01 01 00 00 00
[    5.509345] samsung_dsim_host_transfer ret: -110
[    5.509348] tc358762_write mipi_dsi_generic_write failed err=-110
[    5.509352] tc358762_write 0x0204=0x00000001 -110
[    5.617336] tc358762_init failed err=-110
[    5.617344] tc358762 32e10000.mipi_dsi.0: error initializing bridge (-110)

Here is your patch which causes this issue for me:
diff --git a/drivers/gpu/drm/bridge/samsung-dsim.c
b/drivers/gpu/drm/bridge/samsung-dsim.c
index cb1ec3c..fc7c1d0 100644
--- a/drivers/gpu/drm/bridge/samsung-dsim.c
+++ b/drivers/gpu/drm/bridge/samsung-dsim.c
@@ -174,7 +174,7 @@
 /* DSIM_PLLCTRL */
 #define DSIM_FREQ_BAND(x)              ((x) << 24)
 #define DSIM_PLL_EN                    (1 << 23)
-#define DSIM_PLL_P(x)                  ((x) << 13)
+#define DSIM_PLL_P(x)                  ((x) << 14)
 #define DSIM_PLL_M(x)                  ((x) << 4)
 #define DSIM_PLL_S(x)                  ((x) << 1)

I'm not very knowledgeable about MIPI DSI and find it strange that
several writes in tc35872_init succeed until the failing writes:
        tc358762_write(ctx, PPI_STARTPPI, PPI_START_FUNCTION);
        tc358762_write(ctx, DSI_STARTDSI, DSI_RX_START);

For what its worth I've backported Marek's rpi backlight/reglator and
simple-pannel driver to the NXP imx_5.4.47_2.2.0 kernel and do not see
any MIPI DSI write failure there, although I have the same behavior of
the display not showing anything.

Marek, are you using the rpi panel with IMX8MM? While I now have the
drivers probing without error and have a functional backlight,
regulator I see nothing on the display.

here is my dt fragment for my IMX8MM:
/ {
        panel {
                compatible = "powertip,ph800480t013-idf02";
                power-supply = <&attiny>;
                backlight = <&attiny>;
                port {
                        panel_in: endpointpanelin {
                                remote-endpoint = <&bridge_out>;
                        };
                };
        };
};

&i2c3 {
        edt-ft5x06@38 {
                compatible = "edt,edt-ft5x06";
                reg = <0x38>;
                pinctrl-0 = <&pinctrl_touchscreen>;
                interrupt-parent = <&gpio1>;
                interrupts = <7 IRQ_TYPE_EDGE_FALLING>;
                vcc-supply = <&attiny>;
                invert;
                screen-x = <800>;
                screen-y = <480>;
        };

        attiny: regulator@45 {
                compatible = "raspberrypi,7inch-touchscreen-panel-regulator";
                reg = <0x45>;
        };
};

&mipi_dsi {
        #address-cells = <1>;
        #size-cells = <0>;
        status = "okay";

        bridge@0 {
                compatible = "toshiba,tc358762";
                reg = <0>;
                vddc-supply = <&attiny>;
                #address-cells = <1>;
                #size-cells = <0>;
                status = "okay";

                ports {
                        #address-cells = <1>;
                        #size-cells = <0>;

                        port@0 {
                                reg = <0>;
                                bridge_in: endpoint {
                                        remote-endpoint = <&dsi_out>;
                                };
                        };

                        port@1 {
                                reg = <1>;
                                bridge_out: endpoint {
                                        remote-endpoint = <&panel_in>;
                                };
                        };
                };
        };

        ports {
                port@1 {
                        reg = <1>;
                        dsi_out: endpoint {
                                remote-endpoint = <&bridge_in>;
                        };
                };
        };
};

And after booting I have:
/sys/class/backlight/7inch-touchscreen-panel-bl/ - backlight controller
/sys/class/regulator/regulator.9/ - tc358762-power
/sys/class/input/input1/ /dev/input/event1 - generic ft5x06 (79)
/sys/class/drm/card0
/sys/class/drm/card0-DPI-1
/sys/class/graphics/fb0 - mxsfb_drv.c

I'm using 'video=DPI-1:800x480@65M' in my kernel cmdline although I
don't think thats needed for fb display.

# fbset -i

mode "800x480"
    geometry 800 480 800 480 32
    timings 0 0 0 0 0 0 0
    accel true
    rgba 8/16,8/8,8/0,0/0
endmode

Frame buffer device information:
    Name        : mxsfb-drmdrmfb
    Address     : 0
    Size        : 1536000
    Type        : PACKED PIXELS
    Visual      : TRUECOLOR
    XPanStep    : 1
    YPanStep    : 1
    YWrapStep   : 0
    LineLength  : 3200
    Accelerator : No

# gst-launch-1.0 videotestsrc ! fbdevsink  # just shows a blank (but
backlit) display

Any idea what could be going wrong here?

Also Marek do you know why the edt-ft5x06 driver never seems to assert
it's interrupt? I haven't gotten that working even though I've wired
the INT pin from the display to a DIO on the IMX8MM.

Best Regards,

Tim
