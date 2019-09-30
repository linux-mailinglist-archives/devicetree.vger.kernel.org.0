Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C56D5C28C5
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2019 23:25:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727720AbfI3VZy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Sep 2019 17:25:54 -0400
Received: from mail.kernel.org ([198.145.29.99]:49704 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727702AbfI3VZx (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 30 Sep 2019 17:25:53 -0400
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 00A83224A0
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2019 17:46:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1569865605;
        bh=OctSNomG2OJ1c5HBaNhDE3kyW877OO9pLy12klDrXiA=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=q/0ji3EJU3lYpiVowGHsk4yUieDMJFIUKb5X++v9x7jMo38/M6Pa+6XYZueaEDrnX
         qJ+xZf2rC7B8J8hIaYIRlMwR4mCDYZPIaM5ltKiBWCVddq9UD/PWq5XSdnR75VR0C+
         /u5QBQNxvDZVIYsMJm94PIvjHs1BRzy4q/mNspMo=
Received: by mail-qt1-f171.google.com with SMTP id u40so18102255qth.11
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2019 10:46:44 -0700 (PDT)
X-Gm-Message-State: APjAAAW1qEt6xvqfTXxz/2SiAO13zt2CJjaRdiEnXprpSl8GqbSQqo3e
        uxz3jVkP6G+D7aMqMu2MoTpclV1pTTR3A5yRBw==
X-Google-Smtp-Source: APXvYqx0ggq9eeAU9wWza/JPeFO8jdb8kehul8w7xQz3yw7kXfvNNCLrdp04iqHcwujnu+1ANt/coLFpFImGnTT+0QU=
X-Received: by 2002:ac8:6982:: with SMTP id o2mr26027474qtq.143.1569865604167;
 Mon, 30 Sep 2019 10:46:44 -0700 (PDT)
MIME-Version: 1.0
References: <88dc6386929b3dcd7a65ba8063628c62b66b330c.1569856049.git.robin.murphy@arm.com>
In-Reply-To: <88dc6386929b3dcd7a65ba8063628c62b66b330c.1569856049.git.robin.murphy@arm.com>
From:   Rob Herring <robh@kernel.org>
Date:   Mon, 30 Sep 2019 12:46:33 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKUP6qG6PVL47RQ5A5OcBhpdOA_0VL1YeYDuyVSVcRqCQ@mail.gmail.com>
Message-ID: <CAL_JsqKUP6qG6PVL47RQ5A5OcBhpdOA_0VL1YeYDuyVSVcRqCQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: juno: add GPU subsystem
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     Tomeu Vizoso <tomeu.vizoso@collabora.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>, devicetree@vger.kernel.org,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Steven Price <steven.price@arm.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 30, 2019 at 10:25 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> Since we now have bindings for Mali Midgard GPUs, let's use them to
> describe Juno's GPU subsystem, if only because we can. Juno sports a
> Mali-T624 integrated behind an MMU-400 (as a gesture towards
> virtualisation), in their own dedicated power domain with DVFS
> controlled by the SCP.
>
> CC: Liviu Dudau <liviu.dudau@arm.com>
> CC: Sudeep Holla <sudeep.holla@arm.com>
> CC: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  .../bindings/gpu/arm,mali-midgard.yaml        |  5 +++-
>  arch/arm64/boot/dts/arm/juno-base.dtsi        | 27 +++++++++++++++++++
>  2 files changed, 31 insertions(+), 1 deletion(-)

Reviewed-by: Rob Herring <robh@kernel.org>
