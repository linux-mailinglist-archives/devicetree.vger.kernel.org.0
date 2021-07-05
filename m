Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 521613BC364
	for <lists+devicetree@lfdr.de>; Mon,  5 Jul 2021 22:34:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229963AbhGEUhI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Jul 2021 16:37:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229873AbhGEUhI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Jul 2021 16:37:08 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7ABF5C061574
        for <devicetree@vger.kernel.org>; Mon,  5 Jul 2021 13:34:30 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id g8-20020a1c9d080000b02901f13dd1672aso524505wme.0
        for <devicetree@vger.kernel.org>; Mon, 05 Jul 2021 13:34:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=+6XOS/q6tNEotrOvsPcxWCl8XfwpWQ06BCfh8JP8qiQ=;
        b=OZWxOeaAZD36E5pXxxm6Y4Pq5dMm4vQyq3XYuN9VI+P4x03ANViKySjMaKux1H2p6/
         /tj52CZTWP9a5s2wQs25SXkMOxHxQIYmWsXj8WSn0ypX+TOosipox/szAKuNi6li+tzU
         VzBRRMSufdqzX+6b9avxM+vicqNSSkIe7I06jsY4XW24zwscdbDTvHoqK0sYi794z91G
         uLDsgYv8M8MahuMr80pccB74y1j+tHwc/gFIHQNf2uF+LRrj8BGGJQKxyOG+L2+ixhza
         UCS+I5ZF7QjJpArK8dN1aqXjlJ2Q758b4wDV7qCHuaLXq7FpM7hbMFfaz+VrMcm1XaaI
         SyVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=+6XOS/q6tNEotrOvsPcxWCl8XfwpWQ06BCfh8JP8qiQ=;
        b=a0Rmgq7m5TGLi+p8W9A1p+QipM5XiaZpbE0pNHpCtNEaWR1IP8cD62chgNLVPI2a/E
         i+CxYT2EnPpF/H9R215HDTrOivF5AA9EcEs+joyPj4xBByCS81lKz6uRdSdPU3zLT6A0
         lpVnxj05dF5Xk6qkxbh2HBUn5/m9bj/ZyvaJdNVWaaUfsZVDDKnbqjvDneYb5vFAPSSm
         Jh8vFUOP8iuf+XvYRyZslAOulqLI5K6Gfld17OvPWgEzubsCcQe1rXrYpnC2bDm5yTx2
         EGetpHmexBTph1DOalXG4Ph3+Cjrz//YNLGKKFYVzYZU3Y6WruHn09majXe/5j0sIFK0
         GIyA==
X-Gm-Message-State: AOAM531TeVKtR09+y6vUMDWkYAipF5Fe/44ksZDUIfZlfEV9GVT9DsuV
        EQ1tdIJB72Ov45W//PM/50cZn9BXYUWe+Q==
X-Google-Smtp-Source: ABdhPJwc1nbFhcPHi0y+6jFNObg+WQXsxOkhGb003NiPPJjXll80h+S/4WyNzRH508DiBDetQKm3xA==
X-Received: by 2002:a7b:c013:: with SMTP id c19mr835095wmb.158.1625517269112;
        Mon, 05 Jul 2021 13:34:29 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
        by smtp.googlemail.com with ESMTPSA id c16sm14208870wru.24.2021.07.05.13.34.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jul 2021 13:34:28 -0700 (PDT)
Date:   Mon, 5 Jul 2021 22:34:23 +0200
From:   LABBE Corentin <clabbe@baylibre.com>
To:     "Enrico Weigelt, metux IT consult" <lkml@metux.net>
Cc:     pavel@ucw.cz, robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org
Subject: Re: [PATCH] leds: remove ide-disk trigger
Message-ID: <YONsz9dG08YZOLg6@Red>
References: <20210628191719.2823947-1-clabbe@baylibre.com>
 <1153e311-e0cf-d869-e3f8-b679eb2e60de@metux.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1153e311-e0cf-d869-e3f8-b679eb2e60de@metux.net>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le Tue, Jun 29, 2021 at 12:47:27PM +0200, Enrico Weigelt, metux IT consult a écrit :
> On 28.06.21 21:17, Corentin Labbe wrote:
> 
> > diff --git a/drivers/leds/trigger/ledtrig-disk.c b/drivers/leds/trigger/ledtrig-disk.c
> > index 0741910785bb..38a5c21c0466 100644
> > --- a/drivers/leds/trigger/ledtrig-disk.c
> > +++ b/drivers/leds/trigger/ledtrig-disk.c
> > @@ -40,7 +40,6 @@ static int __init ledtrig_disk_init(void)
> >   	led_trigger_register_simple("disk-activity", &ledtrig_disk);
> >   	led_trigger_register_simple("disk-read", &ledtrig_disk_read);
> >   	led_trigger_register_simple("disk-write", &ledtrig_disk_write);
> > -	led_trigger_register_simple("ide-disk", &ledtrig_ide);
> >   
> >   	return 0;
> >   }
> 
> Shouldn't this line also be removed ?
> 
>    DEFINE_LED_TRIGGER(ledtrig_ide);
> 

Yes, I will send a v2.
Thanks
