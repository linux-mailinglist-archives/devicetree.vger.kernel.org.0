Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 150D13F411D
	for <lists+devicetree@lfdr.de>; Sun, 22 Aug 2021 21:13:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232318AbhHVTOP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 22 Aug 2021 15:14:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232704AbhHVTOO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 22 Aug 2021 15:14:14 -0400
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D8C3C061575
        for <devicetree@vger.kernel.org>; Sun, 22 Aug 2021 12:13:33 -0700 (PDT)
Received: by mail-pg1-x52a.google.com with SMTP id k24so14567708pgh.8
        for <devicetree@vger.kernel.org>; Sun, 22 Aug 2021 12:13:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7YwGaEqMf0eKxCLPX9w1kGFhDTqoWweLGIb0zakQtYk=;
        b=elAXjjehJLoeHwLFpw2TydmYyiR7OhNdvdWxlcBFgxpjXyFDvu3cD4GT9osywMcgJQ
         pplF45V0ECWAJzlCE/AdqLPFeTCA9yDZHWx4V8hu/un4+5Aw1Gc6oXW9/Hd03Diz34G2
         dbfjqxMfQL6vINSbHwj6jHGYE1FXfCgYP6LrNSzivIb7EdAn/dBBck7f4cD2jMkYsVqZ
         fiNK+obdhZMTwKAMEHnogdCobT/jWnoRpxZAvM2ibp+vCYU3KxCU8ui116bsRbZ7KXOR
         suu+JgFd4B6XZJWaH/Jz6zEhgagILJX3rvCuNpmYYFJ+xTxZHfOkNhhUb+s8Llcn/84h
         /+2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7YwGaEqMf0eKxCLPX9w1kGFhDTqoWweLGIb0zakQtYk=;
        b=gTOLwWkeuAHtTxg2rnFoENAI+BvqC1QGVLkDZpIz3Ubw3565sVvn0QmCmiHgIVcztb
         atVtCfw1AOW4eMvjS4lk9XjEHWr4oavQ7Y6ndFd0OeUOxRCCoid0CzSWzaNc0YaHGaWx
         DrGV44c6tMZSLTF9Jf9bik7Iptdkn0J6uJHHoALYc4VAy1Bw7KnUv7B6oshD0K/2KfTb
         RDSOa5iEEDeu8SuzYozW71mI03c35H15FmJz1QF8GjNjR0hBcOPnXIwx8xC3Ued7HJHm
         kQQlSeilZ5jAaXDcfYWiX/VifOgbX2crL7zIHAkte+G6U5SFDArJHI/E2yKIWnEYSH94
         0B5A==
X-Gm-Message-State: AOAM530XcYnoiboDzx7RmLI8LBtc4Wg20kU7VLZN8gcgbWCEDWALJgAk
        XCIFOwoc+vC0QU+kh2lSBQU=
X-Google-Smtp-Source: ABdhPJzwRLP6G1t3itvpzz8OPd/XyDdpAhzmOtwzg8zBGhfSVeVD9qICm7PMMhodTNtm+tZSqc7V6g==
X-Received: by 2002:a62:7ed0:0:b0:3e1:99bb:d824 with SMTP id z199-20020a627ed0000000b003e199bbd824mr30092996pfc.34.1629659613019;
        Sun, 22 Aug 2021 12:13:33 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id p15sm13689608pff.14.2021.08.22.12.13.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 12:13:32 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH 3/3] ARM: dts: BCM5301X: Fix memory nodes names
Date:   Sun, 22 Aug 2021 12:13:25 -0700
Message-Id: <20210822191325.3715246-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210819065702.15406-3-zajec5@gmail.com>
References: <20210819065702.15406-1-zajec5@gmail.com> <20210819065702.15406-3-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 19 Aug 2021 08:57:02 +0200, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Thix fixes:
> arch/arm/boot/dts/bcm4708-netgear-r6250.dt.yaml: /: memory: False schema does not allow {'device_type': ['memory'], 'reg': [[0, 134217728], [2281701376, 134217728]]}
> arch/arm/boot/dts/bcm4709-asus-rt-ac87u.dt.yaml: /: memory: False schema does not allow {'device_type': ['memory'], 'reg': [[0, 134217728], [2281701376, 134217728]]}
> arch/arm/boot/dts/bcm4709-buffalo-wxr-1900dhp.dt.yaml: /: memory: False schema does not allow {'device_type': ['memory'], 'reg': [[0, 134217728], [2281701376, 402653184]]}
> arch/arm/boot/dts/bcm4709-linksys-ea9200.dt.yaml: /: memory: False schema does not allow {'device_type': ['memory'], 'reg': [[0, 134217728], [2281701376, 134217728]]}
> arch/arm/boot/dts/bcm4709-netgear-r7000.dt.yaml: /: memory: False schema does not allow {'device_type': ['memory'], 'reg': [[0, 134217728], [2281701376, 134217728]]}
> arch/arm/boot/dts/bcm4709-netgear-r8000.dt.yaml: /: memory: False schema does not allow {'device_type': ['memory'], 'reg': [[0, 134217728], [2281701376, 134217728]]}
> arch/arm/boot/dts/bcm4709-tplink-archer-c9-v1.dt.yaml: /: memory: False schema does not allow {'device_type': ['memory'], 'reg': [[0, 134217728]]}
> arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dt.yaml: /: memory: False schema does not allow {'device_type': ['memory'], 'reg': [[0, 134217728], [2281701376, 402653184]]}
> arch/arm/boot/dts/bcm53016-meraki-mr32.dt.yaml: /: memory: False schema does not allow {'reg': [[0, 134217728]], 'device_type': ['memory']}
> arch/arm/boot/dts/bcm94708.dt.yaml: /: memory: False schema does not allow {'device_type': ['memory'], 'reg': [[0, 134217728]]}
> arch/arm/boot/dts/bcm94709.dt.yaml: /: memory: False schema does not allow {'device_type': ['memory'], 'reg': [[0, 134217728]]}
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
