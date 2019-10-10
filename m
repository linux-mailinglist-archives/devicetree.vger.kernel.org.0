Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2E182D1D6A
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2019 02:29:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732252AbfJJA3X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Oct 2019 20:29:23 -0400
Received: from mail-qk1-f193.google.com ([209.85.222.193]:45589 "EHLO
        mail-qk1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731542AbfJJA3X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Oct 2019 20:29:23 -0400
Received: by mail-qk1-f193.google.com with SMTP id z67so3948805qkb.12
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2019 17:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=netronome-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:content-transfer-encoding;
        bh=KM17Zz+I9yDyEJy8g6P6xuHBOuiNDSOYxA/dR1gGI6E=;
        b=I2FXmNxCWfd8tVjUwlf9v9WXMDP/MMgA/K1bEpH2bwf6J8EVQZROxDIE0SXiZvHZ25
         skje1Ud55ft/OpqaYf8y4auFzr2/yOQTPVfNsLEs9f5EcoLckM/xUVOOUa5wGTHqfAOv
         F33R/3vgfufNh7PZ+WbnmBRpLhmT0Y1iaQVY+Wn1NOonDGOjD6j/Ph4TaejKdlSDmj/K
         BugdlbrEhe6iPg51rMgGgXj43DA2Oi0KBS30EY0dGAzDJyemqZ4T6zFGMZ0StHHDripC
         Chz/ctN3s1j4bYwzDCnVif8cStbJlBfHq87PcgByi6nMTztC/xLJcRmsZnRCdvWfyRvp
         70/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
         :references:organization:mime-version:content-transfer-encoding;
        bh=KM17Zz+I9yDyEJy8g6P6xuHBOuiNDSOYxA/dR1gGI6E=;
        b=mITmzt83+1dUub4yMqsriscq6NBJ13D6DBd6EqjluwNAsh/ucf5CM9TRCBviGiPZuu
         U8ixe6SiEmU8bJYwlP3Vsmzh1TnpkGuTWpmFBly5COb7ExKebZG1sJJBg8NZ7VmV73gu
         knuI0ZKpsMOVhMfBFX10RTY6/QG558GYx/zV843VnvKmwhJkZ/AiI7ZlUVeZwPsNa4q4
         ycAHyrw5igjnUhkDMKI6ZX5DJHQgJNj4mtdv0SWTPUJqehDXs+rE/nQsrbv3VhlJl9em
         +GPB/vEwyeK2P4Tv2DcwS3Q5DeJL3qs5z22iIH61of27ASnZWR+g1gcUrqhkhTmSl5Tc
         zx7g==
X-Gm-Message-State: APjAAAXoTAIcyGA21K/3hsc3yAXAAIw9ME092cyVcGFWgrzcgXgJIlwx
        TpRdvWeKEG3XBz6mTDXUy+JU4Q==
X-Google-Smtp-Source: APXvYqwxLszV1CO4Y+cHe3rlyRS04aKgmKU7SXExS9KJRtKaEih6sjrCZlHCSBxJ0lSMoVrjQP6/SA==
X-Received: by 2002:a37:c249:: with SMTP id j9mr6920330qkm.164.1570667362065;
        Wed, 09 Oct 2019 17:29:22 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
        by smtp.gmail.com with ESMTPSA id h10sm1913833qtk.18.2019.10.09.17.29.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 17:29:21 -0700 (PDT)
Date:   Wed, 9 Oct 2019 17:29:07 -0700
From:   Jakub Kicinski <jakub.kicinski@netronome.com>
To:     Lars Poeschel <poeschel@lemonage.de>
Cc:     Kate Stewart <kstewart@linuxfoundation.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Jilayne Lovejoy <opensource@jilayne.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
        "David S. Miller" <davem@davemloft.net>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, Steve Winslow <swinslow@gmail.com>,
        "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
        Kees Cook <keescook@chromium.org>,
        Allison Randal <allison@lohutok.net>,
        Johan Hovold <johan@kernel.org>,
        Simon Horman <horms@verge.net.au>
Subject: Re: [PATCH v9 0/7] nfc: pn533: add uart phy driver
Message-ID: <20191009172907.2f0877f4@cakuba.netronome.com>
In-Reply-To: <20191008140544.17112-1-poeschel@lemonage.de>
References: <20191008140544.17112-1-poeschel@lemonage.de>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue,  8 Oct 2019 16:05:37 +0200, Lars Poeschel wrote:
> The purpose of this patch series is to add a uart phy driver to the
> pn533 nfc driver.
> It first changes the dt strings and docs. The dt compatible strings
> need to change, because I would add "pn532-uart" to the already
> existing "pn533-i2c" one. These two are now unified into just
> "pn532". Then the neccessary changes to the pn533 core driver are
> made. Then the uart phy is added.
> As the pn532 chip supports a autopoll, I wanted to use this instead
> of the software poll loop in the pn533 core driver. It is added and
> activated by the last to patches.
> The way to add the autopoll later in seperate patches is chosen, to
> show, that the uart phy driver can also work with the software poll
> loop, if someone needs that for some reason.
> This patchset is already rebased on Johans "NFC: pn533: fix
> use-after-free and memleaks" patch
> https://lore.kernel.org/netdev/20191007164059.5927-1-johan@kernel.org/
> as they would conflict.
> If for some reason Johans patch will not get merged, I can of course
> provide the patchset without depending on this patch.

The memleak patch was a fix and it's on its way to the current 5.4-rc
releases - therefore it was merged into the net tree. Your set adds
support for a new bus, and will go into the net-next tree.

It'd be best if you reposted once the net tree was merged into the
net-next tree (which usually happens every week or two). If you'd
rather not wait you need to rebase on top of the current net-next tree,
and maintainers will handle the conflicts.
