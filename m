Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4AC26452614
	for <lists+devicetree@lfdr.de>; Tue, 16 Nov 2021 02:59:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358382AbhKPCBn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Nov 2021 21:01:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240036AbhKOSFc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Nov 2021 13:05:32 -0500
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F26B2C0432CF
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 09:33:24 -0800 (PST)
Received: by mail-pf1-x42a.google.com with SMTP id n85so15655803pfd.10
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 09:33:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=z6uG5MrfnAPAo8ZyMWwgtwTENQJ2xIhurwV2D6EvkmE=;
        b=De/AtjD34JeyTLNyTBExqsC8CA5cZGA3ARFIfx8Ymlq4KPGCaJcs7nVuvmQqMG2805
         86y/Z+YafIPjjPWdMqUl+p5I5BN9if0nWFmaXvk25Vny2raEMR6MxQdFOJqplyRkgjI8
         rQOw7gHyPOsaV/u+IVRQYBr45Uftf88h7cTuqUaGJdjJrpqDW+LSfVrvezZNq5muX4lq
         nJqzMbhdrygSPM+RYXpjMBgJYqKD4jzi+NX2bw6EywYs/3Og1mlBHXZ3bEeEv4VhmjRo
         2xFL6t024JJujChAmKlsVHsv6Rlw6xp7ieYYrJlOBmuwBWf/GPDLvuIjpxRClhtmKu5A
         kQzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=z6uG5MrfnAPAo8ZyMWwgtwTENQJ2xIhurwV2D6EvkmE=;
        b=dVXW/67fn3ZP9J9SGs1upjAB03JOirsDVsnRiTbdZUrYuR2RGALIB7Jn0wVkIAFlCt
         UETxKAY1IWAc9zQ7JBn30D6o9BkP7uDL96Ps/mZPcizKUIkvH9eGqWTxHwu/r5ApndhF
         L3/Ta9zOnlo8wTCQlCQ2MneIGYVUU+puPqHJyvtFi7lEQ39gjxMja2mi27p5/+OCX9q/
         uIoS4vhucSnYGbVMVlFpPiSSzzAkyq1UUT1kcfd6M6UN57KR09WU97Nk8slDo4rZ7SAL
         2n1OXnF4XDJRQXa7i8Q7U7e6IqoQd4gXslcdloGaH/2NloujA7kKnU8/vDMV5Ta+vAXV
         okmw==
X-Gm-Message-State: AOAM533A/lhgWbRWCNCXqesUyAsDIdAfKs5KqfePTEa21HQdszhcOHca
        HFfsuBzsRspHrzd2bD54oDw=
X-Google-Smtp-Source: ABdhPJxPuICUwOkKFoqlVuFNEO8nbulJpUC4dZSQZwFdHvImdpH5n1DE/lZuE0FRtQrLZ0mlOTz55A==
X-Received: by 2002:a05:6a00:14cb:b0:49f:c028:aea6 with SMTP id w11-20020a056a0014cb00b0049fc028aea6mr34989928pfu.48.1636997604412;
        Mon, 15 Nov 2021 09:33:24 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id b19sm17263955pfv.63.2021.11.15.09.33.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Nov 2021 09:33:23 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        Christian Lamparter <chunkeey@gmail.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Matthew Hagan <mnhagan88@gmail.com>
Subject: Re: [PATCH v1] ARM: BCM53016: MR32: convert to Broadcom iProc I2C Driver
Date:   Mon, 15 Nov 2021 09:33:22 -0800
Message-Id: <20211115173322.489465-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211028070344.12652-1-chunkeey@gmail.com>
References: <20211028070344.12652-1-chunkeey@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 28 Oct 2021 09:03:44 +0200, Christian Lamparter <chunkeey@gmail.com> wrote:
> replaces the bit-banged i2c-gpio provided i2c functionality
> with the hardware in the SoC.
> 
> During review of the MR32, Florian Fainelli pointed out that the
> SoC has a real I2C-controller. Furthermore, the connected pins
> (SDA and SCL) would line up perfectly for use. Back then I couldn't
> get it working though and I left it with i2c-gpio (which worked).
> 
> Now we know the reason: the interrupt was incorrectly specified.
> (Hence, this patch depends on Florian Fainelli's
> "ARM: dts: BCM5301X: Fix I2C controller interrupt" patch).
> 
> Cc: Florian Fainelli <f.fainelli@gmail.com>
> Cc: Rafał Miłecki <zajec5@gmail.com>
> Cc: Matthew Hagan <mnhagan88@gmail.com>
> Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
