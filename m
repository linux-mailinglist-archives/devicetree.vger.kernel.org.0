Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8DF2E44669D
	for <lists+devicetree@lfdr.de>; Fri,  5 Nov 2021 17:00:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233765AbhKEQC4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Nov 2021 12:02:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233760AbhKEQCz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Nov 2021 12:02:55 -0400
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B8CFC061208
        for <devicetree@vger.kernel.org>; Fri,  5 Nov 2021 09:00:16 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id u17so11325821plg.9
        for <devicetree@vger.kernel.org>; Fri, 05 Nov 2021 09:00:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0q0PbXxyGkpQf/H/RJhsu5iylKKlnhe5mKg7WkVvJy4=;
        b=o8eYMhHyMXOnUZYR0jwoCSnpbLURTgwXxB3rv9b8bREEUZJYXWDNMk9Bre+wtobT4N
         CdVJa6I0XhKPhrWfCaBk9oq9IZ1ClU2ztH4B19hUwR3i4tGB8BLfLGe5qhATNbzP+Z+l
         h7rbCsrCem7VmT2dNJ4k+7TUetDUSRtQxZa7svb9MirdDtKKxRArim0NRPY4DS/QR2BS
         NRLDyIaHJrZDbLi/pbQ/VJc4jypfjor+FwWAaUwqI/4XThMioUW0AT+iUaNbyPqrg67x
         hIqIly2v3WuZcWtvs5LkUgtpmavliZB8aUxCjadmHRB2quNcpSzKVoDLJIPDvXhf/gXG
         fsNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0q0PbXxyGkpQf/H/RJhsu5iylKKlnhe5mKg7WkVvJy4=;
        b=tGvG4nE6ITQWsJMi4MlCuAMWzRt08cLUeTS/TlE6xWa3IsIPob5z0+lg4b1t5pI8BC
         daj6l1L9CTMfi9nQWIUrfJ2h1u9PHOfLlHF7w7haI+t8infw4vvH8C94jiszUrk0dDjD
         JBMdnqg+SwCfSedoSqkeqdeo8aV16YS14w+ur4DT9IGNFTtKB2jIIXQqp7kIFXGVMCFm
         7m6286LLESgnxU9QZvhbKcydVJO8KDCn1FnOHF0ekDmYK7zmJ29HUwloYYSqcyAAhxtO
         j8NVArzkC2yM9YnznXmowSjI8zKknFZIM62kTlRS5yypevoWxOYw4xm/u4/px1hbOQ6B
         LJ9Q==
X-Gm-Message-State: AOAM531Aa31ZCmsRjJ1j+LEgZQ+WAlYDJ1JEsFKJfkCHIasT3QsE3Nic
        1XW+SIIZkGBmAH7n+zQCJRKS9ZoCevn0f+URBgjBJA==
X-Google-Smtp-Source: ABdhPJyVclGSPb40QIO1EB6ouONHYkOT6RnFDfjRKow9PAxjGmlGyIQZu71kdQrtQD6uU0RjmH7xH6oDOSoyo2Y0A3o=
X-Received: by 2002:a17:90b:17cc:: with SMTP id me12mr11318480pjb.179.1636128015108;
 Fri, 05 Nov 2021 09:00:15 -0700 (PDT)
MIME-Version: 1.0
References: <20211023203457.1217821-1-aford173@gmail.com> <20211023203457.1217821-6-aford173@gmail.com>
 <YXn9aibI1C/+eP5L@pendragon.ideasonboard.com>
In-Reply-To: <YXn9aibI1C/+eP5L@pendragon.ideasonboard.com>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Fri, 5 Nov 2021 09:00:03 -0700
Message-ID: <CAJ+vNU3-81Jr_uWcpyCzMECD4ZS7TbDP6ugi02mEf3JMNvRp5Q@mail.gmail.com>
Subject: Re: [RFC V2 5/5] arm64: dts: imx8mm-evk: Enable OV5640 Camera
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Adam Ford <aford173@gmail.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        linux-media <linux-media@vger.kernel.org>,
        cstevens@beaconembedded.com,
        Adam Ford-BE <aford@beaconembedded.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 27, 2021 at 6:34 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Adam,
>
> Thank you for the patch.
>
> On Sat, Oct 23, 2021 at 03:34:56PM -0500, Adam Ford wrote:
> > The schematic shows support for a camera interface, and the NXP
> > kernel shows it is an OV5640.
>
> The camera is an external module though. Should this be a DT overlay ?
>

Laurent,

I wanted to ask you about your comment here. I would agree that for
something like the OV5640 on the imx8mm-evk which is an add-in board
via a connector should be a dt overlay. I'm investigating using
overlays for features like this on my boards vs creating hierarchical
dts files and I see that the kernel allows building fragments with
'/plugin/' but I don't see any such overlays in the kernel tree
currently. Would overlay/fragments be accepted? Are there any examples
in the kernel tree already that I'm missing?

Best regards,

Tim
