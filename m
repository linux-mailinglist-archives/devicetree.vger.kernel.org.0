Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7FFAB3ED760
	for <lists+devicetree@lfdr.de>; Mon, 16 Aug 2021 15:34:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241178AbhHPNcQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Aug 2021 09:32:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231175AbhHPNaN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Aug 2021 09:30:13 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11E2DC0363FC
        for <devicetree@vger.kernel.org>; Mon, 16 Aug 2021 06:12:08 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id r7so23650320wrs.0
        for <devicetree@vger.kernel.org>; Mon, 16 Aug 2021 06:12:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=UDElONfkbKNcr3710nHgqpMr+yCII8BlvFkS50PJBOg=;
        b=kdGB2LOfikiNOY43wIQ70lZ4JOwpyhOlNW/yVG8xp5VvScwEF/UEnObYgXXdu+nkma
         aed4o/bQagB3ncuxy0jgrYHjwBoH5iNFw7Teq44r6nF4UTh05/cdgmH/udAZ5vOhulbN
         wj+VnkWHN+5Hv0h0FfoSF48Y9IXi7zsSQLiIAEPk6dZYkECb8grcQ7qM4mM3UQ4bX6Rn
         E/Ku0/SpymKammTS3qEap7EnTBvOsSNl4OgYwThyP2v8AdBXausrl83MhwIp1W2qmGPn
         oCWRFJ2YuInx9E96/XZ7weA+336EWSAPFCjCLYZkZAYG+pfUCm4HFS81WF1Z4/WRKrpV
         aPCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=UDElONfkbKNcr3710nHgqpMr+yCII8BlvFkS50PJBOg=;
        b=OzHqt7kUsZdxUZ1NsyK5yXLGywYluonxBvlSd1cX+93GIgwMX0CrLxYrab1QruLZ5L
         /ntf6LDKR+WcmWFBxZusnUCbap9+mewdiCA2SqhQXPVi+H8ycB0byWOq12jpxnVEz6s+
         QKVRf41QCEez1gpNwrk964wFsgXu9m0OTMkeBkYcqxhaIuIwYGGIwtckjVtxzV99bnoP
         P0eRqt1dWGhaqOYb7ZwqzHqZBfeHAhhkfvf29rvzmoSSYKGEnT6rQrI0PAWOm9iuP9Zh
         Ema5BDz2YlPPZMBSiuoss3KKGljc8f85TRvEptQauv50woZDU3thhWf3F0mostdIBqe5
         8lZA==
X-Gm-Message-State: AOAM5330kW0QmR5Upp/chkd1HfC8m+DPDtxTnF3Pq3xymm4INBkMuqFu
        ev3PruD78x+00dXbbHRD16NaEA==
X-Google-Smtp-Source: ABdhPJwN43/sXPmjvyfmC7z57ruk7+F++aLQvUWjopfXYj9rfuVnLqLH5qa/UlxBs8q4iwFXnudh/A==
X-Received: by 2002:a5d:610f:: with SMTP id v15mr17832834wrt.415.1629119526679;
        Mon, 16 Aug 2021 06:12:06 -0700 (PDT)
Received: from google.com ([2.31.167.59])
        by smtp.gmail.com with ESMTPSA id e25sm14169014wra.90.2021.08.16.06.12.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Aug 2021 06:12:06 -0700 (PDT)
Date:   Mon, 16 Aug 2021 14:12:04 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vivek Unune <npcomplete13@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH V3 RESEND] dt-bindings: mfd: add Broadcom CRU
Message-ID: <YRpkJOXa2sXJkAK2@google.com>
References: <20210713094745.2586-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210713094745.2586-1-zajec5@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 13 Jul 2021, Rafał Miłecki wrote:

> From: Rafał Miłecki <rafal@milecki.pl>
> 
> CRU is a block used in e.g. Northstar devices. It can be seen in the
> bcm5301x.dtsi and this binding documents its proper usage.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> V2: Use complete binding & change additionalProperties to false
> V3: Use clock-controller@ for clocks
> RESEND: Patch is ready for pushing now since 5.14-rc1 is out
> 
> Lee: last time I sent this patch you couldn't push it because of docs
> validation dependency on 3 following commits:
> ac5f8197d15c ("dt-bindings: pinctrl: convert Broadcom Northstar to the json-schema")
> 08e9fdfbb224 ("dt-bindings: thermal: brcm,ns-thermal: Convert to the json-schema")
> 8f711f68cffd ("dt-bindings: clock: brcm, iproc-clocks: convert to the json-schema")
> 
> All above commits made it into the 5.14-rc1.
> ---
>  .../devicetree/bindings/mfd/brcm,cru.yaml     | 86 +++++++++++++++++++
>  1 file changed, 86 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/brcm,cru.yaml

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
