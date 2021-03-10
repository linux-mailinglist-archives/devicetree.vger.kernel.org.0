Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E1FE8334796
	for <lists+devicetree@lfdr.de>; Wed, 10 Mar 2021 20:10:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233528AbhCJTKJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Mar 2021 14:10:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233594AbhCJTJ7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Mar 2021 14:09:59 -0500
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BEC5C061760
        for <devicetree@vger.kernel.org>; Wed, 10 Mar 2021 11:09:59 -0800 (PST)
Received: by mail-pj1-x102e.google.com with SMTP id mz6-20020a17090b3786b02900c16cb41d63so8039283pjb.2
        for <devicetree@vger.kernel.org>; Wed, 10 Mar 2021 11:09:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3R81o8AThB/4FSX6RaPYC/oD9B3qOUDRUFQY5Jbpbok=;
        b=TFWgde2w8wInitFaD/rFGrqpfQBtm47RBwU4gNtKZvnvtegDEsbdr8FjpouFcWzTm5
         Kw7dcTd/M/QsL7VfLtWq7FcUtkJGW1XOqIWD+ZsE2rkyBmpp2m/r23PMiOQqf05m/fkb
         FL+TZqsIgQrqUEzOn2R7IrH6mVQovp52m5fEt1l9SQTWB5/otJ3ViAfSqBFynU+soHU2
         dxAoyXS9GLAuoGWbPLgyTGYyQ5mUwIEa93PaZOfgOFbdqroTUl5zrGFVsqzFHFLRov0A
         R7Y47hjnE0YPTCYzQmD2Vt0h611Kn/5hAQUq+KcoyPNPY53DZpFAPtLWUG31ejfhSGPh
         U4iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3R81o8AThB/4FSX6RaPYC/oD9B3qOUDRUFQY5Jbpbok=;
        b=WSknYzXQxVzULVVrVrkA0ETP3jnTN28y1CfQ7SUKCv4Kg5GdyuaBNuIrtRBejU/ySh
         CxTglWn/7tj9du1fmIsAzV0DcYre/j1MRNZtzo69bcQB8RHUBmDdH2HuioPprZbITNW9
         5DL5JdcYMpRKonMjfIi48E45dhVahwxtlFw3uDNi15PzGnLsn2PYvLSHohaIRSMUHtQ1
         4zTHMYYwns+qRZHdAGXoA2qxeSomg2+UlrYbGJs5nVIVloXw84kU8Sua4nQZlUR4qjZG
         ZZ2ikD/Xgr3Ow4JHSQtIhw2crkNEyoEezy/+RxHNduluCIXwtgTS6qBx0d1tsQcVbkUv
         un/g==
X-Gm-Message-State: AOAM533It8vUkccLjJJvS8/9NfQmF08rmdNnmvCZCLx+blmP5oFTnmwt
        b3jQ+Kd1M6DEZi+l+2Krlv8=
X-Google-Smtp-Source: ABdhPJwX5fDzOAkpRuWaxzv9RNUzCsphUuZQ1y9QoPwa6gTC7eTE8OgN/FEHajLSsoN/EyeYxJNVeQ==
X-Received: by 2002:a17:903:4091:b029:e4:3288:bc57 with SMTP id z17-20020a1709034091b02900e43288bc57mr4405215plc.80.1615403398429;
        Wed, 10 Mar 2021 11:09:58 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id na8sm152742pjb.2.2021.03.10.11.09.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 11:09:57 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH] arm64: dts: broadcom: bcm4908: fix Netgear R8000P LEDs nodes
Date:   Wed, 10 Mar 2021 11:09:56 -0800
Message-Id: <20210310190956.2686028-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210310073203.14463-1-zajec5@gmail.com>
References: <20210310073203.14463-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 10 Mar 2021 08:32:03 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Update nodes names to match leds-gpio.yaml requirements.
> 
> Fixes: 29b08ead247a ("arm64: dts: broadcom: bcm4908: add remaining Netgear R8000P LEDs")
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree-arm64/next, thanks!
--
Florian
