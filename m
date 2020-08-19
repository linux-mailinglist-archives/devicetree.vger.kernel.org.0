Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2EDE4249363
	for <lists+devicetree@lfdr.de>; Wed, 19 Aug 2020 05:21:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726605AbgHSDVX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Aug 2020 23:21:23 -0400
Received: from pb-smtp1.pobox.com ([64.147.108.70]:63508 "EHLO
        pb-smtp1.pobox.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727869AbgHSDVX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Aug 2020 23:21:23 -0400
Received: from pb-smtp1.pobox.com (unknown [127.0.0.1])
        by pb-smtp1.pobox.com (Postfix) with ESMTP id 647E67E099;
        Tue, 18 Aug 2020 23:21:21 -0400 (EDT)
        (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=date:from:to
        :cc:subject:in-reply-to:message-id:references:mime-version
        :content-type; s=sasl; bh=seX3cwT57k3X+Wr6pk1P7Eg3Gt4=; b=EpmwOD
        8M1SpeJ/phxlJIaaLei3v2c/DuyrmFVlX2AlIHxNWIKebQAlQX7ySQZXCQCbw0QR
        1ADB6uF+VDs+bBSdUAMQ2bEsbviYYwvc79Md83RPSERMnxy9iY+XlH1jiAPjO/In
        fEu9fsOknncm6seL5h2f8hK+V2Lvgq/IxNxG8=
Received: from pb-smtp1.nyi.icgroup.com (unknown [127.0.0.1])
        by pb-smtp1.pobox.com (Postfix) with ESMTP id 5B8667E097;
        Tue, 18 Aug 2020 23:21:21 -0400 (EDT)
        (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=fluxnic.net;
 h=date:from:to:cc:subject:in-reply-to:message-id:references:mime-version:content-type; s=2016-12.pbsmtp; bh=meibzskveTDwdkGhaPA5kEwFNnfN54+dx3HzO8+5ngg=; b=S7nD50qytkVXXFVBJ8H3sUSSCnmdk8IoMqlV3+UO1wj86GlMNkPy7L5jjgzRt8kx6rkhAto6Spk0+q597FaXfUj3n92scH2V2vtYj3Org3rrcfvQRvP4v4mkxqjeDiU/qFBeJb7z+ZTLR6AIipM5zeZlQsQsWALtU/0sy8cCNHQ=
Received: from yoda.home (unknown [24.203.50.76])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by pb-smtp1.pobox.com (Postfix) with ESMTPSA id 9D90A7E095;
        Tue, 18 Aug 2020 23:21:20 -0400 (EDT)
        (envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
        by yoda.home (Postfix) with ESMTPSA id AA9F32DA0182;
        Tue, 18 Aug 2020 23:21:19 -0400 (EDT)
Date:   Tue, 18 Aug 2020 23:21:19 -0400 (EDT)
From:   Nicolas Pitre <nico@fluxnic.net>
To:     Boris Brezillon <boris.brezillon@collabora.com>,
        linux-i3c@lists.infradead.org, devicetree@vger.kernel.org
cc:     Rob Herring <robh+dt@kernel.org>,
        Laura Nixon <laura.nixon@team.mipi.org>,
        Robert Gough <robert.gough@intel.com>,
        Matthew Schnoor <matthew.schnoor@intel.com>
Subject: Re: [PATCH v2 1/2] MIPI I3c HCI (Host Controller Interface) driver
In-Reply-To: <20200819031723.1398378-1-nico@fluxnic.net>
Message-ID: <nycvar.YSQ.7.78.906.2008182319060.1479@knanqh.ubzr>
References: <20200819031723.1398378-1-nico@fluxnic.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Pobox-Relay-ID: 0D56F382-E1CB-11EA-B686-01D9BED8090B-78420484!pb-smtp1.pobox.com
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Of course subject prefix should have been "[PATCH v2 0/2]" here.

On Tue, 18 Aug 2020, Nicolas Pitre wrote:

> The MIPI I3C HCI (Host Controller Interface) specification defines
> a common software driver interface to support compliant MIPI I3C
> host controller hardware implementations from multiple vendors. This
> is the initial Linux driver implementing support for this specification.
> 
> Due to limitations in the I3C subsystem, this driver doesn't implement
> everything the spec specifies. For example, scheduled commands,
> auto-commands and NCM are major features not yet supported.
> 
> There are different revisions of the spec: v1.0, v1.1 (to be released
> imminently), and 2.0 (still under active development). All of them are
> supported with varying degree due to the above. And of course v2 support
> is likely to change as the spec is finalized, but it is included now
> in its preliminary form as all I have for testing at the moment is based
> on an early v2 draft.
> 
> Even v1.0 hardware is still scarse so it hasn't been tested yet. As more
> hardware becomes available for testing it is expected that adjustments
> will be needed on top of this submission. But it is best to have the
> current code merged earlier so it gains better exposure for future
> contributions.
> 
> Feedback appreciated.
> 
> Changes from v1:
> 
> - moved DT binding to schema format (Rob)
> - fix sparse warnings (kernel test robot)
> - fix build warnings on 32-bit targets (kernel test robot)
> - avoid PIO_OFFSET symbol conflict (kernel test robot)
> - minor cosmetic changes
> 
> diffstat:
> 
>  .../devicetree/bindings/i3c/mipi-i3c-hci.yaml   |  41 +
>  drivers/i3c/master/Kconfig                      |  13 +
>  drivers/i3c/master/Makefile                     |   1 +
>  drivers/i3c/master/mipi-i3c-hci/Makefile        |   9 +
>  drivers/i3c/master/mipi-i3c-hci/cmd.h           | 106 ++
>  drivers/i3c/master/mipi-i3c-hci/cmd_v1.c        | 362 +++++++
>  drivers/i3c/master/mipi-i3c-hci/cmd_v2.c        | 280 +++++
>  drivers/i3c/master/mipi-i3c-hci/core.c          | 801 +++++++++++++++
>  drivers/i3c/master/mipi-i3c-hci/dat.h           |  28 +
>  drivers/i3c/master/mipi-i3c-hci/dat_v1.c        | 170 ++++
>  drivers/i3c/master/mipi-i3c-hci/dct.h           |  16 +
>  drivers/i3c/master/mipi-i3c-hci/dct_v1.c        |  36 +
>  drivers/i3c/master/mipi-i3c-hci/debug.c         |  79 ++
>  drivers/i3c/master/mipi-i3c-hci/debug.h         |  17 +
>  drivers/i3c/master/mipi-i3c-hci/dma.c           | 781 ++++++++++++++
>  drivers/i3c/master/mipi-i3c-hci/ext_caps.c      | 249 +++++
>  drivers/i3c/master/mipi-i3c-hci/ext_caps.h      |  19 +
>  drivers/i3c/master/mipi-i3c-hci/hci.h           | 150 +++
>  drivers/i3c/master/mipi-i3c-hci/ibi.h           |  42 +
>  drivers/i3c/master/mipi-i3c-hci/pio.c           | 961 ++++++++++++++++++
>  20 files changed, 4161 insertions(+)
> 
> 
> 
