Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6388C2EC0A5
	for <lists+devicetree@lfdr.de>; Wed,  6 Jan 2021 16:49:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726682AbhAFPsk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jan 2021 10:48:40 -0500
Received: from mail.kernel.org ([198.145.29.99]:43948 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726499AbhAFPsj (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 6 Jan 2021 10:48:39 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 25FF723127
        for <devicetree@vger.kernel.org>; Wed,  6 Jan 2021 15:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1609948079;
        bh=Lrs93xZtK3XAzYKNXnYa18WGPcDCS8MBofDAuWSK3bA=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=lPFE5tiL1TqAPxTX5tu6JoVyE8TfUXd9JxKDYBB7jIjclNWHKISSyUzADc9L7NmTE
         ubRbp/rPaC6HSglY69h9B/s84z62ocG0s0aa1rVln0QMI9UZnuA0t7fwy4XA0CgFid
         B6Y+ZPmCzuBuaT654gSOr8R94oMTdPq4pjCdVhOXGj8iGFVABgnCGTQBYS8ILwFOrf
         0z7pBOyCOHXe56Bp3k8cafirfWjQMSXqKJ0MY3Jpksd9aXQ+N6aDf+CVGIxL6ElkEf
         sKMcyJ5c1OLP+/r9nyAxTxPdRSMpZer4xy/U7kx2/5XVunmCDTVjiDiZq7AcqJMiI4
         leLKv/FgyhUCw==
Received: by mail-ej1-f51.google.com with SMTP id x16so5621098ejj.7
        for <devicetree@vger.kernel.org>; Wed, 06 Jan 2021 07:47:59 -0800 (PST)
X-Gm-Message-State: AOAM531VNqRgbFQ6x4Tf8ZJt3GLSannGQda5fkulnQ0jzhvvmQeJZzdI
        fCxChCe4TKj6VjkcXist2Lf2RdozH+rRLGUQ8w==
X-Google-Smtp-Source: ABdhPJwwKzBAMZBhnO2TzyxpiKVLsiw9Ziumh6YLNiya5PhwnDaUtkMSXJscfPyBLnK4gpohRdtkfjj3uajuSWtFzDg=
X-Received: by 2002:a17:907:2111:: with SMTP id qn17mr3107011ejb.525.1609948077753;
 Wed, 06 Jan 2021 07:47:57 -0800 (PST)
MIME-Version: 1.0
References: <CAL_JsqLCeNVnjgYAHhMEiv79iX552EPC7LGgk7GBrt2JsSYo5Q@mail.gmail.com>
 <20210106010955.578304-1-plr.vincent@gmail.com> <56ad8108c15715d4e948a8921e24c97731d11478.1609894820.git.plr.vincent@gmail.com>
In-Reply-To: <56ad8108c15715d4e948a8921e24c97731d11478.1609894820.git.plr.vincent@gmail.com>
From:   Rob Herring <robh@kernel.org>
Date:   Wed, 6 Jan 2021 08:47:45 -0700
X-Gmail-Original-Message-ID: <CAL_Jsq+vqQukgP+zfx8-Kb4y2Yk0d14Vt=2HJtDBZqtO6JNfRA@mail.gmail.com>
Message-ID: <CAL_Jsq+vqQukgP+zfx8-Kb4y2Yk0d14Vt=2HJtDBZqtO6JNfRA@mail.gmail.com>
Subject: Re: of: Add OF_SYMBOLS
To:     Vincent Pelletier <plr.vincent@gmail.com>
Cc:     Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 5, 2021 at 6:10 PM Vincent Pelletier <plr.vincent@gmail.com> wrote:
>
> Allows telling dtc to emit the __symbols__ section in produced Device Tree
> Blobs, which in turn allows using overlay Device Tree Blobs which reference
> nodes from the base Device Tree using such symbols.
> This does not presume of what will apply the overlay (bootloader, kernel,
> fdtoverlay...).

A global option is not something we're going to accept. It needs to be
per dtb or soc family at least.

IIRC, you can just set DTC_FLAGS on the make command line if you want
to enable symbols globally.

Also, note that Viresh is working on adding overlay support[1].

Rob

[1] https://lore.kernel.org/linux-devicetree/cover.1609844956.git.viresh.kumar@linaro.org/
