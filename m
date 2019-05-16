Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 090F720753
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 14:54:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727182AbfEPMyB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 08:54:01 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:41117 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726902AbfEPMyB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 May 2019 08:54:01 -0400
Received: by mail-lj1-f194.google.com with SMTP id k8so2972659lja.8
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 05:54:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=is+vcG0UlA2yzmtL4LYYh2ozUEoTSqklk60p4mnMQ04=;
        b=MFfg5EGV3WlcVRL7t42mRGuevg4Dw6jHWVPGT2WaA9U+imkG3qz/ByB3JShhUb2NxO
         IAAzMFCyoy1azLf5+Q4ThwNIqn4V0/PTTLPDCOt+U7xefvG3qkOt5zG0uB9cx/TNHXE6
         2+ED85Si4JXqF+cr/iQMckJ2lj+Pl65K1fgbeFkbbY1jSDmv1lN3C2eF4DTCsBjz/Zcb
         18XkqFVHEYMISKb44tLwMqYKXX9k0mqKfX0i8c6MUWXkuRuMDiTmBFpo8tV0Vx9Wtcb5
         z9tSgHWa/o0DMzx/TanVLPgRTSHg6HXiBkz+H2H7PQT21r5iYkCS8Z79gfZowJCaFo/z
         EWyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=is+vcG0UlA2yzmtL4LYYh2ozUEoTSqklk60p4mnMQ04=;
        b=jyqlnTRP3nfvG7xsuIsUtyoAJjWyl09chxvVn4sCS0SVht/pZ709omXEUjkhEC6oPE
         1T94vuY6fkvdHs0sZGzf6TxzIVkQGVzVxsOhPKpIm0xSdstjo/ioIE8WFzZcyyICQls8
         bp7S4GFctlCioF/nC2v7DjJiNZCpqKIch9fsBTOR2EwV2FbZZzRfhbU7LVVnfheUNmqy
         m51ackhVjBqGifwE3eJEwvLolqwPiQyUziZZvZakNgWx1cyoxoMCVMuuTFkjnkJScnxA
         vdOcZ2ko2T+i6xFxkZyR9pQTKO2YDUpOmmKZ9AtC9qsCRf9dWli8sshQjZM5i3vJsB2i
         KjAA==
X-Gm-Message-State: APjAAAVLOcBwl5swpGKSz5poZekey6SCEcY27HtYelQdEvzifVQzuy+G
        fbBWXwZ8UnFrhOUpl07CWQzv6gcmhbt+DCCx6xZOOQ==
X-Google-Smtp-Source: APXvYqwLJEUqsa8XfBzAuJKLBahg71QpFWWEysf/pHtQkxsQuNW8z5xmBuXwRIog/cBAbIfM7m/qozW3wQZmt//QoVw=
X-Received: by 2002:a2e:9a4f:: with SMTP id k15mr19599643ljj.159.1558011239510;
 Thu, 16 May 2019 05:53:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190508021902.10358-1-leo.yan@linaro.org> <20190508021902.10358-5-leo.yan@linaro.org>
In-Reply-To: <20190508021902.10358-5-leo.yan@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 16 May 2019 14:53:48 +0200
Message-ID: <CACRpkda4aEfgW6e7EfqC=FE_=QzKi5UTDLLzHEryQ6kpcKYzVg@mail.gmail.com>
Subject: Re: [PATCH v2 04/11] ARM: dts: ste: Update coresight DT bindings
To:     Leo Yan <leo.yan@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Mike Leach <mike.leach@linaro.org>,
        Wei Xu <xuwei5@hisilicon.com>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Andy Gross <agross@kernel.org>,
        David Brown <david.brown@linaro.org>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Orson Zhai <orsonzhai@gmail.com>,
        Baolin Wang <baolin.wang@linaro.org>,
        Chunyan Zhang <zhang.lyra@gmail.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        MSM <linux-arm-msm@vger.kernel.org>,
        Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 8, 2019 at 4:20 AM Leo Yan <leo.yan@linaro.org> wrote:

> CoreSight DT bindings have been updated, thus the old compatible strings
> are obsolete and the drivers will report warning if DTS uses these
> obsolete strings.
>
> This patch switches to the new bindings for CoreSight dynamic funnel and
> static replicator, so can dismiss warning during initialisation.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Signed-off-by: Leo Yan <leo.yan@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Will I need to carry this patch or will you send it to ARM SoC?

Yours,
Linus Walleij
