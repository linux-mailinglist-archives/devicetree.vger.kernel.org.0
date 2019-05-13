Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 666EB1BFE2
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2019 01:40:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726578AbfEMXku (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 May 2019 19:40:50 -0400
Received: from mail-pg1-f195.google.com ([209.85.215.195]:40848 "EHLO
        mail-pg1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726551AbfEMXku (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 May 2019 19:40:50 -0400
Received: by mail-pg1-f195.google.com with SMTP id d31so7570955pgl.7
        for <devicetree@vger.kernel.org>; Mon, 13 May 2019 16:40:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=J8kVwdfKryVwhVTqGuXeaVb2n8/8oNSbahQ/YtWP1xI=;
        b=sa5hTJoEG20bTMXXVU6g1aEoSJCap4+nQDLEavj4IVB0Q0WvFwch1WnSeHVzCeOf+6
         NozdunUylZsJGkfbUevW1O5aRpxemgsu+Cqap9XkehWY73/n/SPIStbxuSlubLpk9jO8
         EdTkhBdYfxzPwyCGLxp2WbiGrvxaRjzX4/otJYQd5sWrbLfmRbKm2YU867GS5Dd/D4wL
         sEP7BY3gwMRxi4fSJYa94KNLcP7twzqhYFbbRVeIS9dTm0jHaiLBh/MT3Yl0gpPfxKJf
         HYYblv/KEjMtWT0fDBkwACZ8qic4unhuM16gzLYZvPBFkhWVRoY/Gu6KOnbpTQz2XUao
         VVzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=J8kVwdfKryVwhVTqGuXeaVb2n8/8oNSbahQ/YtWP1xI=;
        b=fPbT4pooDdGGn0+mtuasPszBJ3Bo+l6UnJy4PoxmAyPxBySBzi5a2BSphjtNFsycQm
         rEJavi7Onrp908vD5LR1nHPZraoETxlPwctKO8TDKfvPMWbsG87nJb3cmXw7JOa0AFLe
         Xm8qwduwbIn4pAu4AM8uRwr/A4Mu2OhxlJlae8vWyWPOo2knT/b7QIybbUyDe6MBGDKh
         bNXoEdRXFVgDdTAorDMr45IzeAfDswWC1SlCyFnc15zzry9gNbJDm87JjnYYU2whg1kQ
         z7aY7AWFv8NCkUgpnAbPeW/ObGDilLha9RKuZGgyHVuDFVNUlw8mqbPdGP23xntdLCmc
         OQ+w==
X-Gm-Message-State: APjAAAXi1VXPwWwmtlc2lbhzsxE1JUOytUp0H0/7ani2lRx0BPzwcrCZ
        HH6q3fASkuKim6v5L5edLyKBgQ==
X-Google-Smtp-Source: APXvYqxJza/f7WkrQm4MQNmOM8P+Yp7+nyNFIKDtT5FejuIGuzHjEwFK6tl1nzjsKXvMKfPowpL0mg==
X-Received: by 2002:a65:5682:: with SMTP id v2mr34932877pgs.100.1557790849488;
        Mon, 13 May 2019 16:40:49 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:fd66:a9bc:7c2c:636a])
        by smtp.googlemail.com with ESMTPSA id e14sm12696269pff.60.2019.05.13.16.40.48
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 13 May 2019 16:40:48 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Neil Armstrong <narmstrong@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>
Cc:     linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: meson: sei510: consistently order nodes
In-Reply-To: <b81b46f1-5e8f-26e8-399f-3baca8336e50@baylibre.com>
References: <20190510155327.5759-1-jbrunet@baylibre.com> <20190510155327.5759-2-jbrunet@baylibre.com> <7h4l62dlyh.fsf@baylibre.com> <3bad9dc8c53e50c4aea1212bf949215660259412.camel@baylibre.com> <b81b46f1-5e8f-26e8-399f-3baca8336e50@baylibre.com>
Date:   Mon, 13 May 2019 16:40:47 -0700
Message-ID: <7hef51c48w.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> On 11/05/2019 17:52, Jerome Brunet wrote:
>> On Fri, 2019-05-10 at 14:43 -0700, Kevin Hilman wrote:
>>> minor nit: I kind of like "aliases" and "chosen" at the top since they
>>> are kind of special nodes, but honestly, I can't think of a really good
>>> reason other than personal preference, so keeping things sorted as
>>> you've done here is probably better.
>>>
>> 
>> You thought the same, then thought maybe memory was important too. But going
>> down that path, you end up sorting by feeling. It is going to be difficult
>> to all agree on which nodes are special.
>> 
>> In the end, we just want/need something that is easy to respect and verify.
>
> I think it would be better to have the same layout for aliases and memory over
> all the amlogic DTS, it's common over all socs to have these nodes on top.

aliases, chosen, memory and reserved-memory are ones that are typically
on the top for convience sake, but looking around we have not been
terribly consistent there either.

At this point, to continue the tradition, I'm not going to be too picky
about enforcing "standards" that are loosely defined (or undefined) and
will generally accept cleanups that are moving us towards consistency
and ease of rebasing.

Kevin
