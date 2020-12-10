Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CFB472D62A8
	for <lists+devicetree@lfdr.de>; Thu, 10 Dec 2020 17:57:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390752AbgLJQzs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Dec 2020 11:55:48 -0500
Received: from mail-wm1-f67.google.com ([209.85.128.67]:50879 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391045AbgLJOgu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Dec 2020 09:36:50 -0500
Received: by mail-wm1-f67.google.com with SMTP id c198so4848927wmd.0
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 06:36:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=8YMtwldRFul1qTGmTJf90os8gBtfHDafpt+Bx25eTO4=;
        b=pxp6H14tfKLYEYfRwRy4bf2mSKAUpFzuTPtN259rxDKj/ZHAOfM7UlgVmL5OEm9ISA
         K3YqSPV+rxOfFVK1N4g7KT6/7rea8lD+r6GyBwerKQ20fdGodQ/MgEFc+0fYnO22hUWz
         dHNLdbOlxJwMdb4wzOCDVw1r/mHx3EWaU0TFx9Urt17dpgr6amXjQHxmDmXvsOXK27wx
         66C1HtK0dwTnMIsbiSDbG7sqsb970+ixDYNtHC6cgTlIbuklj7ZhmByIIyuXvo6hKUcB
         jcc47fRNIyE3/uvml78xqkzN0mjXn1fadrKCy1MkIReLlp8ELWHNNXENjsKUqZnigvNg
         ixTw==
X-Gm-Message-State: AOAM531J5n4iscmBMdbhfObtL5QqxD45WTGZMBSGh0dscetektQ5wUGe
        /RwchndncIFHeRkE8dqRcoM=
X-Google-Smtp-Source: ABdhPJwJ1qAJixrHR03VzUiy57DluKcksShFhC9W73fRk9ygeP2PyLtLRA754wiO84vFZH+kEKp9mw==
X-Received: by 2002:a7b:c24d:: with SMTP id b13mr1915342wmj.151.1607610956419;
        Thu, 10 Dec 2020 06:35:56 -0800 (PST)
Received: from kozik-lap (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.googlemail.com with ESMTPSA id j13sm9899062wmi.36.2020.12.10.06.35.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 06:35:55 -0800 (PST)
Date:   Thu, 10 Dec 2020 15:35:53 +0100
From:   Krzysztof Kozlowski <krzk@kernel.org>
To:     Teresa Remmet <t.remmet@phytec.de>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v2 1/4] arm64: defconfig: Enable rv3028 i2c rtc driver
Message-ID: <20201210143553.GA46268@kozik-lap>
References: <1607445491-208271-1-git-send-email-t.remmet@phytec.de>
 <1607445491-208271-2-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1607445491-208271-2-git-send-email-t.remmet@phytec.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 08, 2020 at 05:38:08PM +0100, Teresa Remmet wrote:
> Enable rv3028 i2c rtc driver as module. It is populated on
> phyBOARD-Pollux-i.MX8M Plus.
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof
