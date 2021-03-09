Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F36BD3331D7
	for <lists+devicetree@lfdr.de>; Wed, 10 Mar 2021 00:06:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232003AbhCIXGU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Mar 2021 18:06:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231904AbhCIXGG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Mar 2021 18:06:06 -0500
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C49E4C06174A
        for <devicetree@vger.kernel.org>; Tue,  9 Mar 2021 15:06:06 -0800 (PST)
Received: by mail-pg1-x530.google.com with SMTP id t26so9957248pgv.3
        for <devicetree@vger.kernel.org>; Tue, 09 Mar 2021 15:06:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eh1ApoF1jWasNH8hFSF7tL2bOguROUrDrEidWU7agcc=;
        b=rcdatLJW29vWTzTNKkmefyOn3XgqpKOwvPtTiUaAo5tLIOHB9ODhy6GHOIcvKGr7Yx
         YguPM5TIlSdDDJgs+j+ndTj/3RIL7e/+T4MYedimuDduAi2PVTySelDiWmpBm4ZMkPij
         +9wSM1Nioeidxno0wtVMkN4u8Oby8G/+xFFyYBhW4soSKXES4t/hmYDTNBza5U/7Xqlq
         KhHTCmzQOV3dh4ZLDiygTiRHaveEM+WqRZbUsPFbwW3IoLv+rbJluOA+qgUOnulknbA4
         wckoEUilIfgvvt6Q1IbIV0cVxAP1je1iZuPtM42ty5SQOiX5EIVEKemPFHPsXMrUUHv6
         z99Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eh1ApoF1jWasNH8hFSF7tL2bOguROUrDrEidWU7agcc=;
        b=M/igeaCOfavibp8b5lC/po5fQZESIceS5BHCVmVYn9EPcIu+MK/IM476FIaKlBoLbe
         WYjPilCiuW3I6LKw1gvd5xcl0r91C/cGO7iYTp3z1XW0H9AmcKnIHPuEKf59WydKH/oR
         ZpUQHbNO3BrhZAsy0svBDLXFG977xAyH6yD2pG4zEv4mij4Ui6iLNCA6FEQWvpdcKz82
         Kk+SUp4HL7Bbv/4t/5LDRlo33JNOElrYwyk+zGO7PHjH7YpXgRmCF5LiIRZYiMhX6JUV
         ial7aVQu3QLZELTG6+JA9dB7UfogAtIsDe+Q9++lDt1NXTNc0/NVg3HTqlQ5Vd3oLeZW
         2Kew==
X-Gm-Message-State: AOAM531LNPQCI71SftV0wiRq0G6rZZSjLI0tBGC38ZIwGcH4zwALFj9x
        pX0JMNOlQrQiMjUPNv3kmAM=
X-Google-Smtp-Source: ABdhPJw4+6llu+2qP99ZsxdAe0vSInF/zLDoOpprcYS+F8xpKnwxx9ptGN8F3ZKV94xpSsuXvjdoKQ==
X-Received: by 2002:a62:88c4:0:b029:1ee:4e39:dccc with SMTP id l187-20020a6288c40000b02901ee4e39dcccmr262163pfd.59.1615331166376;
        Tue, 09 Mar 2021 15:06:06 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id t22sm4053863pjo.45.2021.03.09.15.06.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Mar 2021 15:06:05 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH stblinux] arm64: dts: broadcom: bcm4908: fix USB PHY reg name typo
Date:   Tue,  9 Mar 2021 15:06:04 -0800
Message-Id: <20210309230604.1226208-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210309181132.23144-1-zajec5@gmail.com>
References: <20210309181132.23144-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue,  9 Mar 2021 19:11:32 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> s/crtl/ctrl/
> 
> Fixes: 17aa606c5f9b ("arm64: dts: broadcom: bcm4908: describe USB PHY")
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree-arm64/next, thanks!
--
Florian
