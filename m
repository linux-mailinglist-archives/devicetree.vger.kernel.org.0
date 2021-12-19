Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7369447A1F2
	for <lists+devicetree@lfdr.de>; Sun, 19 Dec 2021 20:37:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236467AbhLSTgz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Dec 2021 14:36:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232361AbhLSTgz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Dec 2021 14:36:55 -0500
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com [IPv6:2607:f8b0:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BC67C061574
        for <devicetree@vger.kernel.org>; Sun, 19 Dec 2021 11:36:55 -0800 (PST)
Received: by mail-pg1-x52f.google.com with SMTP id m15so7455743pgu.11
        for <devicetree@vger.kernel.org>; Sun, 19 Dec 2021 11:36:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Otaqkl2PQbbt9kWPwOP0eb0nQXlen40cKF0ZeVLHcZs=;
        b=Y3nUXXw6/V1pbUFkckNLvAPk4s1pXaGqE8aCEs3MtzlgFm/cS/J0fGQgz1rD7BGsYD
         KaVJ5Wyckz7zv7pexF9lGoAQac8TfNjP53cRtaT8ZW8iEEfC9kSq5s8rV2T3JpE4sMkV
         L7y14SyhmBd+70ixiKyjFPhDqzHXGCqmEZVaUJXzkZ9PkI1HfsoeNV+2Hcd1PQwWVIYO
         1hWZPwbT3wTGS/QYaBD+Kx8X20pg8b6vAH31PlUFXlc2Her/ewronq0mgD5QLRbdpPm/
         sv6LHyC4t4fwaPRR+rZ2UUHnM2otcrpWhKI71KOywg85N26bHhRfIklHnDXsdqDJyeqg
         1FMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Otaqkl2PQbbt9kWPwOP0eb0nQXlen40cKF0ZeVLHcZs=;
        b=6oPDZiLfl/Y9uiu1BtFNsjSf1N7d0T0tSR0tDAyCMJcqtZDLebJM5D41k42f+ABs7Z
         ZTssL3dCzZhu/d6ELjGb7BQlF6sWv94SUZBWQP0wnqFaCbyBp8FICpFkOCg3DuGOYS94
         1TLHHV7KBgUgLrUc0O/hY/E1UMh8WKvrLX+S4oHeOmj1nQcCI1o0nqAQwGqa1ReTKdqb
         f/9j7C8zrd7hYA2DVNd2PaLZldL7JZKbkS0Scp7ezlU2zvQMsJtTkyYaL1ZPscfnzkI5
         9bDHlznf16HkMlowSIBuTpbeKybMbUv6Rb/+/SwQbbS4mMo0ozPmBntEMoQcuxhlYzyv
         MYgg==
X-Gm-Message-State: AOAM531WbzleGiOQVxOt8Q+Ie4sMKHvlJDFST2qROHA8LWqPSXM9UxqP
        hmr/lnyfHt1R4gaxfockkng=
X-Google-Smtp-Source: ABdhPJyQcMCJXuYEoprg5z2WghBwAnboIx4EfTgGdoMmqZMjmuC+rzKNWrjNBNn9kOi7+Ed1kBZreA==
X-Received: by 2002:a62:1dca:0:b0:4ba:cfc4:1af7 with SMTP id d193-20020a621dca000000b004bacfc41af7mr2525257pfd.58.1639942614827;
        Sun, 19 Dec 2021 11:36:54 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id g17sm14420946pgh.46.2021.12.19.11.36.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Dec 2021 11:36:53 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-9?b?QXL9bucg3E5BTA==?= <arinc.unal@arinc9.com>
Cc:     Alvin =?iso-8859-2?q?=A9ipraga?= <ALSI@bang-olufsen.dk>,
        Luiz Angelo Daros de Luca <luizluca@gmail.com>,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: BCM5301X: correct rx-internal-delay-ps & enable flow control on extsw on Asus RT-AC88U
Date:   Sun, 19 Dec 2021 11:36:52 -0800
Message-Id: <20211219193652.564259-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211216160319.2373-1-arinc.unal@arinc9.com>
References: <20211216160319.2373-1-arinc.unal@arinc9.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 17 Dec 2021 00:03:19 +0800, Arınç ÜNAL <arinc.unal@arinc9.com> wrote:
> The current rx-internal-delay-ps value on the Realtek switch node, 2000,
> will be divided by 300, resulting in 6.66, which will be rounded to the
> closest step value, 7. Change it to 2100 anyway to be accurate.
> 
> Commit ef136837aaf6 ("net: dsa: rtl8365mb: set RGMII RX delay in steps of
> 0.3 ns")
> 
> Flow control needs to be enabled on both sides. It's already enabled on the
> CPU port of the Realtek switch. Enable it on the extsw port of the Broadcom
> switch as well.
> 
> Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
