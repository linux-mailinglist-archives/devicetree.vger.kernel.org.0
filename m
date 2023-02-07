Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA3BA68D60A
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 12:56:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230034AbjBGL4c convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Tue, 7 Feb 2023 06:56:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229607AbjBGL4b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 06:56:31 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CD89F752
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 03:56:30 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <jlu@pengutronix.de>)
        id 1pPMaI-0006Xw-Qr; Tue, 07 Feb 2023 12:56:26 +0100
Received: from localhost ([127.0.0.1])
        by ptx.hi.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <jlu@pengutronix.de>)
        id 1pPMaH-0004fn-2u; Tue, 07 Feb 2023 12:56:25 +0100
Message-ID: <24dba2278350ea222251be80f6aade104c2319ce.camel@pengutronix.de>
Subject: Re: [PATCH] schemas: Add schema for firmware logs
From:   Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Reply-To: jlu@pengutronix.de
To:     Rob Herring <robh@kernel.org>, Simon Glass <sjg@chromium.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Tom Rini <trini@konsulko.com>,
        U-Boot Mailing List <u-boot@lists.denx.de>,
        devicetree@vger.kernel.org,
        Architecture Mailman List <boot-architecture@lists.linaro.org>
Date:   Tue, 07 Feb 2023 12:56:22 +0100
In-Reply-To: <CAL_JsqLW3GkXtr0oD28XB3MNK36Vjjzb10MhWFh85-MfN2oc3Q@mail.gmail.com>
References: <20230204001959.935268-1-sjg@chromium.org>
         <CALeDE9N2KSwA=HMLS9EPFL00UxxUgi=r_M8F7W2tWT6y+dMzeQ@mail.gmail.com>
         <CAPnjgZ297NH1oiRG9iU8=U0dSAnPLQ4WGYF7=+71aUZCYctWTA@mail.gmail.com>
         <CAL_Jsq+mUNeEx=jwc4JF7fGCa7zkOTChoVb5CoMfHaqCi+bYpg@mail.gmail.com>
         <CAPnjgZ3c0Tmtfzgv74vWovme0mVoF3N1hfoCnz61Hyzc-QE8vQ@mail.gmail.com>
         <CAL_JsqLW3GkXtr0oD28XB3MNK36Vjjzb10MhWFh85-MfN2oc3Q@mail.gmail.com>
Organization: Pengutronix
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
User-Agent: Evolution 3.46.3-1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: jlu@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 2023-02-06 at 17:32 -0600, Rob Herring wrote:
> +boot-architecture
> 
> On Mon, Feb 6, 2023 at 3:25 PM Simon Glass <sjg@chromium.org> wrote:
> > 
> > Hi Rob,
> > 
> > On Mon, 6 Feb 2023 at 10:15, Rob Herring <robh@kernel.org> wrote:
> > > 
> > > On Sat, Feb 4, 2023 at 6:04 AM Simon Glass <sjg@chromium.org> wrote:
> > > > 
> > > > Hi Peter,
> > > > 
> > > > On Sat, 4 Feb 2023 at 02:36, Peter Robinson <pbrobinson@gmail.com>
> > > > wrote:
> > > > > 
> > > > > Hi Simon,
> > > > > 
> > > > > Does it make sense to devise something that is compatible with the
> > > > > kernel's pstore [1] mechanism?
> > > > 
> > > > Possibly...can you please be a little more specific?
> > > 
> > > Peter is talking about the same thing I suggested on IRC.
> > > 
> > > pstore == ramoops
> > 
> > Oh, I only looked at the DT binding as I thought that was what you
> > were talking about on irc.
> 
> The binding is called ramoops as it's for the RAM backend for pstore.
> 
> My suggestion was either using/extending ramoops or following its
> design as a reserved memory region. All you would need to extend the
> ramoops binding is a new property to define the size of your data.
> 
> > For pstore, isn't the point that Linux wants to save stuff to allow
> > debugging or collection on reboot? What does that have to do with
> > console logs from firmware? That seems like a different thing. Or are
> > you suggesting that we add a pstore driver into U-Boot? It is quite a
> > lot of code, including compression, etc. It might be easier for Linux
> > to write the data into pstore when it starts up?
> 
> Originally ramoops was just what you described. It has grown to
> multiple backends and types of records (hence the rename to pstore).
> If you just add a new subsection within the pstore region, then I
> think the existing kernel infrastructure will support reading it from
> userspace. Maybe new types have to be explicitly supported, IDK.
> 
> U-boot being able to read pstore wouldn't be a terrible feature to
> have anyways if your boot crashes before anything else is up to get
> the output. Note I'd guess the ram backend doesn't do compression as
> supporting slightly corrupted ram is a feature which wouldn't work.

This is basically how it works in Barebox. It can display the pstore contents
after a kernel crash and also (optionally) log to the pstore/ramooms console
log. Slight RAM corruption can be handled by using error correcting codes.

It's not perfect, of course, but still very useful.

Regards,
Jan

> I think any new DT binding is premature and pstore/ramoops was just a
> suggestion to consider. This needs wider consideration of how to
> handle all the various (boot) firmware logs. I've added the
> boot-architecture list for a bit more visibility.

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
