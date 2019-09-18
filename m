Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 32011B6439
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2019 15:19:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729724AbfIRNTL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Sep 2019 09:19:11 -0400
Received: from mail-oi1-f194.google.com ([209.85.167.194]:32787 "EHLO
        mail-oi1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728468AbfIRNTL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Sep 2019 09:19:11 -0400
Received: by mail-oi1-f194.google.com with SMTP id e18so5954924oii.0
        for <devicetree@vger.kernel.org>; Wed, 18 Sep 2019 06:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=MAuvHl3jav1l0sob6iIhs4sHC75tOSWFfzW2tOm0wr0=;
        b=gqJUFrJovNryRIoYEEMqvTMgxbM4Z8j9U8jekP8OgymBeWvRvCT3v0AXClGyeBuHSM
         B4NzPedf+y4KJ82jnHCQR3Ovcp3KzoDTfcYTP9Z1AKDlhNgMtS/pp+A/FxKVelKu9gQ7
         D+GOxLgqCLn+Pgug8k7V4W1Y8qLDvFU+B3EYCe6agwjGdrnB/roeFgzxp7p/SJFtPBSI
         RYoZ8ofhm0nL+2AKUOpny23ELhtkkSm+0QP1Fv6i4988CbsQ2EIwxjkL3/rSfbBNoi4r
         b5VMMCxnmCPkbXXwHQTdQcv2HFTMeqkuPptbLNnkkUJFxO7NFJDa02vV80gVokuAWGMK
         8T1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=MAuvHl3jav1l0sob6iIhs4sHC75tOSWFfzW2tOm0wr0=;
        b=lt3+jnOch6vVfYoHKLGhjaXs2YOx4H4ml5Nsst3FygepJSQdL0hzGxsRHLjRSEHUL4
         o0w3+7vtJxM6qyWBXy7tAGtBeI+AsqPNqf99p5Rgtvkyz+NBHa2W8UbKQiNwN5so7qwl
         0nqRKlgFX6XEwlmUNI1M4vYdxZcB9liVhcb0TX+EimfaoTVAszJ5MLBxm4evh2T3n4hJ
         j0L99+RT2wk6m9CbPY/Z6V8OFd1UkSnpF3yY7rItaQjTPR25E458iq0pi0244LmZLY5E
         ovdsBemBS2jk2cOUYazRMp0AYGJDtPSAMAcJBR55CpQehyaKVrIkyRx/1GCs02gf0fDz
         vdKg==
X-Gm-Message-State: APjAAAWnaIikK8meoFvylHQFS1Dt5gI/qH2tC+X8QDaFFztO2g3FSX8+
        xfrVe63z4mzN/EqLPwa0U2I53ZnuKfAVclZxItQ+ncb1A6s=
X-Google-Smtp-Source: APXvYqzkVabl5s1Tthd3xXJiJHthRaE5oAlL44fiv0su2WZDH/Y81ejKKX76QNqFyDh2cuw1YKlBie3z+h8BvlzUJog=
X-Received: by 2002:a05:6808:207:: with SMTP id l7mr2006817oie.84.1568812750214;
 Wed, 18 Sep 2019 06:19:10 -0700 (PDT)
MIME-Version: 1.0
From:   Chuanhong Guo <gch981213@gmail.com>
Date:   Wed, 18 Sep 2019 21:18:56 +0800
Message-ID: <CAJsYDV+4r54Tcsq++EHr=nX47cH1icq4B7oXF+5GivO86ZSDvg@mail.gmail.com>
Subject: Should we keep memory nodes in device tree if memory layout can be auto-detected?
To:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi all!

I'm a contributor of the OpenWrt project.
There are some OEM vendors making routers with different ram/flash
sizes while using the same model number. (example: [0]) To get them
work we have to create different device tree for each ram sizes, and
since users may not be aware of the actual memory size on their
devices, they'll brick it if incorrect firmware was used.
To save some effort from this kind of work, I implemented memory
auto-detection for Mediatek MT7621 [1] and deleted all existing memory
nodes in device trees for OpenWrt ramips target [2].
After some discussions I'm not sure if the latter commit is a proper
one so I bring these questions here:
1. If kernel can precisely probe memory size of the target device,
should we still keep memory nodes in device tree when memory size
varies on a single device model?
2. should we keep memory node for devices that doesn't have different
memory sizes yet? (When it comes to routers, vendors are unlikely to
guarantee how much memory they'll use.)
3. If we should keep it, should we enforce kernel to use memory info
in device tree when it presents or just ignore the one in dts and let
kernel detect it?

Regards,
Chuanhong Guo

[0] https://github.com/openwrt/openwrt/pull/1930
[1] http://git.openwrt.org/6d91ddf5175d2eac3c4bc4a404cc0f5dd44cf25b
[2] https://git.openwrt.org/a2c19f1d2f658367e6d62a6bdcfc72f12f23e43e
