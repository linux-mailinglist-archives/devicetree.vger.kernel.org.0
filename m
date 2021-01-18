Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6DE6A2FAD51
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 23:30:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727013AbhARWaE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jan 2021 17:30:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726354AbhARWaD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jan 2021 17:30:03 -0500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A058FC061574
        for <devicetree@vger.kernel.org>; Mon, 18 Jan 2021 14:29:22 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id u21so19864335lja.0
        for <devicetree@vger.kernel.org>; Mon, 18 Jan 2021 14:29:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=bUoyIwualxmCOZc7fLaBimHoQ2673QVgFv+KTluFbL0=;
        b=Y1xzqd2qTqin1Srx9hlZn6IdHLtP5a9Gdnopbgx8Nx/aCHDdkptz0KPQ5niknZeX6W
         TaFNLy72Z09WgagzvTcm0pDCGEDI5bvTYUDrkUI72babUOtYIv7zTPLwi5dPkf7ph7g3
         w/10z85fs63jQ2mLvqQKJTm454mOM+YjBEvLyFIuPjNS6rDSqjVvH6mJ3QFH77IoX2pz
         1+ep7j9nFvfeIRhDiM/+54XUizWWkzCORpG5hdZkgUMIuLJoOUKG3JByBgTI68o+Vwi0
         Rqh3vbJo7nleHFzyOoVOFXH31Tu9SjGH++HspYfZrg6qWBsnGr3lN76lqoHKEUWcYNp5
         m51g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=bUoyIwualxmCOZc7fLaBimHoQ2673QVgFv+KTluFbL0=;
        b=e7RtedkOxuT/P5NfZKjNyhXlHduTqV5bp9d3micykoPulSBV4dkDxC9+pvkSo9HTld
         e3AemTSVILwelps1UFqKrejzA03QCyU57abzO+SQ9Ga07KwXsbZQJpdy3TXvJg0CLahh
         RC+AW1gz+FJB6apYETY1NBjGEpMB94B671ONwKLKnuuHe3DJ/ExaoyuQAKL27TWw7IpN
         utRl8VrJlm+Dyh/p7eNr9gliTN/KNTKH/cPv86iFg0P96fs5Pwxkjwf7LNdUf6dPG8/+
         F8aB2FL6uneBQI0TAAsk2hyuBy6Bj+AhEryOalzYI0KxUzpoLsmegwR+RjKDswYAydYQ
         977w==
X-Gm-Message-State: AOAM530y6VlrSLMEkYdZSfOEw4ksCNgscME5RDuwH8v9xXo5GlM+YbIt
        o/ZJQtqyROx8vS01GeiUhs8KfnikKQ1BcXJ0U15hWw==
X-Google-Smtp-Source: ABdhPJyi+yigw+zM8wEJDU+Me9gCw1yphmZyfKy2OAIuMKbAVJK4rhZggmQflYmvIPx0+jbtea2fym6hW4NW8R8z9rA=
X-Received: by 2002:a05:651c:205b:: with SMTP id t27mr659935ljo.368.1611008961014;
 Mon, 18 Jan 2021 14:29:21 -0800 (PST)
MIME-Version: 1.0
References: <20210116015350.3501927-1-j.neuschaefer@gmx.net>
In-Reply-To: <20210116015350.3501927-1-j.neuschaefer@gmx.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 18 Jan 2021 23:29:10 +0100
Message-ID: <CACRpkdZ+Vp3Jq+vZavVwGrbahbqytuPQRASKHf0yC-c_NFk0-Q@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: pinctrl-microchip-sgpio: Fix indentation
To:     =?UTF-8?Q?Jonathan_Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Lars Povlsen <lars.povlsen@microchip.com>,
        Steen Hegelund <Steen.Hegelund@microchip.com>,
        Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jan 16, 2021 at 2:54 AM Jonathan Neusch=C3=A4fer
<j.neuschaefer@gmx.net> wrote:

> yamllint warns:
> ./Documentation/devicetree/bindings/pinctrl/microchip,sparx5-sgpio.yaml
>   102:10  error   wrong indentation: expected 10 but found 9 (indentation=
)
>
> Signed-off-by: Jonathan Neusch=C3=A4fer <j.neuschaefer@gmx.net>

Patch applied.

Yours,
Linus Walleij
