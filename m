Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CA324339FA1
	for <lists+devicetree@lfdr.de>; Sat, 13 Mar 2021 18:50:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233951AbhCMRtz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 Mar 2021 12:49:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234165AbhCMRty (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 Mar 2021 12:49:54 -0500
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47F13C061574
        for <devicetree@vger.kernel.org>; Sat, 13 Mar 2021 09:49:54 -0800 (PST)
Received: by mail-pg1-x52a.google.com with SMTP id l2so17920503pgb.1
        for <devicetree@vger.kernel.org>; Sat, 13 Mar 2021 09:49:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OFvGF4gk6FrDN+xVwtMGtf8wDnK+3yr0zWYhMp6+LUo=;
        b=A8EP+bFp4TvCvFEBP1hh/wG7TZtshz1HzfdxkH1fW4rC53am6yJ9ktguOwyVOYRPHh
         k9A8u1lZj8SaPQ+1yeFCBqBTZLdsn0Yl/VCzWZtEFZECEjyEJPkEU3/C9mwGMTYSXc80
         Mh5opCzkwTkCSkEH70TqtKDX57UBUSqb5Y34hb5ked4T+h2P8QqURs/ehtg1Gv6GPubn
         M90ra+8sCRKOyUqM7sALYdjiBUbHi08a4TF2z32ctyq+plhwmZ2tF3OHtfrbG6/EWFdf
         yd/LgltvGGeqg4GZyLUndLi9TLxonYbZkpH2LAElPdkQy4nXTaZfje4Gi/sBZuAzo10r
         hopw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OFvGF4gk6FrDN+xVwtMGtf8wDnK+3yr0zWYhMp6+LUo=;
        b=iJTc+P5yBS8Op5TqZa7K/TRlgZmrC3TR02zJWrAeIOlMQ07FBXq2kGHr7UisoUQ1YA
         7mO1sRlGJpF3hfaWvt4NKTRJ9+B25W7ASYKKnR5IYFEz+/X7wpwBPgyDHxnYaew3/2lq
         7O0LHwuBAbpVxPskDjhEWsZ1ovsib8u9oEO2u9TXN6FRyZA0xg0SnAaIqwSHK26LyHfp
         CGjnAx9hfhuXJfJpS7zw0s48yaMuXPS4bxQFzL1s0GDTwnHocJy4sh9fJ7nh5VzfAv49
         pzjLF294DRXxgoLblBBEHzv1sWMlyMByHpRFTbuk55Lnzl0MQNsv6g68fuXKWoaIr3Ra
         47pw==
X-Gm-Message-State: AOAM532J7i7NmU5cRC57dOwPhWYPsUZuPizxInRAid1es3bmN3ADMLOk
        KURvqX/J1PKwW0LHF9iMCvk=
X-Google-Smtp-Source: ABdhPJyEKPNNIVDmsUQbjPgAIJ0mKZRBVSey0A7mj2i+zBUwRpj9pECW03oDEnPqnv09G8s/M6x0SA==
X-Received: by 2002:a63:440e:: with SMTP id r14mr16547051pga.331.1615657793875;
        Sat, 13 Mar 2021 09:49:53 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d134sm8806057pfd.159.2021.03.13.09.49.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Mar 2021 09:49:53 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH V3 2/2] arm64: dts: broadcom: bcm4908: add TP-Link Archer C2300 V1
Date:   Sat, 13 Mar 2021 09:49:52 -0800
Message-Id: <20210313174952.3843351-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210310074603.17715-2-zajec5@gmail.com>
References: <20210308131850.22576-1-zajec5@gmail.com> <20210310074603.17715-1-zajec5@gmail.com> <20210310074603.17715-2-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 10 Mar 2021 08:46:03 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Archer C2300 V1 is a home router based on the BCM4906 (2 CPU cores). It
> has 512 MiB of RAM, NAND flash, USB 2.0 and USB 3.0 ports, 4 LAN ports,
> 1 WAN port.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree-arm64/next, thanks!
--
Florian
