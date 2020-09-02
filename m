Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CA8CE25B00B
	for <lists+devicetree@lfdr.de>; Wed,  2 Sep 2020 17:48:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726913AbgIBN2y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Sep 2020 09:28:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726726AbgIBN2e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Sep 2020 09:28:34 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3755C06125E
        for <devicetree@vger.kernel.org>; Wed,  2 Sep 2020 06:28:26 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id a17so5235614wrn.6
        for <devicetree@vger.kernel.org>; Wed, 02 Sep 2020 06:28:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uIp6VDRg64f9Y6M9nC/GlDS6MEA5JCUpqgsb4/MPt3o=;
        b=mgwLkognKuIAKnWCCfSlM7yPbF2hjfW3lrpvsVtLqikNxdc1g8HRBRf+01OXL/0zM+
         Yc6BzQvEuMQRW7++14zWZOQO4knzah3KyyQ06HqnP1kT26c4eu2HhXDw6xjpsvyOBvJO
         JV7FxoqgcOsqsOECxm1Ii2GSYqR+rsZjUvyU1qhZutIEaVHRUux09hU8RfDH++383AL9
         v79u6pcKn27u3TQfCcPbGMlvG6m1i92pkA0/KxauSZpmbTRybKqnRjvFurUDQBZuHkyH
         7f8onN4/qVEYBJtFbcL/H9HKukRRV/+pArF9jLsJUlb0halFaAvNesLNJTZWkf+PxENN
         48PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uIp6VDRg64f9Y6M9nC/GlDS6MEA5JCUpqgsb4/MPt3o=;
        b=BXwB0gYlxd+NUjmBg9daJZ71tWh1Pw+2987/UDT2CPodXAjmMyZX/Vzyz/G4RTdwES
         U2XwIpPkjmblTD+qPoQRpdaweLCOEE0Pnw2SvKpy+YoN8BaWrqjo+Bm+1llSfwdZphGr
         tt9UoNfDezy29yaHbXvg5aXdmW55LQKKQssLlrN99JJV9LSJgDh/k5cObWwUNzJd/Wk8
         vbqjJhOFUJ6VcO9xcJ873gXRol5EJd14CH2QHZMGIBiX2Jae1mMVb1Cc4dJOK+sJLEId
         xzYbNSzj7fxInpxLTM59HnQz4hOT4f83HU6stCyXiToCG8vbCvhB7xs2eBrNKIfTBm2U
         H5Hw==
X-Gm-Message-State: AOAM530EzfrpPKNzHNN/lYsWqnSetnfZWFXFo5dYy5klPSxCYKlj1sOR
        o6pDr39w2lcEQfaDGsi1erQgqj3ZqVM2DxQlycXy7g==
X-Google-Smtp-Source: ABdhPJymK6Binf3WPLODjrgoJ6lBMTNu0Ae96FbxstIYyWCNWxkbX6MBAI5dCNSBkDIrRwTR22Uv4qhDZlkb5G8e5nE=
X-Received: by 2002:adf:c64d:: with SMTP id u13mr7583312wrg.114.1599053304932;
 Wed, 02 Sep 2020 06:28:24 -0700 (PDT)
MIME-Version: 1.0
References: <1598851448-5493-1-git-send-email-amit.pundir@linaro.org>
 <CAMi1Hd3n2rfr+k09L8WO1S1Tn1s3xJencmr1q3a6e-FOgXr5Qg@mail.gmail.com> <CAMS8qEXcANkb-HoTk8zrXQEzkQO4cnFw4hj5tMp82UEVKd+eHQ@mail.gmail.com>
In-Reply-To: <CAMS8qEXcANkb-HoTk8zrXQEzkQO4cnFw4hj5tMp82UEVKd+eHQ@mail.gmail.com>
From:   Amit Pundir <amit.pundir@linaro.org>
Date:   Wed, 2 Sep 2020 18:57:48 +0530
Message-ID: <CAMi1Hd2ZakhXm+qNh-VMF_OndqCaQxxY3CC+UfQ6x2PyL_5sPQ@mail.gmail.com>
Subject: Re: [PATCH v6] arm64: dts: qcom: Add support for Xiaomi Poco F1 (Beryllium)
To:     Konrad Dybcio <konradybcio@gmail.com>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        John Stultz <john.stultz@linaro.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        dt <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 31 Aug 2020 at 13:28, Konrad Dybcio <konradybcio@gmail.com> wrote:
>
> > Hi Konrad,
> >
> > I couldn't find answer to your question around missing
> > (regulatorname)-supply properties. Need help in figuring out that
> > part.
>
> When the phone boots up and RPM(H) kicks in, you should see regulators
> probing like "s1 supplied by foo". Without the *-supply stuff, you
> will likely get "supplied by regulator-dummy". This happens here [1]
> and to my knowledge it is the "eletrical wiring" for Linux, as in it
> makes Linux aware of which regulators are connected electrically to
> the same supply (so that kernel knows when the supply is on and what
> voltage it's at). For qcom platforms, this is common per-pmic (afaik,
> please check if you are able to!), so you can likely just copy-paste
> that part from msm8998-mtp.dtsi, which also uses pm(i)8998.

Thank you for the pointer. I dug around the vph_pwr fixed-regulator
node used by fellow sdm845 devices. I assume it is safe to copy it
from sdm845-mtp but I couldn't verify it in the downstream
device-tree, so I'm a bit hesitant. My main concern is that I don't
want to burn down my only device :)

I did find a few regulator nodes downstream which matches with
upstream sdm845-mtp but since I'm not using any of them in my
beryllium dts, I'm going to skip them for now.

As you pointed out, in case of regulator lookup failure Linux will
fall back to dummy regulators, which is working fine for me so far.
Also I see that vdd-*-supply properties are optional according to
Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.txt,
so I assume it is safe to skip them?

Regards,
Amit Pundir

>
> Konrad
