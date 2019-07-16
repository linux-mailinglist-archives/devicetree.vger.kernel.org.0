Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5BBD46AFC1
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2019 21:26:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728137AbfGPT02 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Jul 2019 15:26:28 -0400
Received: from mail-lj1-f195.google.com ([209.85.208.195]:44437 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726213AbfGPT02 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Jul 2019 15:26:28 -0400
Received: by mail-lj1-f195.google.com with SMTP id k18so21106112ljc.11
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2019 12:26:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dbAoe9hwIKJ4M7ymTbvXmotoCz6oA9QthrbOb4BXzF8=;
        b=HaySDeWx9KzxLRUocYtBpeBUusKF6mSrKQLFyEQaQMby9oxdJzyU+ZKl8wbOVfURIe
         UC4t5C/+dydJ4dnY/hWi62eieun5UCxZL4bc+oECqxMj0E3Q5B07iUnWsCwDTWs5Lk9e
         7R2JT9OFMnkWRXmHU16cOtAbPpYvs+gmSm9bqC4IY37GmpfMc4z3u8Kmh12zTQQnE9sw
         bwQ2NCyVwd2DfyQmcPlFFoMMXKR6twM9+7LuHJkvGl358NVXZchhQVfm5QprxKUiSi62
         uVI+k4WZyOZC1oDZQa4Em2EnD57IwERKOGaeJV3FxR+dT7UszqbEXK1JV9YOtyuplJOq
         2MKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dbAoe9hwIKJ4M7ymTbvXmotoCz6oA9QthrbOb4BXzF8=;
        b=ZtywdvHM9YqRyFbveiu1dlzVwu6sXMmK8zlBA2EwmI6hBH1Oj07kdnM14uL+jI1ZH4
         QdYf07M/52H9o1n2nWL5sLYGEd28lSxRK6Uu2jMz9aPGUpDBgL/xUf31oK3QbT83Xfvn
         s44OMQlxX6m1ruAJ3I6ybFaU/ihyvv72JJA3EKFAIzWra8D1oKsKmojXvqP5DYvfCxNm
         ppL0hPgjNXgTP+9E+ngQwTfs9TERp04tbv4FIqNohawSRFNiuFUJY98UKG5iDezlMPiC
         40WV6X2AP19qt947sjcYjdLWfeIDtV6yC7TOjonyEp8m7EanHZqEa2GuCw7kVv77ljk9
         iiGQ==
X-Gm-Message-State: APjAAAUi9rIPLaNwRFA49GkFVL/O6gFcBkj37S5Y/0tUW6rx3U0SgPt/
        Vi7r69r6Acfo4nSCUi1E04KEf33ImFrkHz0pbvI=
X-Google-Smtp-Source: APXvYqxSIlAjQmTokcZ+T6GNymk/pwOEDmsMPM1Pfptxz6wUfTUNozrJZvvn9We17XXVQfGllb2pPyiNqLwv67CvMAk=
X-Received: by 2002:a2e:2c07:: with SMTP id s7mr18711250ljs.44.1563305186596;
 Tue, 16 Jul 2019 12:26:26 -0700 (PDT)
MIME-Version: 1.0
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com> <1563290089-11085-3-git-send-email-aisheng.dong@nxp.com>
In-Reply-To: <1563290089-11085-3-git-send-email-aisheng.dong@nxp.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Tue, 16 Jul 2019 16:26:23 -0300
Message-ID: <CAOMZO5CMM94rAOryvfmHpuAsJnCRj-98kX3rfiZSn5EZt_c0kA@mail.gmail.com>
Subject: Re: [PATCH v2 02/15] arm64: dts: imx8qxp: move scu pd node before scu
 clock node
To:     Dong Aisheng <aisheng.dong@nxp.com>
Cc:     "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Dong Aisheng <dongas86@gmail.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <fabio.estevam@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
        Mark Rutland <mark.rutland@arm.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 16, 2019 at 12:37 PM Dong Aisheng <aisheng.dong@nxp.com> wrote:
>
> SCU clock depends on SCU Power domain. So let's move scu pd node
> before scu clock to make it probe earlier.

This looks like a fragile solution. Shouldn't this be handled via
probe deferring?
