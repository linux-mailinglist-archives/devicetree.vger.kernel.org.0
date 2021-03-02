Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0728932AB48
	for <lists+devicetree@lfdr.de>; Tue,  2 Mar 2021 21:21:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1582066AbhCBUT1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Mar 2021 15:19:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1448624AbhCBPH7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Mar 2021 10:07:59 -0500
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F14DC061A31
        for <devicetree@vger.kernel.org>; Tue,  2 Mar 2021 06:57:54 -0800 (PST)
Received: by mail-lj1-x234.google.com with SMTP id m11so23430370lji.10
        for <devicetree@vger.kernel.org>; Tue, 02 Mar 2021 06:57:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Im5YPNvUkVcY2oDOFR/SwHL8vc7nQDBtJ/LXMfThDB8=;
        b=zJRw+Yu3R85QSUpo38xDhIvT/Dlbhod/Qk8sxP5xeIFKLrbDE6H+QFkSfE3VIMjfRi
         uUX+UgpxLbkrVNwQav+u2HlrDLdSwkSO0sM7pW+Ns2I8iuW+PK7m9rG3RMN1g8znvgo1
         tX/gr5XA3vHh6KHbkjzdbiPCtOzksTCLXokDqeXps0UpNCDLBBaYZ9AIGFyKEpbLhzdz
         9bOyxGMw+zYHQIW5XE/+h09N7bDyV721lSGKksvaFGKHmv8JtQNPhh1TiJs519AyeRGz
         q0oVha9befOwiwClfUCaLUiW9f4LSe7LFipmeIA6Bg2k6Fhy0tRkbQ51fm7uRQa4mSjo
         mfPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Im5YPNvUkVcY2oDOFR/SwHL8vc7nQDBtJ/LXMfThDB8=;
        b=YHzYOCZXe1ztGh6c3LlYws2sMteRw/Lzi6QDdByskgyX6GepRFerdw1WfTusXGoI/W
         3hd0SJl2nCleH25h4pCJymij8yu2DE4nanS10+ngaMusBO8Ym8NzDYz+kTKaXYFLaOlU
         Y9FY6oTRd+7zI2YjLTTpHQAQ4kWfPJKuK7rwsYCnm1H2MhE7CEYTooUaW/3VyILi2HJO
         uMD0ZHwbmvtw1sYH7RSbnFtg4cjx57eHomUEb51o3f8FeJo1+DOCh9Bl9DkKm14MQ0Mc
         Qqt2VRUl3/c/cwhsi/PIZLmu79PjbXHCMy7c/LjV5ertpwEEfItN053QqAXKXiYh47UH
         Mdrw==
X-Gm-Message-State: AOAM531dKycvJpkWJ+g7Cv7ksk+VlCo0WFwN8fjwvos3TJ1uO3FbFxIr
        N3OeQoG1IK/XDBYaBcWF0qNgekRstwBLbulvMyoaXw==
X-Google-Smtp-Source: ABdhPJzwO7KakZJQ6OZLNilczG55ectEq/5Dfn1nJ9yzcfKIZ65wvA2Ybol6f5OZXAB+ObTRsQHYhjyHFwPVhl1ADkM=
X-Received: by 2002:a2e:9041:: with SMTP id n1mr12349532ljg.273.1614697072434;
 Tue, 02 Mar 2021 06:57:52 -0800 (PST)
MIME-Version: 1.0
References: <20210225164216.21124-1-noltari@gmail.com> <20210225164216.21124-2-noltari@gmail.com>
In-Reply-To: <20210225164216.21124-2-noltari@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 2 Mar 2021 15:57:41 +0100
Message-ID: <CACRpkdbjhTfQ4EcjndgE_Y7_uCT2ohadTjj-rrQAFNm+c0whRg@mail.gmail.com>
Subject: Re: [PATCH 01/12] Documentation: add BCM6328 pincontroller binding documentation
To:     =?UTF-8?B?w4FsdmFybyBGZXJuw6FuZGV6IFJvamFz?= <noltari@gmail.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jonas Gorski <jonas.gorski@gmail.com>,
        Necip Fazil Yildiran <fazilyildiran@gmail.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 25, 2021 at 5:42 PM =C3=81lvaro Fern=C3=A1ndez Rojas
<noltari@gmail.com> wrote:

> Add binding documentation for the pincontrol core found in BCM6328 SoCs.
>
> Signed-off-by: =C3=81lvaro Fern=C3=A1ndez Rojas <noltari@gmail.com>
> Signed-off-by: Jonas Gorski <jonas.gorski@gmail.com>
(...)
> +  interrupts-extended:
> +    description:
> +      One interrupt per each of the 4 GPIO ports supported by the contro=
ller,
> +      sorted by port number ascending order.
> +    minItems: 4
> +    maxItems: 4

I don't know if this is advisable, there are different ways
of specifying interrupts so this may become ambiguous,
I think Rob will know how/if to do this though.

Yours,
Linus Walleij
