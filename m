Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 34EE7111B17
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2019 22:39:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727466AbfLCVj1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Dec 2019 16:39:27 -0500
Received: from mail-ot1-f65.google.com ([209.85.210.65]:38182 "EHLO
        mail-ot1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727457AbfLCVj1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Dec 2019 16:39:27 -0500
Received: by mail-ot1-f65.google.com with SMTP id z25so4375301oti.5
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2019 13:39:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=DuOA0zBLQcvKVkSQwZNftSyUaZTa7uOJ30XltITcLWM=;
        b=G0jAJNHFeurN2KH9L7+UnqDGnzyvR2nTGEC27I9NkgMigo59Dyh8c/JaxuhpKFZVmt
         6KEx0GLz66vBU73YiFQ/HAIhGXyKFQFdHSOZ/MSB7gx/Nu257ki5rJQrjdA5g0HKFKWK
         A+B58ZRESubsp8irEUpmPMNd7pixsLeENWgouZkA2ibgTHwr/kcK+lKZVujSBxZ2QCCO
         /ftlnwsTO48XWI0pGWTHoDF4QZYiyroZSAyNomdHUHIHux3Je2j6NiMiiUPoFP1xK/yK
         eQPTGlgUvvTG9cey6QAaNsESBdnPdm2alMWmEbPRXpYPYezMwHa3s3qLna1CUGyHX3Aw
         g2Gg==
X-Gm-Message-State: APjAAAVVQxfsX9tNVxWw7vdNfVX5ceuLv6Tc8D3j6U/bMPCTixWpEHTy
        7iqJ0+EGniuvacQI1kwwqw==
X-Google-Smtp-Source: APXvYqz/YJVpzj5Ns4de7SfcrAw60fS1tPC0hInpJwwLL2VAApzqpGh6/6qNf4XX9VcVikm16HhBmQ==
X-Received: by 2002:a05:6830:1251:: with SMTP id s17mr15158otp.108.1575409166858;
        Tue, 03 Dec 2019 13:39:26 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id o2sm1583188oih.19.2019.12.03.13.39.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2019 13:39:26 -0800 (PST)
Date:   Tue, 3 Dec 2019 15:39:25 -0600
From:   Rob Herring <robh@kernel.org>
To:     Dong Aisheng <aisheng.dong@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        dongas86@gmail.com, kernel@pengutronix.de, shawnguo@kernel.org,
        robh+dt@kernel.org, linux-imx@nxp.com,
        Dong Aisheng <aisheng.dong@nxp.com>
Subject: Re: [PATCH 3/3] dt-bindings: i2c: lpi2c: add imx8qm compatible string
Message-ID: <20191203213925.GA22895@bogus>
References: <1573995530-14573-1-git-send-email-aisheng.dong@nxp.com>
 <1573995530-14573-3-git-send-email-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1573995530-14573-3-git-send-email-aisheng.dong@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 17 Nov 2019 20:58:50 +0800, Dong Aisheng wrote:
> Add imx8qm compatible string.
> 
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
>  Documentation/devicetree/bindings/i2c/i2c-imx-lpi2c.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks.

Rob
