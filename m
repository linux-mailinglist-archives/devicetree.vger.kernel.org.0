Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F4AE4C7812
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 19:40:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238045AbiB1Skj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 13:40:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240865AbiB1Sjv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 13:39:51 -0500
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF1B745048
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 10:28:56 -0800 (PST)
Received: by mail-pl1-x629.google.com with SMTP id n15so9231266plf.4
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 10:28:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=953U8rJ4XL9BO0MAZAoSvNfxJjSMk/eYFo8dV60tgFc=;
        b=FpK1ngedQX3i3ivR3W3a6s9CDUpEcLJ7+K72A8HWuIj+TG9fFxdNTS8IxACdRptz5O
         VJNsv0VTwQYiTNicWanwklaKPytRcWWcHmq0OX9OJRvN6X7P2PKdM58VR1MdzviHqS6h
         NnRbxHH8agrt2Ew2iEAOGcbFr3lrxgtJSG0lw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=953U8rJ4XL9BO0MAZAoSvNfxJjSMk/eYFo8dV60tgFc=;
        b=mq65LkOxmn7p3jgmbPxnl6nOE2CEm9N1WkQYzI3pyFdiaooALUMJL+e/OEbRC6XP/1
         JXeMV+8IbOQ9xmxgFs/mVsdnjRY/dWxySQyZln1m7QyGfqVtRxa1ZWNgt45Bk9nRm2Qz
         Bp5PVruR7BbEhwZMqh0nu5JVlfp6MjhU57JctETHP7KYGHLUjbbXHg4dIcelAYkGm9+B
         22FmyFruhSqJhDDAV8q3wVBafi1/fcbxETDqNu8C6VnkSFxOrBaimvVJC3KQYaN+OSIG
         0U1FtvNxM68jIVWeHshpkwrYQF7IfomZY1HGT/ZZbEeDW3S0erCQkCFibVTapsbjsDz1
         P7cA==
X-Gm-Message-State: AOAM530CzuJb7Wk6SgpvliTF5xn5u/GqOX7c1MDdcfM1BOtTh/4445IX
        5A28bVIYSkQnKJnjGVeLhquINg==
X-Google-Smtp-Source: ABdhPJwK4X9UEdRlczlObVA8zipBl9vNEDhwutWp0ODiei04VVcvgZUDYK9KSHSJekx+YOkQqo2U/g==
X-Received: by 2002:a17:903:2041:b0:14f:b0a6:18f5 with SMTP id q1-20020a170903204100b0014fb0a618f5mr22231706pla.50.1646072936309;
        Mon, 28 Feb 2022 10:28:56 -0800 (PST)
Received: from localhost ([2620:15c:202:201:f16d:303:27ee:ee6a])
        by smtp.gmail.com with UTF8SMTPSA id a8-20020a17090a740800b001bc691c79fcsm64964pjg.49.2022.02.28.10.28.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Feb 2022 10:28:55 -0800 (PST)
Date:   Mon, 28 Feb 2022 10:28:53 -0800
From:   "mka@chromium.org" <mka@chromium.org>
To:     "Linyu Yuan (QUIC)" <quic_linyyuan@quicinc.com>
Cc:     "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
        "Tao Wang (Consultant) (QUIC)" <quic_wat@quicinc.com>,
        "balbi@kernel.org" <balbi@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "dianders@chromium.org" <dianders@chromium.org>,
        "frowand.list@gmail.com" <frowand.list@gmail.com>,
        "hadess@hadess.net" <hadess@hadess.net>,
        "krzk@kernel.org" <krzk@kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
        "mathias.nyman@intel.com" <mathias.nyman@intel.com>,
        "michal.simek@xilinx.com" <michal.simek@xilinx.com>,
        "peter.chen@kernel.org" <peter.chen@kernel.org>,
        "ravisadineni@chromium.org" <ravisadineni@chromium.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "rogerq@kernel.org" <rogerq@kernel.org>,
        "stern@rowland.harvard.edu" <stern@rowland.harvard.edu>,
        "swboyd@chromium.org" <swboyd@chromium.org>
Subject: Re: =?utf-8?B?5Zue5aSNOiDlm57lpI0=?= =?utf-8?Q?=3A?= Re: [PATCH v20
 3/5] usb: misc: Add onboard_usb_hub driver
Message-ID: <Yh0UZUU9/9Hd6Pc1@google.com>
References: <SA1PR02MB86067ACF0C96F18B7306D208903A9@SA1PR02MB8606.namprd02.prod.outlook.com>
 <SA1PR02MB860660B6F33011E5A97F7930903A9@SA1PR02MB8606.namprd02.prod.outlook.com>
 <YhURQAksLKVuzU36@google.com>
 <SA1PR02MB860602E0AC4D9BD0BC4245B5903C9@SA1PR02MB8606.namprd02.prod.outlook.com>
 <YhXolQDwIMbTi/O2@kroah.com>
 <DM8PR02MB81988555CA6B66BB3FD5E488E3019@DM8PR02MB8198.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM8PR02MB81988555CA6B66BB3FD5E488E3019@DM8PR02MB8198.namprd02.prod.outlook.com>
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 28, 2022 at 03:08:34AM +0000, Linyu Yuan (QUIC) wrote:
> > From: gregkh@linuxfoundation.org <gregkh@linuxfoundation.org>
> > Sent: Wednesday, February 23, 2022 3:56 PM
> > To: Tao Wang (Consultant) (QUIC) <quic_wat@quicinc.com>
> > Cc: mka@chromium.org; balbi@kernel.org; devicetree@vger.kernel.org;
> > dianders@chromium.org; frowand.list@gmail.com; hadess@hadess.net;
> > krzk@kernel.org; linux-kernel@vger.kernel.org; linux-usb@vger.kernel.org;
> > mathias.nyman@intel.com; michal.simek@xilinx.com;
> > peter.chen@kernel.org; ravisadineni@chromium.org; robh+dt@kernel.org;
> > rogerq@kernel.org; stern@rowland.harvard.edu; swboyd@chromium.org;
> > Linyu Yuan (QUIC) <quic_linyyuan@quicinc.com>
> > Subject: Re: 回复: 回复: Re: [PATCH v20 3/5] usb: misc: Add
> > onboard_usb_hub driver
> > 
> > On Wed, Feb 23, 2022 at 07:40:31AM +0000, Tao Wang (Consultant) (QUIC)
> > wrote:
> > > Ok, thanks your reply.
> > >
> > > Here is my question, we must modify the driver "onboard_usb_hub.c" if
> > we want to use it. But it's hard to complete because it's an opensource code.
> > 
> > I do not understand.  We do not deal with code that is not in the kernel
> > source tree, as we have no idea what is out there.  Please just submit
> > your changes to be merged into the tree and all will be fine.
> 
> Hi Greg and mka,
> 
> Let's make it clear that we are talking about once this driver is approved into usb tree,
> If we use different USB HUB which have VID/PID not defined in this driver,
> We need to update this driver.
> 
> But if we defined VID/PID in device tree(for a specific board, manufacture should know VID/PID from HUB it used),
> dynamic parsed by the driver,  then we don't need to change this driver (increase VID/PID table).

As per my earlier reply, the kernel/USB core uses the VID:PID reported
by the USB device, the compatible string in the device tree is purely
informational. That's not something that could be changed by this
driver.

And even if the VID:PID from the device tree was used: how is the
kernel supposed to know that the onboard_hub driver should be
probed for a given VID:PID from the device tree, without listing
the VID:PID (or compatible string) in the driver (which is what
you seem to seek to avoid)?
