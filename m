Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8E72282417
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2019 19:39:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726779AbfHERjK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Aug 2019 13:39:10 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:33698 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726559AbfHERjJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Aug 2019 13:39:09 -0400
Received: by mail-wr1-f67.google.com with SMTP id n9so85365702wru.0
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2019 10:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gimpelevich-san-francisco-ca-us.20150623.gappssmtp.com; s=20150623;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SbKYdZL8ZVEvmWm0eENaSmqqs1tq6sGzAqPP5FOR9RQ=;
        b=taXJthtx1hxolSp5iAkUAk7w+mlPSOeh9pHdjr7k8A9FLGTQ5qjlfwqeXcZa68RHyg
         15YSjW9sNX5R6O58mDUjvVNHA4fxIJjhFEtpT9Qti44DTxZLY8WMG0jEpkorQpPbwHX1
         UO+kddk9zl/nXP7bMhwR97M1QvQr3XtfhDb92Os8ozMeTRocwuxZGvQ3Ow25IMd0eWVg
         hxiAHbUwQOrLklDcJvgns42Wc0YbyAtUbdLAgsZqVydhlufsDXBXNDOQJfTmxvP4aa3O
         EiNuy3Epd48wq+CWR+QMYTlXFZkRMIDQrOxJXkzrXbEGlO39AfITUSn1BIJT5g4q/syk
         tBHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SbKYdZL8ZVEvmWm0eENaSmqqs1tq6sGzAqPP5FOR9RQ=;
        b=h8aiF1qaKEANYLJI5N/qVpUFNP0b/c5ALYxQyZh204wCA0Gt6J1Ic/IbzC9dX/TgDj
         UxiTwcXKXiWT/lJwnK5Pe71R0IRMyUBNGbZgBs0BxuEe84/j3EqDAiDF+f2X78TLp43Z
         zKGXvWLJnYWI5KpWR3oE7gznz8iQsBUklqEzzVGG0MWS0LCwneBo/RP0ZXKuPVNtZzfL
         Cl/POUy2zvF6YGAEJcIhUAIac4/ouUFZpf60oDEY3VjRfm+adC/VyU+A9dYLgwBzjUwV
         72TApuyhhhRD2hkPiNJyIUgM2vm2HGMw0nkcWoaJyNnM2wGBaO3nC/NMSnQqTY/ap6yZ
         WYDg==
X-Gm-Message-State: APjAAAU2nzVP+iAzhMrVUn7FodrUCA2sbRs1pn2Uzk13MoAyQ//b3xp4
        U54OdmPXfOLOco3Ea/vIy+HerZ7TbVQ=
X-Google-Smtp-Source: APXvYqwlC+ROlYEnqLxYJVMm/suxI/J/EKLZlS3vZvPoUagnPAsPJz04i+sjTesjgdTamIHQrqJ/fA==
X-Received: by 2002:a5d:46d1:: with SMTP id g17mr108734271wrs.160.1565026747311;
        Mon, 05 Aug 2019 10:39:07 -0700 (PDT)
Received: from [192.168.72.202] (157-131-153-118.fiber.dynamic.sonic.net. [157.131.153.118])
        by smtp.gmail.com with ESMTPSA id d10sm105143452wro.18.2019.08.05.10.39.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Aug 2019 10:39:06 -0700 (PDT)
Message-ID: <1565026743.10475.24.camel@chimera>
Subject: Re: [PATCH v2] of/fdt: implement a "merge-cmdline" property
From:   Daniel Gimpelevich <daniel@gimpelevich.san-francisco.ca.us>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, Paul Burton <paul.burton@mips.com>
Date:   Mon, 05 Aug 2019 10:39:03 -0700
In-Reply-To: <CAL_JsqLobsATYbKR0Rx8kpS3i+hHqsqibYn9h5Xi1T=DVwRF1g@mail.gmail.com>
References: <1565020400-25679-1-git-send-email-daniel@gimpelevich.san-francisco.ca.us>
         <CAL_JsqLobsATYbKR0Rx8kpS3i+hHqsqibYn9h5Xi1T=DVwRF1g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.10.4-0ubuntu2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 2019-08-05 at 10:29 -0600, Rob Herring wrote:
> On Mon, Aug 5, 2019 at 9:53 AM Daniel Gimpelevich
> <daniel@gimpelevich.san-francisco.ca.us> wrote:
> >
> > Currently, "bootargs" supplied via the "chosen" node can be used only to
> > supply a kernel command line as a whole. No mechanism exists in DT to add
> > bootargs to the existing command line instead. This is needed in order to
> > avoid having to update the bootloader or default bootloader config when
> > upgrading to a DTB and kernel pair that requires bootargs not previously
> > needed.
> 
> The DTB and kernel are not a pair. Or at least they shouldn't be. If
> anything, the bootloader and DTB are a pair as those are the h/w
> specific parts. If the DTB and kernel are a pair, then anything you
> want to put into DTB can just be in the kernel.

They would only be a pair in the sense that DTB changes using newer
bindings would also require a newer kernel.

> There's been some
> attempts to rework the command line handling to be common and support
> prepending and appending which could be useful here.

Sounds good. Can you reference any commit hash for this?

> > One example use case is that OpenWrt currently supports four ARM devices by
> > means of locally applying the previously rejected edition of this patch. So
> > far, the patch has been used in production only on ARM, but architecture is
> > not a distinction in the design.
> 
> Other distros support dozens of boards, so why haven't they ever
> needed such a change?

IMHO, each of those four boards could be supported in some other way.
That said, some other devices have bootloaders implementing dual boot
with fallback on failure, and the kernel should always have access to
any bootarg that reflects which one is being booted.

> > On MIPS, Commit 951d223 ("MIPS: Fix CONFIG_CMDLINE handling") currently
> > prevents support of such a mechanism, so I am including a workaround, in
> > anticipation of upcoming changes.
> 
> Like I said on irc, mixing this with the mess that is MIPS
> bootloader-kernel interface generally and command line handling
> specifically is not a path to upstream.

The DT proposal can be separated from the MIPS mess.

> This is worse than the original proposal because 'merge' is not clear
> what it does compared to 'append' and how does 'cmdline' relate to
> 'bootargs'.

Can there be a different property name that would be better instead of
worse?

