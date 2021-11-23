Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 002A245B086
	for <lists+devicetree@lfdr.de>; Wed, 24 Nov 2021 00:58:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240206AbhKXABb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Nov 2021 19:01:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230491AbhKXABb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Nov 2021 19:01:31 -0500
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B20FC061574
        for <devicetree@vger.kernel.org>; Tue, 23 Nov 2021 15:58:22 -0800 (PST)
Received: by mail-pf1-x42b.google.com with SMTP id i12so832017pfd.6
        for <devicetree@vger.kernel.org>; Tue, 23 Nov 2021 15:58:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nJaUM15poWQe89db2PdHN17xsR/T4lr8cbsEU6CgYVE=;
        b=DWFfC7ocrPjYR1Nuj7NSkhXNkkwGbEKqEJS/lT2MvU71LCAw6vJJYEYLSjxoiObiEE
         uZTirK1qhstid+DHuAwTKxOn9iTkK5OzJZ4hfxWXwt2Bl1/WEC/RK6oEVtWPAg2T3hx2
         0sgTh7+kkrmc25IdGBTh07pXlKzA0TEDke9OhvpIj3cOzRgS2LLaE7e+n2eH4k7MBifj
         2MdoF/4Mb2KhhmWVnU/ED/a7SNqA9FMjBkm3pO1QvKzKPjiYrYAiNEtMw7xdQbB/8I1g
         b/qLaSIBANOLtEVnUiEhp+7dAQoTKJ5RzEsZH0szrmtbkq3J76ZOzwYfCzgS4Zpw7x8e
         8Zgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nJaUM15poWQe89db2PdHN17xsR/T4lr8cbsEU6CgYVE=;
        b=MjdS64XuPBbhW3ZfnBoJqzOJv10Hb6LS/YoLfD9TNMpunjVXtR4o/mIT3lNSJFgdz0
         fK2EdQgcvqPoRN8PBkL9/ISlLHsBqu298I7h8fgoYdpbOvZVMB9NRPHZNjb3FTA0lnO2
         VmCNbmIHCyctl6Hieno+D+7eeldGjbiCCiJnwLzwkYEMrkO2YmWHGHcsTrBfWwTGjkyE
         YtNpVOesQZ3Cr2VyqagHe4FutlG35bSwK66xJfNtrADrIz0WB6EDlKlal6U3if8d07Px
         GsYcSMGEkx9IkLPfHgKrPacFPWQQEJBhY+kLz78iDNLPncvEi3Q3oapdcbC8TFwVaWYY
         zUJQ==
X-Gm-Message-State: AOAM532AmlJKNoHG2EIVCYVHlL67xjFRvF3NTYBoW1Ft88JnEnfzh7QN
        nrer8v3JrlRnjZEExN/8bEn8OPslAT4=
X-Google-Smtp-Source: ABdhPJw1OPLXzCk9gJptLDsh4FEU315Dje1FfwU+FEw9UssNWmH+OfBf8YlwJuHJck+d871AJVf8DQ==
X-Received: by 2002:a63:6b42:: with SMTP id g63mr6729611pgc.133.1637711901611;
        Tue, 23 Nov 2021 15:58:21 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id mz7sm2282725pjb.7.2021.11.23.15.58.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Nov 2021 15:58:21 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH] ARM: dts: BCM5301X: use non-deprecated USB 2.0 PHY binding
Date:   Tue, 23 Nov 2021 15:58:19 -0800
Message-Id: <20211123235819.3823929-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211123090333.11597-1-zajec5@gmail.com>
References: <20211123090333.11597-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 23 Nov 2021 10:03:33 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> The new binding covers a single reg and uses syscon to reference shared
> register.
> 
> References: 55b9b741712d ("dt-bindings: phy: brcm,ns-usb2-phy: bind just a PHY block")
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
