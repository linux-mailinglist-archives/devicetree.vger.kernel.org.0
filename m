Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4001E4448BE
	for <lists+devicetree@lfdr.de>; Wed,  3 Nov 2021 20:09:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230382AbhKCTL6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Nov 2021 15:11:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229697AbhKCTL5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Nov 2021 15:11:57 -0400
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 227DAC061714
        for <devicetree@vger.kernel.org>; Wed,  3 Nov 2021 12:09:21 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id p18so3085986plf.13
        for <devicetree@vger.kernel.org>; Wed, 03 Nov 2021 12:09:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0huV3+NvHX9kbEHkMOSRG/Cqq2BBTevpjeGjT71XeTg=;
        b=Kl0JxVBB9T5o/4GfJ/TvkzAZmu8Fm/tINQiRiwQ4qiVam2CMQDdbHYoYD5fox1cITc
         lTR3Yl99wOAsu4cXnyJ6V03JYuB9uAFLUHmes2+RWR/7IW1HkAwK5QmVL6X+erS+neg8
         afBfAeceoZy7AxZxzQMKUzc/G8LLuH673uZTEr1mMA7zs3GX66yatQxL9sNG+omJEckN
         oy6qCuMoehM9LBDhpZKpduukNdLh7y5kAQy/FGgAOU1XelkBFvqxrezs85ml8Z9F1Rlt
         Jc8fJnWW5fXsrWB2VZWH6vATMiMkaLSBezeIGtNbDMrFqbKkg5lH9vPvmd0rTpMsHir8
         JSoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0huV3+NvHX9kbEHkMOSRG/Cqq2BBTevpjeGjT71XeTg=;
        b=lbvj/RkyKoO4vV5eGiXVFqpnl8U3c8OzX+E8eTfXNWg3yv9GTUc+JN0YovXWGA27P4
         1k/b+thJNTTJY1w+pmA1INz2hQ5X1346FKMZAaTTOcJJt1VfcZQSb8srBPUQIe9woM4x
         70ZOa3z2Dvpl68gurGh+edJWbq453M844zgbuMgJ8BrdqvXxjvNUe4iej8dZo5piRU32
         h/gPgqLHvN1pGymJktObtx8/9/6orN8Gmi9Jysev0DSOk0EVOFuSM6YpnhiFD/ijQdrs
         QtYcQb9k5hmlaE8J0RC7I80nUtXmYitSeAgLS6IZEOeIJLxeDLtqX/xzaQP4ZXkTudD2
         ezqA==
X-Gm-Message-State: AOAM5300DBJ86mpz0RJY0i0o2aCzxPg0ge1waEg+E2Dabi8MJG6qHro2
        tG8AQfteuIpFQWdBkF4Mq+sT18gjj/g=
X-Google-Smtp-Source: ABdhPJybalEkvCrcoxkcM2X4OU+ubznrLF1kphWPPNDADFcG9QvB6jtYMEEYqHRDRoL/J31eJl4j3g==
X-Received: by 2002:a17:90a:9915:: with SMTP id b21mr16472850pjp.195.1635966560659;
        Wed, 03 Nov 2021 12:09:20 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id w1sm987833pgb.50.2021.11.03.12.09.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Nov 2021 12:09:20 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-9?b?QXL9bucg3E5BTA==?= <arinc.unal@arinc9.com>
Cc:     Alvin =?iso-8859-2?q?=A9ipraga?= <ALSI@bang-olufsen.dk>,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/2] ARM: dts: BCM5301X: define RTL8365MB switch on Asus RT-AC88U
Date:   Wed,  3 Nov 2021 12:09:18 -0700
Message-Id: <20211103190918.193875-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211026165703.17997-2-arinc.unal@arinc9.com>
References: <20211026165703.17997-1-arinc.unal@arinc9.com> <20211026165703.17997-2-arinc.unal@arinc9.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 27 Oct 2021 00:57:06 +0800, Arınç ÜNAL <arinc.unal@arinc9.com> wrote:
> Define the Realtek RTL8365MB switch without interrupt support on the device
> tree of Asus RT-AC88U.
> 
> Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
