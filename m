Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC0FF3D7F2A
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 22:23:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232142AbhG0UXj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 16:23:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231980AbhG0UXh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jul 2021 16:23:37 -0400
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com [IPv6:2607:f8b0:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85957C061760
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 13:23:36 -0700 (PDT)
Received: by mail-il1-x12e.google.com with SMTP id h18so511466ilc.5
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 13:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=engleder-embedded-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0veg4OhcIu83SoqQBuws6ehx9mJPPKvc3XL9uleaC48=;
        b=MoyTvh+G/MTb8d6eWrqMAuQCZE9ctJmszsuviAQxd1y4o6VPS/vMhcGA/LTHl+SKnd
         qRL9BYZ4EGkxMIs74QRzJVEB87aZ4R5G6seJxTh4OYcqO704bmaPt4g1qkGew7Mh8klL
         x6stsABRfPIag6FLrvAPIBNW58ZG0dYv0L69NEEacX6+vAJh59+eBS22xcuxfTTbsAw5
         uvLNKktIdCR59Vqa6WYGIKknHp893KJ7Y3rY807vZyHm73fZZ094TNqqWvFzMhy94CF7
         rHlvP7R6vTdH3dfggNtX9E351Gad6gbrPK8n12NCW8pOmiJoDYnLtyZL7CJ1tDcVs53h
         VB0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0veg4OhcIu83SoqQBuws6ehx9mJPPKvc3XL9uleaC48=;
        b=XE1C7YMbGkBOpU5VoK8yXkw7/1c5fo6q6DCfBvW9yj8psh/ORZEz4pbrUPUGYHP2YB
         +HfvPl6n87KuNIcNw72ldeXjQLjeyOYOVGmxl55o4CmjB2SPD+aXbRnfFJLp1VoVDP9u
         286Ftgnfz5fyEb2uZNBEXvrETbl+Ecz4pRU5lpc3QiYkeQV5U+Is4WXf8PiF9ePrrVSa
         PF/AnwcOw7W563alhsCPSysP7BJkwqKZprLBJHP0JyjV8ldWraLOsrzdsmZSbwJip/TA
         DBeWSQWR330SR5d3lo1R3kegBeQd1hsXfgRSoQWMC/4L4hNiDcHtwxUYAPBqEgwSiZDo
         ebDg==
X-Gm-Message-State: AOAM530kcWq95tNCGoz7crWiBilvigz4IR/lCT00OAh0PTuewqHgMkRe
        VRLtVZU82kkewZpCSU9BZIqitHnszBIK2h+2qlaS+A==
X-Google-Smtp-Source: ABdhPJwyn1+KieJXxFrh07ratFEci7W+OFnJhuVejmFQ7dIMx+ghoTG/bIaUHQtJbpPkcaThC1J71Rot+FC6mCkv928=
X-Received: by 2002:a92:d2ca:: with SMTP id w10mr17094433ilg.38.1627417415656;
 Tue, 27 Jul 2021 13:23:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210726194603.14671-1-gerhard@engleder-embedded.com>
 <20210726194603.14671-6-gerhard@engleder-embedded.com> <CAL_JsqJC19OsTCa6T98m8bOJ3Z4jUbaVO13MwZFK78XPSpoWBg@mail.gmail.com>
 <CANr-f5yW4sob_fgxhEafHME71QML8K-+Ka5AzNm5p3A0Ktv02Q@mail.gmail.com> <CAL_JsqK9OvwicCbckvpk4CMWbhcP8yDBXAW_7CmLzR__-fJf0Q@mail.gmail.com>
In-Reply-To: <CAL_JsqK9OvwicCbckvpk4CMWbhcP8yDBXAW_7CmLzR__-fJf0Q@mail.gmail.com>
From:   Gerhard Engleder <gerhard@engleder-embedded.com>
Date:   Tue, 27 Jul 2021 22:23:24 +0200
Message-ID: <CANr-f5zWdFAYAteE7tX5qTvT4XMZ+kxaHy03=BnRxFbQLt3pUg@mail.gmail.com>
Subject: Re: [PATCH net-next 5/5] arm64: dts: zynqmp: Add ZCU104 based TSN endpoint
To:     Rob Herring <robh+dt@kernel.org>,
        Michal Simek <michal.simek@xilinx.com>
Cc:     David Miller <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        netdev <netdev@vger.kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 27, 2021 at 10:18 PM Rob Herring <robh+dt@kernel.org> wrote:
> > The evaluation platform is based on ZCU104. The difference is not
> > only the FPGA image. Also a FMC extension card with Ethernet PHYs is
> > needed. So also the physical hardware is different.
>
> Okay, that's enough of a reason for another compatible. You'll have to
> update the schema.

Ok, I will update Documentation/devicetree/bindings/arm/xilinx.yaml.

Gerhard
