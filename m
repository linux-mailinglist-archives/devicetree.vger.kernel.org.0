Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E2432F708C
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2019 10:25:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727102AbfKKJZc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Nov 2019 04:25:32 -0500
Received: from mail-wm1-f67.google.com ([209.85.128.67]:37997 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726988AbfKKJZb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Nov 2019 04:25:31 -0500
Received: by mail-wm1-f67.google.com with SMTP id z19so12408631wmk.3
        for <devicetree@vger.kernel.org>; Mon, 11 Nov 2019 01:25:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=EAGdmecmIYQMbogASNQhQtQecAe8bZ2za4Rdh2+08ME=;
        b=w56mXCzCV0zuIKf5UgKd73iw22KzOjcm/ewjieo905GNM8iSDbjgrHD9m2hsv4+N/p
         w3Mrdp0iqj4WQ1ftEYaBeJpjglqxWWNcz+udxPTk7EkuKxVsG1VrLYriVu2Qy/zPxpYf
         zdpT9yI5Ck0J21noqDhFuBPAhKcW2CzERSW7Yghx7OUbF/hN1Ns78XszQtXvGzy6T39t
         mC6KK5ZBZpkR3k8WPvTegUKeDltIcVUzVyd7IJnqcBRvH74F3hh3QEv9b+DmzXEqnXQr
         6RzPTXp4Pp6QzLoHKgzOsZotTPAXj+8X6qaPo+b4Mg473QAe284G+Ntxo8Xhv2Kh6x86
         Bfww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=EAGdmecmIYQMbogASNQhQtQecAe8bZ2za4Rdh2+08ME=;
        b=q8MSrfqICHBWyIf9BFcVUAZwjVY+BZuh0cmgOtUOwH+kSSCSbdPSiklxhyUuJGtW5s
         75iwjEa3zIo475kigJ2Zh6oYErN38ys4NdnZD1VMu5McnTVPe6ITAwtqDVGDGW1w4LDq
         03iym0+am7sNZiK8qHO/DnEMgPcr8ISUMmrmPs8+rey7gumnSAYqAttRgLmbYytgqJwJ
         ubUFeBEBr6lga4AoCdzvMsXLPQ/3+f066/BQxGT+IPdbstUhPCAi9rBZoH9NOySvf07B
         ybg49NjuzLBB91BreieuCBVIrTrhfF5oKTY9douwfM4Xsly2d8n1t4lf4zvDeQqZ7UK7
         UuLQ==
X-Gm-Message-State: APjAAAVKrlRdRjUMCt6Y2XeEKdxsUuteXSDBZVKSaNWKQ+/TACveSZ6t
        Asx5h1Wh43pIoZqiPLH2yrfvQQ==
X-Google-Smtp-Source: APXvYqxsuEZoMa82YymohR63zheNj31pQiSiawLEKigrwQP7JSqSDgwgZGuFELRxkBAXjKVnTla1UA==
X-Received: by 2002:a7b:c95a:: with SMTP id i26mr20598305wml.41.1573464329856;
        Mon, 11 Nov 2019 01:25:29 -0800 (PST)
Received: from dell ([95.147.198.88])
        by smtp.gmail.com with ESMTPSA id c144sm17688300wmd.1.2019.11.11.01.25.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Nov 2019 01:25:29 -0800 (PST)
Date:   Mon, 11 Nov 2019 09:25:21 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Kiran Gunda <kgunda@codeaurora.org>
Cc:     bjorn.andersson@linaro.org, jingoohan1@gmail.com,
        b.zolnierkie@samsung.com, dri-devel@lists.freedesktop.org,
        daniel.thompson@linaro.org, jacek.anaszewski@gmail.com,
        pavel@ucw.cz, robh+dt@kernel.org, mark.rutland@arm.com,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Andy Gross <agross@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-fbdev@vger.kernel.org
Subject: Re: [PATCH V10 5/8] backlight: qcom-wled: Restructure the driver for
 WLED3.
Message-ID: <20191111092521.GS18902@dell>
References: <1572589624-6095-1-git-send-email-kgunda@codeaurora.org>
 <1572589624-6095-6-git-send-email-kgunda@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1572589624-6095-6-git-send-email-kgunda@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 01 Nov 2019, Kiran Gunda wrote:

> Restructure the driver to add the support for new WLED
> peripherals.
> 
> Signed-off-by: Kiran Gunda <kgunda@codeaurora.org>
> Acked-by: Daniel Thompson <daniel.thompson@linaro.org>
> ---
>  drivers/video/backlight/qcom-wled.c | 373 ++++++++++++++++++++++--------------
>  1 file changed, 234 insertions(+), 139 deletions(-)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
