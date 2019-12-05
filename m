Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C8CB2113D3C
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2019 09:44:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728962AbfLEIo2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Dec 2019 03:44:28 -0500
Received: from mail-io1-f42.google.com ([209.85.166.42]:35249 "EHLO
        mail-io1-f42.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728629AbfLEIo2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Dec 2019 03:44:28 -0500
Received: by mail-io1-f42.google.com with SMTP id v18so2782935iol.2
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2019 00:44:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wt9G2vozOpMT2hGMgKE0ip5uoYB13lnK1YvlPurVBq4=;
        b=mx51vNNmXng2Ai4iTAblfI1F6ComWE5BNDOYZ4xrxfULaKGleW01zww0J9E6sEvEGm
         lfLcgIvUw/0nKHL3PF9n6k428lWT/lZXzBTmVRVLyRjWQMqUnL/4r42HLnAkItilGkYS
         rEOKRmjE51Iy/fCKvADi2jVYm4ok8Pi5z2RxI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wt9G2vozOpMT2hGMgKE0ip5uoYB13lnK1YvlPurVBq4=;
        b=Rkpd33iJexFZdZI52VoEfmtsf2vqjqlNn+NPqHiAyavhrJW81RpdPR1r4rlUk8frf4
         wpJZu2AI6IINxhfFTXAm0D9AQJK4mblWGfFKem1y9CXRu3AfLYpn4wETwUdH0cafoKDx
         iuTTKNVAWdiZy+UlcB/plpj3gE/EY4XnObohFuTXh9XBaXIeZ/DsIIWiM8ZYWS+2IJOy
         Z2Hz3iL1DvnwlLXQPilEbyqaoaGo92DFxRP7P3qQM2nodVZhru/CuubcsAQg+FhIsu4s
         4bwJoLxzaAmG1lzOlFNcrFT0HKyJo3DyscfLh4krtnHMnmjjMAhngS3yoohBs88FYwWS
         NIRQ==
X-Gm-Message-State: APjAAAW+dAruR8cxy2PWwjg7/eNLmQMOlUUMWnc1v59cTsBpDCJkxwvW
        NlPHdAI6Fa5rjEZwKMtEX8b1YOxdC1fbN990f2IpznuoI/U=
X-Google-Smtp-Source: APXvYqzsTUeVlvYNSc46o8MgjJIitMPOpzSQhh53SIxsiMDq5akjwRzVyhJ8uX4NGcPMJOsXZfEjVH38FLKYx8LYJGo=
X-Received: by 2002:a5d:8cd6:: with SMTP id k22mr5264840iot.283.1575535467112;
 Thu, 05 Dec 2019 00:44:27 -0800 (PST)
MIME-Version: 1.0
References: <1574817475-22378-2-git-send-email-yongqiang.niu@mediatek.com>
 <CAJMQK-iDnOWCYmxcREGschD=sDfU6yKpUu+koP3YDeO3MPCdhQ@mail.gmail.com> <1575529976.9400.4.camel@mhfsdcap03>
In-Reply-To: <1575529976.9400.4.camel@mhfsdcap03>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Thu, 5 Dec 2019 16:44:01 +0800
Message-ID: <CAJMQK-jGTAm7YS3ov3ok0SkrH7dWEL4umC21O6RSchrfDs5omw@mail.gmail.com>
Subject: Re: [v1,1/2] drm/mediatek: Fixup external display black screen issue
To:     Yongqiang Niu <yongqiang.niu@mediatek.com>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Devicetree List <devicetree@vger.kernel.org>,
        David Airlie <airlied@linux.ie>,
        lkml <linux-kernel@vger.kernel.org>,
        dri-devel@lists.freedesktop.org,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-mediatek@lists.infradead.org,
        Philipp Zabel <p.zabel@pengutronix.de>,
        CK Hu <ck.hu@mediatek.com>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 5, 2019 at 3:13 PM Yongqiang Niu <yongqiang.niu@mediatek.com> wrote:
>
> please double confirm is this dump stack log is ruining on MT8173 real
> IC or not.
> if yes, that may caused ovl hang when disable layer not in blanking,
> then cause vblank time out.
> i will disable overlay with cmdq in next version.
>
It is running on MT8173 acer chromebook. Error only happens when
turning off display.
>
