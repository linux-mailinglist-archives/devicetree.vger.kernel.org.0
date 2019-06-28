Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B7FCD59861
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2019 12:28:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726524AbfF1K2Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jun 2019 06:28:24 -0400
Received: from mail-lf1-f66.google.com ([209.85.167.66]:42901 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726502AbfF1K2Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jun 2019 06:28:24 -0400
Received: by mail-lf1-f66.google.com with SMTP id x144so3621841lfa.9
        for <devicetree@vger.kernel.org>; Fri, 28 Jun 2019 03:28:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=uNia+wXcww8hJhPTXh8yCLt0TR3O7aaW7PyNXd3ivCM=;
        b=IKVorRDRsqKEUM0hcVl2t5iU7B8+N4xQ56gnE/B0TdoxPE0f06DGV1Th3bnGVPq+1i
         qlOJbbrdlJWGYB2HGyV/JbdKNdMgZH9cyHeWFO9XiY5LT4+XFkdj4mO9fAtZF/PIRgRL
         QsOfuUs4WXfJQ9yaUWnoReSSMZtIgKJlc1k7j6J/e3aNmQoK5MC7YHX0WpUu/l6naqlC
         UFNH2eoSon5kdtoLPbZLbBRvk0s7tiEQVtwKkuuyAUuftFUTUMqeSmFrOXbLfmHfotyX
         k3wxCIRXYcHy6YjAhtcIkgNwuzbYoSWXsk/UZx3BWa6ZCuJupTnj5F5XXV3J4GKI/RjQ
         emoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=uNia+wXcww8hJhPTXh8yCLt0TR3O7aaW7PyNXd3ivCM=;
        b=m36CoztUPNFyyyGzV64greY01fL6XGxuv0HqKDITeuTVkYPG7ZnxmfuvgL+aIXdvTd
         38LaEV/DcUoFq7kkhGke5u1aKcjQhMYnj8NBKEWrpmeTo6/wS8yQuqFPv0RKi1P7mwoB
         jXE0ztH3dP+K8FiZg8GDidK191z/IfpklqGX4hcKZf97OiSP0S/LG99lwGgLrLFS0lvm
         3itQq9294dvyAkaftv91YvGwU8/Y/e+ePRg4e1hicdXsfcY74HsX26edW7DEfjACA2SS
         Og9kBEE3Xih7IGf+Sq4Zdyt6VNRpOKIZ/45JcuSDmSM93Gr9HhGTd9H0dLgtue5tQlfY
         qOYA==
X-Gm-Message-State: APjAAAXfTTMn5Vq4FOSt+e2KHr6nj8596Hywa+MhMhmtQI9aKvmMVfpT
        6MfH7YqvDany5U41rnQtQEYHbwJTmCWadfLv4kFaVg==
X-Google-Smtp-Source: APXvYqyTSELuCwdqtXQ6xfh9OQghPYDZrodDsVKXcdIIzGQolnUkGedUB3xgSLIxsiO7L8/FxlqG97FHQGkNNX4PzBg=
X-Received: by 2002:a19:6a01:: with SMTP id u1mr4549883lfu.141.1561717702644;
 Fri, 28 Jun 2019 03:28:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190621111352.22976-1-pawel.mikolaj.chmiel@gmail.com>
In-Reply-To: <20190621111352.22976-1-pawel.mikolaj.chmiel@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 28 Jun 2019 11:28:11 +0100
Message-ID: <CACRpkdYD7Z7XX9wXFtBehJG_4NCt=m_MNsR5cESPRnO3tomKmQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] extcon: Add fsa9480 extcon driver
To:     =?UTF-8?Q?Pawe=C5=82_Chmiel?= <pawel.mikolaj.chmiel@gmail.com>,
        Greg KH <gregkh@linuxfoundation.org>,
        Donggeun Kim <dg77.kim@samsung.com>
Cc:     MyungJoo Ham <myungjoo.ham@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 21, 2019 at 12:14 PM Pawe=C5=82 Chmiel
<pawel.mikolaj.chmiel@gmail.com> wrote:

> This small patchset adds support for Fairchild Semiconductor FSA9480
> microUSB switch.
>
> It has been tested on Samsung Galaxy S and Samsung Fascinate 4G,
> but it can be found also on other Samsung Aries (s5pv210) based devices.
>
> Tomasz Figa (2):
>   dt-bindings: extcon: Add support for fsa9480 switch
>   extcon: Add fsa9480 extcon driver

This is surely an important driver since almost all elder Samsung
mobiles use this kind of switch. So
Acked-by: Linus Walleij <linus.walleij@linaro.org>

This driver I see is already sent to Greg for inclusion in the next kernel.
I just wonder if you guys are even aware of this driver for the same
hardware added by Donggeun Kim in 2011:
drivers/misc/fsa9480.c

That said I am all for pulling in this new driver because it is surely
better and supports device tree.

But can we please also send Greg a patch to delete the old driver
so we don't have two of them now?

The old driver have no in-tree users so it can be deleted without
side effects. Out-of-tree users can certainly adapt to the new
extcon driver.

If you want I can send a deletion patch for the misc driver?

Yours,
Linus Walleij
