Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 85BF3186FC3
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2020 17:14:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732066AbgCPQOM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Mar 2020 12:14:12 -0400
Received: from mail-vs1-f68.google.com ([209.85.217.68]:40443 "EHLO
        mail-vs1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732044AbgCPQOM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Mar 2020 12:14:12 -0400
Received: by mail-vs1-f68.google.com with SMTP id m25so2837813vsa.7
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2020 09:14:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bBDCtFmVlmwok8vUzi26MlGBbPcfcb7XMIsVTqNi9do=;
        b=FuH75nUp8oKLA+mUqWbx6oFCErjjg+2KD+mAVoj6DUeH1D9WGGPmT6ionb0S+43XxJ
         8LPzfjMNU2tfB5CGcGqQ/iIbHV2+E2dFFIMjY7vOdzX4a4jWs6XlEErT1+tFM4dndAZB
         tPBDur11ZisT8rmfI3RWzJHnq64KiuPD24AOyKz0v+b0aQoEigUVcsdp6nQHB0AT9yf3
         r950MhLEK/ySxhdgpuohVDmsw2+MoIn7kaQsAUTpJnXAu+nIGhPfTKFh5RxLAV7QTlmr
         9WqNrAsGpOItTVL4PoMpuFCUUe3KBo2Yo295TFO8Vm6OsMFyHRL7YOymzG54+mcVzrpv
         ppTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bBDCtFmVlmwok8vUzi26MlGBbPcfcb7XMIsVTqNi9do=;
        b=kNzx0NLAHGkL1+96lB8QyEtWOj1alc7/pzLLNiVUfpnn2g/T/OAAlvVaip3ShJ0wSv
         Z0YA96sJm04eOIlbK5A9xnwM65wfVzzEVHn1BpkkwDQ/gJAseJ9cs2H3UdaUE0tVD0jm
         A9heMU/I8raRnJdLXxz4jj6w3qjkxqglTG8LPbDzNB4aBHxQCZJiwQTWJk6arnODU5Y3
         XBA1R8Ccl2G2sbEl5bZgyrwUxPvezlmI2rxE9l70qz5D7ZUGIoVKWUV6/5Zg/8K8SdRL
         jVMC4bLv6KMGeZv1yk62JEYGNooiiLemQ6bSTC4B7VYQAxY9Lo6q0Yfvvn7IKbjL2j1p
         cmZg==
X-Gm-Message-State: ANhLgQ1YhG0SE2RVsBkzkmXtzLVKb14Pf4kqMXqp3CP3cOJhYUOi8PTO
        uNYmbxX1TP7xPa7+6NgP2pq8rOPwZR2O4xSm1HUmUQ==
X-Google-Smtp-Source: ADFU+vs3pLJTKaxFy4PgAmzkqT70xCVmTVF1ScAx8CX+A67toAj+a60XNOs30Hvy0izYq7eq1MsBLm7uLvTkG1O+5jA=
X-Received: by 2002:a05:6102:104b:: with SMTP id h11mr369017vsq.182.1584375249809;
 Mon, 16 Mar 2020 09:14:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200309045411.21859-1-andy.tang@nxp.com> <18c58e1b-583c-2308-ee60-a8923c2027ee@linaro.org>
In-Reply-To: <18c58e1b-583c-2308-ee60-a8923c2027ee@linaro.org>
From:   Amit Kucheria <amit.kucheria@linaro.org>
Date:   Mon, 16 Mar 2020 21:43:58 +0530
Message-ID: <CAHLCerPBxe=Az=EexxYQkgvhRO40JT0qEhnAwqnGbeesiU-bnQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: thermal: make cooling-maps property optional
To:     Daniel Lezcano <daniel.lezcano@linaro.org>
Cc:     Yuantian Tang <andy.tang@nxp.com>,
        Eduardo Valentin <edubezval@gmail.com>,
        Zhang Rui <rui.zhang@intel.com>,
        Linux PM list <linux-pm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 16, 2020 at 8:22 PM Daniel Lezcano
<daniel.lezcano@linaro.org> wrote:
>
> On 09/03/2020 05:54, andy.tang@nxp.com wrote:
> > From: Yuantian Tang <andy.tang@nxp.com>
> >
> > Cooling-maps doesn't have to be a required property because there may
> > be no cooling device on system, or there are no enough cooling devices for
> > each thermal zone in multiple thermal zone cases since cooling devices
> > can't be shared.
> > So make this property optional to remove such limitations.
> >
> > For thermal zones with no cooling-maps, there could be critic trips
> > that can trigger CPU reset or shutdown. So they still can take actions.
> >
> > Signed-off-by: Yuantian Tang <andy.tang@nxp.com>

Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>

>
> Amit, I'm about to pick this patch, it will collide with the yaml
> conversion changes.

Thanks for the headsup. I can fixup v3 when I respin.

However, I've always interpreted this binding as follows:
- cooling-maps should be mandatory for active and passive trip types
otherwise there will be no cooling
- cooling-maps make no sense for critical trip type since we're
invoking system shutdown
- cooling-maps are optional for hot trip types.

Is this your understanding too?

We should be able to enforce this in YAML.

Regards,
Amit
