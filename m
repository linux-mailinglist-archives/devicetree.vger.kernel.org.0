Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5070D339FA3
	for <lists+devicetree@lfdr.de>; Sat, 13 Mar 2021 18:51:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234182AbhCMRu0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 Mar 2021 12:50:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234165AbhCMRuB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 Mar 2021 12:50:01 -0500
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C84CCC061574
        for <devicetree@vger.kernel.org>; Sat, 13 Mar 2021 09:50:01 -0800 (PST)
Received: by mail-pg1-x533.google.com with SMTP id 16so11492065pgo.13
        for <devicetree@vger.kernel.org>; Sat, 13 Mar 2021 09:50:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=uerT9jC+w+207tvmr6VWgrDdezy8KaDHBNG6hNGlu9M=;
        b=cwqSRW+XNsNsbkXKMbArAp5iN2h37j1BL+quAN3tOPNirHmJUATcBKoH/Fr2JT5t4V
         D6Ik/55bh0oK1mr0SRTaI0Kzx4sXiR7wlvp368IeLNxovaX4n/z4WGbQ6Gtor+WBCRIq
         byyyfqE3E5v9D4UoWeV3w8RSw32d5Up9rWBZrReSpFNdjzXdm3ndL7h3Ymc3gy+rjOyT
         e153kcHpIxdvFddEXR0Rr+gvqCAnvKGREUQb9ejyBN14H9ZbFLGZTKMVS14d9epXuBTY
         rBOoFJ/7K9O2htNFhv+SrFHV4hdqvU5cfOT8wO3Urfwd4m8K7R4dl9yzzMn4QNs1byD3
         qnlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uerT9jC+w+207tvmr6VWgrDdezy8KaDHBNG6hNGlu9M=;
        b=Kg7PW1rsFLEHUbPHkAoqbDrKBP49EXoCxRDi/iAI2wgXS9eRdREBhT3qmtVeerdx4s
         aeYJJvGV7jnWYyTTM6/QGF2HI2IgcR71LSiBgnMyFHyV+HIvwqsdro6/gXpio3P6A1LI
         VSJpT4GVrYGPUxCs7CDq6UMBlbyjWM1/oy6Je+9suS2+7bRL9HP1eq0pG9CCxKij4MQJ
         KueXDGwLPpNR3+VmQb3f1Px3cYUomCWcExV6b86fr0JmE/+5JIlK6BgBjdQGa8OCpt2W
         rb2bGCbtsDy1I1Y8dy6yoayyyabTEKbOZkNE6naA0jeqYljcjV38pR4f4Kpmkv/h/wpv
         IS2g==
X-Gm-Message-State: AOAM532gVpnmXjlA5KiEYPrXa7rvokdKZobr7vpKs7G+3FFx8EYYBqsx
        z8Wz0BCuxAlIVExnAK9ognE7S8zaK5Y=
X-Google-Smtp-Source: ABdhPJyrzuanKVszIZHao9EiwOHEQWQxfAYHVQwa/aYQ0baPEL21dg3DZyFGoYqprFqWfy33ev0rnw==
X-Received: by 2002:a62:3503:0:b029:1aa:6f15:b9fe with SMTP id c3-20020a6235030000b02901aa6f15b9femr3647354pfa.65.1615657801236;
        Sat, 13 Mar 2021 09:50:01 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id m16sm8685837pgj.26.2021.03.13.09.50.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Mar 2021 09:50:00 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH] arm64: dts: broadcom: bcm4908: set Asus GT-AC5300 port 7 PHY mode
Date:   Sat, 13 Mar 2021 09:49:59 -0800
Message-Id: <20210313174959.3843459-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210312110120.12743-1-zajec5@gmail.com>
References: <20210312110120.12743-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 12 Mar 2021 12:01:20 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Port 7 is connected to the external BCM53134S switch using RGMII.
> 
> Fixes: 527a3ac9bdf8 ("arm64: dts: broadcom: bcm4908: describe internal switch")
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree-arm64/next, thanks!
--
Florian
