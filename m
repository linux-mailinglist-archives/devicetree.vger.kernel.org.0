Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A6C0310BB7
	for <lists+devicetree@lfdr.de>; Fri,  5 Feb 2021 14:22:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229638AbhBENVB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Feb 2021 08:21:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229986AbhBENQi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Feb 2021 08:16:38 -0500
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3A74C061797
        for <devicetree@vger.kernel.org>; Fri,  5 Feb 2021 05:15:57 -0800 (PST)
Received: by mail-yb1-xb2c.google.com with SMTP id w204so6716518ybg.2
        for <devicetree@vger.kernel.org>; Fri, 05 Feb 2021 05:15:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=eMddkzoLtzudk6Saw9haOw0jx/RFJpF2riNKCfwuqgA=;
        b=RF4nwrg/bI2QEh/WsUpLibjI3mQomXHb2vuTc+uJUHticYqHRHVZN4pY7kach2qUP3
         b2ivhKJ38YAJghUzI2MwT8xBhEbUWyI0TmRmDSecrz6bXz6mpYM7dzVlnIOmK4Z89ffa
         FfASdFuLG72rqoDVYfG/5MJfikNWmyVgqKX3FHsq+gb0ivvHYmDuabct6s07+8xD2MX1
         CL+QIU4OwpqVWWzzVusw0VYq912podjjaSzg8cBxTX6i6QyvRR4SWdRbnCRMXta7Z8w0
         kCqjWhdpHJUMPxBHj764KNf+HLxSGxHKWW3mEP1d3K4yOmwDsN2y2uIGZ/a+iXonm9q6
         sQ3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eMddkzoLtzudk6Saw9haOw0jx/RFJpF2riNKCfwuqgA=;
        b=hsTa8IPtep9NVkom3BDnujp4Iqpvhk7cysy6Zuy7oQk5kwKMPZLUJZd6wAPWIkp9C0
         YmbPhJgB+oTon0EtABUgq4UTCtL0eJaVrBnk8qjiuhp3FaRJtDNF0hgMsLEntaWIHUr/
         5O3Hddfq/fwY++zV92HTzf2jUXsYDJTTXCQg2KuWeyIURfkgJ2F4SBRY9kY3pCTHUI+e
         QJDftOL0Y7eOd8hZ0aSi3MoNUPQLUONW5RoUCxeZfpD71xRokEj/c7GwxTn/UeMtELNp
         dMB61xPaWHRpkPpUEy8qClITInjPqGhF5raxiCx0g6R2xW2ctl3An58HLegwJS+iIR24
         jzfw==
X-Gm-Message-State: AOAM532V40V5wSIyFzz+27pV6A0R1px0ULrem9IwcF6wYDWCshORQZv/
        KuwEchjms95ukCssnoTZYlU44xklLXURzdcEptrb2A==
X-Google-Smtp-Source: ABdhPJyhGAXEhx3VeGUjX84AVY7g2N8qPiWTR3n4heInBOto2Tcb4lOfLcSIy1g6eC9M61iOlCDdJrlNah6gn/LAJa8=
X-Received: by 2002:a25:41cb:: with SMTP id o194mr5820275yba.167.1612530956948;
 Fri, 05 Feb 2021 05:15:56 -0800 (PST)
MIME-Version: 1.0
References: <1612426177-6611-1-git-send-email-amit.pundir@linaro.org> <889e6ed8-133a-9416-be3b-5b2a97ea7fbb@somainline.org>
In-Reply-To: <889e6ed8-133a-9416-be3b-5b2a97ea7fbb@somainline.org>
From:   Amit Pundir <amit.pundir@linaro.org>
Date:   Fri, 5 Feb 2021 18:45:21 +0530
Message-ID: <CAMi1Hd3bgDaqsH+txFVEnBc9dsGbrgic5TK7uq4GwqqkM6seiw@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sdm845-xiaomi-beryllium: Add DSI and
 panel bits
To:     Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        John Stultz <john.stultz@linaro.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        dt <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>, phone-devel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Konrad,

On Thu, 4 Feb 2021 at 19:46, Konrad Dybcio <konrad.dybcio@somainline.org> wrote:
>
> Hi!
>
> >vreg_l14a_1p88: ldo14 {
> >+                      regulator-min-microvolt = <1800000>;
> >+                      regulator-max-microvolt = <1800000>;
>
> Should probably be renamed to vreg_l14a_1p8 then.

ack.

>
>
> >+      ports {
> >+              port@1 {
> >+                      endpoint {
> >+                              remote-endpoint = <&tianma_nt36672a_in_0>;
> >+                              data-lanes = <0 1 2 3>;
> >+                      };
> >+              };
> >+      };
>
> The endpoint has a label, you can simply use &dsi0_out {};.

I didn't get what you meant there. Care to point to some reference dts
snippet please?

>
> >+              vddpos-supply = <&lab>;
> >+              vddneg-supply = <&ibb>;
>
> With Angelo's latest series [1] merged in, I reckon you should explicitly configure lab/ibb (like in [2]),
> as wrong settings (which CAN BE SET BY THE BOOTLOADER in some instances!!) can lead to hardware damage.

So iirc in the case of beryllium device, these regulators are pre set
by the bootloader and I can't find any reference of we
setting/resetting it explicitly to switch ON the panel and display. So
far default lab/ibb nodes are working fine for us and I'm hesitant to
tinker around anything regulator related that can potentially damage
the hardware. Having said that, I do see lab/ibb nodes being set in
the downstream dts, with relevant soft-start and discharge-resistor
properties and I can try switching to that once the new lab/ibb
changes land upstream.

Regards,
Amit Pundir


>
>
>
> Konrad
>
> [1] https://lore.kernel.org/linux-arm-msm/20210119174421.226541-1-angelogioacchino.delregno@somainline.org/
> [2] https://github.com/SoMainline/linux/commit/4f4853b2e252b5f9d03e90119110aac80258fc53
