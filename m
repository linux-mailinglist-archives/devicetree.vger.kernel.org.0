Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D7C15808BE
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 02:31:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230112AbiGZAb5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 20:31:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230048AbiGZAb4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 20:31:56 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D10A320BCC
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 17:31:53 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id ez10so23293237ejc.13
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 17:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Q+Fe1jNL0Up1elTO9eo4OglKDhzz3Q/EuOCnPEmviNM=;
        b=CCG+3SZFjDRiLIJaBu+Ukuz/Fn/GoeLFavL1YPzQUj7PrONy8kzDJplHBKEi+eL43L
         Ph2a0QzwikY6w8oY1aaIwOlnZMROr+1Mcd2tDmjlvzSVQsHzjmZJkRVzxK9rwyurLuJU
         50KzI4IUG5z9yawtUTFnOmnFgdHtXNIMOTV/A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Q+Fe1jNL0Up1elTO9eo4OglKDhzz3Q/EuOCnPEmviNM=;
        b=01uFDKb3KgbtZwc9a315QOSXl4Xy3jO7kORGqvzzlxzeFv0Eoo+YAZVX6a69l5gnk8
         9W5OVsWRnlzk1tUSLUUg57rQFYCt8AaG0jEsWlDlCa/8pOsLjPT94DYHFCAM+yncTrdO
         FdaaCeZ08WqwBZcK20ZB8omB7BgNegWAKV9IAZNgN0Ep9ojwqQZpoagpVnTH0C1iXtPA
         Ij/pOuR3b02tBV4XB0UD1fDyeZnTvdc5heqXeuw3TpLKm8EB89y4TcBY263M/cX4+g5L
         GgNs+y2WmXph+EP4Too/oyQRFvYPMLIsR7terpMTG6ao76Bj13y9ItMRxzDujDC1BGea
         Mozg==
X-Gm-Message-State: AJIora93aKPVFOj0eKla61+snW4LdcoRgnr4+FvJ4XyJQV5i6QmICch6
        r+NjIv/l6sZDSgYUMg9Jsw8jhOrKbp+yw33J
X-Google-Smtp-Source: AGRyM1vZMaIy7Hg8YLHDfvPtWROHxckXey7S6Aa0bgrIoVYJ3tyq2b89QRY+P5SFsv3nJDobbug2aQ==
X-Received: by 2002:a17:907:16a2:b0:72b:87c9:af07 with SMTP id hc34-20020a17090716a200b0072b87c9af07mr11816980ejc.121.1658795512091;
        Mon, 25 Jul 2022 17:31:52 -0700 (PDT)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com. [209.85.221.46])
        by smtp.gmail.com with ESMTPSA id t18-20020a1709067c1200b0070b7875aa6asm5806543ejo.166.2022.07.25.17.31.47
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Jul 2022 17:31:47 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id h9so18147339wrm.0
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 17:31:47 -0700 (PDT)
X-Received: by 2002:a5d:5889:0:b0:21d:bccd:38e3 with SMTP id
 n9-20020a5d5889000000b0021dbccd38e3mr8745119wrf.659.1658795507332; Mon, 25
 Jul 2022 17:31:47 -0700 (PDT)
MIME-Version: 1.0
References: <20220721182622.RFC.1.I8a64b707169cfd73d9309c5eaf5d43b8bc4db988@changeid>
 <Ytrq2rVMHqedv4+3@sirena.org.uk> <CAD=FV=U-qZQwRdLA8AVwYdcuj_PQEULTnhm3osFybaFmtvjmHg@mail.gmail.com>
 <YtxHwUe4W7+u3Lk3@sirena.org.uk>
In-Reply-To: <YtxHwUe4W7+u3Lk3@sirena.org.uk>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 25 Jul 2022 17:31:34 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VhPHFB1T_+r1mmtP=r73ggmcWvwPqw3E-_foVTvtTkyw@mail.gmail.com>
Message-ID: <CAD=FV=VhPHFB1T_+r1mmtP=r73ggmcWvwPqw3E-_foVTvtTkyw@mail.gmail.com>
Subject: Re: [RFC PATCH] regulator: core: Allow for a base-load per client to
 come from dts
To:     Mark Brown <broonie@kernel.org>
Cc:     Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Johan Hovold <johan@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Sat, Jul 23, 2022 at 12:11 PM Mark Brown <broonie@kernel.org> wrote:
>
> I'm familiar with the broad concept of regulators having the
> ability to operate in more efficient (but typically lower
> quality) modes, we do have the whole infrastructure for selecting
> mode based on load after all.  I'm not sure what you mean by
> devices having a *need* for it though?

All I meant by *need* was just whether it was practical for a device
to actively take advantage of the low power mode. A driver that
"needs" to know about loads is one that purposely puts the device into
a low power state so that it can re-configure the regulator. I was
arguing that most drivers don't need to do this.


> Does this need actually exist or is this just a we built it so we
> must use it thing?  There's a lot of power microoptimisation that
> goes on and sometimes it's hard to tell how much power is saved
> relative to the power consumed managing the feature.

It has always felt like a microoptimizatoin to me. I would love to see
evidence to the contrary, though.

Specifically we don't seem to use low power mode (LPM) anywhere on the
sc7180 trogdor laptops today. Maybe it would be possible to use it in
some cases, but nobody ever did the analysis. I haven't spent much
time analyzing downstream Qualcomm solutions, though.

I guess the answer is that if it's a micro-optimization then we should
be ripping more of this code out. ;-) That would go contrary to
Dmitry's request that all regulators have a load set on them...


> To the extent this is needed it does smell a bit like "these
> regulators should default to setting their load to 0 when
> disabled" or something more along those lines TBH, some of your
> previous comments suggested that the per device loads being
> specified in a lot of the driver are just random values intended
> to trigger a specific behaviour in the regulator but forced to be
> done in terms of a load due to the firmware inteface that's
> available on these platforms having an interface in those terms.

It's actually _not_ the firmware interface as far as I can tell, at
least for newer Qualcomm chips (those using RPMH). The firmware
interface seems to be for modes. See, for instance,
rpmh_regulator_vrm_set_load() which translates loads into modes before
passing to the firmware. Ironically, my memory tells me that Qualcomm
actually said that this turned out to be a problem in the past for
them, though, since some rails went to both the main apps processor
(AP) and the modem processor. Each could independently decide that low
power mode was fine but the total of both usages could bump you into
needing high power mode...

As far as whether the numbers are random values or mean something: I
don't know that. I'd personally have a bit of a hard time trusting
them, though. Mostly ending up at LPM when you need HPM seems like it
could be really hard to debug.

One point of evidence of these numbers being pointless and just noise
is code that seems to have made its way upstream to set a "disable
load". This hasn't done anything since 2018 when we landed commit
5451781dadf8 ("regulator: core: Only count load for enabled
consumers") but is still instructive of Qualcomm's thinking. Taking a
sampling of the loads in the tables in the DSI driver / phy, I see:
* Many specify 100 uA.
* Some seem to pick based on throwing a dart at a dartboard. 16 uA, 2
uA, 4 uA, 32 uA, etc.

I can't imagine any of these numbers having done anything useful even
prior to the 2018 commit. From `qcom-rpmh-regulator.c` the changeover
from LPM to HPM is at 10000 uA or 30000 uA, so even a load of 100 uA
is really just a rounding error. Yet despite their uselessness,
Engineers at Qualcomm have dutifully filled in all these numbers...

Looking at the loads passed to "active" devices, I see almost nothing
at all specifying a load that's less than 10mA. That means it's gonna
be really hard to use any of that class of regulators in LPM.

If we happen to be using an LDO that changes over at 30 mA, though,
these ones _could_ use LDO. I guess this is where the whole
"specifying in uA" makes sense? If you've got a regulator that changes
at 30mA and only one ~20mA consumer is active then it can stay in LPM.
When two ~20mA consumers are active then it needs to switch to HPM?
Having lots of consumers on a given rail is really common w/ Qulaocmm
setups. On trogdor, rail "L4A" is all of these:

vdd_qlink_lv:
vdd_qlink_lv_ck:
vdd_qusb_hs0_core:
vdd_ufs1_core:
vdda_mipi_csi0_0p9:
vdda_mipi_csi1_0p9:
vdda_mipi_csi2_0p9:
vdda_mipi_csi3_0p9:
vdda_mipi_dsi0_pll:
vdda_pll_cc_ebi01:
vdda_qrefs_0p9:
vdda_usb_ss_dp_core:

...and that's a regulator that can go up to 30mA in LDO mode... Of
course "MIPI DSI", by complete chance I'm sure, says its load is
_just_ over the 30 mA threshold...


> It didn't sound like they were actual specified/measured physical
> values for the on-SoC stuff, some of the panel drivers do look
> like they have plausuble numbers from datasheets though.

I just don't know. :(


> It might even make sense to have the regulator drivers implement
> the mode interface, that's possibly more useful to work with here
> even if it's not what the interfaces say, it does feel like
> practicaly how people are working with this stuff.  There's
> obviously issues there if anyone *does* work usefully with loads
> and how that integrates, though I think in this day and age the
> need for active management outside of super idle states is
> typically minimal.  As a first pass you could just disable the
> DRMS stuff if mode setting permission is enabled, I suspect
> that'd work fine in these cases.  Or just model the modes as a
> vote for "add X to the load" if they're set.

The current RPMH driver _does_ implement the mode interface. ;-)


I guess the above doesn't really give us a lot of good answers. :(

I guess the problem is that, like a lot of Qualcomm stuff, I still
don't have a good big picture despite having been working on Qualcomm
SoCs for years now. I do know that code keeps showing up to set
regulator loads all over the tree and, I presume, most maintainers
just take the code without questioning the need to set the load at
all.

Perhaps the low hanging fruit is to just accept that the current API
of setting the load is here to stay, even if it does seem mostly
pointless in many cases. I can submit a patch that adds the load to
the "bulk" API and at least it would clean up a bunch of stuff even if
it doesn't fundamentally overhaul the system...


-Doug
