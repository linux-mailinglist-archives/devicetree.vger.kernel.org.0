Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2A43829777
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2019 13:41:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391143AbfEXLlX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 May 2019 07:41:23 -0400
Received: from mail-lf1-f67.google.com ([209.85.167.67]:39026 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391125AbfEXLlX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 May 2019 07:41:23 -0400
Received: by mail-lf1-f67.google.com with SMTP id f1so6885641lfl.6
        for <devicetree@vger.kernel.org>; Fri, 24 May 2019 04:41:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=eJLDwVfH5VJnZx8ZM8GCRIzVJV8WcHMD+lvgI85Fwb8=;
        b=tFjCJYE4s1Z94dMb5aFsdWecVIC3UQ9ZA0iji4fhIgPiEbpjNkp6PM+YSIl/F0zg/8
         v067wNSAoldwvwxNc12hzdZ1o+Ue6PunKG5AFaw6SVX+axaqR+H6XYobKIQ2AOZfRVDT
         2MSu12IVDZlJVYeaEXVBJ6u0fHu/T+hQ38wwb9HMSr/yWO0eah4xbg1CG4Yx04vpm/Gl
         5waRRmDXldlktA4Axy7Gh6TMSlIUN0TR5TR6qQnFCE/iDu+Yu3IwGLAbBiOQYDTZkcO5
         7PFePDllYZl7eMyl9c9S364wV1ARtv7+Ho5BblphuAKfQYr1mTkL2OPyj3M5EdvOFQ9r
         bP4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eJLDwVfH5VJnZx8ZM8GCRIzVJV8WcHMD+lvgI85Fwb8=;
        b=mC3djhJ9krJJBLxgM3iYTFzDbYgvvdJpqpNYr9t5ckMun81C/Q3tZQtSwB6vArN69F
         9rrIZKgHyWfFlNcct2f4mHBZ70jbfhQS2fnERgA/Jz61tdy+J4adVS7n/2AFFcxoG+MV
         j31bLn24KirjqzqdF202zb6RtGByYjiLzFIFwdzYdCmKj5USq5erm1TkEnBec8WrQy/R
         SMmsv47IwbaWdGR4wN16J0z9fdv60hzfssaxSve5jSAfC52Zmt+faVIH92X0btdeSsJF
         drsgvZCCMpypt2WmFLVHtekMBFzc41X2OldHuQIzk1dJbYMfKv3W4xgPrtOEf3NIr8fw
         +LiA==
X-Gm-Message-State: APjAAAVQi9j3VvPowWShl+E3UdfaszVr6C4uhO/ZTnsMdVIt1iNCrFQv
        w4WwjpKml0h3CLJniPVe8w1XBvtxtyD7LUkmlCHa88Fm
X-Google-Smtp-Source: APXvYqwlCU/Ve7G0DQMfQWyCLtGMK3SgbEDDMWwyMwxIxCdMA7wUKKKX4Ntzrp8svUCapzuA04ATKczG2IaW15wIr9U=
X-Received: by 2002:ac2:5935:: with SMTP id v21mr9226943lfi.117.1558698082036;
 Fri, 24 May 2019 04:41:22 -0700 (PDT)
MIME-Version: 1.0
References: <1557503126-3025-1-git-send-email-alexandre.torgue@st.com>
In-Reply-To: <1557503126-3025-1-git-send-email-alexandre.torgue@st.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 24 May 2019 13:41:09 +0200
Message-ID: <CACRpkdazPrbzL-oo6rhfgDcLftjCE1hrgPQCMvtE2TOUUnorVg@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: pinctrl: Convert stm32 pinctrl bindings
 to json-schema
To:     Alexandre Torgue <alexandre.torgue@st.com>
Cc:     Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 10, 2019 at 5:45 PM Alexandre Torgue
<alexandre.torgue@st.com> wrote:

> Convert the STM32 pinctrl binding to DT schema format using json-schema.
>
> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>

What a feat. Well done!
Patch applied with Rob's Review tag.

Yours,
Linus Walleij
