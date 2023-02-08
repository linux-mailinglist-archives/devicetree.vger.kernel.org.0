Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8153C68E9A2
	for <lists+devicetree@lfdr.de>; Wed,  8 Feb 2023 09:15:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229478AbjBHIPi convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Wed, 8 Feb 2023 03:15:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229663AbjBHIPd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Feb 2023 03:15:33 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C4AC3CE33
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 00:15:32 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <jlu@pengutronix.de>)
        id 1pPfc0-0005PR-OE; Wed, 08 Feb 2023 09:15:28 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <jlu@pengutronix.de>)
        id 1pPfby-003TWI-Pi; Wed, 08 Feb 2023 09:15:28 +0100
Received: from localhost ([127.0.0.1])
        by ptz.office.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <jlu@pengutronix.de>)
        id 1pPfby-001nbj-Vg; Wed, 08 Feb 2023 09:15:27 +0100
Message-ID: <db6baf0fe0a98476ada68f4a0a0acb4c642fa04e.camel@pengutronix.de>
Subject: Re: [PATCH] schemas: Add schema for firmware logs
From:   Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
To:     Simon Glass <sjg@chromium.org>
Cc:     Rob Herring <robh@kernel.org>,
        Peter Robinson <pbrobinson@gmail.com>,
        Tom Rini <trini@konsulko.com>,
        U-Boot Mailing List <u-boot@lists.denx.de>,
        devicetree@vger.kernel.org,
        Architecture Mailman List <boot-architecture@lists.linaro.org>
In-Reply-To: <CAPnjgZ0oxE44-LYYtFb6+nyws+bPZYskwz21U3fweQAK0trXJw@mail.gmail.com>
References: <20230204001959.935268-1-sjg@chromium.org>
         <CALeDE9N2KSwA=HMLS9EPFL00UxxUgi=r_M8F7W2tWT6y+dMzeQ@mail.gmail.com>
         <CAPnjgZ297NH1oiRG9iU8=U0dSAnPLQ4WGYF7=+71aUZCYctWTA@mail.gmail.com>
         <CAL_Jsq+mUNeEx=jwc4JF7fGCa7zkOTChoVb5CoMfHaqCi+bYpg@mail.gmail.com>
         <CAPnjgZ3c0Tmtfzgv74vWovme0mVoF3N1hfoCnz61Hyzc-QE8vQ@mail.gmail.com>
         <CAL_JsqLW3GkXtr0oD28XB3MNK36Vjjzb10MhWFh85-MfN2oc3Q@mail.gmail.com>
         <24dba2278350ea222251be80f6aade104c2319ce.camel@pengutronix.de>
         <CAPnjgZ3MU+_=BibC_VmC4FRBre4+43psX0DzJmOBA2okqoVD0w@mail.gmail.com>
         <bc6d46732b36aad3d9da9fc537c0feeb73adaf0a.camel@pengutronix.de>
         <CAPnjgZ0oxE44-LYYtFb6+nyws+bPZYskwz21U3fweQAK0trXJw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
Date:   Wed, 08 Feb 2023 09:14:39 +0100
MIME-Version: 1.0
User-Agent: Evolution 3.46.3 (by Flathub.org) 
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
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

On Tue, 2023-02-07 at 11:39 -0700, Simon Glass wrote:
> Hi Jan,
> 
> On Tue, 7 Feb 2023 at 08:39, Jan Lübbe <jlu@pengutronix.de> wrote:
> > 
> > On Tue, 2023-02-07 at 06:38 -0700, Simon Glass wrote:
> > > Hi Jan,
> > > 
> > > On Tue, 7 Feb 2023 at 04:56, Jan Lübbe <jlu@pengutronix.de> wrote:
> > > 
[snip]
> > > Thanks for the pointer. I had a look at this. How do you deal with
> > > updating a filesystem that might be corrupt? Is that even a good idea,
> > > if the purpose of it is to collect data from a kernel crash?
> > 
> > This uses only the ramoops "backend" in pstore, so no filesystems are involved.
> > If I remember correctly, ramoops in the kernel just discards any data that is
> > too corrupted to process. Barebox should behave the same, as the code was ported
> > from the kernel.
> 
> Yes...actually I found that U-Boot has pstore too, but it does not
> support writing the console into it. I suppose it would be easy
> enough, but it seems that U-Boot's pstore is not as advanced.
> > 

> > > We are working on a firmware 'Transfer List' which is a simple data
> > > structure to communicate through the different firmware phases. Since
> > > U-Boot is the last one, in this case, I suppose it could do the
> > > ramoops thing and add files for each of the firmware phases.
> > 
> > For passing logs "forward" to the next step in the boot chain, this should work
> > as well and could be more explicit than the ramoops console. One benefit would
> > be that keeping the logs from each step separate, right?
> 
> Yes. But we can't use this to pass it to the kernel.
> 

Hmm, because we would need to reserve space for the text memory regions, which
couldn't be used by the kernel later?

> > ramoops has additional mechanisms to deal with the possible corruption caused by
> > the crash or reset cycle, which shouldn't be needed in to "forward" direction.
> 
> But if there is corruption there, what does U-Boot do?
> 
> 1. Clear the ramoops and write its console info (that will be annoying
> for people trying to debug kernel crashes)
> 2. Leave it alone and not write the console info (then it is non-functional)
> 3. Or is it possible to write even when some things are corrupted?

As the console is protected by ECC in blocks, you can have corrupted blocks in
the middle and still continue logging at the end, if you want. The corrupted
block can then either be repaired when reading or need to be skipped.

> > > What about logging support? It would be nice to have a format that
> > > understands logging level, category, filename/function, etc.
> > 
> > ramoops console is just unstructured text, Linux and Barebox just write
> > characters to it. More structure might be nice some cases, but the necessary
> > coordination between different projects could be a high barrier. ;)
> 
> Indeed it is, but that is the point of the binding :-)
> 
> > 
> > Perhaps a simple list of text blocks would be enough, though.
> 
> Do you mean a list of nul-terminated strings? What format are you thinking of?
> > > 

I think the format described in the binding should work well enough (ASCII
lines, with NUL termination). And it's readable on a terminal. :)

> > > > Regards,
> > > > Jan
> > > > 
> > > > > I think any new DT binding is premature and pstore/ramoops was just a
> > > > > suggestion to consider. This needs wider consideration of how to
> > > > > handle all the various (boot) firmware logs. I've added the
> > > > > boot-architecture list for a bit more visibility.
> > > 
> > > If this needs a call, I have not seen one for quite a while. It seems
> > > to get cancelled at the last minute. I would be happy to attend one to
> > > discuss this topic. But if people have ideas here, please weigh in.
> > 
> > Looking at the proposed schema, I'd prefer to drop the boot-phase and project
> > patterns and use the lists as suggestions only. The order of /chosen/logs/log@N
> > should be enough to make sense of those.
> 
> Yes I suppose so, but I would really like to have a clear view of what
> booted and which project it came from. Do you think it is an undue
> burden?
> 

I didn't mean to drop the properties, but to allow free-form text. Not all
firmware stacks use the same phases and not all bootloader project names start
with "^U-Boot|TF-A". :)

I don't think we'll see project name collisions, and the boot-phase name should
be unique with in a project, so free-form should be fine.

> > Also to keep it simple, perhaps support the memory reference only, and drop the
> > in-DTB string?
> 
> Yes, that can work. We can always add it later...copying the text into
> the DT does add overhead so it would be better to avoid it where
> possible.

Agreed.


Regards,
Jan

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
