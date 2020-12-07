Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A0AB82D193E
	for <lists+devicetree@lfdr.de>; Mon,  7 Dec 2020 20:17:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725816AbgLGTQQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Dec 2020 14:16:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725774AbgLGTQQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Dec 2020 14:16:16 -0500
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5545AC061793
        for <devicetree@vger.kernel.org>; Mon,  7 Dec 2020 11:15:36 -0800 (PST)
Received: by mail-pg1-x52d.google.com with SMTP id m9so9745634pgb.4
        for <devicetree@vger.kernel.org>; Mon, 07 Dec 2020 11:15:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=e3uhuWBGRirYhIvh2jEudLI/qnhKeXXNabqkGsagY5Q=;
        b=PN8fh1FOzpq/dowaxW0lPNtX3qFf0NK231+P13cgmo/xEHXKqrXDKhzSAEOku6z+19
         6RkuwohsG0aQrDLy8IfRWt/u0Y6zx3DmYUJbFhWJs/Vm7Vk1lB7ITJzXa8VDoSJpnvBp
         Na+KZjGYxL2Qq+kYrvDR7VrFop/8Lx2luPFXLxLY+NkoAdNGu3WSi09gZXivav/i3QiK
         MDk16bdi55Vc5RB4unX7YKHxj2ZJDSIIU5SuA1S6k5X/1Ysa9BBNfO2k24PPg/IF3dxO
         hrj6pB7JBJHkl6+GkICIufBKhoi5PMtVtyledXo0D0CSEynC+IfVZEv6DY9bNormK+ff
         wseg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=e3uhuWBGRirYhIvh2jEudLI/qnhKeXXNabqkGsagY5Q=;
        b=BaEU0t/HhOrWlq6FQLdwGei8AEFIXyIW5rwJPXPM/U5MAqYQim+Tau8Wpet+UwiN7x
         kaY+AYjhOEOcjYaNiXfAJ1joPqra1BD0PwKtQRUUFe/1VCORhh9CrCM0Iiq/aErbprMu
         8bTJ/QoOV1rfvJXrr+xgyNdibtvyTIaX12e4Q/onXXPmseIR+Rh9z6LqBI1ljpVtAKF7
         M7JJhFNnqG9jAUtlssI3Uf9E/C7nyAbsDjZfzir3LgiJy5VvaaYHJI9SBWYIQzyC80CB
         QkuLRsG68tZXlt0uD8RPyafgIGahKqupioVMXqr8Y6N+ryxQ/c+NbLDHdUhd7Z/DQUu7
         PxkQ==
X-Gm-Message-State: AOAM530OJLo/u0vryJ/hof7msaYoDP/cGMnRWRrESTO5IfHCAaJC55gz
        LFX7PB0QBM6lZQvMPjNBm63t+5cVFPLef9lD
X-Google-Smtp-Source: ABdhPJyRkay3wetKUaMSU+yXCso0AfuCU5KmfwrQoyKia7MsjxIRm/wInWgqLuUFDIw5JevsGREZ2w==
X-Received: by 2002:a17:90a:398d:: with SMTP id z13mr280159pjb.1.1607368535750;
        Mon, 07 Dec 2020 11:15:35 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id o198sm14912876pfg.102.2020.12.07.11.15.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Dec 2020 11:15:35 -0800 (PST)
From:   Kevin Hilman <khilman@baylibre.com>
To:     linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Christian Hewitt <christianshewitt@gmail.com>
Subject: Re: [PATCH] arm64: dts: meson: add KHAMSIN IR remote node to SML5442TW
Date:   Mon,  7 Dec 2020 11:15:31 -0800
Message-Id: <160736852894.39684.5494741496019809209.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201126050440.6273-1-christianshewitt@gmail.com>
References: <20201126050440.6273-1-christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 26 Nov 2020 05:04:40 +0000, Christian Hewitt wrote:
> Set the IR keymap to the KHAMSIN remote shipped with the SML5442TW.

Applied, thanks!

[1/1] arm64: dts: meson: add KHAMSIN IR remote node to SML5442TW
      commit: 2493a9a515cf2bfa958d1d68beab507a1c7f5962

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>
